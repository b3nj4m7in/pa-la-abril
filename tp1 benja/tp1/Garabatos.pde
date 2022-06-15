class Garabato {
  float x, y ;
  float xdir, ydir;
  float dir, vel ;
  float tam ;
  float an ;

  Garabato() {
    x = random( 50, width - width/2.0 );
    y = random( 0, height - height/2.0);
    xdir = random(width);
    ydir = random(height);
    vel = 2;
    dir = radians(180);
  }   

  void dibujar () {
    grafico3.strokeWeight(3);
    grafico3.fill(0);
    //grafico3.stroke(255);
    grafico3.point(x, y);// x, y);
  }

  void mover () {
    dir = radians(random(-100,100));
    an = dir + an ;
    //tambien puede ser (dir - an) que hace circulos raros 

    float dix = -vel * cos(dir);
    float diy = -vel * sin(dir);

    x = x+dix;
    y = y+diy;
    
    if ( x<0 || x>width-0 ) {
      x = x  -1;
    }
    if ( y<0 || y>height-0 ) {
      y = y  -1;
    }
  }

  void cambiarDeEstado() {
    
  }
}
