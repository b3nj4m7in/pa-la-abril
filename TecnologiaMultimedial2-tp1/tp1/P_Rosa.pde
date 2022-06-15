class PinceladasRosa {

  PImage pinceladasR;
  Paleta r = new Paleta("rosa.jpg");

  PinceladasRosa() {
    String nombre = "mancha_rosa.png" ;
    pinceladasR = loadImage(nombre);
    pinceladasR.filter(INVERT);
    pinceladasR.resize(200, 300);
  }

  void dibujar() {
    float xR = random(0, 300);
    float yR= random ( 100, height/2 );

    push();

    grafico4.translate(width/2, 0);

    grafico4.imageMode(CENTER);

    grafico4.rotate(-7);

    grafico4.tint(r.darunColor(), 126);

    grafico4.image(pinceladasR, xR, yR);

    pop();
  }
}
