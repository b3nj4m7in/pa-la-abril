class PinceladasOtro{
  
  int can = 4;
  int c = int(random(can));
  int res= int(random (100 , 300));
  PImage pinceladasO[] = new PImage [can];
  Paleta o = new Paleta("otro.jpg");
  
   PinceladasOtro(){
     for (int i = 0; i < can; i++) {
      String nombre = "trazo"+nf(i, 2)+".png" ;
      pinceladasO[i]= loadImage(nombre);
      
      pinceladasO[i].filter(INVERT);
      pinceladasO[i].resize(res ,res );
    }
   }
   
     void dibujar() {
    push();
    grafico6.imageMode(CENTER);
    grafico6.translate(width/2 , height/2);
    grafico1.rotate((random(-5, 10)));
    float xO = random ( 0,width);
    float yO = random (0,height);

      int mostrar =int(random (can));
      grafico6.rotate((random(-1, 0.4)));
      grafico6.tint(o.darunColor(), 80);
      grafico6.scale ( random (-2, 2));
      grafico6.image (pinceladasO[mostrar], xO, yO);
      
    pop();
  }
}
