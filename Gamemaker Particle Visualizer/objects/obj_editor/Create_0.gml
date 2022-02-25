/// @description

window_command_hook(window_command_close);

//Current version v1.0.0
windowName = "Gamemaker Particle Visualizer v1.2.4";
window_set_caption(windowName);

version_id = 1.1;


ReadString=return_readme();

unsaved = 0;



Blue = rgb_to_bgr($29A6DB);
Cyan = rgb_to_bgr($5EBCE4);

Color[0] = Blue;
Color[1] = Cyan;

Pal[0] = [Blue,Cyan];
Pal[1] = [rgb_to_bgr($9629DB),rgb_to_bgr($B05EE4)];
Pal[2] = [rgb_to_bgr($DB2B29),rgb_to_bgr($E4605E)];
Pal[3] = [rgb_to_bgr($36DB29),rgb_to_bgr($67E45E)];
Pal[4] = [rgb_to_bgr($DBC829),rgb_to_bgr($E4D75E)];
Pal[5] = [rgb_to_bgr($898989),rgb_to_bgr($ADADAD)];

//States
enum EditorState {
     wait,
	 editing
}

paused=false;


State = EditorState.wait;

//Surfaces
surf_story = -4;
surf_options = -4;

//Previous file list
FileList = ds_list_create();


//Initialize directories
var _local = environment_get_variable("LOCALAPPDATA");
LocalFolder = _local+"/Gamemaker_Particle_Visualizer";

legacy=0;

Extension = ".GPV";

CurrentFile = -4;
CurrentFileName = "";
DefaultName = "Not saved";
FilePath = "";

FileIcons=ds_list_create();

event_user(0);

Color[0] = Pal[global.pallete][0];
Color[1] = Pal[global.pallete][1];

settingVal[0]=["Pallete","global.pallete",global.pallete,"int",array_length(Pal)];
settingVal[1]=["Discord RPC","global.RPC",global.RPC,"bool",0];

var _backid = layer_background_get_id("Background");
layer_background_blend(_backid,Color[0]);

//Discord RPC
np_initdiscord("926493198006767676", 0, 0);
ex=unix_timestamp();
dis_details = "";
dis_state = "";

Message="";

backoff=0;

Scale=0;

syst = -4;
type = -4;
emit = -4;

part_X = room_width/2;
part_Y = room_height/2;



emit_W = 20;
emit_H = 20;
emit_n = 1;

Alpha = [1,0.75,0.25];
Blend = true;
PartColor = [ make_color_rgb(0,255,255), $FCFFFD, $003BFF]
type_S = [1,1];


//Sprites and shapes
Use_sprite = false;
Shapes    = [pt_shape_circle,pt_shape_cloud,pt_shape_disk,pt_shape_explosion,pt_shape_flare,pt_shape_line,pt_shape_pixel
             ,pt_shape_ring,pt_shape_smoke,pt_shape_snow,pt_shape_spark,pt_shape_sphere,pt_shape_square,pt_shape_star]
Shapename = ["Circle","Cloud","Disk","Explosion","Flare","Line","Pixel"
             ,"Ring","Smoke","Snow","Spark","Sphere","Square","Star"];
          
PartShape = 12;

Page2 = 0;
Yoffset = 0;
Yoffset2 = 0;

SpriteArr = ds_list_create();
IconArr = ds_list_create();
Sprite = 0;
Sprite_animate = false;
Sprite_anim_stretch = false;
Sprite_img_random = false;
SpriteFile = "";

ds_list_add(SpriteArr,spr_example);
ds_list_add(IconArr,spr_example);

debug_over = true;
show_dir = false;

moving=0;

mouse_x_prev=mouse_x;
mouse_y_prev=mouse_y;

Page = 0;
surf_H=0;
surf_H2=0;

_table_R_X = 240;
_table_R_Y = 200;

msg_alpha[2]=0;
msg_color[2]=0;
msg_scale[2]=0;
msg_sprite[4]=0;

unasked=true;
temp_file="";
temp_img =0;
temp_back=0;
temp_smooth=0;
temp_xorig=0;
temp_yorig=0;
temp_pos=0;

dir_min=0;
dir_max=0;
dir_incr=0;
dir_wiggle=0;
dir_quest[3]=0;

ang_min=0;
ang_max=359;
ang_incr=10;
ang_wiggle=0;
ang_relative=1;
ang_quest[3]=0;

emit_shape = 0;
emit_distr = 0;

emitS_types = [ps_shape_ellipse,ps_shape_diamond,ps_shape_line,ps_shape_rectangle];
emitS_names = ["Ellipse","Diamond","Line","Rectangle"];

emitD_types = [ps_distr_gaussian,ps_distr_invgaussian,ps_distr_linear];
emitD_names = ["Gaussian","Invgaussian","Linear"];

Spd_min = 0.1;
Spd_max = 0.5;
Spd_incr=0;
Spd_wiggle=0;
spd_quest[3]=0;

Grav_amt=0.02;
Grav_dir=90;
grav_quest[1]=0;

Size_min = 0.1;
Size_max = 0.15;
Size_incr=-.001;
Size_wiggle=0;
size_quest[3]=0;

Life_min=100;
Life_max=150;
life_quest[1]=0;

emit_n_q=0;

//var _g = sprite_add(_f,1,0,0,0,0);
close_quest_open=0;
close_quest_new=0;
close_quest_home=0;
close_quest=0;

FILE = "";