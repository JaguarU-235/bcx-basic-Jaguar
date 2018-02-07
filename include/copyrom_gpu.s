				include "jaguar.inc"

                move    #$2700,SR
                move.w  #$7FFF,$F0004E
                lea     'ARSE',A0       ;address of RB+ binary in ROM
                lea     'FOOK',A1       ;run address
                movea.l A1,A6
                bra.s depack
                move.l #'RB+!',d0       ;length of binary in byte
copyloop:
                move.l (a0)+,(a1)+
                subq.l #1,d0
                bgt.s copyloop
                jmp (a6)
depack:
					move.l	#0,D_CTRL						; Stop DSP
					move.l	#0,D_FLAGS

					move.l	#$00070007,$f00000+$1a10c	; D_END
					move.l	#$00070007,$f00000+$210c	; G_END 
 
 					lea     GPU_START,a3      			; start of GPU code
					lea		$f03080,a4
					move.l	#(4096-$80/4)-1,d7
.gpuup:				move.l	(a3)+,(a4)+
					dbra	d7,.gpuup

					move.l	#$00000000,$800.w
					move.l	#$00000004,$804.w
					move.l	#GPU_Loader_Shutdown,a5
					bsr		go_GPU					
					
					move.l	a0,packed_data
					move.l	a1,depack_address
					lea		depack_main,a5
					bsr 	go_GPU

					
					jmp		(a6)

					
go_GPU:				moveq	#0,d0
					move.l	d0,G_CTRL				; HALT the GPU
					nop
					nop
					nop
					nop
					move.l	a5,G_PC
					move.l  #GPUGO,G_CTRL           ; Start GPU
.wait4flash:    	move.l  G_CTRL,d0               ; Wait for complete
					andi.l  #$1,d0
					bne.s   .wait4flash
					rts					
					
					.phrase
GPU_START:			.gpu
					.org	$f03080
		
		;-------------------
_d0		.equr	r0
_d1		.equr	r1
_d2		.equr	r2
_d3		.equr	r3
_d4		.equr	r4
_d5		.equr	r5
_d6		.equr	r6
_d7		.equr	r7
;-------------------
_a0		.equr	r8
_a1		.equr	r9
_a2		.equr	r10
_a3		.equr	r11
_a4		.equr	r12
_a5		.equr	r13
_a6		.equr	r16
_a7		.equr	r17
_sp		.equr	r17
;-------------------
_D0		.equr	r0
_D1		.equr	r1
_D2		.equr	r2
_D3		.equr	r3
_D4		.equr	r4
_D5		.equr	r5
_D6		.equr	r6
_D7		.equr	r7
;-------------------
_A0		.equr	r8
_A1		.equr	r9
_A2		.equr	r10
_A3		.equr	r11
_A4		.equr	r12
_A5		.equr	r13
_A6		.equr	r16
_A7		.equr	r17
_SP		.equr	r17
;-------------------

depack_main:
				movei	#packed_data,_a0	; start of packed data
				
			;	movei	#$24,r0				; header size
				load	(_a0),_a0
				movei	#depack_address,r30	; depack address
				load	(r30),_a1			;
				sub		r0,_a1				; header

; ------------- DECOMPRESSION -------------
; decompress from a0 to a1
;   note: must preserve d4 and a5-a7
;
; On entry:
;   a0  src pointer
;   a1  dest pointer
;
; On exit:
;   d1.l = 0x00008000
;   d2.l = 0
;
; Register usage:
;   a3  m_pos
;
;   d0  bit buffer
;   d1  m_off
;   d2  m_len
;   d5  last_m_off
;
;   d6  constant: -$500
;   d7  constant: 0
;
;
; Notes:
;   we have max_match = 65535, so we can use word arithmetics on d2
;   we have max_offset < 2**23, so we can use partial word arithmetics on d1
;
;---------------------------------------------------------------------------------------
_decompr_literal	.equr r18
_Lcopy0				.equr r19
_decompr_got_mlen	.equr r20
_decompr_get_mlen2	.equr r21
_decompr_prev_dist	.equr r22
_decompr_end		.equr r23
_decompr_break1		.equr r24
_decompr_loop		.equr r25
_decompr_l2			.equr r26
_decompr_get_mlen1	.equr r27
_decompr_l1			.equr r28

_byteempty			.equr r29
_temp				.equr r30
;---------------------------------------------------------------------------------------

;R31 is free
;R30 is temp

