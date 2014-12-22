;;
;; RAPTOR Particle datafile
;;

pixel_list:	dc.l	explode_particles
			dc.l	track_particles
			dc.l	-1

			.phrase
explode_particles:
			dc.l	0,0							; x / y for particle startpoint
			dc.l	16							; number of particles
			
			dc.l	0,3,0,15,2,28				; angle, speed, angular speed, initial colour, colour decay (per frame), pixel life (in frames)
			dc.l	64,3,0,15,2,28
			dc.l	128,3,0,15,2,28
			dc.l	192,3,0,15,2,28
			dc.l	256,3,0,15,2,28
			dc.l	320,3,0,15,2,28
			dc.l	384,3,0,15,2,28
			dc.l	448,3,0,15,2,28

			dc.l	0+32,3,0,15,2,28
			dc.l	64+32,3,0,15,2,28
			dc.l	128+32,3,0,15,2,28
			dc.l	192+32,3,0,15,2,28
			dc.l	256+32,3,0,15,2,28
			dc.l	320+32,3,0,15,2,28
			dc.l	384+32,3,0,15,2,28
			dc.l	448+32,3,0,15,2,28

			.phrase
track_particles:
			dc.l	0,0							; x / y for particle startpoint
			dc.l	1							; number of particles
			
			dc.l	128,1,0,15,1,5				; angle, speed, angular speed, initial colour, colour decay (per frame), pixel life (in frames)

			
;END OF FILE
			
			

			
			
			
			