/*
Ejercicio elaborado por Martha Daniela Maldonado que muestra las construcciones más altas en el mundo, su nombre,
 la ciudad donde están, y el año de apertura
 */
PFont font, fontIS, fontIXS, fontIXS2, fontIXXS;
Table tTB;
int iniLin=38;
float colorG, colorB;
int i;

void setup() {
  size(1350, 700);
  //Carga la tabla con los valores de las construcciones más altas
  tTB = loadTable("tallestBuildings.csv", "header");

  //Carga las fuentes
  font=loadFont("RaspoutineDemiBold-50.vlw");
  fontIS=loadFont("Calibri-20.vlw");
  fontIXS=loadFont("Calibri-10.vlw");
  fontIXS2=loadFont("Calibri-11.vlw");
  fontIXXS=loadFont("Calibri-9.vlw");

  //Suaviza la manera como escribe la letra
  smooth();
}


void draw() {
   background(37,49,90);
  //Asigna la fuente Calibri tamaño 10
  textFont(fontIXS);

  //Escribe el texto de las ciudades y dibuja los edificios
  for (int i=0; i<tTB.getRowCount (); i++) {
    fill(255);
    text(tTB.getString(i, 2), (i*65)+37, 635); //Extrae el texto de la columna 2 de la tabla
    for (int k= (i*65)+40; k<=(i*65)+80; k+=7) {
      for (int j=620; j>630- (tTB.getInt (i, 3)/6)*4; j-=7) { //Dibuja los edificios escalados 4/6 del tamaño real
        noStroke();
        fill(255, 233, 62);
        ellipse(k, j, 4, 4);
      }
    }
  }

  //Escribe los nombres de los edificios encima de ellos y rota ese texto
  for (int i=0; i<tTB.getRowCount (); i++) {
    pushMatrix();
    translate((i*65)+60, 627-(tTB.getInt(i, 3)/6)*4);
    rotate(-HALF_PI);
    //Asigna la fuente Calibri tamaño 10
    textFont(fontIXS2);
    fill(255);
    text(tTB.getString(i, 1), 0, 0);
    popMatrix();
    stroke(255);
  }

  //Escribe el texto de los años, los pone sobre unas cajas de fondo negro y dibuja una línea en la parte inferior

  //Línea y Texto 2015

  stroke(110);
  line(38, 655, 143, 655);
  fill(37,49,90);
  noStroke();
  rect((14+143)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(0, 4), (20+143)/2, 660);

  //Línea y Texto 2014

  stroke(110);
  line(168, 655, 208, 655);
  fill(37,49,90);
  noStroke();
  rect((144+208)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(2, 4), (148+208)/2, 660);

  //Línea y Texto 2012

  stroke(110);
  line(233, 655, 335, 655);
  fill(37,49,90);
  noStroke();
  rect((209+335)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(3, 4), (213+335)/2, 660);

  //Línea y Texto 2011

  stroke(110);
  line(363, 655, 403, 655);
  fill(37,49,90);
  noStroke();
  rect((339+403)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(5, 4), (343+403)/2, 660);

  //Línea y Texto 2010

  stroke(110);
  line(428, 655, 727, 655);
  fill(37,49,90);
  noStroke();
  rect((402+727)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(6, 4), (406+727)/2, 660);

  //Línea y Texto 2009

  stroke(110);
  line(753, 655, 793, 655);
  fill(37,49,90);
  noStroke();
  rect((726+793)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(11, 4), (730+793)/2, 660);

  //Línea y Texto 2008

  stroke(110);
  line(818, 655, 858, 655);
  fill(37,49,90);
  noStroke();
  rect((792+858)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(12, 4), (796+858)/2, 660);

  //Línea y Texto 2004

  stroke(110);
  line(883, 655, 923, 655);
  fill(37,49,90);
  noStroke();
  rect((857+923)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(13, 4), (861+923)/2, 660);

  //Línea y Texto 1998

  stroke(110);
  line(948, 655, 988, 655);
  fill(37,49,90);
  noStroke();
  rect((922+988)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(14, 4), (926+988)/2, 660);

  //Línea y Texto 1994

  stroke(110);
  line(1013, 655, 1053, 655);
  fill(37,49,90);
  noStroke();
  rect((987+1053)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(15, 4), (991+1053)/2, 660);

  //Línea y Texto 1976

  stroke(110);
  line(1078, 655, 1118, 655);
  fill(37,49,90);
  noStroke();
  rect((1052+1118)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(16, 4), (1056+1118)/2, 660);

  //Línea y Texto 1973

  stroke(110);
  line(1143, 655, 1183, 655);
  fill(37,49,90);
  noStroke();
  rect((1117+1183)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(17, 4), (1121+1183)/2, 660);

  //Línea y Texto 1967

  stroke(110);
  line(1208, 655, 1248, 655);
  fill(37,49,90);
  noStroke();
  rect((1182+1248)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(18, 4), (1186+1248)/2, 660);

  //Línea y Texto 1931

  stroke(110);
  line(1273, 655, 1313, 655);
  fill(37,49,90);
  noStroke();
  rect((1247+1313)/2, 648, 25, 15);
  fill(160);
  text(tTB.getString(19, 4), (1251+1313)/2, 660);

  //Eje de Altura
  stroke(110);
  line(22, 655, 22, 60);

  //Título Metros
  fill(160);
  text("meters", 8, 600-(tTB.getInt (8, 3)/6)*4);

  //Altura máxima
  //Asigna la fuente Calibri tamaño 8
  textFont(fontIXXS);
  fill(37,49,90);
  noStroke();
  rect(12, 624-(tTB.getInt (8, 3)/6)*4, 18, 10);
  fill(160);
  text(tTB.getString(8, 3), 14, 632-(tTB.getInt (8, 3)/6)*4);

  //~630 m
  fill(37,49,90);
  noStroke();
  rect(12, 624-(tTB.getInt (1, 3)/6)*4, 18, 10);
  fill(160);
  text(tTB.getString(1, 3), 14, 632-(tTB.getInt (1, 3)/6)*4);

  //~432 m
  fill(37,49,90);
  noStroke();
  rect(12, 624-(tTB.getInt (0, 3)/6)*4, 18, 10);
  fill(160);
  text(tTB.getString(0, 3), 14, 632-(tTB.getInt (0, 3)/6)*4);

  //Título
  //Asigna la fuente Calibri tamaño 10
  fill(255, 255, 255, 20);
  textFont(font);
  text("Tallest Buildings in the World", 690, 100);
}

