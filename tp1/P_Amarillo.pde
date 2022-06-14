class PinceladasAmarillo {
  int can = 2;
  int c = int(random(can));
  float f ;
  PImage pinceladasA[] = new PImage [can];
  Paleta a = new Paleta("amarillo.jpg");

  PinceladasAmarillo() {
    for (int i = 0; i < can; i++) {

      String nombre = "mancha_amarilla.png" ;

      pinceladasA[i]= loadImage(nombre);
      pinceladasA[i].filter(INVERT);
      pinceladasA[i].resize(400, 300);
    }
  }

  void dibujar() {
    println("sedibuja");
    

    grafico1.imageMode(CENTER);
    blendMode(HARD_LIGHT);
    grafico1.translate(0, 450 );
    float xA = random( 0, 400) ;
    float yA = random( 0, 400);

    push();
    for (int i = 0; i < c; i=+3) {
      println(i);

      int mostrar =int(random (can));
      grafico1.tint(a.darunColor(), 50 );
      grafico1.rotate(-7);
      //grafico1.scale (random(2 , 6));
      grafico1.image (pinceladasA[mostrar], xA, yA);
    }
    pop();

    if ( c>=100 ) {
    }
  }
}
