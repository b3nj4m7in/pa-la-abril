class Cuadro {

  GestorVoz v;
  Garabato b;
  Mancha a;
  PinceladasAmarillo c;
  PinceladasRosa d;
  PinceladasOtro e;

  Cuadro() { 
    //-------
    v = new GestorVoz();
    a= new  Mancha();
    b = new Garabato ();
    c = new PinceladasAmarillo();
    d = new PinceladasRosa();
    e = new PinceladasOtro();
    //-------
  }

  void dibujarCuadro() {  
    v.Sonido();
    //println(v.);
    //println(v.sonidoAgudo);



    //Manchas
    grafico2.beginDraw();
    grafico5.beginDraw();
    if (v.pitch < v.minimoPitch & v.sonidoGrave ) {
      a.actualizar();
      a.dibujar();
      a.PinceladasNegras();
    }
    grafico5.endDraw();
    grafico2.endDraw();


    //Pinceladas
    grafico6.beginDraw();
    grafico1.beginDraw(); 
    grafico4.beginDraw();
    if (v.pitch > v.maximoPitch) {
      c.dibujar();
    }
    if (v.volAlto) {
      
      d.dibujar();
      e.dibujar();
    } else if (v.volBajo) {

      d.dibujar();
      e.dibujar();
    }

    grafico4.endDraw();
    grafico1.endDraw();
    grafico6.endDraw();

    //Garabato
    grafico3.beginDraw(); 
    if (v.sonidoAgudo) {
      b.dibujar();
      b.mover();
    }
    grafico3.endDraw();
    println(v.volBajo);
  }
}
