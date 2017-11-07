personajes Sans2;
personajes pequenopercebe;
personajes Sans;
personajes cazador;
personajes ghost;
personajes chica;

int ward;
int ward2;

int seleccion;
int turno=0;
int HP;
int Attack;
int HP2;
int Attack2;
int x=6;
int batalla;
int menu;
int desenlace;
int pantalla;
float delta;
int prebatalla;

void setup(){
 size(1200,680);
 pantalla=1;
 Sans2=new personajes(1,1,"Sans",1);
  pequenopercebe=new personajes(6,60,"Pequeño Percebe",2);
  Sans=new personajes(15,55,"Faraam",3);
  cazador=new personajes(12,45,"Gats",4);
  ghost=new personajes(8,60,"Ghost",5);
  chica=new personajes(13,52,"Rei",6);
  
 
}

void draw(){
  
  background(0);
  delta+=1;
  if (pantalla==1){
  menu();
  
}
if (pantalla==2){
  seleccion();
  prebatalla();
}
if (pantalla==3){
  batalla();
  turnos();
}

if (pantalla==4){
  resolucion();
  ciclo();
}
}

void menu(){
  fill(255);
    textSize(50);
    text ("Blood on the ashes",300,200,100);
    fill(0+delta);
    textSize(25);
     text ("Press ENTER",100,600);
     fill(0+delta,0,0);
     
     textSize(15);
     text("Move the mouse in the screen 2",255,650);
     text ("Player 1:",900,300);
     text ("For select your character press:",900,320);
     text ("q, w, e, r, t or y ",1000,340);
     text ("If you want to attack, press z ",900,360);
     fill(0,0,0+delta);
     textSize(15);
     text ("Player 2:",900,500);
     text ("For select your character press:",900,520);
     text ("a, s, d, f, g or h ",1000,540);
     text ("If you want to attack, press b ",900,560);
     if(key==ENTER){
      pantalla=2; 
     }
      
}

void seleccion(){
   fill(255);
    textSize(17);
    text ("Select your character",515,50);
    stroke(0,0,255);
      noFill();
   rect(70,600,50,70);
    stroke(255,0,0);
   rect(130,600,50,70);
   stroke(0,255,150);
   rect(190,600,50,70);
    stroke(255);
   rect(250,600,50,70);
   stroke(150);
   rect(310,600,50,70);
   stroke(255,30,255);
   rect(370,600,50,70);
   
   
   //player 2
    
    stroke(0,0,255);
      noFill();
   rect(710,600,50,70);
    stroke(255,0,0);
   rect(770,600,50,70);
   stroke(0,255,150);
   rect(830,600,50,70);
    stroke(255);
   rect(890,600,50,70);
   stroke(150);
   rect(950,600,50,70);
   stroke(255,30,255);
   rect(1010,600,50,70);
   
   //
    
    if((mouseX>=70 & mouseX<120) & (mouseY>=600 & mouseY<=650)){
    
      strokeWeight(3);
      stroke(0,0,255);
      textSize(50);
      fill (0,0,255);
      text("Sanz",50,100);
      textSize(30);
      fill (0,0,255);
      text("Attack: 1",520,200);
      text("HP: 1",520,260);
      noFill();
   rect(0,0,500,680);
   pushMatrix();
   translate(-120,100);
     Sans2.display();
      popMatrix();
      
    }
     if((mouseX>=130 & mouseX<180) & (mouseY>=600 & mouseY<=670)){
    
      strokeWeight(3);
      stroke(255,0,0);
      textSize(50);
      fill (255,0,0);
      text("Pequeño Percebe",50,100);
      textSize(30);
      fill (255,0,0);
      text("Attack: 6",520,200);
      text("HP: 60",520,260);
      noFill();
   rect(0,0,500,680);
   pushMatrix();
   translate(0,100);
     pequenopercebe.display();
      popMatrix();
      
      
    }
     if((mouseX>=190 & mouseX<240) & (mouseY>=600 & mouseY<=670)){
     
     fill(0,255,150);
      strokeWeight(3);
      stroke(0,255,150);
      textSize(50);
      fill (0,255,150);
      text("Sans",50,100);
      textSize(30);
      fill (0,255,150);
      text("Attack: 15",520,200);
      text("HP: 55",520,260);
      noFill();
   rect(0,0,500,680);
   pushMatrix();
   translate(-120,100);
     Sans.display();
      popMatrix();  
      
    }
    
     
     if((mouseX>=370 & mouseX<420) & (mouseY>=600 & mouseY<=670)){
     
     fill(255,30,255);
      strokeWeight(3);
      stroke(255,30,255);
      textSize(50);
      fill (255,30,255);
      text("Rey",50,100);
      textSize(30);
      fill (255,30,255);
      text("Attack: 13",520,200);
      text("HP: 52",520,260);
      noFill();
   rect(0,0,500,680);
   pushMatrix();
   //translate();
   scale(2,2);
     chica.display();
      popMatrix();  
      
    }
    
    if((mouseX>=250 & mouseX<300) & (mouseY>=600 & mouseY<=670)){
     
     fill(255);
      strokeWeight(3);
      stroke(255);
      textSize(50);
      fill (255);
      text("Ghost",50,100);
      textSize(30);
      fill (255);
      text("Attack: 8",520,200);
      text("HP: 60",520,260);
      noFill();
   rect(0,0,500,680);
   pushMatrix();
   translate(50,100);
   
     ghost.display();
      popMatrix();  
      
    }
     
      
      
      //player2
     
    if((mouseX>=710 & mouseX<760) & (mouseY>=600 & mouseY<=650)){
    
      
      
      strokeWeight(3);
      stroke(0,0,255);
      textSize(50);
      fill (0,0,255);
      text("Sanz",750,100);
      textSize(30);
      fill (0,0,255);
      text("Attack: 1",520,400);
      text("HP: 1",520,460);
      noFill();
   rect(700,0,500,680);
   pushMatrix();
   translate(600,100);
     Sans2.display();
      popMatrix();
      
    }
     if((mouseX>=770 & mouseX<820) & (mouseY>=600 & mouseY<=670)){
     strokeWeight(3);
      stroke(255,0,0);
      textSize(50);
      fill (255,0,0);
      text("Pequeño Percebe",720,100);
      textSize(30);
      fill (255,0,0);
      text("Attack: 6",520,400);
      text("HP: 60",520,460);
      noFill();
   rect(700,0,500,680);
   pushMatrix();
   translate(700,100);
     pequenopercebe.display();
      popMatrix();
      
    }
     if((mouseX>=830 & mouseX<880) & (mouseY>=600 & mouseY<=670)){
     
     fill(0,255,150);
      strokeWeight(3);
      stroke(0,255,150);
      textSize(50);
      fill (0,255,150);
      text("Sans",750,100);
      textSize(30);
      fill (0,255,150);
      text("Attack: 15",520,400);
      text("HP: 55",520,460);
      noFill();
   rect(700,0,500,680);
   pushMatrix();
   translate(600,100);
     Sans.display();
      popMatrix();  
      
    }
   
     if((mouseX>=1010 & mouseX<1060) & (mouseY>=600 & mouseY<=670)){
       fill(255,30,255);
      strokeWeight(3);
      stroke(255,30,255);
      textSize(50);
      fill (255,30,255);
      text("Rey",750,100);
      textSize(30);
      fill (255,30,255);
      text("Attack: 13",520,400);
      text("HP: 52",520,460);
      noFill();
   rect(700,0,500,680);
   pushMatrix();
   scale(2,2);
   translate(350,0);
     chica.display();
      popMatrix();
       
     }
     if((mouseX>=890 & mouseX<940) & (mouseY>=600 & mouseY<=670)){
       fill(255);
      strokeWeight(3);
      stroke(255);
      textSize(50);
      fill (255);
      text("Ghost",750,100);
      textSize(30);
      fill (255);
      text("Attack: 8",520,400);
      text("HP: 60",520,460);
      noFill();
   rect(700,0,500,680);
   pushMatrix();
   
   translate(700,100);
     ghost.display();
      popMatrix();
       
     }
     
     
    
    pushMatrix();
    scale(0.15,0.15);
    translate(275,4000);
     Sans2.display();
    popMatrix();
    
    pushMatrix();
    scale(0.15,0.15);
    translate(770,4000);
     pequenopercebe.display();
    popMatrix();
    
    pushMatrix();
    scale(0.15,0.15);
    translate(1075,4000);
     Sans.display();
    popMatrix();
    
    pushMatrix();
    
   scale(.23,.23);
   translate(975,2550);
     ghost.display();
      popMatrix();
    
    pushMatrix();  
    scale(0.3,0.3);
    translate(1200,1950);
     chica.display();
    popMatrix();
    
    
    //player2
     pushMatrix();
    scale(0.15,0.15);
    translate(4540,4000);
     Sans2.display();
    popMatrix();
    
    pushMatrix();
    scale(0.15,0.15);
    translate(5035,4000);
     pequenopercebe.display();
    popMatrix();
    
  pushMatrix();
    scale(0.15,0.15);
    translate(5340,4000);
     Sans.display();
    popMatrix();
    
    pushMatrix();
   scale(.23,.23);
   translate(3750,2550);
     ghost.display();
      popMatrix();
    
    
    pushMatrix();  
    scale(0.3,0.3);
    translate(3330,1950);
     chica.display();
    popMatrix();
    
  }
  
  void prebatalla(){
  
    if(key=='q'){
     
      ward=1;
      
     HP=Sans2.hp;
     Attack=Sans2.attack;
    }
    if(key=='w'){
      ward=2;
     HP=pequenopercebe.hp;
     Attack=pequenopercebe.attack;
    }
    
    if(key=='e'){
      ward=3;
     HP=Sans.hp;
     Attack=  Sans.attack;
    }
    if(key=='r'){
      ward=4;
     HP=ghost.hp;
     Attack=ghost.attack;
    }
    //if(key=='t'){
     //HP=Sans.hp;
     //Attack=Sans.attack;
    //}*/
    if(key=='y'){
      ward=6;
     HP=chica.hp;
     Attack=chica.attack;
    }
    if(key=='a'){
      ward2=7;
     HP2=Sans2.hp;
     Attack2=Sans2.attack;
    }
    if(key=='s'){
      ward2=8;
     HP2=pequenopercebe.hp;
     Attack2=pequenopercebe.attack;
    }
    
    if(key=='d'){
      ward2=9;
     HP2=Sans.hp;
     Attack2=Sans.attack;
    }
    if(key=='f'){
      ward2=10;
     HP2=ghost.hp;
     Attack2=ghost.attack;
    }
    
    //f(key=='g'){
     //HP2=Sans.hp;
     //Attack2=Sans.attack;
    //}*/
    if(key=='h'){
      ward2=12;
     HP2=chica.hp;
     Attack2=chica.attack;
    }
    
    if((HP!=0) && (HP2!=0)){
      pantalla=3;
      
    }
    
  }
  
  void batalla(){
    background(0);
    fill(255,0,0);
    textSize(100);
    text("vs",575,200);
    if(ward==1){
      pushMatrix();
   translate(-120,100);
     Sans2.display();
      popMatrix();
    }
    if(ward==2){
       pushMatrix();
       scale(-1,1);
       translate(-550,100);
   //translate(0,100);
     pequenopercebe.display();
      popMatrix();
      
      
    }
    if(ward==3){
      pushMatrix();
   translate(-120,100);
     Sans.display();
      popMatrix();
    }
    if(ward==4){
      pushMatrix();
   translate(20,100);
     ghost.display();
      popMatrix();
    }
    if(ward==6){
      
   pushMatrix();
  
   scale(2,2);
     chica.display();
      popMatrix();
     
     
    }
    
    if(ward2==7){
      pushMatrix();
   translate(600,100);
     Sans2.display();
      popMatrix();
    }
    
    if(ward2==8){
      pushMatrix();
      translate(700,100);
     pequenopercebe.display();
      popMatrix();
      
    }
    if(ward2==9){
      pushMatrix();
      translate(600,90);
     Sans.display();
      popMatrix();
      
    }
    if(ward2==10){
      pushMatrix();
   translate(720,100);
     ghost.display();
      popMatrix();
    }
    
    if(ward2==12){
      pushMatrix();
      scale(2,2);
  translate(350,-10);
     chica.display();
      popMatrix();
    }
    
    
     
   
  }
  void turnos(){
   fill(255,255,0);
       rect(520,600,HP2*10,30);
       fill(255,255,0);
       rect(20,20,HP*10,30);
       
    if(turno==0){
      if(key=='z'){
        float a= random(0,1);
       if (1>=a & a>=0.5){
        HP2=HP2-Attack;
       
       fill(0);
       }
       else{
         HP2=HP2+2;
         
       }
       
       
       if(HP2<=0){
        pantalla=4; 
       }
       else{
         turno=1;
         println(HP2);
       }
      }
      
    }
    if(turno==1){
      if(key=='b'){
        float a2= random(0,1);
       if (1>=a2 & a2<=0.5){
        HP=HP-Attack2;
       
       fill(0);
       }
       else{
         HP=HP+2;
         
       }
       
       
       if(HP<=0){
        pantalla=4; 
       }
       else{
         turno=0;
         println(HP);
       }
      }
      
    }
    
    
    
  }
  void resolucion(){
    background(255);
    fill(255,0,0);
    textSize(100);
    text("Game Over",350,200);
  }
