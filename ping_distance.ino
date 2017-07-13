#include <ESP8266WiFi.h>
#include <ESP8266WiFiMulti.h>

#include <ESP8266HTTPClient.h>
#include <ESP8266httpUpdate.h>

#define TRIGGER1 5
#define ECHO1    4
#define TRIGGER2 14
#define ECHO2    12
 
// NodeMCU Pin D1 > TRIGGER1 | Pin D2 > ECHO1 | Pin D5 > TRIGGER2 | pin D6 > ECHO2
 
void setup() {
  
  Serial.begin (9600);
  
  WiFi.begin("Guest", "welcome123");
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.println("Waiting for connection");
  }
  
  pinMode(TRIGGER1, OUTPUT);
  pinMode(ECHO1, INPUT);
  pinMode(TRIGGER2, OUTPUT);
  pinMode(ECHO2, INPUT);
  pinMode(BUILTIN_LED, OUTPUT);
}

 int count=0;
void loop() {
  
  long duration1, distance1, duration2, distance2;
  int x, diff;
  digitalWrite(TRIGGER1, LOW);  
  delayMicroseconds(2); 
  
  digitalWrite(TRIGGER1, HIGH);
  delayMicroseconds(10); 
  
  digitalWrite(TRIGGER1, LOW);
  duration1 = pulseIn(ECHO1, HIGH);
  distance1 = (duration1/2) / 29.1;
  
  
  Serial.println("Distance 1 Centimeter:");
  Serial.print(distance1);
  Serial.println();
  

  digitalWrite(TRIGGER2, LOW);  
  delayMicroseconds(2); 
  
  digitalWrite(TRIGGER2, HIGH);
  delayMicroseconds(10); 
  
  digitalWrite(TRIGGER2, LOW);
  duration2 = pulseIn(ECHO2, HIGH);
  distance2 = (duration2/2) / 29.1;
  
  Serial.println("Distance 2 Centimeter:");
  Serial.print(distance2);
  Serial.println();

  if (distance1>=X && distance2>=X && distance1<=Y && distance2<=Y) // X - Minimum Ground Clearance, Y - Maximum Ground Clearance
  {
   diff = abs(distance1-distance2);
    if (diff<=2 && diff>=0)
    {
      count++;
      
      }
     else 
     {
      count=0;
      }
      count++;
   }
   else 
   { count=0;
   }

   if (count==8)
   { Serial.println("YES CAR IS HEREfff.");

     if(WiFi.status()== WL_CONNECTED){   //Check WiFi connection status
 
      HTTPClient http;    //Declare object of class HTTPClient
 
      http.begin("http://139.59.57.213:4567/pingu");      //Specify request destination
      http.addHeader("locationid", "iiit");  //Specify content-type header
      http.addHeader("sensortype", "entry"); 
      
      int httpCode = http.POST("Message from ESP8266");   //Send the request
      String payload = http.getString();                  //Get the response payload
 
      Serial.println(httpCode);   //Print HTTP return code
      Serial.println(payload);    //Print request response payload
 
      http.end();  //Close connection
 
     }else{
 
      Serial.println("Error in WiFi connection");   
 
       }
    }
  
  delay(100);
  
}