depack2e:


				movei	#decompr_literal,_decompr_literal
				movei	#Lcopy0,_Lcopy0
				movei	#decompr_got_mlen,_decompr_got_mlen
				movei	#decompr_get_mlen2,_decompr_get_mlen2
				movei	#decompr_prev_dist,_decompr_prev_dist
				movei	#decompr_end,_decompr_end
				movei	#decompr_break1,_decompr_break1
				movei	#decompr_loop,_decompr_loop
				movei	#decompr_l2,_decompr_l2
				movei	#decompr_get_mlen1,_decompr_get_mlen1
				movei	#decompr_l1,_decompr_l1

;movei	#1<<23,_byteempty			; byteempty insert

				moveq	#1,_byteempty
				shlq	#23,_byteempty

;movei	#-$50,_D6                  ;   0xffffffb0
;shlq	#4,_D6                     ;   << 4
				movei	#$fffffb00,_d6

                moveq   #0,_D7
                movei   #-1,_D5                    ; last_off = -1

; init d0 with high bit set
;;move.b  #$80,d0               ; init d0.b for FILLBYTES

;movei	#-128,_D0                 ; d0.b = $80
;shlq	#24,_D0					  ; MSB!
				movei	#$80000000,_D0
                jr		(decompr_start)
				nop
				nop
;---------------------------------------------------------------------------------------
; ------------- DECOMPRESSION -------------
decompr_literal:
				loadb	(_a0),_temp			; move.b  (A0)+,(A1)+
				storeb	_temp,(_a1)
				addqt	#1,_a0
				addqt	#1,_a1

decompr_start:
decompr_loop:
; optimization: carry is clear -> we know that bits are available
;   cost literal:   4 +  8 + 10
;   cost match:     4 + 10
;   cost fillbits:  4 +  8 +  8
				shlq	#1,_d0				; add.b   D0,D0
				jr		cc,decompr_match	; bcc.s   decompr_match
				nop
				jump	ne,(_decompr_literal) ; bne.s   decompr_literal
				nop
				loadb	(_a0),_d0			; move.b  (A0)+,D0
				addqt	#1,_a0
				shlq	#24,_d0				; MSB!
				or		_byteempty,_d0
				shlq	#1,_d0
				jump	cs,(_decompr_literal)
				nop
decompr_match:



                moveq   #1,_D1
                moveq   #0,_D2
decompr_l1:
                shlq	#1,_D0
                jr		ne,_l00				; bne.s   _l00
				nop
				nop
				loadb	(_a0),_d0			; move.b  (A0)+,D0
				addqt	#1,_a0
				shlq	#24,_d0				; MSB!
				or		_byteempty,_d0
				shlq	#1,_d0				; addx.b  D0,D0
_l00:
				nop
                addc	_d1,_d1				; addx.w  D1,D1
; optimization: carry is clear -> we know that bits are available
;   cost loop continue:  4 + 10
;   cost loop break:    4 +  8 + 10
;   cost fillbits:      4 +  8 +  8
				shlq	#1,_d0				; add.b   D0,D0
				jr		cc,Lcon0			; bcc.s   Lcon0
				nop
				jump	ne,(_decompr_break1)	; bne.s   decompr_break1
				nop
				loadb	(_a0),_d0			; move.b  (A0)+,D0
				addqt	#1,_a0
				shlq	#24,_d0				; MSB!
				or		_byteempty,_d0
				shlq	#1,_d0
				jump	cs,(_decompr_break1)
				nop
Lcon0:
                subq	#1,_d1				; subq.w  #1,D1

				shlq	#1,_d0				; add.b   D0,D0
				jr		ne,_l01				; bne.s   Lcon0
				nop
				loadb	(_a0),_d0			; move.b  (A0)+,D0
				addqt	#1,_a0
				shlq	#24,_d0				; MSB!
				or		_byteempty,_d0
				shlq	#1,_d0
_l01:
				nop
                addc	_d1,_d1				; addx.w  D1,D1

;move	_d1,_temp	; check if neg
;shlq	#16,_temp
;jump	pl,(_decompr_l1)	; bpl.s   decompr_l1

				btst	#15,_d1
				jump	eq,(_decompr_l1)	; bpl.s   decompr_l1
				nop
				jump	(_decompr_end)		; bra.s   decompr_end
				nop
decompr_break1:
                subq	#3,_d1				; subq.w  #3,D1
				jump	cs,(_decompr_prev_dist) ; bcs.s   decompr_prev_dist         ; last m_off
				nop
; lsl.l   #8,D1
; move.b  (A0)+,D1
				loadb	(_a0),_temp
                shlq	#8,_d1
				addqt	#1,_a0
				or		_temp,_d1
                not		_d1					; not.l   D1
                sharq	#1,_d1				; asr.l   #1,D1
                jump	cc,(_decompr_get_mlen2) ; bcc.s   decompr_get_mlen2
				nop
