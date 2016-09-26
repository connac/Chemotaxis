Bacteria [] bob;

 //declare bacteria variables here   
 void setup()   
 {   
 	noStroke();
 	size(500, 500);  
 	background(0);
 	bob = new Bacteria[50];
 	for(int i = 0; i<bob.length; i = i + 1){
 		bob[i] = new Bacteria();
 	}
 }   
 void draw()   
 {	
 	fill(0,0,0,10);
 	rect(-1,-1,501,501);
 	for(int c = 0; c<bob.length; c = c + 1){
 	 bob[c].show();
 	 bob[c].move();
 	}
 	//move and show the bacteria   
 }  



 class Bacteria    
 {     
 	int myColor;
 	int x, y;
 	Bacteria(){
 		myColor=color(4,255,0);
 		x=250;
 		y=250;
 	}
 	void move(){
 		x=x+(int)(Math.random()*11)-5;
 		y=y+(int)(Math.random()*11)-5;


 	}
 	void show(){
 		stroke(myColor);
 		fill(myColor);
 		ellipse(x ,y, 10 ,10);

 	}
 	//lots of java!   
 }    