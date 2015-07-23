//Variables (remember, we compile with size of int = 32 bits)

extern int U235SE_pad1 asm ("U235SE_pad1");
extern int U235SE_pad2 asm ("U235SE_pad2");
extern void *RAPTOR_sprite_table asm ("RAPTOR_sprite_table");
extern void *pixel_list asm ("pixel_list");
extern void *raptor_part_inject_addr asm ("raptor_part_inject_addr");
extern int raptor_map_position_x asm ("raptor_map_position_x");
extern int raptor_map_position_y asm ("raptor_map_position_y");
extern void RAPTOR_GPU_COLLISION() asm ("RAPTOR_GPU_COLLISION");
volatile extern int raptor_result asm ("raptor_result");
extern int raptor_sourcel asm ("raptor_sourcel");
extern int raptor_sourceh asm ("raptor_sourceh");
extern int raptor_targetl asm ("raptor_targetl");
extern int raptor_targeth asm ("raptor_targeth");
extern void *RAPTOR_module_list asm ("RAPTOR_module_list");
extern void *RAPTOR_U235setmodule() asm ("RAPTOR_U235setmodule");
extern void *RAPTOR_U235gomodule_stereo() asm ("RAPTOR_U235gomodule_stereo");
extern void *RAPTOR_U235playsample() asm ("RAPTOR_U235playsample");
extern void *RAPTOR_U235stopmodule() asm ("RAPTOR_U235stopmodule");
extern void RAPTOR_wait_frame() asm ("_RAPTOR_wait_frame");
extern int RUPDALL_FLAG asm ("_RUPDALL_FLAG");
extern void *raptor_liststart asm ("raptor_liststart");
extern int rotary_mode1 asm("rotary_mode1");
extern int rotary_mode2 asm("rotary_mode2");
extern int turn_direction1 asm("turn_direction1");
extern int turn_direction2 asm("turn_direction2");
extern int rotary_interval1 asm("rotary_interval1");
extern int rotary_interval2 asm("rotary_interval2");
extern int spin_delta1 asm("spin_delta1");
extern int spin_delta2 asm("spin_delta2");
extern int raptor_used_particles asm("raptor_used_particles");
extern int raptor_free_particles asm("raptor_free_particles");
extern void *RAPTOR_particle_gfx asm("RAPTOR_particle_gfx");
extern int raptor_mt_present asm("raptor_mt_present");
extern int raptor_highscores_hex[10] asm("raptor_highscores_hex");
extern char raptor_highscores_nam[10][8] asm("raptor_highscores_nam");

//Functions

void basicmain(); //main function declaration
extern unsigned char plot_colour asm ("_plot_colour");
extern int GETPAD(int pad) asm ("_GETPAD");
extern void MODPLAY(int module) asm ("_MODPLAY");
extern void SNDPLAY(int sampleno, int channel) asm ("_SNDPLAY");
extern void RPARTI(int *fx) asm ("_RPARTI");
extern void RSETLIST(int list_index) asm ("_RSETLIST");
extern void RSETOBJ(int spr_index, int offset, int value) asm ("_RSETOBJ");
extern int RGETOBJ(int spr_index, int offset) asm ("_RGETOBJ");
extern int RHIT(int r_sl, int r_sh, int r_tl, int r_th) asm ("_RHIT");
extern void RUPDALL(volatile int update) asm ("_RUPDALL");
extern void RSETMAP(int x,int y) asm ("_RSETMAP");
extern void colour() asm ("_colour");
extern void RPRINT() asm ("_RPRINT");
extern void RLOCATE(int x, int y) asm ("_RLOCATE");
extern int basic_r_xpos asm ("_basic_r_xpos");
extern int basic_r_ypos asm ("_basic_r_ypos");
extern int basic_r_indx asm ("_basic_r_indx");
extern int basic_r_size asm ("_basic_r_size");
extern char *basic_r_buffer asm ("_basic_r_buffer");
extern void plot(short plot_px, short plot_py) asm ("_plot");
extern void cls(void) asm ("_cls");
extern void MODVOL(int volume) asm ("_MODVOL");
extern void SNDVOL(int volume) asm ("_SNDVOL");
char *ee_printf(const char *fmt, ...) asm ("ee_printf");
void SNDKILL(int v) asm("SNDKILL");
void SNDDELTA(int v,int x) asm("SNDDELTA");
void SNDFREQ(int v,int y) asm("SNDFREQ");
void SNDVOLRESET(int v) asm("SNDVOLRESET");
void SNDPLAYFREQ(int v,int x,int y) asm("SNDPLAYFREQ");
void delay(int x) asm("delay");
void loadclut(unsigned short *paladdress, short target_clut, short no_of_indices) asm("loadclut");
extern void RAPTOR_particles_GPU_erase() asm ("RAPTOR_particles_GPU_erase");
extern void RAPTOR_particles_GPU_plot() asm ("RAPTOR_particles_GPU_plot");
extern void RAPTOR_fade_clut() asm ("RAPTOR_fade_clut");
extern void RAPTOR_fade_clutindex() asm ("RAPTOR_fade_clutindex");
extern int fadesingle(short clut_index,short target_col) asm("fadesingle");
int fadepal(int clut_no,int fade_cols,int *palette) asm("fadepal");
extern short raptor_fade_delay asm("raptor_fade_delay");
void SNDZEROPLAY(int channel, void *sound_address, int sample_size, int sample_divider, int play_command) asm("SNDZEROPLAY");
extern short hiscore_check(int score, char *name) asm("hiscore_check");
extern void RAPTOR_resort_score_table() asm("RAPTOR_resort_score_table");
extern void RAPTOR_mt_save() asm("RAPTOR_mt_save");

//Zerosquare player equates
#define Zero_Chan_Format_Shift       30
#define Zero_Chan_Looping_Shift      29
#define Zero_Chan_Enabled_Shift      28
#define Zero_Audio_8bit_Signed       (0 << Zero_Chan_Format_Shift)
#define Zero_Audio_8bit_Unsigned     (1 << Zero_Chan_Format_Shift)
#define Zero_Audio_8bit_muLaw        (2 << Zero_Chan_Format_Shift)
#define Zero_Audio_Looping           (1 << Zero_Chan_Looping_Shift)
