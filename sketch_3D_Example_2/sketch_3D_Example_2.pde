float rotx,roty;
PImage dirtTop,dirtSide,dirtBottom;
PImage pumpkinFront, pumpkinSide, pumpkinBottom;
PImage diamond;
void setup(){
   size(800,800,P3D); 
   rotx =radians(45);
   roty = radians(45);
   dirtTop = loadImage("Grass_Top.png");
   dirtSide = loadImage("Grass_Side.png");
   dirtBottom = loadImage("Grass_Bottom.png");
  /* pumpkinFront = loadImage("carvedPumpkinTFront.webp");
   pumpkinSide = loadImage("carvedPumpkinSide.webp");
   pumpkinBottom = loadImage("carvedPumpkinTop.webp");*/
   diamond = loadImage("diamond.png");
   textureMode(NORMAL);
}

void draw(){
  background(255);
  //cube(width/2,height/2,0, #0000FF, 100);
  //fill(0);
  //sphere(width/2, height/2, 0, #0000FF, 100);
  texturedCube(width/2-150, height/2, 0, 100, dirtBottom); // bare dirt
  texturedCube(width/2, height/2, 0, 100, dirtTop, dirtSide, dirtBottom); // dirt with grass
  //texturedCube(width/2+150, height/2, 0,100, pumpkinBottom, pumpkinSide, pumpkinSide);
  texturedCube(width/2+150, height/2, 0, 100, diamond);
}

void cube(float x, float y, float z, color c, float size){
    pushMatrix();
   translate(x, y, z);
   rotateX(rotx);
   rotateY(roty);
   //rotateZ();
   fill(c);
   stroke(0);
   strokeWeight(3);
   box(size); // width, height, depth
   popMatrix();
}

void sphere(float x, float y, float z, color c, float size){
    pushMatrix();
   translate(x, y, z);
   rotateX(rotx);
   rotateY(roty);
   //rotateZ();
   fill(c);
   stroke(0);
   strokeWeight(3);
   sphere(size); // width, height, depth
   popMatrix();
}

void mouseDragged(){
   rotx=rotx+(pmouseY-mouseY)*0.01; 
   roty=roty-(pmouseX-mouseX)*0.01;
}
