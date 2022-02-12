boolean autogears=true;
char redatogr='y';
char bluatogr='r';
char redForw='i';
char redBack='k';
char redLeft='j';
char redRiht='l';
char redLrsk='h';
char redShbl='n';
char redGear='m';
char redClmb=',';
char bluForw='w';
char bluBack='s';
char bluLeft='a';
char bluRiht='d';
char bluLrsk='f';
char bluShbl='c';
char bluGear='x';
char bluClmb='z';
char bluLmov='q';
char bluRmov='e';
char redLmov='u';
char redRmov='o';
char redLaser='p';
char bluLaser='q';
char redIntake='[';
char bluIntake='t';
float carSpeed=12;
float carAcc=1;
float carTurn=.1;
float carTuAcc=.005;
float carAAAcc=.2;
int carShS=1;
int carAShS=4;
int carLShS=5;
boolean laserEnable=false;
float carAShE=.05;
float carShE=.01;
float clmbDif=5;
float clmbSpd=1;
float gearDif=15;
float gearDifAng=.05;
int matchTime=135;
int rtag=1;
int rtbg=3;
int rtcg=7;
int rtdg=13;
int rtpts=40;
int rtdpts=100;
int kpaB=40;
boolean fouls=true;
boolean autoShootEnable=true;
boolean distanceShootEnable=true;
boolean crossCourtShoot=false;
float wallFric=.9;
boolean toggle=true;
boolean turret=true;
float shF=3;
boolean dualShooter=true;
boolean ballDirIn=true;
float shH=11;
int autoGearBonus=20;
boolean fuelC=true;
boolean fuelVac=true;
float vacRange=400;
int kpaBonus=20;
boolean sdsAim=true;
int robotHopper=80;
int clmbPts=50;
boolean redPrePro=false;
boolean bluPrePro=false;

boolean mousePushed=false;
boolean keyPushed=false;
long hffc=0;
boolean blueBallScored=false;
boolean redBallScored=false;
boolean advancedSettings=false;
boolean videosDone=false;
int maxBalls=800;
int bpts;
int rpts;
int rg=0;
int rag=0;
int bg=0;
int bag=0;
int redPoints=0;
int bluePoints=0;
boolean[] hf={true, true, true, true, true, true};
long stml;
long pauseMil;
boolean paused=false;
int blueFouls=0;
int redFouls=0;
boolean nrg=false;
boolean nbg=false;
boolean gg=false;
boolean go=false;
int rsg=10;
int bsg=10;
boolean settings=false;
PImage img;
PImage scb;
boolean showLogo=true;
boolean showVideos=true;
boolean showScb=true;
String[] settingStrings=new String[75];
String[] defaultStrings=new String[75];
boolean settingsAvailable=true;
boolean defaultsAvailable=true;
boolean redProgramAvailable=true;
boolean bluProgramAvailable=true;
String[][] redProgram;
String[][] bluProgram;
boolean redProDidSomething=false;
boolean bluProDidSomething=false;
boolean standardGearMode=false;
boolean worldGearMode=false;
int rr=0;
int br=0;
int rar=0;
int bar=0;
int rmob=0;
int bmob=0;
int nrgC=0;
int nbgC=0;

Ball[] ball;
Rotor[] rotor;
Car carA=new Car();
Car carB=new Car();
Gear[] gear;
import processing.video.*;
Slider speedSl=new Slider();
Slider carAccSl=new Slider();
Slider carTurnSl=new Slider();
Slider carTuAccSl=new Slider();
Slider carAAAccSl=new Slider();
Slider carShSSl=new Slider();
Slider carAShSSl=new Slider();
Slider carAShESl=new Slider();
Slider carShESl=new Slider();
Slider clmbDifSl=new Slider();
Slider clmbSpdSl=new Slider();
Slider gearDifSl=new Slider();
Slider gearDifAngSl=new Slider();
Slider matchTimeSl=new Slider();
Slider rtagSl=new Slider();
Slider rtbgSl=new Slider();
Slider rtcgSl=new Slider();
Slider rtdgSl=new Slider();
Slider rtptsSl=new Slider();
Slider rtdptsSl=new Slider();
Slider wallFricSl=new Slider();
Slider kpaBSl=new Slider();
Slider carLShSSl=new Slider();
Slider shFSl=new Slider();
Slider shHSl=new Slider();
Slider autoGearBonusSl=new Slider();
Slider vacRangeSl=new Slider();
Slider kpaBonusSl=new Slider();
Slider robotHopperSl=new Slider();
Slider clmbPtsSl=new Slider();

Slider BspeedSl=new Slider();
Slider BcarTurnSl=new Slider();
Slider BcarShSSl=new Slider();
Slider BmatchTimeSl=new Slider();
Slider BcarAShSSl=new Slider();
Toggle BautoShootT=new Toggle();
Toggle BdistanceShootT = new Toggle();
Toggle BstandardGearT=new Toggle();
Toggle BworldsGearT=new Toggle();

Keyer redForwK=new Keyer();
Keyer redBackK=new Keyer();
Keyer redLeftK=new Keyer();
Keyer redRihtK=new Keyer();
Keyer redLrskK=new Keyer();
Keyer redShblK=new Keyer();
Keyer redGearK=new Keyer();
Keyer redClmbK=new Keyer();
Keyer redatogrK=new Keyer();
Keyer redLmovK=new Keyer();
Keyer redRmovK=new Keyer();
Keyer redLaserK=new Keyer();
Keyer redIntakeK=new Keyer();

Keyer bluForwK=new Keyer();
Keyer bluBackK=new Keyer();
Keyer bluLeftK=new Keyer();
Keyer bluRihtK=new Keyer();
Keyer bluLrskK=new Keyer();
Keyer bluShblK=new Keyer();
Keyer bluGearK=new Keyer();
Keyer bluClmbK=new Keyer();
Keyer bluatogrK=new Keyer();
Keyer bluLmovK=new Keyer();
Keyer bluRmovK=new Keyer();
Keyer bluLaserK=new Keyer();
Keyer bluIntakeK=new Keyer();

Toggle foulsT=new Toggle();
Toggle autoShootT=new Toggle();
Toggle distanceShootT = new Toggle();
Toggle crossCourtShootT=new Toggle();
Toggle redSwerveT=new Toggle();
Toggle redRobotOrientedT=new Toggle();
Toggle blueSwerveT=new Toggle();
Toggle blueRobotOrientedT=new Toggle();
Toggle autogearsT=new Toggle();
Toggle laserEnableT=new Toggle();
Toggle toggleT=new Toggle();
Toggle turretT=new Toggle();
Toggle dualShooterT=new Toggle();
Toggle ballDirInT=new Toggle();
Toggle fuelCT=new Toggle();
Toggle fuelVacT=new Toggle();
Toggle sdsAimT=new Toggle();
Toggle redPreProT=new Toggle();
Toggle bluPreProT=new Toggle();

