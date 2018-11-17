import controlP5.*;
import processing.serial.*;

Serial port;
String var;
ControlP5 cp5;
PFont fontdesk;
PFont fonttitle;

// control arduino using gui

void setup(){
  
  size(1800,400); 
  printArray(Serial.list());
  
  port = new Serial(this, "COM6", 9600);  // arduino to com3 connect
  cp5 = new ControlP5(this);
  
  
  fontdesk = createFont("calibri light bold", 40);
  fonttitle = createFont("calibri light bold", 60);
  
  cp5.addButton("Desk1")
    .setPosition(100, 80)
    .setSize(300, 200)
    .setFont(fontdesk)
    .setColorBackground(color(192, 192, 192))
    .setColorActive(color(0, 200, 0))
   ;
  cp5.addButton("Desk2")
    .setPosition(500, 80)
    .setSize(300, 200)
    .setFont(fontdesk)
    .setColorBackground(color(192, 192, 192))
    .setColorActive(color(0, 200, 0))
   ;
  cp5.addButton("Desk3")
    .setPosition(900, 80)
    .setSize(300, 200)
    .setFont(fontdesk)
    .setColorBackground(color(192, 192, 192))
    .setColorActive(color(0, 200, 0))
   ;
  cp5.addButton("Desk4")
    .setPosition(1300, 80)
    .setSize(300, 200)
    .setFont(fontdesk)
    .setColorBackground(color(192, 192, 192))
    .setColorActive(color(0, 200, 0))
   ;
   
   background(0, 200, 0);
  
   fill(255, 255, 255);
   textFont(fonttitle);
   text("SMART CAFE", 650, 50);
   
}

void draw(){
  
  /*background(0, 200, 0);
  
  fill(255, 255, 255);
  textFont(fonttitle);
  text("SMART CAFE", 650, 50);
  */
  
  if ( port.available() > 0) 
  {  // If data is available,
    var = port.readStringUntil('\n');         // read it and store it in val
  }
  if ( var == "82 49 86 89") {
    button_green();
  }else {
    button_red();
  }
  println(var); //print it out in the console
  
}

void desk1(){
  port.write('r');
}

void desk2(){
  port.write('y');
}

void desk3(){
  port.write('b');
}

void desk4(){
  port.write('f');
}

void button_red() {
  cp5.addButton("Desk1")
    .setPosition(100, 80)
    .setSize(300, 200)
    .setFont(fontdesk)
    .setColorBackground(color(192, 192, 192))
    .setColorActive(color(0, 200, 0))
   ;
  cp5.addButton("Desk2")
    .setPosition(500, 80)
    .setSize(300, 200)
    .setFont(fontdesk)
    .setColorBackground(color(192, 192, 192))
    .setColorActive(color(0, 200, 0))
   ;
  cp5.addButton("Desk3")
    .setPosition(900, 80)
    .setSize(300, 200)
    .setFont(fontdesk)
    .setColorBackground(color(192, 192, 192))
    .setColorActive(color(0, 200, 0))
   ;
  cp5.addButton("Desk4")
    .setPosition(1300, 80)
    .setSize(300, 200)
    .setFont(fontdesk)
    .setColorBackground(color(192, 192, 192))
    .setColorActive(color(0, 200, 0))
   ;
}

void button_green() {
  cp5.addButton("Desk1")
    .setPosition(100, 80)
    .setSize(300, 200)
    .setFont(fontdesk)
    .setColorBackground(color(192, 192, 192))
    .setColorActive(color(0, 200, 0))
   ;
  cp5.addButton("Desk2")
    .setPosition(500, 80)
    .setSize(300, 200)
    .setFont(fontdesk)
    .setColorBackground(color(192, 192, 192))
    .setColorActive(color(0, 200, 0))
   ;
  cp5.addButton("Desk3")
    .setPosition(900, 80)
    .setSize(300, 200)
    .setFont(fontdesk)
    .setColorBackground(color(0, 0, 0))
    .setColorActive(color(0, 200, 0))
   ;
  cp5.addButton("Desk4")
    .setPosition(1300, 80)
    .setSize(300, 200)
    .setFont(fontdesk)
    .setColorBackground(color(0, 0, 0))
    .setColorActive(color(0, 200, 0))
   ;
}
