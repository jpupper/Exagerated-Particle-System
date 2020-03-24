
boolean camaritaactivada = true ; //ESTA DEBE SER CONSTANTE PORQUE INICIA LA CAMARITA Y DEMAS
boolean iscolorarray = false;
boolean displayimage = true;
boolean spoutactive = false;
boolean Semuestra=false;
boolean isparticleoratractor = false;
boolean mostraratractor = false;
boolean activaratractor = false;
boolean showframerate = false;

boolean seguir = false;

int archivoactivo =1;

//Estos funcionaran como valores iniciales.

//Flashea cualquiera.
float speedX_min = 0, speedX_max = 0
    , speedY_min = 0, speedY_max = 0, 

  accelX_min , accelX_max, 
  accelY_min, accelY_max, 


  rdm_min, rdm_max, 
  topspeed_min , topspeed_max, 

  size_min, size_max, 
  rdm_size_min, rdm_size_max, 

  border_min, border_max, 

  lifespawnspeed_min, lifespawnspeed_max, 

  shape_hue_min, shape_hue_max=255, 
  shape_sat_min, shape_sat_max=255, 
  shape_bri_min, shape_bri_max=255, 
  shape_alpha_min,shape_alpha_max=255,
  
  stroke_hue_min, stroke_hue_max=255, 
  stroke_sat_min, stroke_sat_max=255, 
  stroke_bri_min, stroke_bri_max=255, 
  stroke_alpha_min, stroke_alpha_max=255, 

  aspeedx_min, aspeedx_max
  , aspeedy_min, aspeedy_max, 
  ampx_min, ampx_max, 
  ampy_min, ampy_max;


float str =15; //fuerza del wasd
int npoints_min = 0, npoints_max = 30;
color fondo;      

Attractor attractor;

boolean isbg = false;
int number = 2;

int sumator = 5;
float limit = 50;

color trackColor; 
float threshold = 25;
ParticleSystem PS;

float avgX = 0;
float avgY = 0;