Movie redVideo;
Movie blueVideo;
Movie purpleVideo;
void setup() {
  size(1200, 700, P3D);
  background(0);
  frameRate(50);
  noSmooth();
  carA=new Car();
  carB=new Car();
  File f = new File(sketchPath("data/logo.png"));
  if (f.exists()) {                                                 //thanks 325Gerbils for file checking!
    img=loadImage("logo.png");
  } else {
    showLogo=false;
  }
  File fs = new File(sketchPath("data/settings.txt"));
  if (fs.exists()) {  
    settingsAvailable=true;
  } else {
    settingsAvailable=false;
  }
  File fd = new File(sketchPath("data/defaults.txt"));
  if (fd.exists()) {  
    defaultsAvailable=true;
  } else {
    defaultsAvailable=false;
  }
  File fa = new File(sketchPath("data/red.mp4"));
  if (fa.exists()) {
    redVideo=new Movie(this, "red.mp4");
  } else {
    showVideos=false;
  }
  File fb = new File(sketchPath("data/blue.mp4"));
  if (fb.exists()) {
    blueVideo=new Movie(this, "blue.mp4");
  } else {
    showVideos=false;
  }
  File fc = new File(sketchPath("data/tie.mp4"));
  if (fc.exists()) {
    purpleVideo=new Movie(this, "tie.mp4");
  } else {
    showVideos=false;
  }
  if (defaultsAvailable) {
    if (loadStrings("data/defaults.txt").length==defaultStrings.length) {
      loadDefaults();
    } else {
      defaultsAvailable=false;
    }
  }
  if (settingsAvailable) {
    if (loadStrings("data/settings.txt").length==settingStrings.length&&settingsAvailable) {
      loadSettings();
    } else {
      settingsAvailable=false;
    }
  }
  File fo = new File(sketchPath("data/score.png"));
  if (fo.exists()) {
    scb=loadImage("score.png");
  } else {
    showScb=false;
  }
  restart();
  speedSl.make(500, 20, 100, color(0, 255, 0), "car speed", carSpeed, 0, 29, false);
  carAccSl.make(500, 40, 100, color(0, 255, 0), "car accel", carAcc, 0, 3, false);
  carTurnSl.make(500, 60, 100, color(0, 255, 0), "turn speed", carTurn, 0, .25, false);
  carTuAccSl.make(500, 80, 100, color(0, 255, 0), "turn accel", carTuAcc, 0, .25, false);
  carAAAccSl.make(500, 100, 100, color(255, 0, 0), "aim speed", carAAAcc, 0, .9, false);
  carShSSl.make(500, 120, 100, color(255, 0, 0), "(inv) ball speed", carShS, 1, 10, false);
  carAShSSl.make(500, 140, 100, color(255, 0, 0), "(inv) auto ball speed", carAShS, 1, 10, false);
  carAShESl.make(500, 160, 100, color(255, 100, 0), "auto ball error", carAShE, 0, 30, false);
  carShESl.make(500, 180, 100, color(255, 100, 0), "ball error", carShE, 0, .5, false);
  clmbDifSl.make(500, 200, 100, color(0, 0, 255), "climb zone size", clmbDif, 0, 30, false);
  clmbSpdSl.make(500, 220, 100, color(0, 0, 255), "climb speed", clmbSpd, .01, 5, false);
  gearDifSl.make(500, 240, 100, color(255, 255, 0), "gear zone size", gearDif, 0, 20, false);
  gearDifAngSl.make(500, 260, 100, color(255, 255, 0), "gear angle error", gearDifAng, 0, 3.25, false);
  matchTimeSl.make(500, 280, 100, color(255), "match length (sec)", matchTime, 0, 300, false);
  rtagSl.make(500, 300, 100, color(0, 255, 255), "gears for one rotor", rtag, 0, 20, false);
  rtbgSl.make(500, 320, 100, color(0, 255, 255), "gears for two rotors", rtbg, 0, 20, false);
  rtcgSl.make(500, 340, 100, color(0, 255, 255), "gears for three rotors", rtcg, 0, 20, false);
  rtdgSl.make(500, 360, 100, color(0, 255, 255), "gears for four rotors", rtdg, 0, 20, false);
  rtptsSl.make(500, 380, 100, color(0, 100, 255), "points per rotor", rtpts, 0, 200, false);
  rtdptsSl.make(500, 400, 100, color(0, 100, 200), "all rotor bonus points", rtdpts, 0, 200, false);
  wallFricSl.make(500, 420, 100, color(255, 255, 0), "wall friction", wallFric, 0, 1.5, false);
  kpaBSl.make(500, 440, 100, color(100, 255, 0), "kpa for bonus", kpaB, 0, 1000, false);
  carLShSSl.make(500, 460, 100, color(255, 0, 0), "(inv) laser speed", carLShS, 1, 10, false);
  shFSl.make(500, 480, 100, color(255, 255, 0), "ball forward speed", shF, 0, 11, false);
  shHSl.make(500, 500, 100, color(255, 255, 0), "ball upwards speed", shH, 2, 25, false);
  autoGearBonusSl.make(500, 520, 100, color(0, 100, 255), "auto gear bonus points", autoGearBonus, 0, 100, false);
  vacRangeSl.make(500, 540, 100, color(0, 100, 40), "fuel vaccum range", vacRange, 0, 1600, false);
  kpaBonusSl.make(500, 560, 100, color(100, 255, 0), "kpa bonus points", kpaBonus, 0, 1000, false);
  robotHopperSl.make(500, 580, 100, color(0, 244, 0), "robot hopper size", robotHopper, 1, 200, false);
  clmbPtsSl.make(500, 600, 100, color(0, 0, 255), "climb points", clmbPts, 0, 300, false);

  foulsT.make(800, 50, color(255, 255, 0), "fouls", "no fouls", fouls);
  autoShootT.make(800, 150, color(0, 0, 255), "auto aiming", "no auto aiming", autoShootEnable);
  distanceShootT.make(800, 250, color(0, 0, 255), "auto shoot fuel", "no auto shoot fuel", distanceShootEnable);
  crossCourtShootT.make(800, 350, color(0, 255, 0), "cross court shooting", "lauchpad shooting", crossCourtShoot);
  autogearsT.make(800, 450, color(255, 255, 0), "auto gear enabled", "auto gear disabled", autogears);
  laserEnableT.make(800, 550, color(255, 0, 0), "laser enabled", "laser disabled", laserEnable);
  toggleT.make(900, 50, color(0, 255, 255), "toggle shooting", "momentary shooting", toggle);
  turretT.make(900, 150, color(0, 255, 0), "auto turret", "no auto turret", turret);
  dualShooterT.make(900, 250, color(100, 200, 0), "double shooter", "single shooter", dualShooter);
  ballDirInT.make(900, 350, color(0, 200, 0), "front ball intake", "all sides ball intake", ballDirIn);
  fuelCT.make(900, 450, color(0, 150, 0), "fuel collisions", "no fuel collisions", fuelC);
  fuelVacT.make(900, 550, color(0, 100, 40), "fuel vaccum", "no vaccum", fuelVac);
  sdsAimT.make(730, 150, color(0, 0, 255), "aim balls", "don't aim balls", sdsAim);
  redPreProT.make(500, 610, color(255, 0, 0), "red programmed", "red manual", redPrePro);
  bluPreProT.make(600, 610, color(0, 0, 255), "blue programmed", "blue manual", bluPrePro);


  BspeedSl.make(500, 100, 100, color(0, 255, 0), "car speed", carSpeed, 0, 29, true);
  BcarTurnSl.make(500, 150, 100, color(0, 255, 0), "turn speed", carTurn, 0, .25, true);
  BcarShSSl.make(500, 200, 100, color(255, 0, 0), "(inv) ball speed", carShS, 1, 10, true);
  BmatchTimeSl.make(500, 250, 100, color(255), "match length (sec)", matchTime, 0, 300, true);
  BautoShootT.make(500, 300, color(0, 0, 255), "auto aiming", "no auto aiming", autoShootEnable);
  BdistanceShootT.make(600, 300, color(0, 0, 255), "long distance shooting", "no long distance shooting", distanceShootEnable);
  BcarAShSSl.make(500, 400, 100, color(255, 0, 0), "(inv) auto ball speed", carAShS, 1, 10, true);
  BstandardGearT.make(500, 450, color(255, 255, 0), "standard gear mode", "standard gear mode", standardGearMode);
  BworldsGearT.make(500, 520, color(255, 255, 0), "worlds gear mode", "worlds gear mode", worldGearMode);


  bluForwK.make(200, 5, bluForw, "blue forward", color(0, 255, 0));
  bluBackK.make(200, 50, bluBack, "blue backwards", color(0, 255, 0));
  bluLeftK.make(200, 95, bluLeft, "blue left turn", color(0, 255, 0));
  bluRihtK.make(200, 140, bluRiht, "blue right turn", color(0, 255, 0));
  bluLrskK.make(200, 185, bluLrsk, "blue auto balls", color(255, 0, 0));
  bluShblK.make(200, 230, bluShbl, "blue shoot balls", color(255, 0, 0));
  bluGearK.make(200, 275, bluGear, "blue drop gear", color(0, 0, 255));
  bluClmbK.make(200, 320, bluClmb, "blue climb", color(0, 255, 255));
  bluatogrK.make(200, 365, bluatogr, "blue auto gear", color(0, 0, 255));
  bluLmovK.make(200, 410, bluLmov, "blue move left", color(0, 255, 0));
  bluRmovK.make(200, 455, bluRmov, "blue move right", color(0, 255, 0));
  bluLaserK.make(200, 500, bluLaser, "blue laser", color(255, 0, 0));
  bluIntakeK.make(200, 545, bluIntake, "intake enable", color(255, 0, 0));

  redForwK.make(1000, 5, redForw, "red forward", color(0, 255, 0));
  redBackK.make(1000, 50, redBack, "red backwards", color(0, 255, 0));
  redLeftK.make(1000, 95, redLeft, "red left turn", color(0, 255, 0));
  redRihtK.make(1000, 140, redRiht, "red right turn", color(0, 255, 0));
  redLrskK.make(1000, 185, redLrsk, "red auto balls", color(255, 0, 0));
  redShblK.make(1000, 230, redShbl, "red shoot balls", color(255, 0, 0));
  redGearK.make(1000, 275, redGear, "red drop gear", color(0, 0, 255));
  redClmbK.make(1000, 320, redClmb, "red climb", color(0, 255, 255));
  redatogrK.make(1000, 365, redatogr, "red auto gear", color(0, 0, 255));
  redLmovK.make(1000, 410, redLmov, "red move left", color(0, 255, 0));
  redRmovK.make(1000, 455, redRmov, "red move right", color(0, 255, 0));
  redLaserK.make(1000, 500, redLaser, "red laser", color(255, 0, 0));
  redIntakeK.make(1000, 545, redIntake, "intake enable", color(0, 0, 255));

  redSwerveT.make(65, 100, color(255, 0, 0), "", "", carB.swerve);
  redRobotOrientedT.make(65, 200, color(255, 0, 0), "", "", carB.robotOriented);
  blueSwerveT.make(65, 350, color(0, 0, 255), "", "", carA.swerve);
  blueRobotOrientedT.make(65, 450, color(0, 0, 255), "", "", carB.robotOriented);
}
void draw() {
  if (!go) {
    textSize(40);
    if (settings) {
      background(0);
      fill(0);
      rect(-10, -10, width+20, height+20);
      fill(255);
      if (advancedSettings) {
        carSpeed=speedSl.run(carSpeed);
        carAcc=carAccSl.run(carAcc);
        carTurn=carTurnSl.run(carTurn);
        carTuAcc=carTuAccSl.run(carTuAcc);
        carAAAcc=carAAAccSl.run(carAAAcc);
        carShS=int(carShSSl.run(carShS));
        carAShS=int(carAShSSl.run(carAShS));
        carAShE=carAShESl.run(carAShE);
        carShE=carShESl.run(carShE);
        clmbDif=clmbDifSl.run(clmbDif);
        clmbSpd=clmbSpdSl.run(clmbSpd);
        gearDif=gearDifSl.run(gearDif);
        gearDifAng=gearDifAngSl.run(gearDifAng);
        matchTime=int(matchTimeSl.run(matchTime));
        rtag=int(rtagSl.run(rtag));
        rtbg=int(rtbgSl.run(rtbg));
        rtcg=int(rtcgSl.run(rtcg));
        rtdg=int(rtdgSl.run(rtdg));
        rtpts=int(rtptsSl.run(rtpts));
        rtdpts=int(rtdptsSl.run(rtdpts));
        fouls=foulsT.run(fouls);
        autoShootEnable=autoShootT.run(autoShootEnable);
        distanceShootEnable=distanceShootT.run(distanceShootEnable);
        crossCourtShoot=crossCourtShootT.run(crossCourtShoot);
        wallFric=wallFricSl.run(wallFric);
        autogears=autogearsT.run(autogears);
        kpaB=int(kpaBSl.run(kpaB));
        laserEnable=laserEnableT.run(laserEnable);
        carLShS=int(carLShSSl.run(carLShS));
        toggle=toggleT.run(toggle);
        turret=turretT.run(turret);
        shF=shFSl.run(shF);
        dualShooter=dualShooterT.run(dualShooter);
        ballDirIn=ballDirInT.run(ballDirIn);
        shH=shHSl.run(shH);
        autoGearBonus=int(autoGearBonusSl.run(autoGearBonus));
        fuelC=fuelCT.run(fuelC);
        fuelVac=fuelVacT.run(fuelVac);
        vacRange=vacRangeSl.run(vacRange);
        kpaBonus=int(kpaBonusSl.run(kpaBonus));
        sdsAim=sdsAimT.run(sdsAim);
        robotHopper=int(robotHopperSl.run(robotHopper));
        carA.mb=robotHopper;
        carB.mb=robotHopper;
        clmbPts=int(clmbPtsSl.run(clmbPts));
        if (redProgramAvailable) {
          redPrePro=redPreProT.run(redPrePro);
        } else {
          fill(200, 0, 0);
          textSize(20);
          text("no/bad program", 500, 610, 90, 100);
        }
        if (bluProgramAvailable) {
          bluPrePro=bluPreProT.run(bluPrePro);
        } else {
          fill(0, 0, 200);
          textSize(20);
          text("no/bad program", 600, 610, 90, 100);
        }
      } else {
        carSpeed=BspeedSl.run(carSpeed);
        carTurn=BcarTurnSl.run(carTurn);
        carShS=int(BcarShSSl.run(carShS));
        matchTime=int(BmatchTimeSl.run(matchTime));
        autoShootEnable=BautoShootT.run(autoShootEnable);
        if (rtag==1&&rtbg==3&&rtcg==7&&rtdg==13) {
          standardGearMode=true;
          worldGearMode=false;
        } else  if (rtag==1&&rtbg==3&&rtcg==8&&rtdg==15) {
          standardGearMode=false;
          worldGearMode=true;
        } else {
          standardGearMode=false;
          worldGearMode=false;
        }
        BstandardGearT.run(standardGearMode);
        BworldsGearT.run(worldGearMode);
        if (BstandardGearT.jv==true) {
          rtag=1;
          rtbg=3;
          rtcg=7;
          rtdg=13;
        }
        if (BworldsGearT.jv==true) {
          rtag=1;
          rtbg=3;
          rtcg=8;
          rtdg=15;
        }
        distanceShootEnable=BdistanceShootT.run(distanceShootEnable);
        if (distanceShootEnable) {
          carAShS=int(BcarAShSSl.run(carAShS));
        }
      }

      redForw=redForwK.run(redForw);
      redBack= redBackK.run(redBack);
      redLeft= redLeftK.run(redLeft);
      redRiht= redRihtK.run(redRiht);
      redLrsk= redLrskK.run(redLrsk);
      redShbl= redShblK.run(redShbl);
      redGear= redGearK.run(redGear);
      redClmb= redClmbK.run(redClmb);
      redatogr= redatogrK.run(redatogr);
      redLmov= redLmovK.run(redLmov);
      redRmov= redRmovK.run(redRmov);
      redLaser=redLaserK.run(redLaser);
      redIntake=redIntakeK.run(redIntake);

      bluForw= bluForwK.run(bluForw);
      bluBack= bluBackK.run(bluBack);
      bluLeft= bluLeftK.run(bluLeft);
      bluRiht= bluRihtK.run(bluRiht);
      bluLrsk= bluLrskK.run(bluLrsk);
      bluShbl= bluShblK.run(bluShbl);
      bluGear= bluGearK.run(bluGear);
      bluClmb= bluClmbK.run(bluClmb);
      bluatogr= bluatogrK.run(bluatogr);
      bluLmov= bluLmovK.run(bluLmov);
      bluRmov= bluRmovK.run(bluRmov);
      bluLaser=bluLaserK.run(bluLaser);
      bluIntake=bluIntakeK.run(bluIntake);

      fill(255, 0, 0);
      textSize(22);
      text("Red drivemode", 10, 90);
      fill(0, 0, 255);
      text("Blue drivemode", 10, 340);
      fill(0);
      carB.swerve= redSwerveT.run(carB.swerve);
      fill(255);
      textSize(20);
      if (carB.swerve) {
        text("Swerve drive", 25, 165);
        carB.robotOriented= redRobotOrientedT.run(carB.robotOriented);
        fill(255);
        textSize(20);
        if (carB.robotOriented) {
          text("Robot oriented", 25, 265);
        } else {
          text("Field oriented", 25, 265);
        }
      } else {
        text("Arcade drive", 25, 165);
      }
      carA.swerve= blueSwerveT.run(carA.swerve);
      fill(255);
      textSize(20);
      if (carA.swerve) {
        text("Swerve drive", 25, 415);
        carA.robotOriented= blueRobotOrientedT.run(carA.robotOriented);
        fill(255);
        textSize(20);
        if (carA.robotOriented) {
          text("Robot oriented", 25, 515);
        } else {
          text("Field oriented", 25, 515);
        }
      } else {
        text("Arcade drive", 25, 415);
      }

      fill(255);
      if (mouseX>=20&&mouseX<=170&&mouseY>=15&&mouseY<=65) {
        if (mousePressed) {
          settings=false;
        }
        fill(150);
      }
      stroke(#E39677);
      strokeWeight(2);
      rect(20, 15, 150, 50, 20);
      fill(0);
      text("back to home", 25, 45);

      fill(255);
      if (mouseX>=1000&&mouseX<=1200&&mouseY>=625&&mouseY<=675) {
        fill(150);
        if (mousePressed) {
          fill(100);
        }
        if (mousePushed) {
          fill(50);
          advancedSettings=!advancedSettings;
        }
      }
      stroke(#E39677);
      strokeWeight(2);
      rect(1000, 625, 200, 50, 20);
      fill(0);
      textSize(20);
      if (advancedSettings) {
        text("basic settings", 1015, 660);
      } else {
        text("advanced settings", 1015, 660);
      }

      fill(255);
      if (mouseX>=750&&mouseX<=950&&mouseY>=625&&mouseY<=675) {
        fill(150);
        if (mousePushed) {
          saveSettings();
        } 
        if (mousePressed) {
          fill(50);
        }
      }
      stroke(#E39677);
      strokeWeight(2);
      rect(750, 625, 200, 50, 20);
      fill(0);
      textSize(21);
      text("save settings", 785, 660);

      if (settingsAvailable) {
        fill(255);
        if (mouseX>=0&&mouseX<=150&&mouseY>=625&&mouseY<=675) {
          fill(150);
          if (mousePushed) {
            loadSettings();
          }
          if (mousePressed) {
            fill(50);
          }
        }
      } else {
        fill(255, 100, 100);
      }
      stroke(#E39677);
      rect(0, 625, 150, 50, 20);
      fill(0);
      textSize(21);
      if (!settingsAvailable) {
        text("no settings", 5, 660);
      } else {
        text("load settings", 5, 660);
      }

      if (defaultsAvailable) {
        fill(255);
        if (mouseX>=200&&mouseX<=350&&mouseY>=625&&mouseY<=675) {
          fill(150);
          if (mousePushed) {
            loadDefaults();
          }
          if (mousePressed) {
            fill(50);
          }
        }
      } else {
        fill(255, 100, 100);
      }
      stroke(#E39677);
      rect(200, 625, 150, 50, 20);
      fill(0);
      textSize(21);
      if (!defaultsAvailable) {
        text("no defaults", 205, 660);
      } else {
        text("load defaults", 205, 660);
      }
    } else {
      background(0);
      if (showLogo) {
        image(img, width/2-img.width/2, 20);
      }
      textSize(20);
      fill(#E39677);
      text("simulator game", width/2-50, 215);
      fill(255);
      if (mouseX>=500&&mouseX<=700&&mouseY>250&&mouseY<350||(keyPressed&&key==' ')) {
        fill(150);
        if (mousePressed||key==' ') {
          restart();
          go=true;
          stml=millis();
        }
      }      
      stroke(#E39677);
      strokeWeight(2);
      rect(500, 250, 200, 100, 20);
      fill(0);
      textSize(40);
      text("start", 525, 295);
      textSize(20);
      text("or press space", 525, 315);
      textSize(15);
      text("backspace to cancel", 525, 330);
      text("control to pause", 525, 345);
      textSize(40);
      fill(255);
      if (mouseX>=500&&mouseX<=700&&mouseY>450&&mouseY<550) {
        fill(150);
        if (mousePressed) {
          settings=true;
        }
      }
      rect(500, 450, 200, 100, 20);
      fill(0);
      text("settings", 525, 515);
    }
  } else if ((millis()-stml)/1000<matchTime) {
    camera(width/2, height*1.3, height*1.1, width/2, height*.5, 0, 0, 1, 0);
    textSize(20);
    noSmooth();
    background(0);
    fill(0, 50, 0);
    strokeWeight(2);
    stroke(255);
    rect(0, 0, width, height);
    stroke(255, 0, 0);
    line(0, height-150, 150, height);
    stroke(0, 0, 255);
    line(width, height-150, width-150, height);
    stroke(255);
    line(width/3, 0, width/3, height);
    line(2*width/3, 0, 2*width/3, height);
    strokeWeight(1);
    stroke(255);
    if (redPrePro&&redProgramAvailable) {
      redProRun();
    }
    if (bluPrePro&&bluProgramAvailable) {
      bluProRun();
    }
    if (frameCount%1==0) {
      carA.show();
      carB.show();
    }
    if (frameCount%1==1) {
      carB.show();
      carA.show();
    }
    for (int i=0; i<maxBalls; i++) {
      if (ball[i].show==true) {
        ball[i].show();
      }
    }
    for (int i=0; i<20; i++) {
      if (gear[i].show==true) {
        gear[i].show();
      }
    }
    if (millis()-hffc>=2000) {
      hf[0]=true;
      hf[1]=true;
      hf[2]=true;
      hf[3]=true;
      hf[4]=true; 
      hf[5]=true;
    } 
    if (!(hf[0]==false&&hf[1]==false&&hf[2]==false&&hf[3]==false&&hf[4]==false&&hf[5]==false)) { 
      hffc=millis();
    }
    boilersShow();
    loadStation();
    airships();
    redPoints=rpts/3;
    bluePoints=bpts/3;
    redPoints+=redFouls;
    bluePoints+=blueFouls;
    br=0;
    rr=0;
    bar=0;
    rar=0;
    if (carB.rx<=width*2/3 && rmob==0 && (millis()-stml)<=15000) {
      rmob=5;
    }
    if (carA.rx>=width/3 && bmob==0 && (millis()-stml)<=15000) {
      bmob=5;
    }
    redPoints+=rmob;
    bluePoints+=bmob;    
    if ((millis()-stml)<=16000 && (millis()-stml)>=15000 && gg==false) {
      rg++;
      bg++;
      gg=true;
    }
    if (rg>=rtag) {
      redPoints+=rtpts;
      fill(255);
      if (rag>=rtag) {
        redPoints+=autoGearBonus;
        rar=1;
        fill(255, 255, 0);
      }
      rr=1;
      rotor[4].show(3*width/4, height/2+40, 101, true);
    } else {
      fill(255);
      rotor[4].show(3*width/4, height/2+40, 101, false);
    }
    if (rg>=rtbg) {
      redPoints+=rtpts;
      fill(255);
      if (rag>=rtbg) {
        redPoints+=autoGearBonus;
        rar=2;
        fill(255, 255, 0);
      }
      rr=2;
      rotor[5].show(3*width/4-40, height/2, 101, true);
    } else {
      fill(255);
      rotor[5].show(3*width/4-40, height/2, 101, false);
    }
    if (rg>=rtcg) {
      redPoints+=rtpts;
      fill(255);
      if (rag>=rtcg) {
        redPoints+=autoGearBonus;
        rar=3;
        fill(255, 255, 0);
      }
      rr=3;
      rotor[6].show(3*width/4+40, height/2, 101, true);
    } else {
      fill(255);
      rotor[6].show(3*width/4+40, height/2, 101, false);
    }
    if (rg>=rtdg) {
      redPoints+=rtpts;
      redPoints+=rtdpts;
      fill(255);
      if (rag>=rtdg) {
        redPoints+=autoGearBonus;
        rar=4;
        fill(255, 255, 0);
      }
      rr=4;
      rotor[7].show(3*width/4, height/2-40, 101, true);
    } else {
      fill(255);
      rotor[7].show(3*width/4, height/2-40, 101, false);
    }
    if (bg>=rtag) {
      bluePoints+=rtpts;
      fill(255);
      if (bag>=rtag) {
        bluePoints+=autoGearBonus;
        bar=1;
        fill(255, 255, 0);
      }
      br=1;
      rotor[0].show(width/4, height/2+40, 101, true);
    } else {
      fill(255);
      rotor[0].show(width/4, height/2+40, 101, false);
    }
    if (bg>=rtbg) {
      bluePoints+=rtpts;
      fill(255);
      if (bag>=rtbg) {
        bluePoints+=autoGearBonus;
        bar=2;
        fill(255, 255, 0);
      }
      br=2;
      rotor[1].show(width/4-40, height/2, 101, true);
    } else {
      fill(255);
      rotor[1].show(width/4-40, height/2, 101, false);
    }
    if (bg>=rtcg) {
      bluePoints+=rtpts;
      fill(255);
      if (bag>=rtcg) {
        bluePoints+=autoGearBonus;
        bar=3;
        fill(255, 255, 0);
      }
      br=3;
      rotor[2].show(width/4+40, height/2, 101, true);
    } else {
      fill(255);
      rotor[2].show(width/4+40, height/2, 101, false);
    }
    if (bg>=rtdg) {
      bluePoints+=rtpts;
      bluePoints+=rtdpts;
      fill(255);
      if (bag>=rtdg) {
        bluePoints+=autoGearBonus;
        bar=4;
        fill(255, 255, 0);
      }
      br=4;
      rotor[3].show(width/4, height/2-40, 101, true);
    } else {
      fill(255);
      rotor[3].show(width/4, height/2-40, 101, false);
    }
    if (carA.z>=70) {
      bluePoints+=clmbPts;
    }
    if (carA.rx>=width/4+30&&carA.rx<=width/4+70&&carA.ry<=height/2+clmbDif&&carA.ry>=height/2-clmbDif&&carA.z<=71&&carA.climb&&matchTime-((millis()-stml)/1000)<30) {
      carA.z+=clmbSpd;
    }
    if (carB.z>=70) {
      redPoints+=clmbPts;
    }
    if (carB.rx>=3*width/4-70&&carB.ry<=3*width/4-30&&carB.ry<=height/2+clmbDif&&carB.ry>=height/2-clmbDif&&carB.z<=71&&carB.climb&&matchTime-((millis()-stml)/1000)<30) {
      carB.z+=clmbSpd;
    }
    if (rpts/3>=kpaB) {
      redPoints+=kpaBonus;
    }
    if (bpts/3>=kpaB) {
      bluePoints+=kpaBonus;
    }
    fill(255, 0, 0);
    text(redPoints, width*81/100, height*112/100, 10);
    fill(0, 0, 255);
    text(bluePoints, width*16/100, height*112/100, 10);
    fill(255, 255, 0);
    if ((millis()-stml)<=15000) {
      text("AUTO PERIOD", width*39/100, height*55/100, 1);
    }
    if ((millis()-stml)<=15000) {
      fill(#FFF934);
      text(int(15-((millis()-stml)/1000)), width/2, height*112/100);
    } else { 
      fill(255);
      text(int(matchTime-((millis()-stml)/1000)), width/2, height*112/100);
    }
  } else {
    camera(width/2.0, height/2.0, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
    textSize(40);
    if (bluePoints>redPoints) {
      background(0, 0, 255/3);
      if (showVideos) {
        if (blueVideo.time()<blueVideo.duration()) {
          blueVideo.play();
          image(blueVideo, 0, 0, width, height);
        } else {
          videosDone=true;
        }
      } else {
        videosDone=true;
      }
      fill(0, 0, 255);
      text(bluePoints, 100, 100);
      fill(255, 0, 0);
      text(redPoints, width-100, 100);
    } else if (redPoints>bluePoints) {
      background(255/3, 0, 0);
      if (showVideos) {
        if (redVideo.time()<redVideo.duration()) {
          redVideo.play();
          image(redVideo, 0, 0, width, height);
        } else {
          videosDone=true;
        }
      } else {
        videosDone=true;
      }
      fill(0, 0, 255);
      text(bluePoints, 100, 100);
      fill(255, 0, 0);
      text(redPoints, width-100, 100);
    } else {
      background(255/3, 0, 255/3);
      if (showVideos) {
        if (purpleVideo.time()<purpleVideo.duration()) {
          purpleVideo.play();
          image(purpleVideo, 0, 0, width, height);
        } else {
          videosDone=true;
        }
      } else {
        videosDone=true;
      }
      fill(0, 0, 255);
      text(bluePoints, 200, 100);
      fill(255, 0, 0);
      text(redPoints, width-200, 100);
    }
    textSize(20);
    fill(255, 255, 255, 30);
    if (videosDone) {
      if (showScb) {
        image(scb, 0, 0, 1200, 700);
      }
      fill(0);
      if (rpts/3>=kpaB) {
        text("yes", 445, 200);
      } else {
        text("no", 445, 200);
      }
      if (bpts/3>=kpaB) {
        text("yes", 975, 200);
      } else {
        text("no", 975, 200);
      }
      if (rr==4) {
        text("yes", 445, 248);
      } else {
        text("no", 445, 248);
      }
      if (br==4) {
        text("yes", 975, 248);
      } else {
        text("no", 975, 248);
      }

      text(rmob, 445, 300);
      text(bmob, 975, 300);

      text(rpts/3, 445, 348);
      text(bpts/3, 975, 348);

      text(rr, 445, 395);
      text(br, 975, 395);

      text(blueFouls, 975, 498);
      text(redFouls, 445, 498);

      if (carB.z>=70) {
        text("yes", 445, 443);
      } else {
        text("no", 445, 443);
      }
      if (carA.z>=70) {
        text("yes", 975, 443);
      } else {
        text("no", 975, 443);
      }
      textSize(40);
      text(redPoints, 450, 616);
      text(bluePoints, 667, 616);
      textSize(20);
      fill(255);
    }
    if ((mouseX>=900&&mouseX<=1100&&mouseY>575&&mouseY<675)||(keyPressed&&key==TAB)) {
      fill(150);
      if (mousePressed||(keyPressed&&key==TAB)) {
        restart();
        videosDone=false;
        if (showVideos) {
          blueVideo.stop();
          redVideo.stop();
          purpleVideo.stop();
          fill(50);
        }
      }
    }
    stroke(#E39677);
    strokeWeight(2);
    rect(900, 575, 200, 100, 20);
    fill(0);
    textSize(20);
    text("back to home", 925, 625);
    textSize(13);
    text("or press tab", 925, 650);
    textSize(20);
  }
  mousePushed=false;
  keyPushed=false;
}
void saveSettings() {
  settingStrings[0]=str(redForw);
  settingStrings[1]=str(redBack);
  settingStrings[2]=str(redLeft);
  settingStrings[3]=str(redRiht);
  settingStrings[4]=str(redLrsk);
  settingStrings[5]=str(redShbl);
  settingStrings[6]=str(redGear);
  settingStrings[7]=str(redClmb);
  settingStrings[8]=str(redatogr);
  settingStrings[9]=str(bluForw);
  settingStrings[10]=str(bluBack);
  settingStrings[11]=str(bluLeft);
  settingStrings[12]=str(bluRiht);
  settingStrings[13]=str(bluLrsk);
  settingStrings[14]=str(bluShbl);
  settingStrings[15]=str(bluGear);
  settingStrings[16]=str(bluClmb);
  settingStrings[17]=str(bluatogr);
  settingStrings[18]=str(carSpeed);
  settingStrings[19]=str(carAcc);
  settingStrings[20]=str(carTurn);
  settingStrings[21]=str(carTuAcc);
  settingStrings[22]=str(carAAAcc);
  settingStrings[23]=str(carShS);
  settingStrings[24]=str(carAShS);
  settingStrings[25]=str(carAShE);
  settingStrings[26]=str(carShE);
  settingStrings[27]=str(clmbDif);
  settingStrings[28]=str(clmbSpd);
  settingStrings[29]=str(gearDif);
  settingStrings[30]=str(gearDifAng);
  settingStrings[31]=str(matchTime);
  settingStrings[32]=str(rtag);
  settingStrings[33]=str(rtbg);
  settingStrings[34]=str(rtcg);
  settingStrings[35]=str(rtdg);
  settingStrings[36]=str(rtpts);
  settingStrings[37]=str(rtdpts);
  settingStrings[38]=str(fouls);
  settingStrings[39]=str(autoShootEnable);
  settingStrings[40]=str(distanceShootEnable);
  settingStrings[41]=str(crossCourtShoot);
  settingStrings[42]=str(wallFric);
  settingStrings[43]=str(bluLmov);
  settingStrings[44]=str(bluRmov);
  settingStrings[45]=str(redLmov);
  settingStrings[46]=str(redRmov);
  settingStrings[47]=str(carA.swerve);
  settingStrings[48]=str(carA.robotOriented);
  settingStrings[49]=str(carB.swerve);
  settingStrings[50]=str(carB.robotOriented);
  settingStrings[51]=str(autogears);
  settingStrings[52]=str(kpaB);
  settingStrings[53]=str(redLaser);
  settingStrings[54]=str(bluLaser);
  settingStrings[55]=str(laserEnable);
  settingStrings[56]=str(carLShS);
  settingStrings[57]=str(toggle);
  settingStrings[58]=str(turret);
  settingStrings[59]=str(shF);
  settingStrings[60]=str(dualShooter);
  settingStrings[61]=str(ballDirIn);
  settingStrings[62]=str(shH);
  settingStrings[63]=str(redIntake);
  settingStrings[64]=str(bluIntake);
  settingStrings[65]=str(autoGearBonus);
  settingStrings[66]=str(fuelC);
  settingStrings[67]=str(fuelVac);
  settingStrings[68]=str(vacRange);
  settingStrings[69]=str(kpaBonus);
  settingStrings[70]=str(sdsAim);
  settingStrings[71]=str(robotHopper);
  settingStrings[72]=str(clmbPts);
  settingStrings[73]=str(redPrePro);
  settingStrings[74]=str(bluPrePro);
  saveStrings("data/settings.txt", settingStrings);
  settingsAvailable=true;
}
void loadSettings() {
  settingStrings=loadStrings("data/settings.txt");
  redForw=settingStrings[0].charAt(0);
  redBack=settingStrings[1].charAt(0);
  redLeft=settingStrings[2].charAt(0);
  redRiht=settingStrings[3].charAt(0);
  redLrsk=settingStrings[4].charAt(0);
  redShbl=settingStrings[5].charAt(0);
  redGear=settingStrings[6].charAt(0);
  redClmb=settingStrings[7].charAt(0);
  redatogr=settingStrings[8].charAt(0);
  bluForw=settingStrings[9].charAt(0);
  bluBack=settingStrings[10].charAt(0);
  bluLeft=settingStrings[11].charAt(0);
  bluRiht=settingStrings[12].charAt(0);
  bluLrsk=settingStrings[13].charAt(0);
  bluShbl=settingStrings[14].charAt(0);
  bluGear=settingStrings[15].charAt(0);
  bluClmb=settingStrings[16].charAt(0);
  bluatogr=settingStrings[17].charAt(0);
  bluLmov=settingStrings[43].charAt(0);
  bluRmov=settingStrings[44].charAt(0);
  redLmov=settingStrings[45].charAt(0);
  redRmov=settingStrings[46].charAt(0);
  carSpeed=float(settingStrings[18]);
  carAcc=float(settingStrings[19]);
  carTurn=float(settingStrings[20]);
  carTuAcc=float(settingStrings[21]);
  carAAAcc=float(settingStrings[22]);
  carShS=int(settingStrings[23]);
  carAShS=int(settingStrings[24]);
  carAShE=float(settingStrings[25]);
  carShE=float(settingStrings[26]);
  clmbDif=float(settingStrings[27]);
  clmbSpd=float(settingStrings[28]);
  gearDif=float(settingStrings[29]);
  gearDifAng=float(settingStrings[30]);
  matchTime=int(settingStrings[31]);
  rtag=int(settingStrings[32]);
  rtbg=int(settingStrings[33]);
  rtcg=int(settingStrings[34]);
  rtdg=int(settingStrings[35]);
  rtpts=int(settingStrings[36]);
  rtdpts=int(settingStrings[37]);
  fouls=boolean(settingStrings[38]);
  autoShootEnable=boolean(settingStrings[39]);
  distanceShootEnable=boolean(settingStrings[40]);
  crossCourtShoot=boolean(settingStrings[41]);
  wallFric=float(settingStrings[42]);
  carA.swerve=boolean(settingStrings[47]);
  carA.robotOriented=boolean(settingStrings[48]);
  carB.swerve=boolean(settingStrings[49]);
  carB.robotOriented=boolean(settingStrings[50]);
  autogears=boolean(settingStrings[51]);
  kpaB=int(settingStrings[52]);
  redLaser=settingStrings[53].charAt(0);
  bluLaser=settingStrings[54].charAt(0);
  laserEnable=boolean(settingStrings[55]);
  carLShS=int(settingStrings[56]);
  toggle=boolean(settingStrings[57]);
  turret=boolean(settingStrings[58]);
  shF=float(settingStrings[59]);
  dualShooter=boolean(settingStrings[60]);
  ballDirIn=boolean(settingStrings[61]);
  shH=float(settingStrings[62]);
  redIntake=settingStrings[63].charAt(0);
  bluIntake=settingStrings[64].charAt(0);
  autoGearBonus=int(settingStrings[65]);
  fuelC=boolean(settingStrings[66]);
  fuelVac=boolean(settingStrings[67]);
  vacRange=float(settingStrings[68]);
  kpaBonus=int(settingStrings[69]);
  sdsAim=boolean(settingStrings[70]);
  robotHopper=int(settingStrings[71]);
  clmbPts=int(settingStrings[72]);
  redPrePro=boolean(settingStrings[73]);
  bluPrePro=boolean(settingStrings[74]);
}
void loadDefaults() {
  defaultStrings=loadStrings("data/defaults.txt");
  redForw=defaultStrings[0].charAt(0);
  redBack=defaultStrings[1].charAt(0);
  redLeft=defaultStrings[2].charAt(0);
  redRiht=defaultStrings[3].charAt(0);
  redLrsk=defaultStrings[4].charAt(0);
  redShbl=defaultStrings[5].charAt(0);
  redGear=defaultStrings[6].charAt(0);
  redClmb=defaultStrings[7].charAt(0);
  redatogr=defaultStrings[8].charAt(0);
  bluForw=defaultStrings[9].charAt(0);
  bluBack=defaultStrings[10].charAt(0);
  bluLeft=defaultStrings[11].charAt(0);
  bluRiht=defaultStrings[12].charAt(0);
  bluLrsk=defaultStrings[13].charAt(0);
  bluShbl=defaultStrings[14].charAt(0);
  bluGear=defaultStrings[15].charAt(0);
  bluClmb=defaultStrings[16].charAt(0);
  bluatogr=defaultStrings[17].charAt(0);
  bluLmov=defaultStrings[43].charAt(0);
  bluRmov=defaultStrings[44].charAt(0);
  redLmov=defaultStrings[45].charAt(0);
  redRmov=defaultStrings[46].charAt(0);
  carSpeed=float(defaultStrings[18]);
  carAcc=float(defaultStrings[19]);
  carTurn=float(defaultStrings[20]);
  carTuAcc=float(defaultStrings[21]);
  carAAAcc=float(defaultStrings[22]);
  carShS=int(defaultStrings[23]);
  carAShS=int(defaultStrings[24]);
  carAShE=float(defaultStrings[25]);
  carShE=float(defaultStrings[26]);
  clmbDif=float(defaultStrings[27]);
  clmbSpd=float(defaultStrings[28]);
  gearDif=float(defaultStrings[29]);
  gearDifAng=float(defaultStrings[30]);
  matchTime=int(defaultStrings[31]);
  rtag=int(defaultStrings[32]);
  rtbg=int(defaultStrings[33]);
  rtcg=int(defaultStrings[34]);
  rtdg=int(defaultStrings[35]);
  rtpts=int(defaultStrings[36]);
  rtdpts=int(defaultStrings[37]);
  fouls=boolean(defaultStrings[38]);
  autoShootEnable=boolean(defaultStrings[39]);
  distanceShootEnable=boolean(defaultStrings[40]);
  crossCourtShoot=boolean(defaultStrings[41]);
  wallFric=float(defaultStrings[42]);
  carA.swerve=boolean(defaultStrings[47]);
  carA.robotOriented=boolean(defaultStrings[48]);
  carB.swerve=boolean(defaultStrings[49]);
  carB.robotOriented=boolean(defaultStrings[50]);
  autogears=boolean(defaultStrings[51]);
  kpaB=int(defaultStrings[52]);
  redLaser=defaultStrings[53].charAt(0);
  bluLaser=defaultStrings[54].charAt(0);
  laserEnable=boolean(defaultStrings[55]);
  carLShS=int(defaultStrings[56]);
  toggle=boolean(defaultStrings[57]);
  turret=boolean(defaultStrings[58]);
  shF=float(defaultStrings[59]);
  dualShooter=boolean(defaultStrings[60]);
  ballDirIn=boolean(defaultStrings[61]);
  shH=float(defaultStrings[62]);
  redIntake=defaultStrings[63].charAt(0);
  bluIntake=defaultStrings[64].charAt(0);
  autoGearBonus=int(defaultStrings[65]);
  fuelC=boolean(defaultStrings[66]);
  fuelVac=boolean(defaultStrings[67]);
  vacRange=float(defaultStrings[68]);
  kpaBonus=int(defaultStrings[69]);
  sdsAim=boolean(defaultStrings[70]);
  robotHopper=int(defaultStrings[71]);
  clmbPts=int(defaultStrings[72]);
  redPrePro=boolean(defaultStrings[73]);
  bluPrePro=boolean(defaultStrings[74]);
}
class Toggle {
  float x;
  float y;
  boolean val;
  color c;
  String s;
  String ns;
  boolean jv=false;
  void make(float X, float Y, color C, String S, String NS, boolean VAL) {
    x=X;
    y=Y;
    val=VAL;
    c=C;
    s=S;
    ns=NS;
  }
  boolean run(boolean V) {
    fill(c);
    val=V;
    stroke(c);
    if (mouseX>=x&&mouseX<=x+40&&mouseY>=y&&mouseY<=y+40) {
      stroke(red(c)/1.5, green(c)/1.5, blue(c)/1.5);
      if (mousePressed) {
        stroke(red(c)/2, green(c)/2, blue(c)/2);
        jv=true;
      } else {
        jv=false;
      }
      if (mousePushed) {
        val=!val;
      }
    }
    if (val) {
      fill(255);
    } else {
      fill(100);
    }
    strokeWeight(5);
    rect(x, y, 40, 40);
    strokeWeight(2);
    fill(255);
    textSize(15);
    if (val) {
      text(s, x, y+45, 100, 100);
    } else {
      text(ns, x, y+45, 100, 100);
    }
    return val;
  }
}
class Keyer {
  float x;
  float y;
  char  k;
  String s;
  color c;
  boolean m=false;
  void make(float X, float Y, char K, String S, color C) {
    x=X;
    y=Y;
    k=K;
    s=S;
    c=C;
  }
  char run(char V) {
    k=V;
    if (mousePushed) {
      if (mouseX>=x&&mouseX<=x+40&&mouseY>=y&&mouseY<=y+40) {
        m=true;
      } else {
        m=false;
      }
    }
    strokeWeight(3);
    if (m) {
      if (keyPressed) {
        k=key;
      }
      stroke(255);
    } else {
      stroke(0);
    }
    fill(c);
    rect(x, y, 40, 40);
    fill(0);
    textSize(30);
    text(k, x+5, y+30);
    fill(255);
    textSize(20);
    text(s, x+45, y+30);
    return k;
  }
}
class Slider {
  float x;
  float y;
  float w;
  color c;
  String t;
  float val;
  float min;
  float max;
  boolean b;
  boolean m=false;
  boolean n=false;
  String valStr="";
  void make(float X, float Y, float W, color C, String T, float VAL, float MIN, float MAX, boolean B) {
    x=X;
    y=Y;
    w=W;
    c=C;
    t=T;
    val=VAL;
    min=MIN;
    max=MAX;
    b=B;
  }
  float run(float V) {
    val=V;
    noStroke();
    fill(red(c)/1.5, green(c)/1.5, blue(c)/1.5);
    rect(x-5, y-2, w+10, 4);
    textSize(12);
    fill(c);
    text(t, x+w+7, y+3);
    if (!n) {
      text((nf(val, 3, 4)), x-75, y+3);
    }
    if (mouseX>=x-75&&mouseX<=x-10&&mouseY<=y+3&&mouseY>=y-10&&mousePushed) {
      n=true;
      valStr="";
    } else if (n==true&&(mousePushed||(keyPressed&&key==ENTER))) {
      n=false;
      if (float(valStr)==float(valStr)) {//NaN check!
        val=float(valStr);
      }
    }
    if (n) {
      text(valStr, x-75, y+3);
      stroke(red(c)/2, green(c)/2, blue(c)/2);
      strokeWeight(1);
      noFill();
      rect(x-76, y+4, 65, -14);
      if (((key ==46||(key>=48&&key<=57)) && (key != CODED)&&keyPushed&&textWidth(valStr)<60)) {
        valStr+=key;
      }
      if (keyPushed&&key==BACKSPACE&&valStr.length()>0) {
        valStr=valStr.substring(0, valStr.length()-1);
      }
    }
    noStroke();
    fill(255);
    if (mousePushed) {
      if (y==200) {
      }
      if ((!b&&mouseX>=x-5&&mouseX<=x+w+5&&mouseY>=y-5&&mouseY<=y+5)||(b&&sqrt(sq(constrain(map(val, min, max, 0, w), 0, w)+x-mouseX)+sq(mouseY-y))<=10)) {
        m=true;
      } else {
        m=false;
      }
    }
    if (b&&sqrt(sq(constrain(map(val, min, max, 0, w), 0, w)+x-mouseX)+sq(mouseY-y))<=10) {
      fill(150);
    }
    if (!mousePressed) {
      m=false;
    }
    if (m) {
      val=constrain(map(mouseX-x, 0, w, min, max), min, max);
      fill(100);
    }
    if (!b) {
      rect(x+-5+constrain(map(val, min, max, 0, w), 0, w), y-5, 10, 10);
    } else {
      ellipse(x+constrain(map(val, min, max, 0, w), 0, w), y, 20, 20);
    }
    return val;
  }
}
void airships() {
  pushMatrix();
  translate(width/4, height/2, 50);
  fill(0, 0, 150);
  if (matchTime-((millis()-stml)/1000)<15) {
    if (frameCount%20<=7) {
      stroke(255);
    } else {
      stroke(0);
    }
  } else if (matchTime-((millis()-stml)/1000)<30) {
    stroke(255, 255, 0);
  } else {
    stroke(200);
  }
  box(100);  
  fill(15);
  translate(0, 0, -19.95);
  rotate(PI/2);
  noStroke();
  rect(50, -5, 30, 10);
  rotate(-PI/2);
  stroke(255);
  translate(0, 0, 70.1);
  fill(255);
  text(bg, -18, 10);
  popMatrix();

  pushMatrix(); 
  translate(3*width/4, height/2, 50);
  fill(150, 0, 0);
  if (matchTime-((millis()-stml)/1000)<15) {
    if (frameCount%20<=7) {
      stroke(255);
    } else {
      stroke(0);
    }
  } else if (matchTime-((millis()-stml)/1000)<30) {
    stroke(255, 255, 0);
  } else {
    stroke(200);
  }
  box(100);
  fill(15);
  translate(0, 0, -19.95);
  rotate(-PI/2);
  noStroke();
  rect(-50, -5, -30, 10);
  rotate(PI/2);
  stroke(255);
  translate(0, 0, 70.1);
  fill(255);
  text(rg, -18, 10);
  popMatrix();

  if (matchTime-((millis()-stml)/1000)<30) {
    pushMatrix();
    translate(3*width/4-53, height/2, 50);
    scale(1, 1, 100);
    box(1);
    popMatrix();
    pushMatrix();
    translate(1*width/4+53, height/2, 50);
    scale(1, 1, 100);
    box(1);
    popMatrix();
  }
}
void loadStation() {
  pushMatrix();
  translate(-4, height+4, 21.6);
  rotateZ(PI/4);
  fill(255, 0, 0);
  box(43);
  popMatrix();
  pushMatrix();
  translate(width+4, height+4, 21.6);
  rotateZ(PI/4);
  fill(0, 0, 255);
  box(43);
  popMatrix();
  if ((nbg==true||nbgC>0)&&bsg>0) {
    nbgC++;
  }
  if (bsg==0) {
    nbg=false;
  }
  if (nbgC==35) {
    nbgC=0;
    for (int i=0; i<20; i++) {
      if (gear[i].show==false) {
        gear[i].make(width-14.1, height-14.1, 40, -random(1.5, 2), -random(.6, 1));
        i=20;
        bsg--;
      }
    }
    nbg=false;
  }
  if ((nrg==true||nrgC>0)&&rsg>0) {
    nrgC++;
  }
  if (rsg==0) {
    nrg=false;
  }
  if (nrgC==35) {
    nrgC=0;
    for (int i=0; i<20; i++) {
      if (gear[i].show==false) {
        gear[i].make(14.1, height-14.1, 40, random(1.5, 2), -random(.6, 1));
        i=20;
        rsg--;
      }
    }
    nrg=false;
  }
}
void boilersShow() {
  fill(255);
  textSize(40);
  fill(0, 0, 255);
  if (blueBallScored) {
    fill(200, 200, 255);
  }
  blueBallScored=false;
  beginShape();
  stroke(255);
  for (int i = 0; i < 32; i++) {
    vertex(cos(i * PI/16)*20, sin(i * PI/16) * 20, 200);
  }
  endShape(CLOSE);
  pushMatrix();
  fill(100);
  translate(0, 0, 99);
  scale(1, 1, 2);
  rotateZ(PI/4);
  box(100);
  popMatrix();

  fill(255);
  textSize(40);
  fill(255, 0, 0);
  if (redBallScored) {
    fill(255, 200, 200);
  }
  redBallScored=false;
  beginShape();
  stroke(255);
  for (int i = 0; i < 32; i++) {
    vertex(cos(i * PI/16)*20+width, sin(i * PI/16) * 20, 200);
  }
  endShape(CLOSE);
  pushMatrix();
  fill(100);
  translate(width, 0, 99);
  scale(1, 1, 2);
  rotateZ(PI/4);
  box(100);
  popMatrix();
}
class Rotor {
  float a=0;
  void show(float x, float y, float z, boolean r) {
    if (r) {
      a+=.2;
    }
    pushMatrix();
    translate(x, y, z);
    rotate(a);
    stroke(0);
    rect(-10, -5, 20, 10);
    popMatrix();
  }
}
class Gear {
  float x=0;
  float y=0;
  float z=0;
  float vx=0;
  float vy=0;
  boolean show=false;
  void make(float X, float Y, float Z, float VX, float VY) {
    x=X;
    y=Y;
    z=Z;
    vx=VX;
    vy=VY;
    show=true;
  }
  void show() {
    pushMatrix();
    x+=vx;
    y+=vy;
    z-=1.2;
    if (z<=3) {
      z=3;
      vx=0;
      vy=0;
    }
    if (carA.rx>x-15&&carA.rx<x+15&&carA.ry>y-15&&carA.ry<y+15&&z<=30&&carA.hg==false) {
      bsg++;
      carA.hg=true;
      show=false;
    }
    if (carB.rx>x-15&&carB.rx<x+15&&carB.ry>y-15&&carB.ry<y+15&&z<=30&&carB.hg==false) {
      rsg++;
      carB.hg=true;
      show=false;
    }
    translate(x, y, z);
    stroke(0);
    fill(255, 255, 0);
    box(15, 15, 6);
    popMatrix();
  }
}
void restart() {
  background(0);
  rg=0;
  rag=0;
  bg=0;
  bag=0;
  redPoints=0;
  bluePoints=0;
  nrg=false;
  nbg=false;
  gg=false;
  go=false;
  rpts=0;
  bpts=0;
  hf[0]=true;
  hf[1]=true;
  hf[2]=true;
  hf[3]=true;
  hf[4]=true; 
  hf[5]=true;
  rsg=10;
  bsg=10;
  rmob=0;
  bmob=0;
  nrgC=0;
  nbgC=0;
  settings=false;
  carA.make(35, height/2, 1);
  carB.make(width-35, height/2, 0);
  ball=new Ball[maxBalls];
  redFouls=0;
  blueFouls=0;
  for (int i=0; i<maxBalls; i++) {
    ball[i]=new Ball();
  }
  rotor=new Rotor[8];
  for (int i=0; i<=7; i++) {
    rotor[i]=new Rotor();
  }
  gear=new Gear[20];
  for (int i=0; i<20; i++) {
    gear[i]=new Gear();
  }
  preProStartup();
}
class Ball {
  float x=0;
  float y=0;
  float z=0;
  boolean show=false;
  float vx=0;
  float vy=0;
  float vz=0;
  float g=0;
  float s=6;
  void make(float X, float Y, float Z, float VX, float VY, float VZ, float G) {
    x=X;
    y=Y;
    z=Z;
    vx=VX;
    vy=VY;
    vz=VZ;
    show=true;
    g=G;
  }
  void show() {
    vx=constrain(vx, -50, 50);
    vy=constrain(vy, -50, 50);
    vz-=g;
    x+=vx;
    y+=vy;
    z+=vz;
    if (fuelVac&&z<s&&x>=0&&x<=width&&y>=0&&y<=height) {
      if (ballDirIn) {
        if ((abs(abs(abs(atan2(carA.ry-y, carA.rx-x)+PI-carA.rt)-PI)-PI)<=PI/3.8&&sqrt(sq(carA.ry-y)+sq(carA.rx-x))<=vacRange&&carA.intake&&carA.z==0)||(abs(abs(abs(atan2(carB.ry-y, carB.rx-x)+PI-carB.rt)-PI)-PI)<=PI/3.8&&sqrt(sq(carB.ry-y)+sq(carB.rx-x))<=vacRange&&carB.intake&&carB.z==0)) {
          vx=0;
          vy=0;
        }
        if (abs(abs(abs(atan2(carA.ry-y, carA.rx-x)+PI-carA.rt)-PI)-PI)<=PI/3.8&&sqrt(sq(carA.ry-y)+sq(carA.rx-x))<=vacRange&&carA.intake&&carA.z==0) {
          vx+=(vacRange-sqrt(sq(carA.ry-y)+sq(carA.rx-x)))*cos(atan2(-y+carA.ry, -x+carA.rx))*(10/vacRange);
          vy+=(vacRange-sqrt(sq(carA.ry-y)+sq(carA.rx-x)))*sin(atan2(-y+carA.ry, -x+carA.rx))*(10/vacRange);
        }
        if (abs(abs(abs(atan2(carB.ry-y, carB.rx-x)+PI-carB.rt)-PI)-PI)<=PI/3.8&&sqrt(sq(carB.ry-y)+sq(carB.rx-x))<=vacRange&&carB.intake&&carB.z==0) {
          vx+=(vacRange-sqrt(sq(carB.ry-y)+sq(carB.rx-x)))*cos(atan2(-y+carB.ry, -x+carB.rx))*(10/vacRange);
          vy+=(vacRange-sqrt(sq(carB.ry-y)+sq(carB.rx-x)))*sin(atan2(-y+carB.ry, -x+carB.rx))*(10/vacRange);
        }
      } else {//all directions
        if ((sqrt(sq(carA.ry-y)+sq(carA.rx-x))<=vacRange&&carA.intake&&carA.z==0)||(sqrt(sq(carB.ry-y)+sq(carB.rx-x))<=vacRange&&carB.intake&&carB.z==0)) {
          vx=0;
          vy=0;
        }
        if (sqrt(sq(carA.ry-y)+sq(carA.rx-x))<=vacRange&&carA.intake&&carA.z==0) {
          vx+=(vacRange-sqrt(sq(carA.ry-y)+sq(carA.rx-x)))*cos(atan2(-y+carA.ry, -x+carA.rx))*(10/vacRange);
          vy+=(vacRange-sqrt(sq(carA.ry-y)+sq(carA.rx-x)))*sin(atan2(-y+carA.ry, -x+carA.rx))*(10/vacRange);
        }
        if (sqrt(sq(carB.ry-y)+sq(carB.rx-x))<=vacRange&&carB.intake&&carB.z==0) {
          vx+=(vacRange-sqrt(sq(carB.ry-y)+sq(carB.rx-x)))*cos(atan2(-y+carB.ry, -x+carB.rx))*(10/vacRange);
          vy+=(vacRange-sqrt(sq(carB.ry-y)+sq(carB.rx-x)))*sin(atan2(-y+carB.ry, -x+carB.rx))*(10/vacRange);
        }
      }
    }
    if (fuelC) {
      for (int i=0; i<maxBalls; i++) {
        if (sqrt(sq(x-ball[i].x)+sq(y-ball[i].y))<=s&&!ball[i].equals(this)&&ball[i].show&&z<=s&&ball[i].z<=s&&abs(ball[i].vz)<2&&abs(vz)<2) {
          float tvx=ball[i].vx;
          float tvy=ball[i].vy;
          ball[i].vx=-sqrt(sq(vx)+sq(vy))*cos(atan2((y-ball[i].y), (x-ball[i].x)));
          ball[i].vy=-sqrt(sq(vx)+sq(vy))*sin(atan2((y-ball[i].y), (x-ball[i].x)));
          vx=-sqrt(sq(tvx)+sq(tvy))*cos(atan2((ball[i].y-y), (tvx-x)));
          vy=-sqrt(sq(tvx)+sq(tvy))*sin(atan2((ball[i].y-y), (tvx-x)));
        }
      }
    }
    if (z<=s/2) {
      if (x>=0&&x<=width&&y>=0&&y<=height) {
        z=s/2;
        vz=-vz/3;
        vx=vx/1.01;
        vy=vy/1.01;
      }
    }
    if (!ballDirIn&&carA.intake) {
      if (abs(x-carA.rx)<15&&abs(y-carA.ry)<15&&z<=s+25+carA.z&&z>carA.z-s) {
        if (carA.b<carA.mb) {
          show=false;
          carA.b++;
        } else {
          vx=1.1*(carA.rx-carA.lrx);
          vy=1.1*(carA.ry-carA.lry);
          z=s/2;
        }
      }
    }
    if (!ballDirIn&&carB.intake) {
      if (abs(x-carB.rx)<15&&abs(y-carB.ry)<15&&z<=s+25+carB.z&&z>carB.z-s) {
        if (carB.b<carB.mb) {
          show=false;
          carB.b++;
        } else {
          vx=1.1*(carB.rx-carB.lrx);
          vy=1.1*(carB.ry-carB.lry);
          z=s/2;
        }
      }
    }
    if (ballDirIn||!carA.intake) {//ballDirIn is true
      if (abs(x-carA.rx)<15+abs(carA.rx-carA.lrx)&&abs(y-carA.ry)<15+abs(carA.ry-carA.lry)&&z<=15+carA.z&&z>carA.z-s) {
        if (abs(abs(abs(atan2(carA.ry-y, carA.rx-x)+PI-carA.rt)-PI)-PI)<PI/3.8&&abs(abs(abs(atan2(-carA.ry+carA.lry+vy, -carA.rx+carA.lrx+vx)+PI-carA.rt)-PI)-PI)<PI/3.8&&z<=s&&carA.b<carA.mb&&carA.intake) {
          show=false;
          carA.b++;
        } else {
          if (z>s&&carA.b<carA.mb) {
            show=false;
            carA.b++;
          }
          vx=1.1*(carA.rx-carA.lrx);
          vy=1.1*(carA.ry-carA.lry);
          z=s/2;
        }
      }
    }
    if (ballDirIn||!carB.intake) {//ballDirIn is true
      if (abs(x-carB.rx)<15+abs(carB.rx-carB.lrx)&&abs(y-carB.ry)<15+abs(carB.ry-carB.lry)&&z<=15+carB.z&&z>carB.z-s) {
        if (abs(abs(abs(atan2(carB.ry-y, carB.rx-x)+PI-carB.rt)-PI)-PI)<PI/3.8&&abs(abs(abs(atan2(-carB.ry+carB.lry+vy, -carB.rx+carB.lrx+vx)+PI-carB.rt)-PI)-PI)<PI/3.8&&z<=s&&carB.b<carB.mb&&carB.intake) {
          show=false;
          carB.b++;
        } else {
          if (z>s&&carB.b<carB.mb) {
            show=false;
            carB.b++;
          }
          vx=1.1*(carB.rx-carB.lrx);
          vy=1.1*(carB.ry-carB.lry);
          z=s/2;
        }
      }
    }
    if (z<=s) {
      if (((x+vx>width&&x+vx<width+51)||(x+vx<0&&x+vx>0-51))) {
        vx=-.4*vx;
        x=constrain(x, 0, width);
      }
      if (((y+vy>height&&y+vy<height+51)||(y+vy<0&&y+vy>0-51))) {
        vy=-.4*vy;
        y=constrain(y, 0, height);
      }
    }
    if (z>195&&z<220&&sqrt(sq(x)+sq(y))<=21&&vz<=0) {
      if ((millis()-stml)<=15000) {
        bpts+=2;
      }
      blueBallScored=true;
      bpts++;
      show=false;
    } else if (z>190&&abs(x)+abs(y)<71&&z<215) {
      z=200+s;
      vx=cos(atan2(-y+random(200, 220), -x+random(200, 220)));
      vy=sin(atan2(-y+random(200, 220), -x+random(200, 220)));
      vz=0;
    } else if (abs(x)+abs(y)<71&&z<=190) {
      float tvx=vx;
      vx=-vy;
      vy=tvx;
    }
    if (z>195&&z<220&&sqrt(sq(x-width)+sq(y))<=21&&vz<=0) {
      if ((millis()-stml)<=15000) {
        rpts+=2;
      }
      rpts++;
      redBallScored=true;
      show=false;
    } else if (z>190&&abs(x-width)+abs(y)<71&&z<215) {
      z=200+s;
      vx=cos(atan2(-y+random(200, 220), -x+random(width-220, width-200)));
      vy=sin(atan2(-y+random(200, 220), -x+random(width-220, width-200)));
      vz=0;
    } else if (abs(x-width)+abs(y)<71&&z<=190) {
      float tvx=vx;
      vx=-vy;
      vy=tvx;
    }
    if (abs(x-width/4)<50&&abs(y-height/2)<50&&z<100&&((sqrt(sq(vx)+sq(vy))<3&&z<s)||z>=s)) {
      show=false;
    }
    if (abs(x-3*width/4)<50&&abs(y-height/2)<50&&z<100&&((sqrt(sq(vx)+sq(vy))<3&&z<s)||z>=s)) {
      show=false;
    }
    if (z<-145) {
      show=false;
    }
    pushMatrix();
    noStroke();
    fill(0, 200, 0);
    translate(x, y, z);
    sphereDetail(8);
    sphere(s);
    popMatrix();
  }
}
class Car {
  float desiredAngleGear=0;
  float desiredAngleFuel=0;
  boolean ags=false;
  float rx=600;
  float ry=500;
  float lrx=600;
  float lry=600;
  float t=0;
  float rt=0;
  float rs=0;
  float rss=0;
  boolean rfp=false;
  boolean rfm=false;
  boolean rtp=false;
  boolean rtm=false;
  boolean sb=false;
  boolean lrs=false;
  boolean lmov=false;
  boolean rmov=false;
  boolean lasr=false;
  boolean intake=false;
  int b=10;
  int mb=80;
  int id;
  boolean hg=true;
  float z=0;
  boolean climb=false;
  boolean tagged=false;
  boolean swerve=false;
  boolean robotOriented=false;
  float tr=0;
  int laserTime=0;
  void make(float X, float Y, int ID) {
    desiredAngleGear=0;
    desiredAngleFuel=0;
    ags=false;
    t=0;
    rs=0;
    rss=0;
    rfp=false;
    rfm=false;
    rtp=false;
    rtm=false;
    sb=false;
    lrs=false;
    lmov=false;
    rmov=false;
    intake=true;
    b=10;
    mb=robotHopper;
    hg=true;
    z=0;
    climb=false;
    tagged=false;
    lasr=false;
    tr=0;
    lrx=-1000;
    lry=-1000;

    rx=X;
    ry=Y;
    id=ID;
    rt=(1+ID)*PI-.001;
    tr=(1+ID)*PI;
  }
  void show() {
    if (rx<=3*width/4+gearDif&&rx>=3*width/4-gearDif&&ry>height/2+30&&ry<height/2+70&&abs(HALF_PI-acos(cos(rt)))<=gearDifAng&&hg) {
      hg=false;
      if ((millis()-stml)<=15000) {
        rag++;
      }
      rg++;
    }
    if (rx>=width/4-gearDif&&rx<=width/4+gearDif&&ry>height/2+30&&ry<height/2+70&&abs(HALF_PI-acos(cos(rt)))<=gearDifAng&&hg) {
      hg=false;
      if ((millis()-stml)<=15000) {
        bag++;
      }
      bg++;
    }
    if (autoShootEnable&&lrs&&!turret) {
      ags=false;
    }
    if (sdsAim&&sb) {
      ags=false;
    }
    hopper(.3, 0, 0);
    hopper(.5, 0, 1);
    hopper(.7, 0, 2);
    hopper(.3, height, 3);
    hopper(.5, height, 4);
    hopper(.7, height, 5);
    if (((!lrs||!autoShootEnable)||turret)&&(!sb||!sdsAim)) {
      if (rtp) {
        t+=carTuAcc;
      } else if (rtm) {
        t-=carTuAcc;
      } else {
        t=0;
      }
    }
    t=constrain(t, -carTurn, carTurn);
    rt+=t;
    if (rt<0) {
      rt+=2*PI;
    }
    if (rt>2*PI) {
      rt-=2*PI;
    }
    if (tr<0) {
      tr+=2*PI;
    }
    if (tr>2*PI) {
      tr-=2*PI;
    }
    if (rfp) {
      rs+=carAcc;
    } else if (rfm) {
      rs-=carAcc;
    } else {
      rs=rs/(carAcc+.8);
    }

    if (lmov) {
      rss+=carAcc;
    } else if (rmov) {
      rss-=carAcc;
    } else {
      rss=rss/(carAcc+.8);
    }
    if (rx>=width-20||rx<=20) {
      rs=rs*wallFric;
      rss=rss*wallFric;
    }
    if (ry>=height-20||ry<=20) {
      rs=rs*wallFric;
      rss=rss*wallFric;
    }
    rs=constrain(rs, -carSpeed, carSpeed);
    rss=constrain(rss, -carSpeed, carSpeed);
    rx=constrain(rx, 0+20, width-20);
    ry=constrain(ry, 0+20, height-20);
    if (abs(rs)>=.05||abs(rss)>=.05||lrx<-100||lry<-100) {
      lrx=rx;
      lry=ry;
    }
    if (!swerve) {
      rss=0;
      if (z>0) { //no jumping
        rs=0;
      }
      if (id==1) { //collision with other robot
        if (sqrt(sq(abs(carB.rx-rx))+sq(abs(carB.ry-ry)))<=25+abs(rs)&&sqrt(sq(abs(carB.rx-rx-cos(rt)*rs))+sq(abs(carB.ry-ry-sin(rt)*rs)))<sqrt(sq(abs(carB.rx-rx))+sq(abs(carB.ry-ry)))&&z==carB.z) {
          if ((abs(carB.rx-3*width/4)<=66-rs*cos(rt)&&abs(carB.ry-height/2)<=66-rs*sin(rt))||(abs(carB.rx-1*width/4)<=66-rs*cos(rt)&&abs(carB.ry-height/2)<=66-rs*sin(rt))) {
            rs=0;
          } else {
            carB.rx+=.9*cos(rt)*rs;
            carB.ry+=.9*sin(rt)*rs;
            rs=0;
          }
        }
      }
      if (id==0) {
        if (sqrt(sq(abs(carA.rx-rx))+sq(abs(carA.ry-ry)))<=25+abs(rs)&&sqrt(sq(abs(carA.rx-rx-cos(rt)*rs))+sq(abs(carA.ry-ry-sin(rt)*rs)))<sqrt(sq(abs(carA.rx-rx))+sq(abs(carA.ry-ry)))&&z==carA.z) {
          if ((abs(carA.rx-3*width/4)<=66-rs*cos(rt)&&abs(carA.ry-height/2)<=66-rs*sin(rt))||(abs(carA.rx-1*width/4)<=66-rs*cos(rt)&&abs(carA.ry-height/2)<=66-rs*sin(rt))) {
            rs=0;
          } else {
            carA.rx+=.9*cos(rt)*rs;
            carA.ry+=.9*sin(rt)*rs;
            rs=0;
          }
        }
      }
      if (abs(rx-3*width/4+cos(rt)*rs)<=65&&abs(ry-height/2+sin(rt)*rs)<=65&&sqrt(sq(abs(rx-3*width/4+cos(rt)*rs))+sq(abs(ry-height/2+sin(rt)*rs)))<sqrt(sq(abs(rx-3*width/4))+sq(abs(ry-height/2)))) { //collision with airships
        rs=0;
      }
      if (abs(rx-1*width/4+cos(rt)*rs)<=65&&abs(ry-height/2+sin(rt)*rs)<=65&&sqrt(sq(abs(rx-1*width/4+cos(rt)*rs))+sq(abs(ry-height/2+sin(rt)*rs)))<sqrt(sq(abs(rx-1*width/4))+sq(abs(ry-height/2)))) {
        rs=0;
      }
      if ((rx+cos(rt)*rs)+(ry+sin(rt)*rs)<=100) {//left boiler collision
        rx=(rx+100-ry)/2;
        ry=-rx+100;
        rs=0;
      }
      if ((width-(rx+cos(rt)*rs))+(ry+sin(rt)*rs)<=100) {//right boiler collision
        rx=(rx+width-100+ry)/2;
        ry=-width+100+rx;
        rs=0;
      }
      rx+=cos(rt)*rs;
      ry+=sin(rt)*rs;
    } else {//a swerve mode
      if (robotOriented) {
        if (z>0) { //no jumping
          rs=0;
          rss=0;
        }
        if (id==1) { //collision with other robot
          if (sqrt(sq(abs(carB.rx-rx))+sq(abs(carB.ry-ry)))<=25+sqrt(sq(rs)+sq(rss))&&sqrt(sq(abs(carB.rx-rx-cos(rt)*rs-sin(rt)*rss))+sq(abs(carB.ry-ry-sin(rt)*rs+cos(rt)*rss)))<sqrt(sq(abs(carB.rx-rx))+sq(abs(carB.ry-ry)))&&z==carB.z) {
            if ((abs(carB.rx-3*width/4)<=66-rs*cos(rt)-rss*sin(rt)&&abs(carB.ry-height/2)<=66-rs*sin(rt)+rss*cos(rt))||(abs(carB.rx-1*width/4)<=66-rs*cos(rt)-rss*sin(rt)&&abs(carB.ry-height/2)<=66-rs*sin(rt)+rss*cos(rt))) {
              rs=0;
              rss=0;
            } else {
              carB.rx+=.9*cos(rt)*rs + .9*sin(rt)*rss;
              carB.ry+=.9*sin(rt)*rs - .9*cos(rt)*rss;
              rs=0;
              rss=0;
            }
          }
        }
        if (id==0) {
          if (sqrt(sq(abs(carA.rx-rx))+sq(abs(carA.ry-ry)))<=25+sqrt(sq(rs)+sq(rss))&&sqrt(sq(abs(carA.rx-rx-cos(rt)*rs-sin(rt)*rss))+sq(abs(carA.ry-ry-sin(rt)*rs+cos(rt)*rss)))<sqrt(sq(abs(carA.rx-rx))+sq(abs(carA.ry-ry)))&&z==carA.z) {
            if ((abs(carA.rx-3*width/4)<=66-rs*cos(rt)-rss*sin(rt)&&abs(carA.ry-height/2)<=66-rs*sin(rt)+rss*cos(rt))||(abs(carA.rx-1*width/4)<=66-rs*cos(rt)-rss*sin(rt)&&abs(carA.ry-height/2)<=66-rs*sin(rt)+rss*cos(rt))) {
              rs=0;
              rss=0;
            } else {
              carA.rx+=.9*cos(rt)*rs + .9*sin(rt)*rss;
              carA.ry+=.9*sin(rt)*rs - .9*cos(rt)*rss;
              rs=0;
              rss=0;
            }
          }
        }
        if (abs(rx-3*width/4+cos(rt)*rs+sin(rt)*rss)<=65&&abs(ry-height/2+sin(rt)*rs-cos(rt)*rss)<=65&&sqrt(sq(abs(rx-3*width/4+cos(rt)*rs+sin(rt)*rss))+sq(abs(ry-height/2+sin(rt)*rs-cos(rt)*rss)))<sqrt(sq(abs(rx-3*width/4))+sq(abs(ry-height/2)))) { //collision with airships
          rs=0;
          rss=0;
        }
        if (abs(rx-1*width/4+cos(rt)*rs+sin(rt)*rss)<=65&&abs(ry-height/2+sin(rt)*rs-cos(rt)*rss)<=65&&sqrt(sq(abs(rx-1*width/4+cos(rt)*rs+sin(rt)*rss))+sq(abs(ry-height/2+sin(rt)*rs-cos(rt)*rss)))<sqrt(sq(abs(rx-1*width/4))+sq(abs(ry-height/2)))) {
          rs=0;
          rss=0;
        }
        if ((rx+cos(rt)*rs + sin(rt)*rss)+(ry+sin(rt)*rs - cos(rt)*rss)<=100) {//left boiler collision
          rx=(rx+100-ry)/2;
          ry=-rx+100;
          rs=0;
          rss=0;
        }
        if ((width-(rx+cos(rt)*rs+sin(rt)*rss))+(ry+sin(rt)*rs-cos(rt)*rss)<=100) {//right boiler collision
          rx=(rx+width-100+ry)/2;
          ry=-width+100+rx;
          rs=0;
          rss=0;
        }
        rx+=cos(rt)*rs + sin(rt)*rss;
        ry+=sin(rt)*rs - cos(rt)*rss;
      } else {//field oriented
        if (z>0) { //no jumping
          rs=0;
          rss=0;
        }
        if (id==1) { //collision with other robot
          if (sqrt(sq(abs(carB.rx-rx))+sq(abs(carB.ry-ry)))<=25+sqrt(sq(rs)+sq(rss))&&sqrt(sq(abs(carB.rx-rx+rss))+sq(abs(carB.ry-ry+rs)))<sqrt(sq(abs(carB.rx-rx))+sq(abs(carB.ry-ry)))&&z==carB.z) {
            if ((abs(carB.rx-3*width/4)<=66+abs(rss)&&abs(carB.ry-height/2)<=66+abs(rs)||(abs(carB.rx-1*width/4)<=66+abs(rss)&&abs(carB.ry-height/2)<=66+abs(rs)))) {
              rs=0;
              rss=0;
            } else {
              carB.rx-=.9*rss;
              carB.ry-=.9*rs;
              rs=0;
              rss=0;
            }
          }
        }
        if (id==0) {
          if (sqrt(sq(abs(carA.rx-rx))+sq(abs(carA.ry-ry)))<=25+sqrt(sq(rs)+sq(rss))&&sqrt(sq(abs(carA.rx-rx+rss))+sq(abs(carA.ry-ry+rs)))<sqrt(sq(abs(carA.rx-rx))+sq(abs(carA.ry-ry)))&&z==carA.z) {
            if ((abs(carA.rx-3*width/4)<=66+abs(rss)&&abs(carA.ry-height/2)<=66+abs(rs)||(abs(carA.rx-1*width/4)<=66+abs(rss)&&abs(carA.ry-height/2)<=66+abs(rs)))) {
              rs=0;
              rss=0;
            } else {
              carA.rx-=.9*rss;
              carA.ry-=.9*rs;
              rs=0;
              rss=0;
            }
          }
        }
        if (abs(rx-3*width/4-rss)<=65&&abs(ry-height/2-rs)<=65&&sqrt(sq(abs(rx-3*width/4-rss))+sq(abs(ry-height/2-rs)))<sqrt(sq(abs(rx-3*width/4))+sq(abs(ry-height/2)))) { //collision with airships
          rs=0;
          rss=0;
        }
        if (abs(rx-1*width/4-rss)<=65&&abs(ry-height/2-rs)<=65&&sqrt(sq(abs(rx-1*width/4-rss))+sq(abs(ry-height/2-rs)))<sqrt(sq(abs(rx-1*width/4))+sq(abs(ry-height/2)))) {
          rs=0;
          rss=0;
        }
        if ((rx-rss)+(ry-rs)<=100) {//left boiler collision
          rx=(rx+100-ry)/2;
          ry=-rx+100;
          rs=0;
          rss=0;
        } 
        if ((width-(rx-rss))+(ry-rs)<=100) {//right boiler collision
          rx=(rx+width-100+ry)/2;
          ry=-width+100+rx;
          rs=0;
          rss=0;
        }
        rx-=rss;
        ry-=rs;
      }
    }
    if (sb&&b>0&&frameCount%carShS==0) {
      tr=rt;
      if (!dualShooter) {
        for (int i=0; i<maxBalls; i++) {
          if (ball[i].show==false) {
            ball[i].make(rx, ry, 30+z, cos(rt+random(-carShE, carShE))*random(shF-carShE, shF+carShE), sin(rt+random(-carShE, carShE))*random(shF-carShE, shF+carShE), shH, .25);
            i=maxBalls;
            b--;
          }
        }
      } else {//dualShooter
        for (int i=0; i<maxBalls; i++) {
          if (ball[i].show==false) {
            ball[i].make(rx+ball[i].s*1*cos(tr-HALF_PI), ry+ball[i].s*1*sin(tr-HALF_PI), 30+z, cos(rt+random(-carShE, carShE))*random(shF-carShE, shF+carShE), sin(rt+random(-carShE, carShE))*random(shF-carShE, shF+carShE), shH, .25);
            i=maxBalls;
            b--;
          }
        }
        for (int i=0; i<maxBalls; i++) {
          if (ball[i].show==false&&b>0) {
            ball[i].make(rx+ball[i].s*1*cos(tr+HALF_PI), ry+ball[i].s*1*sin(tr+HALF_PI), 30+z, cos(rt+random(-carShE, carShE))*random(shF-carShE, shF+carShE), sin(rt+random(-carShE, carShE))*random(shF-carShE, shF+carShE), shH, .25);
            i=maxBalls;
            b--;
          }
        }
      }
    } else if (lrs&&b>0&&frameCount%carAShS==0&&(distanceShootEnable)) {
      float dx=100;
      if (!dualShooter) {
        for (int i=0; i<maxBalls; i++) {
          if (ball[i].show==false) {
            if (id==1) {
              dx=sqrt(sq(rx)+sq(ry))+random(-carAShE, carAShE);
            }
            if (id==0) {
              dx=sqrt(sq(-width+rx)+sq(ry))+random(-carAShE, carAShE);
            }
            float v=map(dx, 0, width+100, 11, 24*width/1200);
            if ((id==0&&rx>=2*width/3)||(id==1&&rx<=width/3)||crossCourtShoot) {
              ball[i].make(rx, ry, 30+z, v*cos(tr+random(-atan(carAShE/dx), atan(carAShE/dx)))*cos(atan((sq(v)+sqrt(sq(sq(v))-.25*(.25*sq(dx)+2*(200-z-30)*sq(v))))/(.25*dx))), v*sin(tr+random(-atan(carAShE/dx), atan(carAShE/dx)))*cos(atan((sq(v)+sqrt(sq(sq(v))-.25*(.25*sq(dx)+2*(200-z-30)*sq(v))))/(.25*dx))), v*sin(atan((sq(v)+sqrt(sq(sq(v))-.25*(.25*sq(dx)+2*(200-z-30)*sq(v))))/(.25*dx))), .25);
              i=maxBalls;
              b--;
            }
          }
        }
      } else {//dualShooter
        for (int i=0; i<maxBalls; i++) {
          if (ball[i].show==false) {
            if (id==1) {
              dx=sqrt(sq(rx)+sq(ry))+random(-carAShE, carAShE);
            }
            if (id==0) {
              dx=sqrt(sq(-width+rx)+sq(ry))+random(-carAShE, carAShE);
            }
            float v=map(dx, 0, width+100, 11, 24*width/1200);
            if ((id==0&&rx>=2*width/3)||(id==1&&rx<=width/3)||crossCourtShoot) {
              ball[i].make(rx+ball[i].s*1*cos(tr-HALF_PI), ry+ball[i].s*1*sin(tr-HALF_PI), 30+z, v*cos(tr+random(-atan(carAShE/dx), atan(carAShE/dx)))*cos(atan((sq(v)+sqrt(sq(sq(v))-.25*(.25*sq(dx)+2*(200-z-30)*sq(v))))/(.25*dx))), v*sin(tr+random(-atan(carAShE/dx), atan(carAShE/dx)))*cos(atan((sq(v)+sqrt(sq(sq(v))-.25*(.25*sq(dx)+2*(200-z-30)*sq(v))))/(.25*dx))), v*sin(atan((sq(v)+sqrt(sq(sq(v))-.25*(.25*sq(dx)+2*(200-z-30)*sq(v))))/(.25*dx))), .25);
              i=maxBalls;
              b--;
            }
          }
        }
        for (int i=0; i<maxBalls; i++) {
          if (ball[i].show==false&&b>0) {
            if (id==1) {
              dx=sqrt(sq(rx)+sq(ry))+random(-carAShE, carAShE);
            }
            if (id==0) {
              dx=sqrt(sq(-width+rx)+sq(ry))+random(-carAShE, carAShE);
            }
            float v=map(dx, 0, width+100, 11, 24*width/1200);
            if ((id==0&&rx>=2*width/3)||(id==1&&rx<=width/3)||crossCourtShoot) {
              ball[i].make(rx+ball[i].s*1*cos(tr+HALF_PI), ry+ball[i].s*1*sin(tr+HALF_PI), 30+z, v*cos(tr+random(-atan(carAShE/dx), atan(carAShE/dx)))*cos(atan((sq(v)+sqrt(sq(sq(v))-.25*(.25*sq(dx)+2*(200-z-30)*sq(v))))/(.25*dx))), v*sin(tr+random(-atan(carAShE/dx), atan(carAShE/dx)))*cos(atan((sq(v)+sqrt(sq(sq(v))-.25*(.25*sq(dx)+2*(200-z-30)*sq(v))))/(.25*dx))), v*sin(atan((sq(v)+sqrt(sq(sq(v))-.25*(.25*sq(dx)+2*(200-z-30)*sq(v))))/(.25*dx))), .25);
              i=maxBalls;
              b--;
            }
          }
        }
      }
    }
    if (id == 1) {
      desiredAngleGear=PI+atan2((ry-((height/2)+65)), (rx-(width/4)));
    } else {
      desiredAngleGear=PI+atan2((ry-((height/2)+65)), (rx-(width*3/4)));
    }
    if ( autogears && ags) {
      if (sqrt(sq(ry-((height/2)+65))+ sq(rx-(width/4)))>=5&&sqrt(sq(ry-((height/2)+65))+ sq(rx-(width*3/4)))>=5&&desiredAngleGear>=PI+.2&&desiredAngleGear<=TWO_PI-.2) {
        if (abs(rt-desiredAngleGear)>=PI) {
          if (rt+carAAAcc>desiredAngleGear) {
            rt+=carAAAcc;
          } else if (rt-carAAAcc<desiredAngleGear) {
            rt-=carAAAcc;
          } else {
            rt=desiredAngleGear;
          }
        } else {
          if (rt-carAAAcc>desiredAngleGear) {
            rt-=carAAAcc;
          } else if (rt+carAAAcc<desiredAngleGear) {
            rt+=carAAAcc;
          } else {
            rt=desiredAngleGear;
          }
        }
        if (!swerve) {
          if (rt==desiredAngleGear) {
            if (id==1) { 
              rs=constrain(sqrt(sq(ry-((height/2)+64))+ sq(rx-(width/4))), -carSpeed*(carAcc+.8), carSpeed*(carAcc+.8));
            } else {
              rs=constrain(sqrt(sq(ry-((height/2)+64))+ sq(rx-(3*width/4))), -carSpeed*(carAcc+.8), carSpeed*(carAcc+.8));
            }
          }
        } else if (robotOriented) {
          if (rt==desiredAngleGear) {
            if (id==1) { 
              rs=constrain(sqrt(sq(ry-((height/2)+64))+ sq(rx-(width/4))), -carSpeed*(carAcc+.8), carSpeed*(carAcc+.8));
            } else {
              rs=constrain(sqrt(sq(ry-((height/2)+64))+ sq(rx-(3*width/4))), -carSpeed*(carAcc+.8), carSpeed*(carAcc+.8));
            }
          }
        } else {
          if (rt==desiredAngleGear) {
            if (id==1) {
              rs=-constrain(sqrt(sq(ry-((height/2)+64))+ sq(rx-(width/4))), -carSpeed*(carAcc+.8), carSpeed*(carAcc+.8))*sin(desiredAngleGear);
              rss=-constrain(sqrt(sq(ry-((height/2)+64))+ sq(rx-(width/4))), -carSpeed*(carAcc+.8), carSpeed*(carAcc+.8))*cos(desiredAngleGear);
            } else {
              rs=-constrain(sqrt(sq(ry-((height/2)+64))+ sq(rx-(3*width/4))), -carSpeed*(carAcc+.8), carSpeed*(carAcc+.8))*sin(desiredAngleGear);
              rss=-constrain(sqrt(sq(ry-((height/2)+64))+ sq(rx-(3*width/4))), -carSpeed*(carAcc+.8), carSpeed*(carAcc+.8))*cos(desiredAngleGear);
            }
          }
        }
      } else if (ry>=50+height/2&&(sqrt(sq(ry-((height/2)+65))+ sq(rx-(width/4)))<=15||sqrt(sq(ry-((height/2)+65))+ sq(rx-(width*3/4)))<=15)) {
        if (rt-carAAAcc>3*HALF_PI) {
          rt-=carAAAcc;
        } else if (rt+carAAAcc<3*HALF_PI) {
          rt+=carAAAcc;
        } else {
          rt=3*HALF_PI;
          rs=carSpeed;
          ags=false;
        }
      } else {
        ags=false;
      }
    } else {
      ags=false;
    }
    if (id == 1) {
      desiredAngleFuel=PI+atan2(ry, rx);
    } else {
      desiredAngleFuel=PI+atan2(ry, rx-width);
    }
    if (turret && (!lrs||!autoShootEnable)) {
      if (abs(tr-rt)>=PI) {
        if (tr+carAAAcc>rt) {
          tr+=carAAAcc;
        } else if (tr-carAAAcc<rt) {
          tr-=carAAAcc;
        } else {
          tr=rt;
        }
      } else {
        if (tr-carAAAcc>rt) {
          tr-=carAAAcc;
        } else if (tr+carAAAcc<rt) {
          tr+=carAAAcc;
        } else {
          tr=rt;
        }
      }
    }
    if ( autoShootEnable && lrs&&!sb) {
      if (turret) {
        if (abs(tr-desiredAngleFuel)>=PI) {
          if (tr+carAAAcc>desiredAngleFuel) {
            tr+=carAAAcc;
          } else if (tr-carAAAcc<desiredAngleFuel) {
            tr-=carAAAcc;
          } else {
            tr=desiredAngleFuel;
          }
        } else {
          if (tr-carAAAcc>desiredAngleFuel) {
            tr-=carAAAcc;
          } else if (tr+carAAAcc<desiredAngleFuel) {
            tr+=carAAAcc;
          } else {
            tr=desiredAngleFuel;
          }
        }
        if (!distanceShootEnable) {
          rt=tr;
        }
      } else {
        if (abs(rt-desiredAngleFuel)>=PI) {
          if (rt+carAAAcc>desiredAngleFuel) {
            rt+=carAAAcc;
          } else if (rt-carAAAcc<desiredAngleFuel) {
            rt-=carAAAcc;
          } else {
            rt=desiredAngleFuel;
          }
        } else {
          if (rt-carAAAcc>desiredAngleFuel) {
            rt-=carAAAcc;
          } else if (rt+carAAAcc<desiredAngleFuel) {
            rt+=carAAAcc;
          } else {
            rt=desiredAngleFuel;
          }
        }
        tr=rt;
      }
    }
    if (sdsAim&&sb) {
      if (abs(rt-desiredAngleFuel)>=PI) {
        if (rt+carAAAcc>desiredAngleFuel) {
          rt+=carAAAcc;
        } else if (rt-carAAAcc<desiredAngleFuel) {
          rt-=carAAAcc;
        } else {
          rt=desiredAngleFuel;
        }
      } else {
        if (rt-carAAAcc>desiredAngleFuel) {
          rt-=carAAAcc;
        } else if (rt+carAAAcc<desiredAngleFuel) {
          rt+=carAAAcc;
        } else {
          rt=desiredAngleFuel;
        }
      }
      tr=rt;
    }
    if (!turret) {
      tr=rt;
    }
    if (sqrt(sq(carA.rx-carB.rx)+sq(carA.ry-carB.ry))>140) {
      tagged=false;
    }
    if (sqrt(sq(carA.rx-carB.rx)+sq(carA.ry-carB.ry))<=35&&tagged==false&&fouls) {
      if (carB.rx+(height-carB.ry)<=150&&id==0) {
        tagged=true;
        redFouls+=40;
      }
      if ((width-carA.rx)+(height-carB.ry)<=150&&id==1) {
        tagged=true;
        blueFouls+=40;
      }
    }
    rx=constrain(rx, 0+15, width-15);
    ry=constrain(ry, 0+15, height-15);
    if (laserEnable&&laserTime>carLShS&&lasr) {
      laserTime=0;
      if (id==0) {
        pushMatrix();
        translate(rx, ry, 15+z);
        rotate(rt);
        fill(255, 0, 0);
        noStroke();
        translate(5000, 0, 0);
        box(10000, 5, 5);
        popMatrix();
        if (abs(abs(rt-(atan2((carA.ry-ry), (carA.rx-rx))+PI))-PI)<=atan(17/sqrt(sq(carA.rx-rx)+sq(carA.ry-ry)))&&abs(carA.z-carB.z)<15) {
          redFouls+=1;
        }
      }
      if (id==1) {
        pushMatrix();
        translate(rx, ry, 15+z);
        rotate(rt);
        fill(0, 0, 255);
        noStroke();
        translate(5000, 0, 0);
        box(10000, 5, 5);
        popMatrix();
        if (abs(abs(rt-(atan2((carB.ry-ry), (carB.rx-rx))+PI))-PI)<=atan(17/sqrt(sq(carB.rx-rx)+sq(carB.ry-ry)))&&abs(carA.z-carB.z)<15) {
          blueFouls+=1;
        }
      }
    }
    laserTime++;
    strokeWeight(1);
    stroke(255);
    if (id==1) {
      fill(0, 0, 55);
      if (!intake||ballDirIn) {
        fill(0, 0, 200);
      }
    } else {
      fill(55, 0, 0);
      if (!intake||ballDirIn) {
        fill(200, 0, 0);
      }
    }
    pushMatrix();
    translate(rx, ry, 5+z);
    rotate(rt);
    box(33, 33, 10);
    if (ballDirIn&&intake) {
      noStroke();
      if (id==1) {
        fill(0, 0, 55);
      } else {
        fill(55, 0, 0);
      }
      translate(16, 0, 0);
      box(2.1, 30, 10);
    }
    popMatrix();
    if ((id==0&&redProDidSomething&&redPrePro)||(id==1&&bluProDidSomething&&bluPrePro)) {
      fill(155, 155, 0);
    } else if (tagged) {
      fill(100);
    } else if (b<mb&&b>0) {
      fill(0, map(b, 1, mb, 40, 190), 0);
    } else if (b==mb) {
      fill(0, 220, 0);
    } else {
      fill(0);
    }
    colorMode(HSB);
    stroke(color(frameCount%255, 255, 255));
    colorMode(RGB);
    pushMatrix();
    translate(rx, ry, 30.1+z);
    rotate(rt);
    rect(-15, -15, 30, 30);
    popMatrix();
    pushMatrix();
    translate(rx, ry, 15+z);
    fill(0);
    rotate(rt);
    box(30);
    pushMatrix();
    noStroke();
    translate(0, 0, map(b, 0, mb, 0, 19.5/2)-5);
    fill(0, 255, 0);
    box(30.1, 30.1, map(b, 0, mb, 0, 19.5));
    popMatrix();
    if (id==0) {
      fill(255, 0, 0);
    }
    if (id==1) {
      fill(0, 0, 255);
    }
    stroke(100);
    strokeWeight(1);
    if (hg) {
      stroke(255, 255, 0);
      strokeWeight(2);
    }
    translate(0, 0, 15.2);
    rect(13, -13, -12, 26);
    rotate(-rt);
    rotate(tr);
    fill(0, 30, 0);
    if (lrs) {
      fill(255, 255, 0);
    }
    if (sb) {
      fill(0, 0, 255);
    }
    if (lrs&&sb) {
      fill(0, 255, 255);
    }
    translate(5, 0, 1.5);
    stroke(255);
    strokeWeight(1);
    box(15, 10, 3);
    popMatrix();
  }
  void hopper(float x, float y, int h) {
    pushMatrix();
    stroke(255);
    if (hf[h]) {
      fill(0, 100, 0);
    } else {
      fill(100, 0, 0);
    }
    translate(x*width, y, 20);
    box(40);
    popMatrix();
    if (rx+15>width*x&&rx-15<width*x&&abs(ry-y)<=20&&b<=mb&&hf[h]==true) {
      int n=0;
      for (int i=0; i<maxBalls; i++) {
        if (ball[i].show==false) {
          n++;
        }
      }
      n=constrain(n-40, -1, 40);
      hf[h]=false;
      for (int i=0; i<maxBalls; i++) {
        if (ball[i].show==false&&n>0) {
          if (y>width/2) {
            ball[i].make(random(-15, 15)+width*x, y-random(13, 25), 50, random(-.4, .4), random(-.8, -.05), 0, .25);
          } else {
            ball[i].make(random(-15, 15)+width*x, y+random(13, 25), 50, random(-.4, .4), random(.05, .8), 0, .25);
          }
          n--;
        }
      }
    }
  }
}
void keyPressed() {
  if (key==CODED&&keyCode==CONTROL&&go) {
    if (paused) {
      loop();
      paused=false;
      stml=millis()-pauseMil;
    } else {
      noLoop();
      pauseMil=millis()-stml;
      paused=true;
    }
  }
  keyPushed=true;
  if (go) {
    if (key==bluatogr&&!toggle) {
      carA.ags=true;
    }
    if (key==redatogr&&!toggle) {
      carB.ags=true;
    }
    if (key==bluatogr&&toggle) {
      carA.ags=!carA.ags;
    }
    if (key==redatogr&&toggle) {
      carB.ags=!carB.ags;
    }
    if (key==bluForw) {
      carA.rfp=true;
      carA.ags=false;
    }
    if (key==bluBack) {
      carA.rfm=true;
      carA.ags=false;
    }
    if (key==bluLeft) {
      carA.rtm=true;
      carA.ags=false;
    }
    if (key==bluRiht) {
      carA.rtp=true;
      carA.ags=false;
    }
    if (key==bluShbl&&!toggle) {
      carA.sb=true;
    }
    if (key==bluShbl&&toggle) {
      carA.sb=!carA.sb;
    }
    if (key==redForw) {
      carB.rfp=true;
      carB.ags=false;
    }
    if (key==redBack) {
      carB.rfm=true;
      carB.ags=false;
    }
    if (key==redRiht) {
      carB.rtp=true;
      carB.ags=false;
    }
    if (key==redLeft) {
      carB.rtm=true;
      carB.ags=false;
    }
    if (key==redShbl&&!toggle) {
      carB.sb=true;
    }
    if (key==redShbl&&toggle) {
      carB.sb=!carB.sb;
    }
    if (key==redGear) {
      nrg=true;
    }
    if (key==bluGear) {
      nbg=true;
    }
    if (key==bluClmb) {
      carA.climb=true;
    }
    if (key==redClmb) {
      carB.climb=true;
    }
    if (key==bluLrsk&&!toggle) {
      carA.lrs=true;
    }
    if (key==redLrsk&&!toggle) {
      carB.lrs=true;
    }
    if (key==bluLrsk&&toggle) {
      carA.lrs=!carA.lrs;
    }
    if (key==redLrsk&&toggle) {
      carB.lrs=!carB.lrs;
    }
    if (go&&key==BACKSPACE) {
      stml=-1000000;
    }
    if (key==bluLmov) {
      carA.lmov=true;
      carA.ags=false;
    }
    if (key==bluRmov) {
      carA.rmov=true;
      carA.ags=false;
    }
    if (key==redLmov) {
      carB.lmov=true;
      carB.ags=false;
    }
    if (key==redRmov) {
      carB.rmov=true;
      carB.ags=false;
    }

    if (key==redLaser&&!toggle) {
      carB.lasr=true;
    }
    if (key==bluLaser&&!toggle) {
      carA.lasr=true;
    }

    if (key==redLaser&&toggle) {
      carB.lasr=!carB.lasr;
    }
    if (key==bluLaser&&toggle) {
      carA.lasr=!carA.lasr;
    }
    if (key==bluIntake) {
      carA.intake=!carA.intake;
    }
    if (key==redIntake) {
      carB.intake=!carB.intake;
    }
  }
}
void keyReleased() {
  if (go) {
    if (key==bluatogr&&!toggle) {
      carA.ags=false;
    }
    if (key==redatogr&&!toggle) {
      carB.ags=false;
    }
    if (key==bluForw) {
      carA.rfp=false;
    }
    if (key==bluBack) {
      carA.rfm=false;
    }
    if (key==bluRiht) {
      carA.rtp=false;
    }
    if (key==bluLeft) {
      carA.rtm=false;
    }
    if (key==bluShbl&&!toggle) {
      carA.sb=false;
    }
    if (key==redForw) {
      carB.rfp=false;
    }
    if (key==redBack) {
      carB.rfm=false;
    }
    if (key==redLeft) {
      carB.rtm=false;
    }
    if (key==redRiht) {
      carB.rtp=false;
    }
    if (key==redShbl&&!toggle) {
      carB.sb=false;
    }
    if (key==bluClmb) {
      carA.climb=false;
    }
    if (key==redClmb) {
      carB.climb=false;
    }
    if (key==bluLrsk&&!toggle) {
      carA.lrs=false;
    }
    if (key==redLrsk&&!toggle) {
      carB.lrs=false;
    }
    if (key==bluLmov) {
      carA.lmov=false;
    }
    if (key==bluRmov) {
      carA.rmov=false;
    }
    if (key==redLmov) {
      carB.lmov=false;
    }
    if (key==redRmov) {
      carB.rmov=false;
    }
    if (key==redLaser&&!toggle) {
      carB.lasr=false;
    }
    if (key==bluLaser&&!toggle) {
      carA.lasr=false;
    }
  }
}
void redProRun() {
  boolean didSomething=false;
  for (int a=0; a<redProgram.length; a++) {
    if (redProgram[a][2]!=null&&((millis()-stml))>=1000*float(redProgram[a][0])&&((millis()-stml))<1000*float(redProgram[a][2])) {
      didSomething=true;
      redProDidSomething=true;
    }
  }
  if (didSomething==true||redProDidSomething) {
    if (!didSomething) {
      redProDidSomething=false;
    }
    carB.rfp=false;
    carB.rfm=false;
    carB.rtm=false;
    carB.rtp=false;
    carB.sb=false;
    carB.climb=false;
    carB.lrs=false;
    carB.ags=false;
    carB.lmov=false;
    carB.rmov=false;
    carB.lasr=false;
    carB.intake=true;
  }
  for (int a=0; a<redProgram.length; a++) {
    if (redProgram[a][2]!=null&&((millis()-stml))>=1000*float(redProgram[a][0])&&((millis()-stml))<1000*float(redProgram[a][2])) {
      char cmd=redProgram[a][1].charAt(0);
      if (cmd==redatogr) {
        carB.ags=true;
      }
      if (cmd==redForw) {
        carB.rfp=true;
        carB.ags=false;
      }
      if (cmd==redBack) {
        carB.rfm=true;
        carB.ags=false;
      }
      if (cmd==redRiht) {
        carB.rtp=true;
        carB.ags=false;
      }
      if (cmd==redLeft) {
        carB.rtm=true;
        carB.ags=false;
      }
      if (cmd==redShbl) {
        carB.sb=true;
      }
      if (cmd==redGear) {
        nrg=true;
      }
      if (cmd==redClmb) {
        carB.climb=true;
      }
      if (cmd==redLrsk) {
        carB.lrs=true;
      }
      if (cmd==redLmov) {
        carB.lmov=true;
        carB.ags=false;
      }
      if (cmd==redRmov) {
        carB.rmov=true;
        carB.ags=false;
      }
      if (cmd==redLaser) {
        carB.lasr=true;
      }
      if (cmd==redIntake) {
        carB.intake=false;
      }
    }
  }
}
void bluProRun() {
  boolean didSomething=false;
  for (int a=0; a<bluProgram.length; a++) {
    if (bluProgram[a][2]!=null&&((millis()-stml))>=1000*float(bluProgram[a][0])&&((millis()-stml))<1000*float(bluProgram[a][2])) {
      didSomething=true;
      bluProDidSomething=true;
    }
  }
  if (didSomething==true||bluProDidSomething) {
    if (!didSomething) {
      bluProDidSomething=false;
    }
    carA.rfp=false;
    carA.rfm=false;
    carA.rtm=false;
    carA.rtp=false;
    carA.sb=false;
    carA.climb=false;
    carA.lrs=false;
    carA.ags=false;
    carA.lmov=false;
    carA.rmov=false;
    carA.lasr=false;
    carA.intake=true;
  }
  for (int a=0; a<bluProgram.length; a++) {
    if (bluProgram[a][2]!=null&&((millis()-stml))>=1000*float(bluProgram[a][0])&&((millis()-stml))<1000*float(bluProgram[a][2])) {
      char cmd=bluProgram[a][1].charAt(0);
      if (cmd==bluatogr) {
        carA.ags=true;
      }
      if (cmd==bluForw) {
        carA.rfp=true;
        carA.ags=false;
      }
      if (cmd==bluBack) {
        carA.rfm=true;
        carA.ags=false;
      }
      if (cmd==bluRiht) {
        carA.rtp=true;
        carA.ags=false;
      }
      if (cmd==bluLeft) {
        carA.rtm=true;
        carA.ags=false;
      }
      if (cmd==bluShbl) {
        carA.sb=true;
      }
      if (cmd==bluGear) {
        nbg=true;
      }
      if (cmd==bluClmb) {
        carA.climb=true;
      }
      if (cmd==bluLrsk) {
        carA.lrs=true;
      }
      if (cmd==bluLmov) {
        carA.lmov=true;
        carA.ags=false;
      }
      if (cmd==bluRmov) {
        carA.rmov=true;
        carA.ags=false;
      }
      if (cmd==bluLaser) {
        carA.lasr=true;
      }
      if (cmd==bluIntake) {
        carA.intake=false;
      }
    }
  }
}
void preProStartup() {
  File frp = new File(sketchPath("code/redProgram.txt"));
  if (frp.exists()) {
    String[] redProgTemp=loadStrings("code/redProgram.txt");
    redProgram=new String[redProgTemp.length][3];
    for (int a=0; a<redProgTemp.length; a++) {
      redProgram[a]=split(redProgTemp[a], ",") ;
      if (redProgram[a].length!=3) {
        redProgramAvailable=false;
      }
    }
  } else {
    redProgramAvailable=false;
  }
  File fbp = new File(sketchPath("code/blueProgram.txt"));
  if (fbp.exists()) {
    String[] bluProgTemp=loadStrings("code/blueProgram.txt");
    bluProgram=new String[bluProgTemp.length][3];
    for (int a=0; a<bluProgTemp.length; a++) {
      bluProgram[a]=split(bluProgTemp[a], ",");
      if (bluProgram[a].length!=3) {
        bluProgramAvailable=false;
      }
    }
  } else {
    bluProgramAvailable=false;
  }
}
void movieEvent(Movie m) {
  m.read();
}
void mousePressed() {
  mousePushed=true;
}