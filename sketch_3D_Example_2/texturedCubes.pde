void texturedCube(float x, float y, float z, int size, PImage texture){
     pushMatrix();
    translate(x,y,z);
    scale(size);
    rotateX(rotx);
    rotateY(roty);
    noStroke();
    beginShape(QUADS);
    //top
    texture(texture);
    
    vertex(0,0,0,0,0);
    vertex(1,0,0,1,0);
    vertex(1,0,1,1,1);
    vertex(0,0,1,0,1);

    //bottom    
    vertex(0,1,0,0,0);
    vertex(1,1,0,1,0);
    vertex(1,1,1,1,1);
    vertex(0,1,1,0,1);
   
    //front
    vertex(0,0,1,0,0);
    vertex(1,0,1,1,0);
    vertex(1,1,1,1,1);
    vertex(0,1,1,0,1);
    
    // back
    vertex(0,0,0,0,0);
    vertex(1,0,0,1,0);
    vertex(1,1,0,1,1);
    vertex(0,1,0,0,1);
    
    vertex(0,0,0,0,0);
    vertex(0,0,1,1,0);
    vertex(0,1,1,1,1);
    vertex(0,1,0,0,1);
    
    vertex(1,0,0,0,0);
    vertex(1,0,1,1,0);
    vertex(1,1,1,1,1);
    vertex(1,1,0,0,1);
    
    endShape();
    popMatrix();
}

void texturedCube(float x, float y, float z, int size, PImage textureTop, PImage textureSide, PImage textureBottom){
    pushMatrix();
    translate(x,y,z);
    scale(size);
    rotateX(rotx);
    rotateY(roty);
    
    noStroke();
    
    beginShape(QUADS);
    //top
    texture(textureTop);
    
    vertex(0,0,0,0,0);
    vertex(1,0,0,1,0);
    vertex(1,0,1,1,1);
    vertex(0,0,1,0,1);
    
    endShape();
    
    beginShape(QUADS);

    //bottom
    texture(textureBottom);
    
    vertex(0,1,0,0,0);
    vertex(1,1,0,1,0);
    vertex(1,1,1,1,1);
    vertex(0,1,1,0,1);
    
    endShape();
    
    beginShape(QUADS);
   
   texture(textureSide);
    //front
    vertex(0,0,1,0,0);
    vertex(1,0,1,1,0);
    vertex(1,1,1,1,1);
    vertex(0,1,1,0,1);
    
    // back
    vertex(0,0,0,0,0);
    vertex(1,0,0,1,0);
    vertex(1,1,0,1,1);
    vertex(0,1,0,0,1);
    
    vertex(0,0,0,0,0);
    vertex(0,0,1,1,0);
    vertex(0,1,1,1,1);
    vertex(0,1,0,0,1);
    
    vertex(1,0,0,0,0);
    vertex(1,0,1,1,0);
    vertex(1,1,1,1,1);
    vertex(1,1,0,0,1);
    
    endShape();
    popMatrix();
}
