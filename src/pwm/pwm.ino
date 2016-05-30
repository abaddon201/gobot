const int pwm = 3;
const int in3 = 2;
const int in4 = 4;
const int led = 13;

class Engine {
  int Pwm, Dir1, Dir2;
  public:
  Engine(int pwm, int dir1, int dir2) {
    Pwm = pwm;
    Dir1=dir1;
    Dir2 = dir2;
    pinMode(Pwm, OUTPUT);
    pinMode(Dir1, OUTPUT);
    pinMode(Dir2, OUTPUT);
  }

  void Update(int speed, bool forward) {
    digitalWrite(Dir1, forward);
    digitalWrite(Dir2, !forward);
    analogWrite(Pwm, speed);
  }
};

Engine leftEngine(3, 2, 4);
int leftSpeed=200;
int rightSpeed=200;
Engine rightEngine(6, 5, 7);

void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int a0 = digitalRead(A0);
  int a1 = digitalRead(A1);
  int a2 = digitalRead(A2);
  int a3 = digitalRead(A3);

  if ((a0==0) && (a1==0)) {
    rightEngine.Update(0, 1);
  }
  
  if ((a2==0) && (a3==0)) {
    leftEngine.Update(0, 1);
  }

  if(a0) {
    Serial.println("A0:");
    rightEngine.Update(rightSpeed, 1);
  }
  if(a1) {
    Serial.println("A1:");
    rightEngine.Update(rightSpeed, 0);
  }
  if (a2) {
    Serial.println("A2:");
    leftEngine.Update(leftSpeed, 0);
  }
  if(a3) {
    Serial.println("A3:");
    leftEngine.Update(leftSpeed, 1);
  }

/*
for(int i=120;i<256;i++) {
  analogWrite(pwm, i);
  delay(10);
  //i=i+19;
}
for(int i=255;i>=120;i--) {
  analogWrite(pwm, i);
  delay(10);
  //i=i-19;
}*/
}
