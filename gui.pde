/*

 MOVIMIENTO
 COLORES
 FORMA Y TAMAÑO
 PARTICULA */

void gui() {

  cp5 = new ControlP5(this);


  //Variables utilizadas para cambiar el gui
  color [] palett = new color[10];
  palett[0] = color(150, 150, 180); //ACCORDION
  palett[1] = color(255, 0, 255);
  palett[2] = color(150, 170, 210, 150); // Color fondo sliders
  palett[3] = color(150, 180, 255, 170); //color manija
  palett[4] = color(120, 255, 255, 170); //color manija active
  // group number 1, contains 2 bangs

  int SliderW = 250, sliderH = 17 ;
  int handlesize = 12;
  int sep = 15;
  int marginleft = 15;
  int colorwheelr = 100;
  int ControllerWidth = 350;
  int titleHeight = 20 ; //NOMBRE DE LA VARIABLE QUE LE PAGA AL TAMAÑO DE CADA COSITO DEL TITULO
  int knobradius = 30;
  int [] pressetbangsize = {50,20};

  Group g1 = cp5.addGroup("Movimiento")
    .setBackgroundHeight(sep*6 + sliderH*7)
    //.setColor(CColor) 
    .setHeight(titleHeight)
    .setBackgroundColor(color(palett[0], 64))
    .setColorForeground(color(palett[0])) 
    .setColorLabel(palett[1]) 
    .setColorValue(palett[0]) 
    ;

float e = 0;
  cp5.addRange("SpeedX")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(-20, 20)
    .setRangeValues(-20, 20)
    // after the initialization we turn broadcast back on again
    //.setBroadcast(true)
    //.setColorActive(palett[4])
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .setColorCaptionLabel(color(255, 255, 255, 255))
    .moveTo(g1)
    //.setCaptionLabel("pete");
    ;
  
 
  cp5.addRange("SpeedY")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*2 + sliderH)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(-20, 20)
    .setRangeValues(e, e)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g1)
    ;

  cp5.addRange("AcelerationX")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*3 + sliderH*2)
    .setSize(SliderW, sliderH )
    .setHandleSize(handlesize)
    .setRange(-2, 2 )
    .setRangeValues(0, 0)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g1)
    ;

  cp5.addRange("AcelerationY")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*4 + sliderH*3)
    .setSize(SliderW, sliderH )
    .setHandleSize(handlesize)
    .setRange(-2, 2)
    .setRangeValues(0, 0)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g1)
    ;

  cp5.addRange("Topspeed")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*5 + sliderH*4)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 20)
    .setRangeValues(4, 5)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g1)
    ;

  cp5.addRange("Random")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*6 + sliderH*5)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 20)
    .setRangeValues(0, 0)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g1)
    ;

  Group g6 = cp5.addGroup("Oscilacion")
    .setBackgroundHeight(sep*5 + sliderH*4)
    //.setColor(CColor) 
    .setHeight(titleHeight)
    .setBackgroundColor(color(palett[0], 64))
    .setColorForeground(color(palett[0])) 
    .setColorLabel(palett[1]) 
    .setColorValue(palett[0]) 
    ;

  cp5.addRange("Angular speed X")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 20)
    .setRangeValues(0, 0)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g6)
    ;

  cp5.addRange("Angular speed Y")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*2 + sliderH)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 20)
    .setRangeValues(0, 0)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g6)
    ;

  cp5.addRange("Amplitud X")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*3 + sliderH*2)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(-20, 20)
    .setRangeValues(0, 0)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g6)
    ;

  cp5.addRange("Amplitud Y")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*4 + sliderH*3)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(-20, 20)
    .setRangeValues(0, 0)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g6)
    ;

  // group number 2, contains a radiobutton
  Group g2 = cp5.addGroup("Colores")
    .setBackgroundHeight(sep*10 + sliderH*8 + colorwheelr)    
    .setBackgroundColor(color(palett[0], 64))
    .setColorForeground(color(palett[0])) 
    .setColorLabel(palett[1]) 
    .setColorValue(palett[0]) 
    .setHeight(titleHeight)
    ;

  cp5.addRange("ShapeHue")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 255)
    .setRangeValues(225, 255)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g2)
    ;
  cp5.addRange("ShapeSaturation")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*2 + sliderH)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 255)
    .setRangeValues(149, 255)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g2)
    ;
  cp5.addRange("ShapeBrightness")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*3 + sliderH*2)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 255)
    .setRangeValues(142, 173)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g2)
    ;
    
  cp5.addRange("ShapeAlpha")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*4 + sliderH*3)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 255)
    .setRangeValues(142, 173)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g2)
    ;

  cp5.addRange("BorderHue")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*5+ sliderH*4)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 255)
    .setRangeValues(0, 255)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g2)
    ;

  cp5.addRange("BorderSaturation")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*6 + sliderH*5)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 255)
    .setRangeValues(0, 255)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g2)
    ;


  cp5.addRange("BorderBrightness")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*7 + sliderH*6)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 255)
    .setRangeValues(0, 0)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g2)
    ;
  
  cp5.addRange("BorderAlpha")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*8 + sliderH*7)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 255)
    .setRangeValues(0, 0)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g2)
    ;
   
  cp5.addColorWheel("fondo", ControllerWidth/2 -colorwheelr/2, sep*9 + sliderH*8, colorwheelr ).moveTo(g2);

  // group number 3, contains a bang and a slider
  Group g3 = cp5.addGroup("Forma y tamaño")
    .setHeight(titleHeight)
    .setBackgroundHeight(sep*4 + sliderH*5)       
    .setBackgroundColor(color(palett[0], 64))
    .setColorForeground(color(palett[0])) 
    .setColorLabel(palett[1]) 
    .setColorValue(palett[0]) 
    ;

  cp5.addRange("Size")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 200 )
    .setRangeValues(35, 50)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g3)
    ;

  cp5.addRange("Size_rdm")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*2 + sliderH)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 100 )
    .setRangeValues(10, 15)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g3)
    ;
  cp5.addRange("Border")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*3 + sliderH*2)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 15 )
    .setRangeValues(0, 0)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g3)
    ;

  cp5.addRange("Npoints")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    //.setBroadcast(false) 
    .setPosition(marginleft, sep*4 + sliderH*3)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(0, 60 )
    .setDecimalPrecision(0)
    .setRangeValues(0, 0)
    .setNumberOfTickMarks(60)
    .setSliderMode(Slider.FLEXIBLE)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g3)
    ;

  Group g4 = cp5.addGroup("Particula")

    .setBackgroundHeight(sep + sliderH )
    .setHeight(titleHeight)
    .setBackgroundColor(color(palett[0], 64))
    .setColorForeground(color(palett[0])) 
    .setColorLabel(palett[1]) 
    .setColorValue(palett[0]) 
    ;

  cp5.addRange("life")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    // //.setBroadcast(false) 
    .setPosition(marginleft, sep)
    .setSize(SliderW, sliderH)
    .setHandleSize(handlesize)
    .setRange(1, 10 )
    .setRangeValues(2, 4)
    // after the initialization we turn broadcast back on again
    // .setBroadcast(true)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g4)
    ;

  cp5.addSlider("spawnradius")
    .setPosition(marginleft, sep*2 + sliderH)
    .setSize(SliderW, sliderH)
    .setRange(0, 1000)
    .setValue(500)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g4)
    ;

  Group g5 = cp5.addGroup("Fuerzas")
    .setBackgroundHeight(sep+knobradius*3)
    .setHeight(titleHeight)
    .setBackgroundColor(color(palett[0], 64))
    .setColorForeground(color(palett[0])) 
    .setColorLabel(palett[1]) 
    .setColorValue(palett[0]) 
    ;

  cp5.addKnob("atractor")
    .setRange(-5, 5)
    .setValue(0)
    .setPosition(marginleft, sep )
    .setRadius(knobradius)
    .setDragDirection(Knob.VERTICAL)
    .moveTo(g5)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .hide();
  ;

  cp5.addToggle("ParticleOAttractor")
    .setPosition(marginleft*4+knobradius, sep + knobradius/2) 
    .setSize(50, 20)
    .setValue(true)
    .setMode(ControlP5.SWITCH)
    .moveTo(g5)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    ;

  cp5.addToggle("MostrarAtractor")
    .setPosition(marginleft*4+knobradius + 70, sep + knobradius/2) 
    .setSize(50, 20)
    .moveTo(g5)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .setCaptionLabel("No mostrar")
    ;

  cp5.addToggle("ActivarAtractor")
    .setPosition(marginleft*5+knobradius + 140, sep + knobradius/2) 
    .setSize(50, 20)
    .moveTo(g5)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .setCaptionLabel("Activar Atractor")
    ;

  cp5.addSlider("WASD")
    .setPosition(marginleft, sep*2 + knobradius + sliderH)
    .setSize(SliderW, sliderH)
    .setRange(0, 20)
    .setValue(5)
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g5)
    ;

 /* Group g7 = cp5.addGroup("Presets")

    .setBackgroundHeight(sep + sliderH )
    .setHeight(titleHeight)
    .setBackgroundColor(color(palett[0], 64))
    .setColorForeground(color(palett[0])) 
    .setColorLabel(palett[1]) 
    .setColorValue(palett[0]) 
    ;

  cp5.addBang("Humano")
    .setPosition(marginleft, sep)
    .setSize(pressetbangsize[0], pressetbangsize[1])
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g7)
    ;
  cp5.addBang("Fueguito")
    .setPosition(marginleft *2+ pressetbangsize[0], sep)
    .setSize(pressetbangsize[0], pressetbangsize[1])
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g7)
    ;*/
  
  float sepx2 = pressetbangsize[0]*1.5;
  float posx2 = marginleft; 
  Group g7 = cp5.addGroup("Generales").setHeight(titleHeight)
    .setBackgroundHeight(sep*4 + sliderH*5)       
    .setBackgroundColor(color(palett[0], 64))
    .setColorForeground(color(palett[0])) 
    .setColorLabel(palett[1]) 
    .setColorValue(palett[0]);
    
   //cp5.
   cp5.addToggle("showframerate")
    .setPosition(posx2, sep)
    .setSize(pressetbangsize[0], pressetbangsize[1])
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g7)
    ;
  
  cp5.addToggle("seguir")
    .setPosition(posx2+=sepx2, sep)
    .setSize(pressetbangsize[0], pressetbangsize[1])
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g7)
    ;
    
  cp5.addToggle("displayimage")
    .setPosition(posx2+=sepx2, sep)
    .setSize(pressetbangsize[0], pressetbangsize[1])
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g7)
    ;
    
   cp5.addToggle("isbg")
    .setPosition(posx2+=sepx2, sep)
    .setSize(pressetbangsize[0], pressetbangsize[1])
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g7)
    ;
  cp5.addToggle("iscolorarray")
    .setPosition(posx2-=sepx2*3, sep*4)
    .setSize(pressetbangsize[0], pressetbangsize[1])
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g7)
    ;
   
   cp5.addToggle("spoutactive")
    .setPosition(posx2+=sepx2, sep*4)
    .setSize(pressetbangsize[0], pressetbangsize[1])
    .setColorActive(palett[4])
    .setColorBackground(palett[2])
    .setColorForeground(palett[3]) 
    .moveTo(g7)
    ;

