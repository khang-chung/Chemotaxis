Bacteria[] karens;

 void setup() { 
 	karens = new Bacteria[100];
 	background(0);
 	size(500, 500);    

 	  for(int i = 0; i < karens.length; i++) {
 	  	karens[i] = new Bacteria();
 	  }

 }




 void draw() {    
 	for(int i = 0; i < karens.length; i++) {
 		karens[i].show();
 		karens[i].move();
 	}	 
 }  





 class Bacteria {     
 	  
 	  int myX, myY, col;

 	  Bacteria() {
 	  	myX = width/2;
 	  	myY = height/2;
 	  	col = color(random(100, 255),random(100, 255), random(100, 255));
 	  }


 	  void show() {
 	  	fill(col);
 	  	ellipse(myX, myY, 3, 3);


 	  }

 	  void move() {
 	  		myX += floor(random(-2, 3));
 	  		myY += floor(random(-2, 3));

 	  }


 }    