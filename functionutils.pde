void iniciarcamarita() {
  imageMode(CORNER);
  String[] cameras = Capture.list();

  if (cameras == null) {
    println("Failed to retrieve the list of available cameras, will try the default...");
    cam = new Capture(this, 640, 480);
  } 
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    printArray(cameras);

    cam = new Capture(this, cameras[numerocamarita]);
    cam.start();
  }
}


void blob() {

  if (cam.available() && camaritaactivada) {
    cam.loadPixels();
    int count = 0;
    for (int x = 0; x < cam.width; x++ ) {
      for (int y = 0; y < cam.height; y++ ) {
        int loc = x + y * cam.width;
        color currentColor = cam.pixels[loc];
        float r1 = red(currentColor);
        float g1 = green(currentColor);
        float b1 = blue(currentColor);
        float r2 = red(trackColor);
        float g2 = green(trackColor);
        float b2 = blue(trackColor);

        float d = distSq(r1, g1, b1, r2, g2, b2); 
        if (d < threshold*threshold) {
          stroke(255);
          avgX += x;
          avgY += y;
          count++;
        }
      }
    }

    //fill(255,0,0,255);
    //ellipse(mouseX,mouseY,20,20);
    if (count > 0) { 
      avgX = avgX / count;
      avgY = avgY / count;

      // Draw a circle at the tracked pixel

      if (displayimage) {
        fill(trackColor);
        colorMode(RGB);
        strokeWeight(4.0);
        stroke(0);
        ellipse(map(avgX, 0, cam.width, 0, width), map(avgY, 0, cam.height, 0, height), 40, 40);
      }



      if (isparticleoratractor) {
        if (seguir) {
          PS.setpos(map(avgX, 0, cam.width, 0, width), map(avgY, 0, cam.height, 0, height));
        }
      } else {
        if (seguir) {
          attractor.setpos(map(avgX, 0, cam.width, 0, width), map(avgY, 0, cam.height, 0, height));
        }
      }
    }
  }
  //ellipse(map(avgX, 0, cam.width, 0, width), map(avgY, 0, cam.height, 0, height), 24, 24);
}
