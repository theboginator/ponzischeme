int A = 13;
int B = 12;
int delaytime;
void setup() {
  pinMode(A, OUTPUT);
  pinMode(B, OUTPUT);
  delaytime = 5000;
  Serial.begin(9600);
}

void loop() { 
  digitalWrite(A, LOW);
  digitalWrite(B, LOW);
  Serial.println("A OFF, B OFF");
  delay(delaytime);
  digitalWrite(A, HIGH);
  digitalWrite(B, LOW);
  Serial.println("A ON, B OFF");
  delay(delaytime);
  digitalWrite(A, LOW);
  digitalWrite(B, HIGH);
  Serial.println("A OFF, B ON");
  delay(delaytime);
  digitalWrite(A, HIGH);
  digitalWrite(B, HIGH);
  Serial.println("A ON, B ON");
  delay(delaytime);
}
