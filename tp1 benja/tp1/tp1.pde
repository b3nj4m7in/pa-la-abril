/*
 | TP1 | Tmm2 | FdA | UNLP |
 ------- TP1 Etapa 2: Prototipo -------
 Comision: Lisandro | Prof.Lisandro Peralta
 Alumnas: Aguilar Nayla Belen(88106/6), Almeida Benja(88271/9), Moreira Abril(88127/2).
 Video: https://youtu.be/YDA7djWQRe8
 */
import oscP5.*;

PGraphics grafico1; //Pinceladas Amarillas//
PGraphics grafico2; //MACHAS AZULES//
PGraphics grafico3; //GARABATO//
PGraphics grafico4; //Pinceladas Rosas//
PGraphics grafico5; //Pinceladas Negras//
PGraphics grafico6; //Otras Pinceladas //
Cuadro c;

void setup() {
  
  size(700, 700 );

  grafico1 = createGraphics( 700, 700 );
  grafico2 = createGraphics( 700, 700 );
  grafico3 = createGraphics( 700, 700 );
  grafico4 = createGraphics( 700, 700 );
  grafico5 = createGraphics( 700, 700 );
  grafico6 = createGraphics( 700, 700 );
  c = new Cuadro();

  background(200, 223, 237);
}

void draw() {
  c.dibujarCuadro();
  image(grafico5, 0, 0);
  image(grafico6, 0, 0);
  image(grafico4, 0, 0);
  image(grafico1, 0, 0);
  image(grafico3, 0, 0);
  image(grafico2, 0, 0);
}
