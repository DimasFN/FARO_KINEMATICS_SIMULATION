//FARO_SIMULATION
//Triangle Angle function returns angle in radians
float TRIANGLE_ANGLE(float a, float b, float c){
    float x=acos(
                        ( (a*a)+(b*b)-(c*c) )
                                   /
                             (2*a*b)
                             );
                   return x;          
}

//Triangle Hypotenuse function returns length
float TRIANGLE_HYPOTENUSE(float a, float b){
  float x=sqrt((a*a)+(b*b));
  return x;
}

//Triangle_Lenght function returns lenght
float TRIANGLE_LENGHT(float a, float b, float Theta_C){
  float x=sqrt((a*a)+(b*b)-(2*a*b*cos(Theta_C)));
  return x;
}

void setup() {
  size(1350, 700);
  background(0);
}

void draw() {
  fill(0);
  noStroke();
  rect(0,0,1350, 700);
    field();
     IK();
}

void field(){
  //KOTAK STAGE
  rectMode(CORNER);
  fill(0);
  strokeWeight(3);
  stroke(0,250,0);
  rect(25, 25, 850, 500, 25); 
  
  //GARIS KOTAK HORIZONTAL
  for(float i=50;i<525;i+=25){
    strokeWeight(1);
    stroke(0,80,0);
    line(27, i, 873, i);
  }
  //GARIS KOTAK VERTIKAL
  for(float i=50;i<875;i+=25){
    strokeWeight(1);
    stroke(0,80,0);
    line(i, 27, i, 523);
  }
    
}

