class PinceladasAmarillo {

  PImage pinceladasA;
  Paleta a = new Paleta("amarillo.jpg");

  PinceladasAmarillo() {

    // for (int i = 0; i < 10; i++) {

    String nombre = "mancha_amarilla.png" ;

    pinceladasA= loadImage(nombre);
    pinceladasA.filter(INVERT);
    pinceladasA.resize(700, 700);
    grafico1.imageMode(CENTER);
  }

  float xA = random( 100, 300);
  float yA = random( 100, 300);

  void dibujar() {

    push();

    grafico1.translate(0, 450 );

    grafico1.tint(a.darunColor(), 180 );

    grafico1.rotate(-7);
    
    

    grafico1.image (pinceladasA, xA, yA );

    pop();
  }
}
