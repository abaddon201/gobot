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

//E2, IN4, IN3
Engine leftEngine(3, 2, 4);
int leftSpeed=200;
int rightSpeed=200;
//E1, IN1, IN2
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
}