//iscolorarray
  // create a new accordion
  // add g1, g2, and g3 to the accordion.
  accordion = cp5.addAccordion("acc")
    .setPosition(10, 10)
    .setWidth(ControllerWidth)
    .addItem(g1)
    .addItem(g6)
    .addItem(g2)
    .addItem(g3)
    .addItem(g4)
    .addItem(g5)
    .addItem(g7)
    ;

  //accordion.open(0,1,2);

  // use Accordion.MULTI to allow multiple group 
  // to be open at a time.
  accordion.setCollapseMode(Accordion.SINGLE);

  // when in SINGLE mode, only 1 accordion  
  // group can be open at a time.  
  // accordion.setCollapseMode(Accordion.SINGLE);
}


void radio(int theC) {
} 

void controlEvent(ControlEvent theControlEvent) {
  if (theControlEvent.isFrom("SpeedX")) {
    speedX_min = theControlEvent.getController().getArrayValue(0);
    speedX_max = theControlEvent.getController().getArrayValue(1);
    
   // println("
    
    println("SpeedX_min", theControlEvent.getController().getArrayValue(0));
    println("SpeedX_max", theControlEvent.getController().getArrayValue(1));
  }

  if (theControlEvent.isFrom("SpeedY")) {
    speedY_min = theControlEvent.getController().getArrayValue(0);
    speedY_max = theControlEvent.getController().getArrayValue(1);
    println("SpeedY_min", speedY_min);
    println("SpeedY_max", speedY_max);
  }

  if (theControlEvent.isFrom("AcelerationX")) {
    accelX_min = theControlEvent.getController().getArrayValue(0);
    accelX_max = theControlEvent.getController().getArrayValue(1);
    println("accelX_min", accelX_min);
    println("accelX_max", accelX_max);
  }

  if (theControlEvent.isFrom("AcelerationY")) {
    accelY_min = theControlEvent.getController().getArrayValue(0);
    accelY_max = theControlEvent.getController().getArrayValue(1);
    println("accelY_min", accelY_min);
    println("accelY_max", accelY_max);
  }

  if (theControlEvent.isFrom("Random")) {
    rdm_min = theControlEvent.getController().getArrayValue(0);
    rdm_max = theControlEvent.getController().getArrayValue(1);
    println("rdm_min", rdm_min);
    println("rdm_max", rdm_max);
  }

  if (theControlEvent.isFrom("Topspeed")) {
    topspeed_min = theControlEvent.getController().getArrayValue(0);
    topspeed_max = theControlEvent.getController().getArrayValue(1);
    println("topspeed_min", topspeed_min);
    println("topspeed_max", topspeed_max);
  }
  if (theControlEvent.isFrom("ShapeHue")) {
    shape_hue_min = theControlEvent.getController().getArrayValue(0);
    shape_hue_max = theControlEvent.getController().getArrayValue(1);
    println("shape_hue_min", shape_hue_min);
    println("shape_hue_max", shape_hue_max);
  }
  if (theControlEvent.isFrom("ShapeSaturation")) {
    shape_sat_min = theControlEvent.getController().getArrayValue(0);
    shape_sat_max = theControlEvent.getController().getArrayValue(1);
    println("shape_sat_min", shape_sat_min);
    println("shape_sat_max", shape_sat_max);
  }
  if (theControlEvent.isFrom("ShapeBrightness")) {
    shape_bri_min = theControlEvent.getController().getArrayValue(0);
    shape_bri_max = theControlEvent.getController().getArrayValue(1);
    println("shape_bri_min", shape_bri_min);
    println("shape_bri_max", shape_bri_max);
  }
   if (theControlEvent.isFrom("ShapeAlpha")) {
    shape_alpha_min = theControlEvent.getController().getArrayValue(0);
     shape_alpha_max= theControlEvent.getController().getArrayValue(1);
    println("shape_alpha_min", shape_alpha_min);
    println("shape_alpha_max", shape_alpha_max);
  }
  
  if (theControlEvent.isFrom("BorderHue")) {
    stroke_hue_min = theControlEvent.getController().getArrayValue(0);
    stroke_hue_max = theControlEvent.getController().getArrayValue(1);
    println("stroke_hue_min", stroke_hue_min);
    println("stroke_hue_max", stroke_hue_max);
  }
  if (theControlEvent.isFrom("BorderSaturation")) {
    stroke_sat_min = theControlEvent.getController().getArrayValue(0);
    stroke_sat_max = theControlEvent.getController().getArrayValue(1);
    println("stroke_sat_min", stroke_sat_min);
    println("stroke_sat_max", stroke_sat_max);
  }
  if (theControlEvent.isFrom("BorderBrightness")) {
    stroke_bri_min = theControlEvent.getController().getArrayValue(0);
    stroke_bri_max = theControlEvent.getController().getArrayValue(1);
    println("stroke_sat_min", stroke_bri_min);
    println("stroke_sat_max", stroke_bri_max);
  }
  if (theControlEvent.isFrom("BorderAlpha")) {
    stroke_alpha_min = theControlEvent.getController().getArrayValue(0);
    stroke_alpha_max = theControlEvent.getController().getArrayValue(1);
    println("stroke_alpha_min", stroke_alpha_min);
    println("stroke_alpha_max", stroke_alpha_max);
  }
  if (theControlEvent.isFrom("Size")) {
    size_min = theControlEvent.getController().getArrayValue(0);
    size_max = theControlEvent.getController().getArrayValue(1);
    println("size_min", size_min);
    println("size_max", size_max);
  }
  if (theControlEvent.isFrom("Border")) {
    border_min = theControlEvent.getController().getArrayValue(0);
    border_max = theControlEvent.getController().getArrayValue(1);
    println("border_min", border_min);
    println("border_max", border_max);
  }
  if (theControlEvent.isFrom("Size_rdm")) {
    rdm_size_max = theControlEvent.getController().getArrayValue(0);
    rdm_size_min = theControlEvent.getController().getArrayValue(1);
    println("rdm_size_max", rdm_size_max);
    println("rdm_size_min", rdm_size_min);
  }

  if (theControlEvent.isFrom("Npoints")) {
    npoints_min = int(theControlEvent.getController().getArrayValue(0));
    npoints_max = int(theControlEvent.getController().getArrayValue(1));
    println("rdm_size_max", rdm_size_max);
    println("rdm_size_min", rdm_size_min);
  }

  if (theControlEvent.isFrom("life")) {
    lifespawnspeed_min = int(theControlEvent.getController().getArrayValue(0));
    lifespawnspeed_max = int(theControlEvent.getController().getArrayValue(1));
    println("lifespawnspeed_min", lifespawnspeed_min);
    println("lifespawnspeed_max", lifespawnspeed_max);
  }

  if (theControlEvent.isFrom("Angular speed X")) {
    aspeedx_min = int(theControlEvent.getController().getArrayValue(0));
    aspeedx_max = int(theControlEvent.getController().getArrayValue(1));
    println("aspeedx_min", aspeedx_min);
    println("aspeedx_max", aspeedx_max);
  }
  if (theControlEvent.isFrom("Angular speed Y")) {
    aspeedy_min = int(theControlEvent.getController().getArrayValue(0));
    aspeedy_max = int(theControlEvent.getController().getArrayValue(1));
    println("aspeedy_min", aspeedy_min);
    println("aspeedy_max", aspeedy_max);
  }
  if (theControlEvent.isFrom("Amplitud X")) {
    ampx_min = int(theControlEvent.getController().getArrayValue(0));
    ampx_max = int(theControlEvent.getController().getArrayValue(1));
    println("ampx_min", ampx_min);
    println("ampx_max", ampx_max);
  }

  if (theControlEvent.isFrom("Amplitud Y")) {
    ampy_min = int(theControlEvent.getController().getArrayValue(0));
    ampy_max = int(theControlEvent.getController().getArrayValue(1));
    println("ampy_min", ampy_min);
    println("ampy_max", ampy_max);
  }

  // ShapeHue
}

