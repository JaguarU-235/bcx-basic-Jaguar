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

//Functions

void basicmain(); //main function declaration
extern unsigned char plot_colour asm ("_plot_colour");
extern int GETPAD(int pad) asm ("_GETPAD");
extern void MODPLAY(int module) asm ("_MODPLAY");
extern void SNDPLAY(int sampleno, int channel) asm ("_SNDPLAY");
extern void RPARTI(int fx,int x,int y) asm ("_RPARTI");
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