void IK(){
  
  //Pendulum Terbalik
  pushMatrix();
  translate(100,0);
  //KOTAK Pendulum X
  rectMode(CORNER); 
  fill(0);
  strokeWeight(1);
  rect(975, 25, 230, 135, 10); 
  
  //KOTAK Pendulum Y
  rectMode(CORNER); 
  fill(0);
  strokeWeight(1);
  rect(975, 200, 230, 135, 10); 
  
  //Pendulum Terbalik X
  pushMatrix();
  float x=200/2;
  strokeWeight(3);
  translate(1090,150);
  pushMatrix();
  rotate(PI);
  line(0,0,0,x);
  strokeWeight(20);
  stroke(255,32,12);
  point(0,x);
  popMatrix();
  //TEKS PENDULUM X
  fill(0, 202, 0);
  textSize(12);
  text("Inverted Penulum in X Axis", -80, 25); 
  popMatrix();
  
  
  //Pendulum Terbalik Y
  pushMatrix();
  float y=200/2;
  strokeWeight(3);
  translate(1090,325);
  pushMatrix();
  rotate(PI);
  line(0,0,0,y);
  strokeWeight(20);
  stroke(100,32,12);
  point(0,x);
  popMatrix();
  //TEKS PENDULUM Y
  fill(0, 202, 0);
  text("Inverted Pendulum in Y Axis", -80, 25);
  popMatrix();
  
  popMatrix();
  
    //Koordinat Kaki Kanan
    float R_X=55.0;
    float R_Y=50.0;
    float R_Z=155.0;
    //Rotasi Kaki Kanan
    float R_Roll=0.0;
    float R_Pitch=0.0;
    //float R_Yaw=0.0;
    
    //Koordinat Kaki Kiri
    float L_X=-50.1;
    float L_Y=-0.0;
    float L_Z=120.1;
    //Rotasi Kaki Kiri
    float L_Roll=0.0;
    float L_Pitch=0.0;
    //float L_Yaw=0.0;
    
    //Koordinat Tangan Kanan
    float R_X_Hand=-25.01;
    float R_Y_Hand=30.01;
    float R_Z_Hand=79.01;
    //Koordinat Tangan Kiri
    float L_X_Hand=25.0;
    float L_Y_Hand=30.0;
    float L_Z_Hand=79.01;
    
    //Spec link kaki kanan
    float R_XZ=0;
    float R_L2=78.0;
    float R_L1=78.0;
    float R_L1a=0;
    float R_L2a=0;
    float R_a1=21;
    float R_a2=0;
    float R_a3=0;

    //spec link kaki kiri
    float L_XZ;
    float L_L2=78.0;
    float L_L1=78.0;
    float L_L1a=0;
    float L_L2a=0;
    float L_a1=21;
    float L_a2=0;
    float L_a3=0;
    
    //spec link tangan kanan
    float R_ZY_Hand=0;
    float R_L2_Hand=50.0;
    float R_L1_Hand=50.0;
    float R_L1a_Hand=0;
    float R_L2a_Hand=0;
    float R_L1b_Hand=0;
    float R_L2b_Hand=0;
    //spec link tangan kiri
    float L_ZY_Hand=0;
    float L_L2_Hand=50.0;
    float L_L1_Hand=50.0;
    float L_L1a_Hand=0;
    float L_L2a_Hand=0;
    float L_L1b_Hand=0;
    float L_L2b_Hand=0;
    
    float R_THETA_1=0;
    float R_THETA_1a=0;
    float R_THETA_1b=0;
    float R_THETA_1c=0;
    float R_THETA_2=0;
    float R_THETA_2a=0;
    float R_THETA_3=0;
    float R_THETA_3a=0;
    float R_THETA_3b=0;
    float R_THETA_3c=0;
    float R_THETA_3d=0;
    float R_THETA_7=0;
    float R_THETA_7a=0;
    float R_THETA_7b=0;
    float R_THETA_5=0;
    float R_THETA_4=0;
    float R_THETA_8=0;
    float R_THETA_8a=0;
    float R_THETA_8b=0;
    float R_THETA_8c=0;
    float R_THETA_9=0;
    float R_THETA_9a=0;
    float R_THETA_9b=0;
    float R_THETA_9c=0;
    float R_THETA_9d=0;
    
    float L_THETA_1=0;
    float L_THETA_1a=0;
    float L_THETA_1b=0;
    float L_THETA_1c=0;
    float L_THETA_2=0;
    float L_THETA_2a=0;
    float L_THETA_3=0;
    float L_THETA_3a=0;
    float L_THETA_3b=0;
    float L_THETA_3c=0;
    float L_THETA_3d=0;
    float L_THETA_7=0;
    float L_THETA_7a=0;
    float L_THETA_7b=0;
    float L_THETA_5=0;
    float L_THETA_4=0;
    float L_THETA_8=0;
    float L_THETA_8a=0;
    float L_THETA_8b=0;
    float L_THETA_8c=0;
    float L_THETA_9=0;
    float L_THETA_9a=0;
    float L_THETA_9b=0;
    float L_THETA_9c=0;
    float L_THETA_9d=0;

    //Text R_X_Leg
    pushMatrix();
    translate(0,10);
    textSize(10);
    fill(0, 202, 253);
    text("R_X_Leg", 40, 550);
    text(R_X, 35, 565); 
    //Text  R_Y_Leg 
    textSize(10);
    fill(0, 202, 253);
    text("R_Y_Leg", 90, 550); 
    text(R_Y, 85, 565); 
    //Text  R_Z_Leg
    textSize(10);
    fill(0, 202, 253);
    text("R_Z_Leg", 140, 550);
    text(R_Z, 135, 565);
    //Text L_X_Leg
    textSize(10);
    fill(0, 202, 253);
    text("L_X_Leg", 190, 550);
    text(L_X, 185, 565); 
    //Text L_Y_Leg 
    textSize(10);
    fill(0, 202, 253);
    text("L_Y_Leg", 240, 550); 
    text(L_Y, 235, 565); 
    //Text L_Z_Leg
    textSize(10);
    fill(0, 202, 253);
    text("L_Z_Leg", 290, 550);
    text(L_Z, 285, 565);
    popMatrix(); 
    
    //Koordinat tangan
    //Text R_X_Hand
    pushMatrix();
    translate(0,50);
    textSize(10);
    fill(0, 202, 253);
    text("R_X_Hand", 40, 550);
    text(R_X_Hand, 35, 565); 
    //Text  R_Y_Hand
    textSize(10);
    fill(0, 202, 253);
    text("R_Y_Hand", 90+20, 550); 
    text(R_Y_Hand, 85+20, 565); 
    //Text  R_Z_Hand
    textSize(10);
    fill(0, 202, 253);
    text("R_Z_Hand", 140+30, 550);
    text(R_Z_Hand, 135+30, 565);
    //Text L_X_Hand
    textSize(10);
    fill(0, 202, 253);
    text("L_X_Hand", 190+40, 550);
    text(L_X, 185+40, 565); 
    //Text L_Y_Hand 
    textSize(10);
    fill(0, 202, 253);
    text("L_Y_Hand", 240+50, 550); 
    text(L_Y_Hand, 235+50, 565); 
    //Text L_Z_Hand
    textSize(10);
    fill(0, 202, 253);
    text("L_Z_Hand", 290+60, 550);
    text(L_Z_Hand, 285+60, 565);
    popMatrix(); 
  
  //GARIS TENGAH STAGE
    strokeWeight(2);
    stroke(0,200,0);
    line(450, 27, 450, 523);
    
    //GARIS SUMBU Y CORONAL PLANE
    strokeWeight(1);
    stroke(0,200,200);
    line(225, 50, 225, 500);
    //Ujung Anak Panah Sumbu Y CORONAL PLANE
    strokeWeight(1);
    line(225, 50, 229, 58);
    line(225, 50, 221, 58);
    //TEXT SUMBU Z CORONAL PLANE
    textSize(15);
    fill(0, 202, 253);
    text("Z", 221, 45); 
    //GARIS SUMBU Z CORONAL PLANE
    strokeWeight(1);
    stroke(0,200,200);
    line(50, 275, 425, 275);
    //Ujung Anak Panah Sumbu Z CORONAL PLANE
    strokeWeight(1);
    stroke(0,200,200);
    line(425, 275, 418, 271);
    line(425, 275, 418, 279);
    //TEXT SUMBU Y CORONAL PLANE
    textSize(15);
    fill(0, 202, 253);
    text("Y", 430, 281); 
    //TEXT "SAGITAL"
    textSize(17);
    fill(0, 255, 0);
    text("Sagittal Plane", 600, 517);
    //TEXT "CORONAL"
    textSize(17);
    fill(0, 255, 0);
    text("Coronal Plane", 175, 517);
    
    //GARIS SUMBU Y SAGITTAL PLANE
    strokeWeight(1);
    stroke(0,200,200);
    line(225+425, 50, 225+425, 500);
    //Ujung Anak Panah Sumbu Y SAGITTAL PLANE
    strokeWeight(1);
    line(225+425, 50, 229+425, 58);
    line(225+425, 50, 221+425, 58);
    //TEXT SUMBU Z CORONAL PLANE
    textSize(15);
    fill(0, 202, 253);
    text("Z", 220+425, 45); 
    //GARIS SUMBU X SAGITTAL PLANE
    strokeWeight(1);
    stroke(0,200,200);
    line(50+425, 275, 425+425, 275);
    //Ujung Anak Panah Sumbu X SAGITTAL PLANE
    strokeWeight(1);
    stroke(0,200,200);
    line(425+425, 275, 418+425, 271);
    line(425+425, 275, 418+425, 279);
    //TEXT SUMBU X CORONAL PLANE
    textSize(15);
    fill(0, 202, 253);
    text("X", 220+425+210, 281); 
    
    //Tombol Inverse Kinematics-------------------------------------------------
    ////Tombol X+
    //pushMatrix();
    //fill(0,200,0);
    //stroke(0,200,0);
    //strokeWeight(1);
    //translate(350,550);
    //rect(0, 0, 25, 10, 5); 
    ////Teks X+
    //textSize(10);
    //fill(0, 202, 253);
    //text("X+", 9, 20);  
    //popMatrix();
    
    ////Tombol X-
    //pushMatrix();
    //fill(0,200,0);
    //strokeWeight(1);
    //stroke(0,200,0);
    //translate(380,550);
    //rect(0, 0, 25, 10, 5);
    //textSize(10);
    //fill(0, 202, 253);
    //text("X-", 9, 20);  
    //popMatrix();
    
    ////Tombol Y+
    //pushMatrix();
    //fill(0,200,0);
    //strokeWeight(1);
    //stroke(0,200,0);
    //translate(420,550);
    //rect(0, 0, 25, 10, 5); 
    //textSize(10);
    //fill(0, 202, 253);
    //text("Y+", 9, 20); 
    //popMatrix();
    
    ////Tombol Y-
    //pushMatrix();
    //fill(0,200,0);
    //strokeWeight(1);
    //stroke(0,200,0);
    //translate(450,550);
    //rect(0, 0, 25, 10, 5); 
    //textSize(10);
    //fill(0, 202, 253);
    //text("Y-", 9, 20); 
    //popMatrix();
    
    ////Tombol Z+
    //pushMatrix();
    //fill(0,200,0);
    //strokeWeight(1);
    //stroke(0,200,0);
    //translate(490,550);
    //rect(0, 0, 25, 10, 5); 
    //textSize(10);
    //fill(0, 202, 253);
    //text("Z+", 9, 20); 
    //popMatrix();
    ////Tombol Z-
    //pushMatrix();
    //fill(0,200,0);
    //strokeWeight(1);
    //stroke(0,200,0);
    //translate(520,550);
    //rect(0, 0, 25, 10, 5);
    //textSize(10);
    //fill(0, 202, 253);
    //text("Z-", 9, 20); 
    //popMatrix();
    
    //RUMUS IK KAKI KANAN---------------------------------------------------
    R_Z        = R_Z-21;
    R_XZ       = TRIANGLE_HYPOTENUSE(R_X,R_Z);
    R_THETA_1a = TRIANGLE_ANGLE( R_XZ, R_L1, R_L2 );
    R_THETA_1b = -atan2(R_Z,R_X);
    R_THETA_1  = (PI/2)+R_THETA_1a + R_THETA_1b; 
    R_THETA_2a = TRIANGLE_ANGLE( R_L2, R_L1, R_XZ );
    R_THETA_2  = PI-R_THETA_2a;
    R_THETA_3a = TRIANGLE_ANGLE( R_L2, R_XZ, R_L1 );
    R_THETA_3b = R_THETA_1b;
    R_THETA_3  = (R_THETA_3a - R_THETA_3b)-radians(90.0);
    R_THETA_4  = atan2(R_Y,R_Z);
    R_THETA_5  = R_THETA_4;
    //======================
    //Roll_Pitch_Yaw_Kaki_kanan
    R_THETA_3  = R_THETA_3+radians(R_Pitch);
    R_THETA_5  = R_THETA_5+radians(R_Roll);
    //======================
    //Manipulasi Penampakan Ukuran Link Kaki Kanan 
    R_THETA_3c = atan2(R_Z,R_X);
    R_THETA_3d = PI-(R_THETA_3c+R_THETA_3a);
    R_THETA_1c = radians(90)-R_THETA_1;
    R_L1a      = sin(R_THETA_1c)*R_L1;
    R_L2a      = sin(R_THETA_3d)*R_L2;
    R_a2       = cos(radians(R_Roll))*R_a1;
    R_a3       = cos(radians(R_Pitch))*R_a2;
    
    //RUMUS IK KAKI KIRI------------------------
    L_Z        = L_Z-21;
    L_XZ       = TRIANGLE_HYPOTENUSE(L_X,L_Z);
    L_THETA_1a = TRIANGLE_ANGLE( L_XZ, L_L1, L_L2 );
    L_THETA_1b = -atan2(L_Z,L_X);
    L_THETA_1  = (PI/2)+L_THETA_1a + L_THETA_1b; 
    L_THETA_2a = TRIANGLE_ANGLE( L_L2, L_L1, L_XZ );
    L_THETA_2  = PI-L_THETA_2a;
    L_THETA_3a = TRIANGLE_ANGLE( L_L2, L_XZ, L_L1 );
    L_THETA_3b = L_THETA_1b;
    L_THETA_3  = (L_THETA_3a - L_THETA_3b)-radians(90.0);
    L_THETA_4  = atan2(L_Y,L_Z);
    L_THETA_5  = L_THETA_4;
    //======================
    //Roll_Pitch_Yaw_Kaki_kanan
    L_THETA_3  = L_THETA_3+radians(L_Pitch);
    L_THETA_5  = L_THETA_5+radians(L_Roll);
    //======================
    //Manipulasi Penampakan Ukuran Link Kaki Kiri
    L_THETA_3c = atan2(L_Z,L_X);
    L_THETA_3d = PI-(L_THETA_3c+L_THETA_3a);
    L_THETA_1c = radians(90)-L_THETA_1;
    L_L1a      = sin(L_THETA_1c)*L_L1;
    L_L2a      = sin(L_THETA_3d)*L_L2;
    L_L2a      = sin(L_THETA_3d)*L_L2;
    L_a2       = cos(radians(L_Roll))*L_a1;
    L_a3       = cos(radians(L_Pitch))*L_a2;
    
    //Rumus IK Tangan Kiri------------------
    L_ZY_Hand  = TRIANGLE_HYPOTENUSE(L_Z_Hand,L_Y_Hand);
    L_THETA_8b = atan2(L_Y_Hand,L_Z_Hand);
    L_THETA_8a = TRIANGLE_ANGLE( L_L1_Hand, L_ZY_Hand, L_L2_Hand );
    L_THETA_8  = -(L_THETA_8a+L_THETA_8b);
    L_THETA_9a = TRIANGLE_ANGLE( L_L1_Hand, L_L2_Hand, L_ZY_Hand );
    L_THETA_9  = PI-L_THETA_9a;
    L_THETA_7  = -radians(90)+atan2(L_Z_Hand,L_X_Hand);
    //======================
    //Manipulasi Penampakan Ukuran Link Tangan Kiri
    L_THETA_9c = TRIANGLE_ANGLE( L_L2_Hand, L_ZY_Hand, L_L1_Hand );
    L_THETA_9d = atan2(L_Z_Hand,L_Y_Hand);
    L_THETA_9b = radians(90)-L_THETA_9c-L_THETA_9d;
    L_THETA_8c = radians(90)-L_THETA_8;
    L_L1a_Hand = sin(L_THETA_8c)*L_L1_Hand;
    L_L2a_Hand = cos(L_THETA_9b)*L_L2_Hand;
    L_THETA_7a = radians(90)-L_THETA_7;
    L_THETA_7b = L_THETA_7a;
    L_L1b_Hand = sin(L_THETA_7a)*L_L1a_Hand;
    L_L2b_Hand = sin(L_THETA_7b)*L_L2a_Hand;
    
    //Rumus IK Tangan Kanan
    R_ZY_Hand  = TRIANGLE_HYPOTENUSE(R_Z_Hand,R_Y_Hand);
    R_THETA_8b = atan2(R_Y_Hand,R_Z_Hand);
    R_THETA_8a = TRIANGLE_ANGLE( R_L1_Hand, R_ZY_Hand, R_L2_Hand );
    R_THETA_8  = (R_THETA_8a+R_THETA_8b);
    R_THETA_9a = TRIANGLE_ANGLE( R_L1_Hand, R_L2_Hand, R_ZY_Hand );
    R_THETA_9  = -(PI-R_THETA_9a);
    R_THETA_7  = -radians(90)+atan2(R_Z_Hand,R_X_Hand);
    //======================
    //Manipulasi Penampakan Ukuran Link Tangan Kanan
    R_THETA_9c = TRIANGLE_ANGLE( R_L2_Hand, R_ZY_Hand, R_L1_Hand );
    R_THETA_9d = atan2(R_Z_Hand,R_Y_Hand);
    R_THETA_9b = radians(90)-R_THETA_9c-R_THETA_9d;
    R_THETA_8c = radians(90)-R_THETA_8;
    R_L1a_Hand = sin(R_THETA_8c)*R_L1_Hand;
    R_L2a_Hand = cos(R_THETA_9b)*R_L2_Hand;
    R_THETA_7a = radians(90)-R_THETA_7;
    R_THETA_7b = R_THETA_7a;
    R_L1b_Hand = sin(R_THETA_7a)*R_L1a_Hand;
    R_L2b_Hand = sin(R_THETA_7b)*R_L2a_Hand;
    
    //Tampilan sudut tiap servo-----------------------------------------------
    pushMatrix();
    translate(55,0);
    //Kotak Tempat Text data sendi
    textSize(15);
    fill(0, 202, 0);
    text("Joint Angle", 875, 40);
    rectMode(CORNER); 
    fill(0);
    strokeWeight(1);
    rect(850, 50, 130, 400, 10);
    //String data sendi
    textSize(10);
    fill(0, 202, 253);
    text("Q1:", 880, 80);
    text(degrees(R_THETA_9), 905, 80);
    text("Q2:", 880, 100);
    text(degrees(L_THETA_9), 905, 100);
    text("Q3:", 880, 120);
    text(degrees(R_THETA_8), 905, 120);
    text("Q4:", 880, 140);
    text(degrees(L_THETA_8), 905, 140);
    text("Q5:", 880, 160);
    text(degrees(R_THETA_7), 905, 160);
    text("Q6:", 880, 180);
    text(degrees(L_THETA_7), 905, 180);
    text("Q7:", 880, 200);
    //text(R_THETA_6, 905, 200);
    text("Q8:", 880, 220);
    //text(L_THETA_6, 905, 220);
    text("Q9:", 880, 240);
    text(degrees(R_THETA_4), 905, 240);
    text("Q10:", 880, 260);
    text(degrees(L_THETA_4), 905, 260);
    text("Q11:", 880, 280);
    text(degrees(R_THETA_1), 905, 280);
    text("Q12:", 880, 300);
    text(degrees(L_THETA_1), 905, 300);
    text("Q13:", 880, 320);
    text(degrees(R_THETA_2), 905, 320);
    text("Q14:", 880, 340);
    text(degrees(L_THETA_2), 905, 340);
    text("Q15:", 880, 360);
    text(degrees(R_THETA_3), 905, 360);
    text("Q16:", 880, 380);
    text(degrees(L_THETA_3), 905, 380);
    text("Q17:", 880, 400);
    text(degrees(R_THETA_5), 905, 400);
    text("Q18:", 880, 420);
    text(degrees(R_THETA_5), 905, 420);
    popMatrix();
    
    //Body Links Sagittal=======================================================
    //LEFT_HAND
    //L_ARM
    pushMatrix();
    translate(650,150);
    strokeWeight(3);
    stroke(100,100,100);
    translate(0,25);
    rotate(L_THETA_7);//---sudut----
    //L_SHOULDER
    line(0,0,0,25);
    strokeWeight(7);
    stroke(100,10,100);
    point(0, 0);
    //L_UPPER_ARM
    strokeWeight(3);
    stroke(100,100,100);
    translate(0,25);
    line(0,0,0,L_L1a_Hand);
    strokeWeight(7);
    stroke(100,10,100);
    point(0, 0);
    //L_LOWER_ARM
    strokeWeight(3);
    stroke(100,100,100);
    translate(0,L_L1a_Hand);
    line(0,0,0,L_L2a_Hand);
    strokeWeight(7);
    stroke(100,10,100);
    point(0, 0);
    popMatrix();
    
    //Body_Link--------------------
    pushMatrix();
    strokeWeight(3);
    stroke(200,200,0);
    translate(650,150);
    line(0,0,0,100);
    strokeWeight(27);
    stroke(20,20,200);
    point(0, 0);
    
    //LEFT_LEG
    pushMatrix();
    //L_Upper_Leg--------------------
    strokeWeight(3);
    stroke(100,100,0);
    translate(0, 100);
    rotate(-L_THETA_1);//----sudut----
    line(0,0,0, 78);
    strokeWeight(7);
    stroke(100,10,100);
    point(0, 0);
    //L_Lower_Leg--------------------
    strokeWeight(3);
    stroke(100,100,0);
    translate(0, 78);
    rotate(L_THETA_2);//----sudut----
    line(0,0,0, 78);
    strokeWeight(7);
    stroke(100,10,100);
    point(0, 0);
    //L_Ankle_Link-------------------
    strokeWeight(3);
    stroke(100,100,0);
    translate(0, 78);
    rotate(-L_THETA_3);//----sudut----
    line(0,0,0, L_a2);
    strokeWeight(7);
    stroke(100,10,100);
    point(0, 0);
    //L_Foot_Link-------------------
    strokeWeight(3);
    stroke(100,100,0);
    translate(0, L_a2);
    line(0,0, 30, 0);
    line(0,0, -30, 0);
    strokeWeight(7);
    stroke(100,10,100);
    point(0, 0);
    popMatrix();
    
    //RIGHT_LEG
    pushMatrix();
    //R_Upper_Leg--------------------
    strokeWeight(3);
    stroke(200,200,0);
    translate(0, 100);
    rotate(-R_THETA_1);//R_THETA_1);//---sudut----
    line(0,0,0, 78);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //R_Lower_Leg--------------------
    strokeWeight(3);
    stroke(200,200,0);
    translate(0, 78);
    rotate(R_THETA_2);//---sudut----
    line(0,0,0, 78);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //R_Ankle_Link-------------------
    strokeWeight(3);
    stroke(200,200,0);
    translate(0, 78);
    rotate(-R_THETA_3);//---sudut----
    line(0,0,0, R_a2);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //R_Foot_Link-------------------
    strokeWeight(3);
    stroke(200,200,0);
    translate(0, R_a2);
    line(0,0, 30, 0);
    line(0,0, -30, 0);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    popMatrix();
    
    //RIGHT_HAND
    //R_ARM
    pushMatrix();
    strokeWeight(3);
    stroke(200,200,200);
    translate(0,25);
    rotate(R_THETA_7);//---sudut----
    //R_SHOULDER
    line(0,0,0,25);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //R_UPPER_ARM
    translate(0,25);
    strokeWeight(3);
    stroke(200,200,200);
    line(0,0,0,R_L1a_Hand);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //R_LOWER_ARM
    strokeWeight(3);
    stroke(200,200,200);
    translate(0,R_L1a_Hand);
    line(0,0,0,R_L2a_Hand);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    popMatrix();
    popMatrix();
    
    //Body links Coronal====================================================
    //Body links
    pushMatrix();
    translate(225,150);
    strokeWeight(3);
    stroke(200,200,0);
    line(0,0,0,25);
    strokeWeight(27);
    stroke(0,0,200);
    point(0,0);
    strokeWeight(3);
    stroke(200,200,0);
    //RIGHT_SHOULDER1
    pushMatrix();
    translate(0,25);
    line(0,0,-25,0);
    //LEFT_SHOULDER1
    line(0,0,25,0);
    //RIGHT_RIBS
    line(-25,0,-15,75);
    //LEFT_RIBS
    line(25,0,15,75);
    //WAIST
    line(0,75,15,75);
    line(0,75,-15,75);
    popMatrix();
    
    //RIGHT_LEG
    pushMatrix();
    //R_Upper_Leg--------------------
    strokeWeight(3);
    stroke(200,200,0);
    translate(-15, 100);
    rotate(R_THETA_4);//R_THETA_1);//---sudut----
    line(0,0,0, R_L1a);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //R_Lower_Leg--------------------
    strokeWeight(3);
    stroke(200,200,0);
    translate(0, R_L1a);
    line(0,0,0, R_L2a);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //R_Ankle_Link-------------------
    strokeWeight(3);
    stroke(200,200,0);
    translate(0, R_L2a);
    rotate(-R_THETA_5);//---sudut----
    line(0,0,0, R_a3);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //R_Foot_Link-------------------
    strokeWeight(3);
    stroke(200,200,0);
    translate(0, R_a3);
    line(0,0, 10, 0);
    line(0,0, -10, 0);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    popMatrix();
    
    //LEFT_LEG
    pushMatrix();
    //L_Upper_Leg--------------------
    strokeWeight(3);
    stroke(200,200,0);
    translate(15, 100);
    rotate(L_THETA_4);//----sudut----
    line(0,0,0, L_L1a);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //L_Lower_Leg--------------------
    strokeWeight(3);
    stroke(200,200,0);
    translate(0, L_L1a);
    line(0,0,0, L_L2a);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //L_Ankle_Link-------------------
    strokeWeight(3);
    stroke(200,200,0);
    translate(0, L_L2a);
    rotate(-L_THETA_5);//----sudut----
    line(0,0,0, L_a3);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //L_Foot_Link-------------------
    strokeWeight(3);
    stroke(200,200,0);
    translate(0, L_a3);
    line(0,0, 10, 0);
    line(0,0, -10, 0);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    popMatrix();
    
    //LEFT_SHOULDER2
    pushMatrix();
    strokeWeight(3);
    stroke(200,200,200);
    translate(25,25);
    line(0,0,25,25);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //L_UPPER_ARM
    strokeWeight(3);
    stroke(200,200,200);
    translate(25,25);
    rotate(L_THETA_8);//---sudut----
    line(0,0,0,L_L1b_Hand);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //L_LOWER_ARM
    strokeWeight(3);
    stroke(200,200,200);
    translate(0,L_L1b_Hand);
    rotate(L_THETA_9);//---sudut----
    line(0,0,0,L_L2b_Hand);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    popMatrix();
    
    //RIGHT_SHOULDER2
    pushMatrix();
    strokeWeight(3);
    stroke(200,200,200);
    translate(-25,25);
    line(0,0,-25,25);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //R_UPPER_ARM
    strokeWeight(3);
    stroke(200,200,200);
    translate(-25,25);
    rotate(R_THETA_8);//---sudut----
    line(0,0,0,R_L1b_Hand);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    //R_LOWER_ARM
    strokeWeight(3);
    stroke(200,200,200);
    translate(0,R_L1b_Hand);
    rotate(R_THETA_9);//---sudut----
    line(0,0,0,R_L2b_Hand);
    strokeWeight(7);
    stroke(200,20,200);
    point(0, 0);
    popMatrix();
    popMatrix();
}