void ciclo(){
  
    textSize(20);
    text("Return, press i",50,400);
    if(key=='i'){
      pantalla=1;
      HP=0;
      HP2=0;
    }
      
    }


class personajes{
  int hp;
  int attack;
  String Nombre;
  int character;
  
  personajes(int attack_, int hp_, String Nombre_, int character_){
  

attack=attack_;
hp=hp_;
Nombre=Nombre_;
character=character_;


}

void display(){
 if(character==1){
   
   
   noStroke();
 fill(255);
 //translate();
 for(int i=324;i<396;i+=6){
 rect(i,26,x,x);
 }
 for(int i=306;i<414;i+=6){
  rect(i,32,x,x); 
 }
 for(int i=294;i<426;i+=6){
  rect(i,38,x,x); 
 }
 for(int i=288;i<432;i+=6){
  rect(i,44,x,x); 
 }
 for(int i=282;i<438;i+=6){
  rect(i,50,x,x); 
 }
 for(int i=276;i<444;i+=6){
  rect(i,56,x,x);
  rect(i,62,x,x);
 }
 //frente
 for(int i=270;i<450;i+=6){
  rect(i,68,x,x);
  rect(i,74,x,x);
 }
 //nariz
 for(int i=336;i<384;i+=6){
  rect(i,80,x,x);
  
 }
  for(int i=342;i<378;i+=6){
  rect(i,86,x,x);
  rect(i,92,x,x);
  rect(i,98,x,x);
  rect(i,104,x,x);
  
 }
 for(int i=336;i<354;i+=6){
  rect(i,110,x,x);
  rect(i,116,x,x);
  
 }
 for(int i=366;i<384;i+=6){
  rect(i,110,x,x);
  rect(i,116,x,x);
 }
  for(int i=330;i<348;i+=6){
  rect(i,122,x,x);
 }
 for(int i=324;i<348;i+=6){
  rect(i,128,x,x);
 }
 for(int i=372;i<390;i+=6){
  rect(i,122,x,x);
 }
 for(int i=372;i<396;i+=6){
  rect(i,128,x,x);
 }
 for(int i=306;i<348;i+=6){
  rect(i,134,x,x);
}
for(int i=306;i<348;i+=6){
  rect(i,134,x,x);
}
for(int i=276;i<300;i+=6){
  rect(i,134,x,x);
}
for(int i=276;i<300;i+=6){
  rect(i,140,x,x);
}
for(int i=276;i<288;i+=6){
  rect(i,146,x,x);
}
for(int i=276;i<300;i+=6){
  rect(i,152,x,x);
}
for(int i=282;i<306;i+=6){
  rect(i,158,x,x);
}
for(int i=282;i<312;i+=6){
  rect(i,164,x,x);
}
for(int i=288;i<324;i+=6){
  rect(i,170,x,x);
}
for(int i=294;i<336;i+=6){
  rect(i,176,x,x);
}
for(int i=306;i<414;i+=6){
  rect(i,182,x,x);
}
for(int i=324;i<396;i+=6){
  rect(i,188,x,x);
}
for(int i=390;i<426;i+=6){
  rect(i,176,x,x);
}
for(int i=402;i<432;i+=6){
  rect(i,170,x,x);
}
for(int i=408;i<438;i+=6){
  rect(i,164,x,x);
}

for(int i=414;i<438;i+=6){
  rect(i,158,x,x);
}
for(int i=420;i<444;i+=6){
  rect(i,152,x,x);
}
for(int i=432;i<444;i+=6){
  rect(i,146,x,x);
}
for(int i=426;i<444;i+=6){
  rect(i,140,x,x);
}
for(int i=420;i<444;i+=6){
  rect(i,134,x,x);
}

for(int i=408;i<438;i+=6){
  rect(i,128,x,x);
}
for(int i=396;i<438;i+=6){
  rect(i,122,x,x);
}
for(int i=420;i<444;i+=6){
  rect(i,116,x,x);
}
for(int i=432;i<444;i+=6){
  rect(i,110,x,x);
}
for(int i=438;i<450;i+=6){
  rect(i,104,x,x);
  rect(i,98,x,x);
  rect(i,92,x,x);
}
for(int i=432;i<450;i+=6){
  rect(i,86,x,x);
}
for(int i=420;i<450;i+=6){
  rect(i,80,x,x);
}
//dientes

rect(306,146,6,12);
rect(318,152,6,12);
rect(324,158,12,12);
rect(342,158,12,18);
rect(360,158,18,18);
rect(384,158,6,18);
rect(390,158,6,12);
rect(402,152,6,12);





for(int i=312;i<414;i+=6){
  rect(i,140,x,x);
}
for(int i=372;i<414;i+=6){
  rect(i,134,x,x);
}
for(int i=324;i<402;i+=6){
  rect(i,146,x,x);
}


 
 
 for(int i=270;i<300;i+=6){
  rect(i,80,x,x);
 }
 for(int i=86;i<110;i+=6){
  rect(270,i,x,x);
  rect(276,i,x,x);
  rect(282,86,x,x);
  rect(276,110,x,x);
rect(276,116,x,x);
rect(282,116,x,x);
  rect(282,110,x,x);
  rect(288,116,12,x);
 }
 for(int i=282;i<320;i+=6){
  rect(i,122,x,x);
}
for(int i=282;i<308;i+=6){
  rect(i,128,x,x);
}
 //huesito

 rect(336,200,x,x);
 rect(372,200,x,x);
 for(int i=336;i<378;i+=6){
  rect(i,206,x,x);
}
for(int i=342;i<372;i+=6){
  rect(i,212,x,x);
}
for(int i=348;i<372;i+=6){
  rect(i,218,x,x);
}
for(int i=230;i<290;i+=6){
  rect(342,i,x,x);
  rect(348,i,x,x);
  rect(354,i,x,x);
  rect(360,i,x,x);
}
for(int i=236;i<290;i+=6){
  rect(366,i,x,x);
}
 fill(255,133,43);
//sudadera,parte derecha
 for(int i=236;i<296;i+=6){
 // rect(330,i,x,x);//parte izquierda
  rect(378,i,x,x);
  rect(384,242,x,x);
    rect(384,254,12,x);
} 
 for(int i=378;i<402;i+=6){
  rect(i,236,x,x); 
} 

for(int i=378;i<402;i+=6){
  rect(i,218,x,x); 
  rect(384,224,6,12);
  } 
  for(int i=212;i<272;i+=6){
  rect(396,i,x,x); 
  rect(384,272,12,x); 
 
  } 
  for(int i=278;i<308;i+=6){
  rect(390,i,x,x); 
  }
  for(int i=318;i<390;i+=6){
  rect(i,296,x,x); 
  }
  for(int i=384;i<456;i+=6){
  rect(i,302,x,x); 
  }
  for(int i=444;i<456;i+=6){
  rect(i,308,x,x); 
  }
  for(int i=444;i<462;i+=6){
  rect(i,296,x,x); 
  }
  //lineas de sudadera
  for(int i=450;i<462;i+=6){
  rect(i,290,x,x); 
  }
  for(int i=254;i<290;i+=6){
  rect(456,i,x,x); 
  }
  for(int i=212;i<260;i+=6){
  rect(450,i,x,x); 
   rect(456,206,x,x); 
  }
  //capucha parte derecha
  for(int i=390;i<414;i+=6){
  rect(i,212,x,x); 

  }
  for(int i=408;i<432;i+=6){
  rect(i,206,x,x); 
}
for(int i=414;i<438;i+=6){
  rect(i,200,x,x); 
}
for(int i=426;i<444;i+=6){
  rect(i,194,x,x); 
}
for(int i=432;i<450;i+=6){
  rect(i,188,x,x); 
}
for(int i=432;i<456;i+=6){
  rect(i,182,x,x); 
}
for(int i=438;i<462;i+=6){
  rect(i,176,x,x); 
}
for(int i=444;i<474;i+=6){
  rect(i,170,x,x); 
}
for(int i=450;i<468;i+=6){
  rect(i,164,x,x); 
}
//brazo derecha
rect(468,182,x,x);
for(int i=188;i<200;i+=6){
  rect(474,i,x,x); 
}
for(int i=194;i<206;i+=6){
  rect(480,i,x,x); 
}
for(int i=200;i<212;i+=6){
  rect(486,i,x,x); 
}
for(int i=212;i<224;i+=6){
  rect(492,i,x,x); 
}
for(int i=218;i<230;i+=6){
  rect(498,i,x,x); 
}
for(int i=224;i<248;i+=6){
  rect(504,i,x,x); 
}
for(int i=236;i<272;i+=6){
  rect(510,i,x,x); 
}
for(int i=266;i<278;i+=6){
  rect(504,i,x,x); 
}
for(int i=272;i<284;i+=6){
  rect(498,i,x,x); 
}
for(int i=278;i<290;i+=6){
  rect(492,i,x,x); 
}

  rect(486,284,x,x);
  for(int i=468;i<486;i+=6){
  rect(i,290,x,x); 
}//parte final del sueter
for(int i=468;i<480;i+=6){
  rect(i,296,x,x); 
}
  //sueter, izquierda
    //líneas de sudadera
 for(int i=248;i<296;i+=6){
  rect(330,i,x,x);
  rect(324,254,x,x);
  rect(324,272,x,x);
  
  } 
  for(int i=212;i<248;i+=6){
  rect(324,i,x,x);
  rect(330,218,x,x);
  }
  for(int i=212;i<248;i+=6){
  rect(306,i,x,x);
  rect(312,236,12,x);
 
  }
  //linea horizontal
   for(int i=282;i<306;i+=6){
  rect(i,242,x,x);
  
   }
   //linea vertical
    for(int i=212;i<260;i+=6){
  rect(264,i,x,x);
  rect(270,242,x,x);
  rect(270,248,12,x);
  }
  //capucha, parte izquierda
  rect(312,212,12,x);
  for(int i=300;i<318;i+=6){
  rect(i,206,x,x); 
   
  }
  for(int i=288;i<306;i+=6){
  rect(i,200,x,x); 
  rect(i-6,194,x,x);  
  }
  for(int i=264;i<294;i+=6){
  rect(i,188,x,x);
  }
  for(int i=246;i<282;i+=6){
  rect(i,182,x,x);
  }
  for(int i=246;i<276;i+=6){
  rect(i,176,x,x);
  rect(240,188,x,x);
  }
  for(int i=252;i<270;i+=6){
  rect(i,170,x,x);
  }
 //puntito rect(240,188,x,x); y brazo de la derecha
  for(int i=6;i<24;i+=6){
  rect(i+216,224-i,x,x);
  
  }
  for(int i=224;i<236;i+=6){
  rect(216,i,x,x);
  }
  for(int i=236;i<266;i+=6){
  rect(210,i,x,x);
  }
  for(int i=248;i<266;i+=6){
  rect(204,i,x,x);
  }
  for(int i=210;i<222;i+=6){
  rect(i,266,x,x);
  }
  for(int i=216;i<228;i+=6){
  rect(i,272,x,x);
  }
  for(int i=222;i<234;i+=6){
  rect(i,278,x,x);
  }
  for(int i=228;i<246;i+=6){
  rect(i,284,x,x);
  }
  for(int i=234;i<246;i+=6){
  rect(i,290,x,x);
  rect(240,296,x,x);
  }
  for(int i=252;i<282;i+=6){
  rect(i,302,x,x);
  }
  for(int i=258;i<276;i+=6){
  rect(i,296,x,x);
  }//línea vertical 2
  for(int i=260;i<296;i+=6){
  rect(258,i,x,x);
  }
  for(int i=264;i<318;i+=6){
  rect(i,308,x,x);
  }
  for(int i=318;i<348;i+=6){
  rect(i,302,x,x);
  }
  fill(255);
  //pantalones
  rect(273,328,x,x);
  rect(291,328,12,12);
  for(int i=334;i<364;i+=6){
  rect(267,i,x,x);
  }
  for(int i=340;i<364;i+=6){
  rect(285,i,12,x);
  }
  for(int i=364;i<400;i+=6){
  rect(261,i,x,x);
  }
  for(int i=364;i<400;i+=6){
  rect(279,i,12,x);
  rect(267,394,12,x);
  }
  for(int i=291;i<345;i+=6){
  rect(i,400,x,x);
  }
  for(int i=375;i<437;i+=6){
  rect(i,400,x,x);
  }
  for(int i=370;i<400;i+=6){
  rect(345,i,x,x);
  }
  for(int i=346;i<376;i+=6){
  rect(351,i,x,x);
  }
  for(int i=346;i<364;i+=6){
  rect(363,i,x,x);
  rect(357,340,x,x);
  }
  for(int i=364;i<400;i+=6){
  rect(369,i,x,x);
  }
 for(int i=322;i<376;i+=6){
  rect(406,i,x,x);
  }
  for(int i=322;i<396;i+=6){
  rect(412,i,x,x);
  }
  for(int i=352;i<396;i+=6){
  rect(418,i,x,x);
  rect(423,394,x,x);
  }
  for(int i=442;i<460;i+=6){
  rect(i,394,x,x);
  }
  for(int i=358;i<400;i+=6){
  rect(460,i,x,x);
  }
  for(int i=322;i<330;i+=6){
  rect(448,i,x,x);
  }
  for(int i=334;i<354;i+=6){
  rect(454,i,x,x);
  }
  //pantuflas
  for(int i=292;i<316;i+=6){
  rect(i,418,x,x);
  }
  for(int i=256;i<280;i+=6){
  rect(i,418,x,x);
  }
  for(int i=250;i<292;i+=6){
  rect(i,424,x,x);
  }//continuamos
  for(int i=298;i<316;i+=6){
  rect(i,424,x,x);
  }
  for(int i=244;i<298;i+=6){
  rect(i,430,x,x);
  }
  for(int i=302;i<316;i+=6){
  rect(i,430,x,x);
  }
  for(int i=244;i<298;i+=6){
  rect(i,436,x,x);
  }
  for(int i=244;i<304;i+=6){
  rect(i,442,x,x);
  }
  for(int i=310;i<322;i+=6){
  rect(i,442,x,x);
  }
  //pantufla derecha
  rect(400,412,x,x);
  for(int i=400;i<442;i+=6){
  rect(i,418,x,x);
  }
  for(int i=460;i<478;i+=6){
  rect(i,418,x,x);
  }
  for(int i=394;i<436;i+=6){
  rect(i,424,x,x);
  }
  for(int i=448;i<490;i+=6){
  rect(i,424,x,x);
  }
  for(int i=394;i<430;i+=6){
  rect(i,430,x,x);
  }
  for(int i=436;i<496;i+=6){
  rect(i,430,x,x);
  
  }
  for(int i=430;i<496;i+=6){
  rect(i,436,x,x);
  }
  for(int i=388;i<490;i+=6){
  rect(i,442,x,x);
 
  
  }
  fill(0);
  rect(424,442,x,x);
  
  
}
   
 

   
 
  if(character==2){
   noStroke();
   fill(250);
   rect (166,48,x,x);
 rect (170,52,x,x);
 rect (174,54,x,x);
 rect (178,58,x,x);
 rect (180,62,x,x);
 rect (184,62,x,x);
 rect (188,66,x,x);
 rect (192,70,x,x);
 rect (192,72,x,x);
 rect (196,70,x,x);
 rect (200,66,x,x);
 //cabeza
 rect (204,64,x,x);
 rect (210,64,x,x);
 rect (216,64,x,x);
 rect (220,60,x,x);
 rect (224,60,x,x);
 rect (230,60,x,x);
 rect (236,60,x,x);
 rect (240,60,x,x);
 rect (244,60,x,x);
 rect (248,58,x,x);
  rect (254,58,x,x);
   rect (260,58,x,x);
   rect (262,60,x,x);
  rect (268,60,x,x);
   rect (274,62,x,x);
   rect (280,64,x,x);
   rect (283,66,x,x);
   
  rect (286,68,x,x);
   rect (290,70,x,x);
 
 rect (294,72,x,x);
 rect (296,74,x,x);
 rect (298,76,x,x);
rect (300,78,x,x);
//oreja izquierda
rect (294,66,x,x);

rect (296,64,x,x);
rect (298,60,x,x);
rect (300,56,x,x);
rect (304,52,x,x);
rect (308,48,x,x);
rect (310,44,x,x);
rect (314,40,x,x);
rect (318,38,x,x);
rect (322,36,x,x);
rect (326,34,x,x);

rect (330,30,x,x);
rect (334,34,x,x);
rect (338,38,x,x);
rect (342,42,x,x);

rect (346,46,x,x);
rect (348,50,x,x);
rect (348,54,x,x);
rect (352,58,x,x);
rect (352,62,x,x);
rect (356,68,x,x);
rect (356,72,x,x);
rect (356,76,x,x);
rect (354,80,x,x);
rect (354,86,x,x);
rect (352,92,x,x);
rect (352,98,x,x);
rect (348,102,x,x);
rect (348,108,x,x);
rect (346,112,x,x);
rect (346,118,x,x);
rect (346,124,x,x);
rect (346,130,x,x);
rect (346,136,x,x);
rect (346,142,x,x);
rect (348,148,x,x);
rect (348,154,x,x);
rect (348,160,x,x);
rect (352,164,x,x);
rect (352,170,x,x);
rect (352,176,x,x);
rect (354,182,x,x);
rect (356,188,x,x);
rect (358,194,x,x);
rect (358,200,x,x);
rect (358,206,x,x);
rect (360,212,x,x);
rect (360,218,x,x);
rect (358,222,x,x);
rect (354,226,x,x);
rect (350,230,x,x);
rect (352,232,x,x);
rect (354,236,x,x);
rect (354,242,x,x);
rect (352,244,x,x);
rect (350,246,x,x);
rect (346,248,x,x);
rect (342,250,x,x);
rect (338,254,x,x);
rect (334,258,x,x);
rect (330,262,x,x);




 

   

 
  
  
 
 rect (150,50,x,x);
  rect (156,44,x,x);
   rect (150,56,x,x);
    rect (162,44,x,x);
     
      rect (150,62,x,x);
       rect (144,68,x,x);
 
 
 rect (144,74,x,x);
  rect (144,80,x,x);
   rect (144,86,x,x);
    rect (144,92,x,x);
     rect (144,98,x,x);
 rect (144,102,x,x);
 rect (140,106,x,x);
 rect (140,110,x,x);
 rect (138,114,x,x);
 rect (138,120,x,x);
 rect (138,122,x,x);
      
       
        rect (138,128,x,x);
  rect (138,134,x,x);
   rect (132,140,x,x);
    rect (132,146,x,x);
     rect (132,152,x,x);
      rect (128,156,x,x);
       rect (128,162,x,x);
         rect (124,166,x,x);
       rect (124,172,x,x);
        rect (124,178,x,x);
       rect (124,184,x,x);
        rect (124,190,x,x);
       rect (124,196,x,x);
        rect (124,202,x,x);
       rect (124,208,x,x);
      
        rect (120,212,x,x);
       rect (120,218,x,x);
        rect (118,222,x,x);
       rect (118,228,x,x);
       rect (116,232,x,x);
       rect (116,236,x,x);
        
        rect (118,240,x,x);
       rect (120,244,x,x);
        rect (124,248,x,x);
       rect (128,252,x,x);
        rect (132,256,x,x);
       rect (136,260,x,x);
        rect (140,264,x,x);
       rect (146,264,x,x);
       rect (150,268,x,x);
       rect (156,268,x,x);
       rect (162,272,x,x);
       rect (168,272,x,x);
  //lo que sigue debajo de la mejilla, bufanda
    rect (148,272,x,x);
       rect (144,276,x,x);
        rect (140,282,x,x);
       rect (144,288,x,x);
        rect (146,292,x,x);
       rect (146,298,x,x);
        rect (148,302,x,x);
       rect (152,306,x,x);
       rect (156,310,x,x);
        rect (162,306,x,x);
        //cuerpo
   rect (162,310,x,x);
   rect (162,316,x,x);   
   rect (164,322,x,x);
   rect (164,328,x,x);   
   
   rect (166,332,x,x);
   rect (166,336,x,x);   
   rect (164,338,x,x);
   rect (164,342,x,x);
   rect (162,346,x,x);
   rect (162,350,x,x);   
   rect (160,354,x,x);
   rect (160,358,x,x); 
   rect (158,362,x,x);
   rect (158,366,x,x); 
   rect (156,370,x,x);
   rect (156,374,x,x);
   rect (156,378,x,x);
   rect (158,382,x,x);
   rect (158,386,x,x);
  rect (162,390,x,x);
   rect (162,394,x,x);
   rect (164,396,x,x);
   rect (168,400,x,x);
   rect (172,404,x,x);
   rect (176,408,x,x);
   rect (180,412,x,x);
    rect (184,416,x,x);
   rect (188,420,x,x);
   rect (192,424,x,x);
   
   rect (172,412,x,x);
   rect (168,416,x,x);
   rect (164,418,x,x);
   rect (162,418,x,x);
   
    rect (160,422,x,x);
   rect (158,426,x,x);
   rect (158,428,x,x);
   rect (160,434,x,x);
   
    rect (164,440,x,x);
    rect (170,440,x,x);
    rect (176,440,x,x);
    rect (182,440,x,x);
    rect(188,440,x,x);
    
    rect (192,440,x,x);
    rect (196,438,x,x);
    rect (202,438,x,x);
    rect(208,438,x,x);
    rect (212,436,x,x);
    rect(218,436,x,x);
    
     rect (222,432,x,x);
    rect (226,430,x,x);
    rect (232,428,x,x);
    rect (234,428,x,x);
    rect (240,428,x,x);
    rect (242,430,x,x);
    rect (246,432,x,x);
    
   rect(260,437,x,x);
    rect(262,436,x,x);
    rect(264,435,x,x);
    rect(268,433,x,x);
    rect(268,428,x,x);
    rect(266,424,x,x);
    rect(266,422,x,x);
    rect(264,420,x,x);
    rect(264,416,x,x);
    rect(262,412,x,x);
    rect(262,410,x,x);
     rect(262,404,x,x);
     rect(264,400,x,x);
    rect(264,398,x,x);
    rect(268,396,x,x);
    rect(272,396,x,x);
 
    rect (256,440,x,x); //punto medio
    rect(256,444,x,x);
    rect(258,450,x,x);
    rect(264,450,x,x);
    
    rect(270,448,x,x);
    rect(276,448,x,x);
    rect(282,446,x,x);
    rect(288,446,x,x);
    rect(294,444,x,x);
    rect(298,444,x,x);
    
    rect(302,442,x,x);
    rect(306,442,x,x);
    rect(308,440,x,x);
    rect(312,438,x,x);
    rect(316,438,x,x);
    rect(320,436,x,x);
    rect(322,432,x,x);
    
    rect(316,438,x,x);
    rect(320,436,x,x);
    rect(322,432,x,x);
    rect(326,434,x,x);
    rect(328,434,x,x);
    rect(334,432,x,x);
 
    rect(338,428,x,x);
    rect(342,424,x,x); 
    rect(346,420,x,x);
    rect(350,416,x,x); 
     rect(352,412,x,x);
    rect(354,408,x,x); 
    rect(356,402,x,x);
    
    // colaaaaaaaaaa
    
    
    
    
    
    //
    
    rect(356,398,x,x);
    rect(354,392,x,x); 
    rect(354,388,x,x);
    rect(352,384,x,x); 
     rect(352,380,x,x);
     rect(350,376,x,x);
    rect(350,372,x,x); 
    rect(348,368,x,x);
    rect(348,364,x,x);
    
    
    rect(346,360,x,x);
     rect(346,356,x,x);
    rect(344,352,x,x); 
    rect(344,348,x,x);
    rect(342,344,x,x);
    rect(342,338,x,x);
     rect(340,334,x,x);
    rect(340,330,x,x); 
    rect(340,326,x,x);
    rect(338,322,x,x);
     rect(338,318,x,x);
    rect(336,314,x,x); 


//brazos
//brazo derecho
 rect(166,360,x,x);
 rect(170,362,x,x);
 rect(174,364,x,x);
 rect(178,364,x,x);
 rect(182,364,x,x);
 rect(186,362,x,x);
     rect(190,360,x,x);
 rect(190,358,x,x);

 rect(190,338,x,x);
     rect(192,342,x,x);
    rect(192,346,x,x); 
    rect(194,350,x,x);
    rect(194,354,x,x);
    
 
    
//brazo izquierdo
rect(244,350,x,x);
rect(244,354,x,x);
rect(242,358,x,x);
rect(242,360,x,x);
rect(240,364,x,x);

rect(240,370,x,x);
rect(240,374,x,x);
rect(244,376,x,x);
rect(248,376,x,x);
rect(252,374,x,x);
rect(256,374,x,x);

rect(260,372,x,x);
rect(264,372,x,x);
 
    rect(268,368,x,x);
    rect(272,364,x,x); 
    rect(276,360,x,x);
    rect(280,356,x,x); 
     rect(282,352,x,x);
    rect(284,348,x,x); 
    rect(286,342,x,x);
    
        
  //bufanda y medallón
rect (166,302,x,x);
   rect (172,302,x,x);
   rect (172,298,x,x);
   rect (178,298,x,x);
   
   rect(182,300,x,x);
rect(184,300,x,x);
rect(186,302,x,x);

rect (186,280,x,x);
rect (182,280,x,x);
rect (180,278,x,x);
rect (176,278,x,x);
rect (172,276,x,x);
  




rect(192,298,x,x);
rect(192,292,x,x);
rect(192,286,x,x);

rect(194,282,x,x);
rect(198,276,x,x);
rect(202,276,x,x);
rect(208,276,x,x);
rect(212,276,x,x);
rect(218,276,x,x);


rect(194,302,x,x);
rect(198,308,x,x);
rect(202,308,x,x);
rect(208,308,x,x);
rect(214,308,x,x);
rect(218,308,x,x);


rect(222,302,x,x);
rect(224,298,x,x);
rect(224,292,x,x);
rect(224,286,x,x);
rect(222,282,x,x);
//bufanda
rect(230,280,x,x);
rect(232,278,x,x);
rect(232,276,x,x);
rect(234,272,x,x);
rect(238,272,x,x);
rect(242,272,x,x);
rect(244,274,x,x);
rect(246,274,x,x);
rect(248,274,x,x);
rect(252,276,x,x);
rect(256,276,x,x);
rect(260,276,x,x);
rect(262,276,x,x);
rect(262,278,x,x);
rect(266,278,x,x);
rect(270,278,x,x);
rect(272,278,x,x);
rect(274,276,x,x);
rect(278,276,x,x);
rect(282,276,x,x);
rect(284,274,x,x);
rect(290,274,x,x);
rect(296,274,x,x);
rect(298,272,x,x);
rect(302,272,x,x);
rect(306,272,x,x);
rect(310,270,x,x);
rect(314,270,x,x);
rect(318,266,x,x);
rect(322,266,x,x);
rect(328,264,x,x);

rect (330,262,x,x);
rect (334,270,x,x);
rect (338,268,x,x);
rect (342,266,x,x);
rect (346,266,x,x);
rect (350,268,x,x);
rect (354,272,x,x);
rect (358,276,x,x);
rect (362,278,x,x);
rect (368,280,x,x);
rect (372,278,x,x);
rect (376,274,x,x);


//capa
rect (356,244,x,x);
rect (360,242,x,x);
rect (364,240,x,x);
rect (370,238,x,x);
rect (374,236,x,x);
rect (378,236,x,x);
rect (382,238,x,x);
rect (386,238,x,x);
rect (390,240,x,x);
rect (394,240,x,x);
rect (398,242,x,x);
rect (402,244,x,x);
rect (406,246,x,x);
rect (410,246,x,x);
rect (414,250,x,x);
rect (408,256,x,x);
rect (402,260,x,x);
rect (396,266,x,x);
rect (390,270,x,x);
rect (384,266,x,x);
rect (380,264,x,x);
rect (376,266,x,x);

rect (378,282,x,x);
rect (376,286,x,x);
rect (374,290,x,x);
rect (372,294,x,x);
rect (368,298,x,x);
rect (364,302,x,x);
rect (360,306,x,x);
rect (356,308,x,x);
rect (350,310,x,x);
rect (344,310,x,x);
rect (340,312,x,x);

//bufanda

rect (334,312,x,x);
rect (328,312,x,x);
rect (322,310,x,x);
rect (316,310,x,x);
rect (310,310,x,x);

rect (304,308,x,x);
rect (298,308,x,x);
rect (292,308,x,x);

rect (286,306,x,x);
rect (280,304,x,x);
rect (274,302,x,x);
rect (268,300,x,x);

rect (262,296,x,x);
rect (256,296,x,x);

rect (250,298,x,x);
rect (244,300,x,x);

rect (238,302,x,x);
rect (232,302,x,x);
rect (226,304,x,x);




 
 //ojos
 rect (172,216,x,x);
 rect (174,216,x,x);
 rect (178,212,x,x);
 rect (182,206,x,x);
 rect (182,200,x,x);
 rect (181,194,x,x);
 rect (180,192,x,x);
 rect (178,192,x,x);
 rect (174,188,x,x);
 rect (170,184,x,x);
 rect (168,184,x,x);
 rect (164,180,x,x);
 
 rect (158,176,x,x);
 rect (154,180,x,x);
rect (150,184,x,x);
 rect (150,188,x,x);
 
 rect (150,190,x,x);
 rect (150,192,x,x);
rect (152,196,x,x);
 rect (152,200,x,x);
 
 rect (154,204,x,x);
 rect (154,206,x,x);
 rect (158,208,x,x);
 rect (160,210,x,x);
 
 rect (164,212,x,x);
 rect (166,214,x,x);
 
 //ojo dos
 
 rect (254,192,x,x);

 rect (258,188,x,x);
 
 rect (264,184,x,x);
 rect (268,182,x,x);
 rect (274,180,x,x);
 rect (278,178,x,x);
 rect (282,176,x,x);
 rect (286,174,x,x);
 
 
 
 

 rect (252,198,x,x);
 rect (252,200,x,x);
  rect (254,202,x,x);
 rect (254,204,x,x);
 rect (256,206,x,x);
 rect (258,210,x,x);
  
  
 
 
 rect (290,180,x,x);
 rect (290,182,x,x);
 rect (292,186,x,x);
 rect (292,190,x,x);
 rect (292,194,x,x);
 rect (292,200,x,x);
 rect (290,206,x,x);
 rect (288,210,x,x);
 rect (284,212,x,x);
 rect (280,214,x,x);
 rect (276,216,x,x);
 rect (272,216,x,x);
 
 
 
 rect (268,216,x,x);
 rect (264,214,x,x);

 
 
 
 
 
 
  
//nariz
triangle(210,224,216,224,213,228);

rect(214,240,3,3);
rect(216,242,3,3);
rect(218,244,3,3);
rect(220,246,3,3);
rect(221,248,3,3);

rect(212,238,3,3);
rect(210,241,3,3);
rect(209,243,3,3);
}
   
 
  if(character==3){
   noStroke();
    noStroke();
 fill(255);
 //translate();
 for(int i=324;i<396;i+=6){
 rect(i,26,x,x);
 }
 for(int i=306;i<414;i+=6){
  rect(i,32,x,x); 
 }
 for(int i=294;i<426;i+=6){
  rect(i,38,x,x); 
 }
 for(int i=288;i<432;i+=6){
  rect(i,44,x,x); 
 }
 for(int i=282;i<438;i+=6){
  rect(i,50,x,x); 
 }
 for(int i=276;i<444;i+=6){
  rect(i,56,x,x);
  rect(i,62,x,x);
 }
 //frente
 for(int i=270;i<450;i+=6){
  rect(i,68,x,x);
  rect(i,74,x,x);
 }
 //nariz
 for(int i=336;i<384;i+=6){
  rect(i,80,x,x);
  
 }
  for(int i=342;i<378;i+=6){
  rect(i,86,x,x);
  rect(i,92,x,x);
  rect(i,98,x,x);
  rect(i,104,x,x);
  
 }
 for(int i=336;i<354;i+=6){
  rect(i,110,x,x);
  rect(i,116,x,x);
  
 }
 for(int i=366;i<384;i+=6){
  rect(i,110,x,x);
  rect(i,116,x,x);
 }
  for(int i=330;i<348;i+=6){
  rect(i,122,x,x);
 }
 for(int i=324;i<348;i+=6){
  rect(i,128,x,x);
 }
 for(int i=372;i<390;i+=6){
  rect(i,122,x,x);
 }
 for(int i=372;i<396;i+=6){
  rect(i,128,x,x);
 }
 for(int i=306;i<348;i+=6){
  rect(i,134,x,x);
}
for(int i=306;i<348;i+=6){
  rect(i,134,x,x);
}
for(int i=276;i<300;i+=6){
  rect(i,134,x,x);
}
for(int i=276;i<300;i+=6){
  rect(i,140,x,x);
}
for(int i=276;i<288;i+=6){
  rect(i,146,x,x);
}
for(int i=276;i<300;i+=6){
  rect(i,152,x,x);
}
for(int i=282;i<306;i+=6){
  rect(i,158,x,x);
}
for(int i=282;i<312;i+=6){
  rect(i,164,x,x);
}
for(int i=288;i<324;i+=6){
  rect(i,170,x,x);
}
for(int i=294;i<336;i+=6){
  rect(i,176,x,x);
}
for(int i=306;i<414;i+=6){
  rect(i,182,x,x);
}
for(int i=324;i<396;i+=6){
  rect(i,188,x,x);
}
for(int i=390;i<426;i+=6){
  rect(i,176,x,x);
}
for(int i=402;i<432;i+=6){
  rect(i,170,x,x);
}
for(int i=408;i<438;i+=6){
  rect(i,164,x,x);
}

for(int i=414;i<438;i+=6){
  rect(i,158,x,x);
}
for(int i=420;i<444;i+=6){
  rect(i,152,x,x);
}
for(int i=432;i<444;i+=6){
  rect(i,146,x,x);
}
for(int i=426;i<444;i+=6){
  rect(i,140,x,x);
}
for(int i=420;i<444;i+=6){
  rect(i,134,x,x);
}

for(int i=408;i<438;i+=6){
  rect(i,128,x,x);
}
for(int i=396;i<438;i+=6){
  rect(i,122,x,x);
}
for(int i=420;i<444;i+=6){
  rect(i,116,x,x);
}
for(int i=432;i<444;i+=6){
  rect(i,110,x,x);
}
for(int i=438;i<450;i+=6){
  rect(i,104,x,x);
  rect(i,98,x,x);
  rect(i,92,x,x);
}
for(int i=432;i<450;i+=6){
  rect(i,86,x,x);
}
for(int i=420;i<450;i+=6){
  rect(i,80,x,x);
}
//dientes

rect(306,146,6,12);
rect(318,152,6,12);
rect(324,158,12,12);
rect(342,158,12,18);
rect(360,158,18,18);
rect(384,158,6,18);
rect(390,158,6,12);
rect(402,152,6,12);





for(int i=312;i<414;i+=6){
  rect(i,140,x,x);
}
for(int i=372;i<414;i+=6){
  rect(i,134,x,x);
}
for(int i=324;i<402;i+=6){
  rect(i,146,x,x);
}


 
 
 for(int i=270;i<300;i+=6){
  rect(i,80,x,x);
 }
 for(int i=86;i<110;i+=6){
  rect(270,i,x,x);
  rect(276,i,x,x);
  rect(282,86,x,x);
  rect(276,110,x,x);
rect(276,116,x,x);
rect(282,116,x,x);
  rect(282,110,x,x);
  rect(288,116,12,x);
 }
 for(int i=282;i<320;i+=6){
  rect(i,122,x,x);
}
for(int i=282;i<308;i+=6){
  rect(i,128,x,x);
}
 //huesito

 rect(336,200,x,x);
 rect(372,200,x,x);
 for(int i=336;i<378;i+=6){
  rect(i,206,x,x);
}
for(int i=342;i<372;i+=6){
  rect(i,212,x,x);
}
for(int i=348;i<372;i+=6){
  rect(i,218,x,x);
}
for(int i=230;i<290;i+=6){
  rect(342,i,x,x);
  rect(348,i,x,x);
  rect(354,i,x,x);
  rect(360,i,x,x);
}
for(int i=236;i<290;i+=6){
  rect(366,i,x,x);
}
 fill(42,133,255);
//sudadera,parte derecha
 for(int i=236;i<296;i+=6){
 // rect(330,i,x,x);//parte izquierda
  rect(378,i,x,x);
  rect(384,242,x,x);
    rect(384,254,12,x);
} 
 for(int i=378;i<402;i+=6){
  rect(i,236,x,x); 
} 

for(int i=378;i<402;i+=6){
  rect(i,218,x,x); 
  rect(384,224,6,12);
  } 
  for(int i=212;i<272;i+=6){
  rect(396,i,x,x); 
  rect(384,272,12,x); 
 
  } 
  for(int i=278;i<308;i+=6){
  rect(390,i,x,x); 
  }
  for(int i=318;i<390;i+=6){
  rect(i,296,x,x); 
  }
  for(int i=384;i<456;i+=6){
  rect(i,302,x,x); 
  }
  for(int i=444;i<456;i+=6){
  rect(i,308,x,x); 
  }
  for(int i=444;i<462;i+=6){
  rect(i,296,x,x); 
  }
  //lineas de sudadera
  for(int i=450;i<462;i+=6){
  rect(i,290,x,x); 
  }
  for(int i=254;i<290;i+=6){
  rect(456,i,x,x); 
  }
  for(int i=212;i<260;i+=6){
  rect(450,i,x,x); 
   rect(456,206,x,x); 
  }
  //capucha parte derecha
  for(int i=390;i<414;i+=6){
  rect(i,212,x,x); 

  }
  for(int i=408;i<432;i+=6){
  rect(i,206,x,x); 
}
for(int i=414;i<438;i+=6){
  rect(i,200,x,x); 
}
for(int i=426;i<444;i+=6){
  rect(i,194,x,x); 
}
for(int i=432;i<450;i+=6){
  rect(i,188,x,x); 
}
for(int i=432;i<456;i+=6){
  rect(i,182,x,x); 
}
for(int i=438;i<462;i+=6){
  rect(i,176,x,x); 
}
for(int i=444;i<474;i+=6){
  rect(i,170,x,x); 
}
for(int i=450;i<468;i+=6){
  rect(i,164,x,x); 
}
//brazo derecha
rect(468,182,x,x);
for(int i=188;i<200;i+=6){
  rect(474,i,x,x); 
}
for(int i=194;i<206;i+=6){
  rect(480,i,x,x); 
}
for(int i=200;i<212;i+=6){
  rect(486,i,x,x); 
}
for(int i=212;i<224;i+=6){
  rect(492,i,x,x); 
}
for(int i=218;i<230;i+=6){
  rect(498,i,x,x); 
}
for(int i=224;i<248;i+=6){
  rect(504,i,x,x); 
}
for(int i=236;i<272;i+=6){
  rect(510,i,x,x); 
}
for(int i=266;i<278;i+=6){
  rect(504,i,x,x); 
}
for(int i=272;i<284;i+=6){
  rect(498,i,x,x); 
}
for(int i=278;i<290;i+=6){
  rect(492,i,x,x); 
}

  rect(486,284,x,x);
  for(int i=468;i<486;i+=6){
  rect(i,290,x,x); 
}//parte final del sueter
for(int i=468;i<480;i+=6){
  rect(i,296,x,x); 
}
  //sueter, izquierda
    //líneas de sudadera
 for(int i=248;i<296;i+=6){
  rect(330,i,x,x);
  rect(324,254,x,x);
  rect(324,272,x,x);
  
  } 
  for(int i=212;i<248;i+=6){
  rect(324,i,x,x);
  rect(330,218,x,x);
  }
  for(int i=212;i<248;i+=6){
  rect(306,i,x,x);
  rect(312,236,12,x);
 
  }
  //linea horizontal
   for(int i=282;i<306;i+=6){
  rect(i,242,x,x);
  
   }
   //linea vertical
    for(int i=212;i<260;i+=6){
  rect(264,i,x,x);
  rect(270,242,x,x);
  rect(270,248,12,x);
  }
  //capucha, parte izquierda
  rect(312,212,12,x);
  for(int i=300;i<318;i+=6){
  rect(i,206,x,x); 
   
  }
  for(int i=288;i<306;i+=6){
  rect(i,200,x,x); 
  rect(i-6,194,x,x);  
  }
  for(int i=264;i<294;i+=6){
  rect(i,188,x,x);
  }
  for(int i=246;i<282;i+=6){
  rect(i,182,x,x);
  }
  for(int i=246;i<276;i+=6){
  rect(i,176,x,x);
  rect(240,188,x,x);
  }
  for(int i=252;i<270;i+=6){
  rect(i,170,x,x);
  }
 //puntito rect(240,188,x,x); y brazo de la derecha
  for(int i=6;i<24;i+=6){
  rect(i+216,224-i,x,x);
  
  }
  for(int i=224;i<236;i+=6){
  rect(216,i,x,x);
  }
  for(int i=236;i<266;i+=6){
  rect(210,i,x,x);
  }
  for(int i=248;i<266;i+=6){
  rect(204,i,x,x);
  }
  for(int i=210;i<222;i+=6){
  rect(i,266,x,x);
  }
  for(int i=216;i<228;i+=6){
  rect(i,272,x,x);
  }
  for(int i=222;i<234;i+=6){
  rect(i,278,x,x);
  }
  for(int i=228;i<246;i+=6){
  rect(i,284,x,x);
  }
  for(int i=234;i<246;i+=6){
  rect(i,290,x,x);
  rect(240,296,x,x);
  }
  for(int i=252;i<282;i+=6){
  rect(i,302,x,x);
  }
  for(int i=258;i<276;i+=6){
  rect(i,296,x,x);
  }//línea vertical 2
  for(int i=260;i<296;i+=6){
  rect(258,i,x,x);
  }
  for(int i=264;i<318;i+=6){
  rect(i,308,x,x);
  }
  for(int i=318;i<348;i+=6){
  rect(i,302,x,x);
  }
  fill(255);
  //pantalones
  rect(273,328,x,x);
  rect(291,328,12,12);
  for(int i=334;i<364;i+=6){
  rect(267,i,x,x);
  }
  for(int i=340;i<364;i+=6){
  rect(285,i,12,x);
  }
  for(int i=364;i<400;i+=6){
  rect(261,i,x,x);
  }
  for(int i=364;i<400;i+=6){
  rect(279,i,12,x);
  rect(267,394,12,x);
  }
  for(int i=291;i<345;i+=6){
  rect(i,400,x,x);
  }
  for(int i=375;i<437;i+=6){
  rect(i,400,x,x);
  }
  for(int i=370;i<400;i+=6){
  rect(345,i,x,x);
  }
  for(int i=346;i<376;i+=6){
  rect(351,i,x,x);
  }
  for(int i=346;i<364;i+=6){
  rect(363,i,x,x);
  rect(357,340,x,x);
  }
  for(int i=364;i<400;i+=6){
  rect(369,i,x,x);
  }
 for(int i=322;i<376;i+=6){
  rect(406,i,x,x);
  }
  for(int i=322;i<396;i+=6){
  rect(412,i,x,x);
  }
  for(int i=352;i<396;i+=6){
  rect(418,i,x,x);
  rect(423,394,x,x);
  }
  for(int i=442;i<460;i+=6){
  rect(i,394,x,x);
  }
  for(int i=358;i<400;i+=6){
  rect(460,i,x,x);
  }
  for(int i=322;i<330;i+=6){
  rect(448,i,x,x);
  }
  for(int i=334;i<354;i+=6){
  rect(454,i,x,x);
  }
  //pantuflas
  for(int i=292;i<316;i+=6){
  rect(i,418,x,x);
  }
  for(int i=256;i<280;i+=6){
  rect(i,418,x,x);
  }
  for(int i=250;i<292;i+=6){
  rect(i,424,x,x);
  }//continuamos
  for(int i=298;i<316;i+=6){
  rect(i,424,x,x);
  }
  for(int i=244;i<298;i+=6){
  rect(i,430,x,x);
  }
  for(int i=302;i<316;i+=6){
  rect(i,430,x,x);
  }
  for(int i=244;i<298;i+=6){
  rect(i,436,x,x);
  }
  for(int i=244;i<304;i+=6){
  rect(i,442,x,x);
  }
  for(int i=310;i<322;i+=6){
  rect(i,442,x,x);
  }
  //pantufla derecha
  rect(400,412,x,x);
  for(int i=400;i<442;i+=6){
  rect(i,418,x,x);
  }
  for(int i=460;i<478;i+=6){
  rect(i,418,x,x);
  }
  for(int i=394;i<436;i+=6){
  rect(i,424,x,x);
  }
  for(int i=448;i<490;i+=6){
  rect(i,424,x,x);
  }
  for(int i=394;i<430;i+=6){
  rect(i,430,x,x);
  }
  for(int i=436;i<496;i+=6){
  rect(i,430,x,x);
  
  }
  for(int i=430;i<496;i+=6){
  rect(i,436,x,x);
  }
  for(int i=388;i<490;i+=6){
  rect(i,442,x,x);
 
  
  }
  fill(0);
  rect(424,442,x,x);
  
  
}
   
 
  if(character==4){
   
  
  
  
}
   
   
 
  if(character==5){
   int j=6;
noStroke();

//ghost
//oreja
//fill nieve
//ojos
fill(172,50,50);
rect(192,96,j,j);
rect(222,96,j,j);
//pelaje gris
fill(132,126,135);
rect(228,90,j,j);
rect(186,90,j,j);
rect(192,102,j,j);
rect(222,102,j,j);
rect(204,132,18,j);
rect(234,102,j,66);
rect(228,132,j,36);
rect(228,120,j,j);
 rect(240,132,j,24);
  rect(222,126,j,j);
  rect(222,144,j,j);
  rect(216,144,j,j);
  rect(210,144,j,j);
  rect(204,144,j,j);
  rect(222,150,j,j);
  rect(216,150,j,j);
  rect(210,150,j,j);
  rect(204,150,j,j);
  rect(222,156,j,j);
  rect(216,156,j,j);



fill(155,173,183);
rect(216,60,j,12);
rect(222,60,12,j);
rect(228,66,j,12);
rect(222,78,j,j);
rect(234,90,j,12);
rect(228,96,j,j);
rect(228,84,j,j);
rect(222,90,j,j);
rect(192,72,j,j);
rect(192,78,j,j);
rect(186,78,j,j);
rect(192,90,j,j);
rect(186,96,j,j);
rect(198,108,j,j);
rect(216,108,j,j);
rect(198,132,j,j);
rect(228,114,j,j);
rect(222,120,j,j);




fill(203,219,252);
rect(210,66,j,12);
rect(216,72,j,12);
rect(222,54,j,j);
rect(228,78,12,j);
rect(234,84,12,j);
rect(240,90,j,12);
rect(204,72,j,j);
rect(198,72,j,j);
rect(198,78,j,j);
rect(198,96,24,j);
rect(192,108,j,12);
rect(198,114,j,12);
 rect(204,102,12,j);
rect(192,132,j,j);
rect(216,114,j,18);
rect(222,108,j,12);
rect(228,102,j,12);


fill(255);
rect(192,66,18,j);
rect(192,60,j,12);
rect(186,54,j,12);
rect(228,54,j,j);
rect(234,72,j,j);
for(int i=96;i<126;i+=6){
rect(246,i,j,12);
}
for(int i=114;i<150;i+=6){
rect(252,i,j,12);
}
for(int i=186;i<228;i+=6){
rect(i,84,j,j);
}
rect(210,78,j,j);
rect(204,78,j,j);
rect(198,90,24,j);
rect(186,102,j,18);
rect(192,120,j,12);
rect(198,126,j,j);




fill(0);
rect(222,66,j,12);
rect(186,60,j,12);
rect(198,102,j,j);
rect(216,102,j,j);

fill(255);
rect(186,54,j,12);
rect(180,54,j,j);
rect(174,108,j,j);
rect(174,156,j,j);
fill(255);
rect(174,162,j,j);
for(int i=60;i<114;i+=6){
 rect(180,i,j,j); 
  }
  
  fill(255);
  //parte izquierda cabeza
  for(int i=78;i<108;i+=6){
 rect(174,i,j,j);
 rect(168,84,j,j);
  }
  for(int i=114;i<156;i+=6){
 rect(174,i,j,j);
  }
  
   for(int i=96;i<240;i+=6){
 rect(168,i,j,j);
 rect(162,108,j,j);
   }
   for(int i=120;i<234;i+=6){
 rect(162,i,j,j);
 rect(156,126,j,j);
 rect(156,144,j,j);
   }
   
   for(int i=156;i<216;i+=6){
 rect(156,i,j,j);
 rect(150,162,j,j);
 rect(150,180,j,j);
 rect(150,186,j,j);
 rect(150,198,j,j);
   }
   for(int i=216;i<234;i+=6){
 rect(162,i,j,j);
 rect(156,222,j,j);
   }
   for(int i=216;i<252;i+=6){
 rect(174,i,j,j);
   }
   for(int i=246;i<270;i+=6){
 rect(180,i,j,j);
 rect(174,264,j,j);
 rect(186,258,j,j);
 rect(180,276,j,j);
 
   }
   rect(204,108,12,j);
rect(204,114,12,j);
   
   fill(0);
 rect(180,270,j,j);
 rect(186,276,j,j);
 fill(255);
   for(int i=288;i<306;i+=6){
 rect(186,i,j,j);
 rect(180,294,j,j);
 
   }
   //copodenieve
   fill(150);
   rect(186,282,j,j);
   fill(255);
   //fill,grissombra
   for(int i=282;i<366;i+=6){
 rect(192,i,j,j);
   }
   
     
   
   
   
   rect(240,270,j,j);  //nieveeeeee
   
   //fillnieveazul
   fill(203,219,252);
   for(int i=168;i<186;i+=6){
     rect(174,i,j,j);
     
   }
   
   
   //copitogris
   fill(155,173,183);
   
    for(int i=294;i<372;i+=6){
 rect(198,i,j,j);
    }
    for(int i=354;i<366;i+=6){
 rect(186,i,j,j);
 rect(180,360,j,j);
   }
   
   
   for(int i=300;i<354;i+=6){
 rect(204,i,j,j);
  rect(210,306,j,j);
   }
   
  rect(180,114,j,j+6);
     rect(174,186,j,j);
     rect(180,198,j,j);
     rect(180,216,j,j);
     rect(186,246,j,j);
     rect(186,228,j,12);
     rect(192,138,j,12);
     rect(198,144,j,12);
     rect(192,240,j,j);
     rect(192,252,j,j);
     rect(192,264,j,j);
     for(int i=222;i<240;i+=6){
    rect(198,i,j,j);
  }
  for(int i=246;i<264;i+=6){
    rect(198,i,j,j);
  }
  for(int i=240;i<252;i+=6){
    rect(204,i,j,j);
  }
  rect(210,228,j,j);
  rect(210,246,j,j);
    rect(210,252,j,j);
    rect(210,264,j,j);
    rect(210,270,j,j);
    rect(216,270,j,j);
    rect(210,156,j,j);
    
   for(int i=174;i<198;i+=6){
 rect(i,372,j,j);
   }
   rect(192,144,j,j);
   rect(198,150,j,j);
   for(int i=240;i<258;i+=6){
    rect(216,i,j,j);
  }
  rect(222,234,j,j);
  rect(222,162,j,j);
  rect(228,246,j,j);
  rect(234,162,j,12);
  rect(234,252,j,12);
  
  rect(240,156,j,18);
  rect(240,252,j,j);
  rect(246,264,12,j);
  rect(246,246,j,j);
  for(int i=138;i<168;i+=6){
   rect(246,i,j,j);
   } 
   //
   for(int i=102;i<132;i+=6){
     //cara de ghost
   rect(240,i,j,j);
   }
   
   
     //nieveazul
     
     
     
   fill(203,219,252);
   
   //fill(azulnieve);
 rect(186,294,12,j);
 rect(192,306,j,j);
 rect(192,318,j,18);
 rect(192,342,j,j);
   
   for(int i=192;i<216;i+=6){
     rect(174,i,j,j);
     }
  for(int i=126;i<198;i+=6){
     rect(180,i,j,j);
  }
  for(int i=204;i<216;i+=6){
     rect(180,i,j,j);
  }
  for(int i=222;i<246;i+=6){
     rect(180,i,j,j);
  }
  for(int i=138;i<228;i+=6){
    rect(186,i,j,j);
  rect(186,120,j,j);
  rect(186,240,j,j);
  rect(186,252,j,j);
  }
  for(int i=150;i<240;i+=6){
    rect(192,i,j,j);
    rect(192,246,j,j);
    rect(192,258,j,j);
    
  
  }
  for(int i=156;i<222;i+=6){
    rect(198,i,j,j);
    
  }
  for(int i=198;i<210;i+=6){
    rect(i,264,j,j);
  }
  for(int i=156;i<240;i+=6){
    rect(204,i,j,j);
  }
  for(int i=162;i<228;i+=6){
    rect(210,i,j,j);
    rect(210,234,j,j);
    rect(210,240,j,j);
  }
  for(int i=162;i<240;i+=6){
    rect(216,i,j,j);
  }
    
  //fill nievecita
   for(int i=174;i<198;i+=6){
 rect(i,366,j,j);
   }
   for(int i=168;i<234;i+=6){
    rect(222,i,j,j);
  }
  for(int i=168;i<246;i+=6){
    rect(228,i,j,j);
  }
  for(int i=174;i<252;i+=6){
    rect(234,i,j,j);
  }
  for(int i=174;i<252;i+=6){
    rect(240,i,j,j);
    rect(240,258,j,12);
  }
  for(int i=168;i<246;i+=6){
    rect(246,i,j,j);
    rect(246,252,j,12); 
    rect(246,270,12,j);//aquí comienza la pata
  }
  for(int i=156;i<264;i+=6){
    rect(252,i,j,j);
  }
  for(int i=138;i<270;i+=6){
    rect(258,i,j,j);
  }
  for(int i=156;i<270;i+=6){
    rect(264,144,j,j);
    rect(264,i,j,j);
  }
  for(int i=156;i<246;i+=6){
    rect(270,i,j,j);
  }
  for(int i=156;i<228;i+=6){
    rect(276,i,j,j);
  }
  for(int i=168;i<216;i+=6){
    rect(282,i,j,j);
    rect(282,150,j,12);
    rect(246,126,j,12);
  }
  rect(180,54,j,j);
  
   
  //pelajegris
  fill(132,126,135);
  rect(198,240,j,j);
  for(int i=252;i<264;i+=6){
    rect(204,i,j,j);
  }
  rect(210,258,j,j);
  for(int i=126;i<138;i+=6){
    rect(186,i,j,j);
  }
  for(int i=192;i<204;i+=6){
    rect(i,138,j,j);
    rect(198,144,j,j);
  }
 for(int i=258;i<270;i+=6){
    rect(216,i,j,j);
  }
  for(int i=246;i<276;i+=6){
  rect(222,i,j,j);
  }
  for(int i=252;i<276;i+=6){ //toma esto como referencia-sombra pata
  rect(228,i,j,j);
  }
  //
  rect(234,264,j,12);
  
    
  //pelaje sombra
  fill(80,80,86);
  rect(222,240,j,j);
  rect(228,126,j,j);
  rect(222,132,j,j);
  rect(222,138,j,j);
  rect(216,138,j,j);
  rect(210,138,j,j);
  rect(204,138,j,j);
   
 }
  if(character==6){
   noStroke();
    //sombra cabello
  fill(122,25,34);
  
  
  rect(120,72,x,x);
  rect(126,78,x,x);
  rect(126,84,x,x);
   rect (96,90,x,x);
   
   //rostro
   fill(210,153,120);
   rect(120,78,x,x);
  rect(120,84,x,x);
  rect(114,84,x,x);
   rect (120,90,x,x);
   rect(114,102,x,x);
    rect(108,96,x,x);
    //rostroluz
    fill(232,197,131);
    rect(114,90,x,12);
    rect(108,90,x,x);
   
   
   
   //fillllllll
   fill(165,101,97);
   rect (102,90,x,x);
   
   
  //cabellooooooooo
  fill(168,46,59);
  for(int i=102;i<126;i+=6){
  rect(i,66,x,x);
  }
  for(int i=96;i<118;i+=6){
  rect(i,72,x,x);
  rect(i,78,x,x);
  rect(126,72,x,x);
  }
  for(int i=96;i<114;i+=6){
  rect(i,84,x,x);
  }
  for(int i=96;i<108;i+=6){
  rect(i,96,x,x);
  }
  for(int i=96;i<114;i+=6){
  rect(i,102,x,x);
  }
  for(int i=102;i<114;i+=6){
  rect(i,108,x,x);
  rect(108,114,x,x);
  }
  //collar
  fill(20,22,31);
  rect(114,108,x,x);
  fill(0);
  rect(120,108,x,x);
  
  //chaqueta
  fill(92,68,71);
  for(int i=108;i<120;i+=6){
  rect(90,i,x,x);
  rect(102,114,x,x);
  }
  for(int i=108;i<144;i+=6){
  rect(84,i,x,x);
  }
  for(int i=120;i<144;i+=6){
  rect(78,i,x,x);
  }
  for(int i=120;i<144;i+=6){
  rect(96,i,x,x);
  }
  for(int i=120;i<144;i+=6){
  rect(108,i,x,x);
  }
  for(int i=126;i<144;i+=6){
  rect(102,i,x,x);
  }
  
  
  //chaquetasombra
  fill(50,34,46);
  rect(120,102,x,x);
  rect(126,102,x,x);
  rect(126,108,x,x);
  rect(132,114,x,36);
  
  fill(0);
  rect(102,120,x,x);
  rect(72,138,x,x);
  rect(78,144,12,x);
  rect(126,140,x,x);
  rect(120,140,x,x);
  rect(126,134,x,x);
  //guanteeeeeee
  fill(136,140,120);
  rect(78,150,x,24);
  rect(84,174,x,12);
  
  //cinturon
  fill(20,22,31);
  for(int i=102;i<114;i+=6){
  rect(i,162,x,x);
  rect(114,168,x,x);
  rect(120,174,x,12);
  }
  //pantalonsombra
  for(int i=126;i<138;i+=6){
  rect(i,150,x,x);
  rect(126,144,x,x);
}
for(int i=126;i<138;i+=6){
  rect(i,162,x,x);
  rect(126,168,x,x);
}

for(int i=168;i<210;i+=6){
  rect(138,i,x,x);
  
}
for(int i=174;i<216;i+=6){
  rect(132,i,x,x);
  
}
for(int i=180;i<216;i+=6){
  rect(126,i,x,x);
  
}
for(int i=228;i<240;i+=6){
  rect(126,i,x,x);
  
}
rect(114,140,x,x);
  rect(114,134,x,x);
  rect(120,134,x,x);
  rect(120,128,x,x);

//botas 2
fill(50,34,46);
rect(126,264,12,x);
rect(126,240,12,x);
fill(38,27,37);
rect(126,246,x,18);



fill(10,11,15);
  rect(126,216,12,x);
  rect(126,222,12,x);
  // cinturon3
  fill(10,11,15);
  rect(126,174,x,x);
  rect(132,168,x,x);
  rect(138,162,x,x);
  
  
  //cinturon2
  fill(92,68,71);
  for(int i=102;i<126;i+=6){
  rect(i,156,x,x);
}
//sombra
fill(50,34,46);
for(int i=126;i<138;i+=6){
  rect(i,156,x,x);
}
  
  
  
  //pantalones
  fill(37,42,60);
  
  rect(114,114,x,x);
  rect(114,120,x,14);
  rect(120,114,x,14);
  rect(126,114,x,20);
  
   for(int i=108;i<126;i+=6){
  rect(i,150,x,x);
  rect(i,144,x,x);
}
  
  for(int i=114;i<126;i+=6){
  rect(i,162,x,x);
  rect(120,168,x,x);
}
  
  for(int i=168;i<210;i+=6){
  rect(102,i,x,x);
  }
  for(int i=168;i<198;i+=6){
  rect(108,i,x,x);
  }
  for(int i=174;i<186;i+=6){
  rect(114,i,x,x);
  }
  for(int i=174;i<228;i+=6){
  rect(96,i,x,x);
  }
  for(int i=204;i<240;i+=6){
  rect(90,i,x,x);
  }
  for(int i=228;i<252;i+=6){
  rect(84,i,x,x);
  }
  fill(20,22,31);
  for(int i=222;i<240;i+=6){
  rect(90,i,x,x);
  rect(96,222,x,x);
  rect(84,240,x,x);
  }
  fill(51,37,53);
  for(int i=246;i<276;i+=6){
  rect(78,i,x,x);
  }
  //botas
  fill(73,48,59);
  rect(78,240,x,x);
  rect(84,246,x,x);
  rect(90,240,x,x);
  for(int i=264;i<276;i+=6){
  rect(78,i,x,x);
  }
  
  
  
  //sombra de guante
  fill(88,86,81);
  rect(84,168,x,x);
  rect(78,174,x,x);
  
  
  
  //chaquetasombraaaaa
  fill(73,48,59);
  for(int i=108;i<120;i+=6){
  rect(96,i,x,x);
  }
  fill(73,48,59);
  for(int i=120;i<132;i+=6){
  rect(90,i,x,x);
  }
   //cuernos
  fill(#57018E);
   
   rect(108,66,x,x);
   rect(108,72,x,x);
   fill(#7000B7);
   rect(102,66,6,3);
  
   rect(105,72,3,x);
   
 }
 
 
}
}