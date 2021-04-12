import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer cancion;
FFT audioFFT;

int AudioRange = 101;
int Max = 100;

float Amp = 40.0;
float Index = 0.2;
float IndexAmp = Index;
float IndexStep = 0.35;

float[] audios = new float[AudioRange];

int rect = 80;
int x = 20;
int y = 20;
int y_ = 80;

void setup(){
  size(700,700);
  background(#202020);
  minim = new Minim(this);
  cancion = minim.loadFile("imaginedragons.mp3");
  cancion.loop();  
  audioFFT = new FFT(cancion.bufferSize(), cancion.sampleRate());
  audioFFT.linAverages(AudioRange);
  audioFFT.window(FFT.GAUSS);
}

void draw(){
  audioFFT.forward(cancion.mix);
  myAudioDataUpdate();  
  background(#202020);
  fill(255,255);
  stroke(1);
  round(5);
  
  for(int i = 0; i < 8;i++){
     int fftFillColor = (int)map(audios[i],0, Max,0,255);
     fill(fftFillColor,255);
     
     rect(x,y,rect,rect);
     rect(x+i*rect,y,80,80);
     rect(x+i*rect,y+y_,80,80);
     rect(x+i*rect,y+y_*2,80,80);
     rect(x+i*rect,y+y_*3,80,80);
     rect(x+i*rect,y+y_*4,80,80);
     rect(x+i*rect,y+y_*5,80,80);
  }
  myAudioDataWidget();
}


void myAudioDataUpdate(){
 for(int i = 0; i < AudioRange; i++){
    float tempIndexAvg = (audioFFT.getAvg(i)* Amp)*IndexAmp;
    float tempIndexCon = constrain(tempIndexAvg, 0 , Max);
    audios[i] = tempIndexCon;
    IndexAmp+= IndexStep;
 }
 IndexAmp = Index;
}

void myAudioDataWidget(){
  noStroke();
  fill(0,200);
  rect(0,height-112,width,102);
  
  for(int i = 0; i < AudioRange; i++){
     if( i%2 == 0) fill(#237D26);
     else if (i%3 == 0) fill(#80c41c);
     else fill(#ff03af);
     
     rect(10+(i*5),(height-audios[i])-11,4,audios[i]);  
  }
}

void stop(){
  cancion.close();
  minim.stop();
  super.stop();
}