decompr_get_mlen1:
				shlq	#1,_d0				; add.b   D0,D0
				jr		ne,_l02				; bne.s   _l02
				nop
				loadb	(_a0),_d0			; move.b  (A0)+,D0
				addqt	#1,_a0
				shlq	#24,_d0				; MSB!
				or		_byteempty,_d0
				shlq	#1,_d0
_l02:
                addc	_d2,_d2				; addx.w  D2,D2
                jump	(_decompr_got_mlen)	; bra.s   decompr_got_mlen
				nop
decompr_prev_dist:
                move	_d5,_d1				; move.l  D5,D1

				shlq	#1,_d0				; add.b   D0,D0
				jr		ne,_l03				; bne.s   _l02
				nop
				nop
				loadb	(_a0),_d0			; move.b  (A0)+,D0
				addqt	#1,_a0
				shlq	#24,_d0				; MSB!
				or		_byteempty,_d0
				shlq	#1,_d0
_l03:
                jump	cs,(_decompr_get_mlen1) ; bcs.s   decompr_get_mlen1
				nop

decompr_get_mlen2:
                addq	#1,_d2				; addq.w  #1,D2

				shlq	#1,_d0				; add.b   D0,D0
				jr		ne,_l04				; bne.s   _l04
				nop
				loadb	(_a0),_d0			; move.b  (A0)+,D0
				addqt	#1,_a0
				shlq	#24,_d0				; MSB!
				or		_byteempty,_d0
				shlq	#1,_d0
_l04:
				jump	cs,(_decompr_get_mlen1) ; bcs.s   decompr_get_mlen1
				nop
decompr_l2:
				shlq	#1,_d0				; add.b   D0,D0
				jr		ne,_l05				; bne.s   _l05
				nop
				loadb	(_a0),_d0			; move.b  (A0)+,D0
				addqt	#1,_a0
				shlq	#24,_d0				; MSB!
				or		_byteempty,_d0
				shlq	#1,_d0
_l05:
				addc	_d2,_d2				; addx.w  D2,D2

; optimization: carry is clear -> we know that bits are available
;   cost loop continue:  4 + 10
;   cost loop break:    4 +  8 + 10
;   cost fillbits:      4 +  8 +  8

                shlq	#1,_d0				; add.b   D0,D0
                jump	cc,(_decompr_l2)	; bcc.s   decompr_l2
				nop
                jr		ne,Lbreak0			; bne.s   Lbreak0
				nop
				loadb	(_a0),_d0			; move.b  (A0)+,D0
				addqt	#1,_a0
				shlq	#24,_d0				; MSB!
				or		_byteempty,_d0
				shlq	#1,_d0
				jump	cc,(_decompr_l2)	; bcc.s   decompr_l2
				nop
Lbreak0:
                addq	#2,_d2				; addq.w  #2,D2

decompr_got_mlen:
                move	_d1,_d5				; move.l  D1,D5
                move	_a1,_a3				; lea     0(A1,D1.l),A3
				add		_d1,_a3
				
; must use sub as cmp doesn't affect the X flag
				sub		_d6,_d1				; sub.l   D6,D1
				nop
                addc	_d7,_d2				; addx.w  D7,D2

; TODO: partly unroll this loop; could use some magic with d7 for address
;       computations, then compute a nice `jmp yyy(pc,dx.w)'

;   cost for any m_len:   12 + 22 * (m_len - 1) + 4
;     38, 60, 82, 104, 126, 148, 170, 192, 214, 236

;move.b  (A3)+,(A1)+               ; 12
;Lcopy0: move.b  (A3)+,(A1)+               ; 12
;dbra    D2,Lcopy0                 ; 10 / 14

				loadb	(_a3),_temp
				storeb	_temp,(_a1)
				addqt	#1,_a3
				addqt	#1,_a1
Lcopy0:
				loadb	(_a3),_temp
				storeb	_temp,(_a1)
				addqt	#1,_a3
				subq	#1,_d2
				jump	cc,(_Lcopy0)
				addqt	#1,_a1

                jump	(_decompr_loop)		; bra     decompr_loop
				nop
decompr_end:
;---------------------------------------------------------------------------------------

				movei	#G_CTRL,r1
				moveq	#0,r0
				store	r0,(r1)		; stop gpu
				nop
				nop
				nop
				
				

				.phrase
GPU_a0:	
packed_data:	dc.l	0

GPU_a1:
depack_address:	dc.l	0

GPU_Loader_Shutdown:
				moveq	#0,r0
				movei	#$08000000,r3	; pointer to list
				movei	#OLP,r4			
				movei	#$f02114,r5
				store	r3,(r4)			; update the OLP
				store	r0,(r5)			; stop the GPU
				nop
				nop
				
				.68000
				.phrase		
GPU_END:			
			
					
                END