void ParticleOAttractor(boolean theFlag) {
  if (theFlag) {
    isparticleoratractor =true;
    cp5.getController("ParticleOAttractor").setCaptionLabel("Particle");
  } else {
    isparticleoratractor =false;
    cp5.getController("ParticleOAttractor").setCaptionLabel("Atractor");
  }
}

void MostrarAtractor(boolean theFlag) {
  if (theFlag) {
    mostraratractor = true;
    cp5.getController("MostrarAtractor").setCaptionLabel("Mostrar Atractor");
  } else {
    mostraratractor = false;
    cp5.getController("MostrarAtractor").setCaptionLabel("No Mostrar Atractor");
  }
}
void ActivarAtractor(boolean theFlag) {
  if (theFlag) {
    activaratractor = true;
    cp5.getController("ActivarAtractor").setCaptionLabel("Desactivar Atractor");
    cp5.getController("atractor").show();
  } else {
    activaratractor = false;
    cp5.getController("ActivarAtractor").setCaptionLabel("Activar Atractor");

    cp5.getController("atractor").hide();
  }
}
void atractor(float theValue) {
  attractor.str = theValue;
}

void WASD(float theValue) {
  str = theValue;
}

void spawnradius(float theValue) {
  PS.spawnradius = theValue;
  println("spawnradius ", PS.spawnradius);
}
