class PinceladasRosa {

  int can = 2;
  int c = int(random(can));
  PImage pinceladasR[] = new PImage [can];
  Paleta r = new Paleta("rosa.jpg");

  PinceladasRosa() {
    for (int i = 0; i < can; i++) {
      String nombre = "mancha_rosa.png" ;
      pinceladasR[i]= loadImage(nombre);
      pinceladasR[i].filter(INVERT);
      pinceladasR[i].resize(200,300);
    }
  }

  void dibujar() {
    println("sedibuja");
    push();
    grafico4.translate(width/2, 0);
    grafico4.imageMode(CENTER);
    grafico4.rotate(-7);
    grafico4.tint(r.darunColor(), 126);
    //grafico4.scale(1);
    float xR = random(0 , 300);
    float yR= random ( 100 , height/2 );

    for (int i = 0; i < c; i++) {
      int mostrar =int(random (can));

      grafico4.image(pinceladasR[mostrar], xR, yR);
    } 
    pop();
  }
}
