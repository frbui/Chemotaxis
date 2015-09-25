 Walker [] blah; //declare bacteria variables here   
 void setup()   
 {     
 	size(500,500);
 	blah = new Walker[8];
 	for (int a = 0 ; a < blah.length; a++)
 	{ 
 	blah[a] = new Walker();          //initialize bacteria variables here 
 	}  
 }   
 void draw()   
 {    
 	background(102,178,255);
 	for (int a = 0 ; a < blah.length; a++)
 	{
  	blah[a].walk();
  	blah[a].show();					//move and show the bacteria  
  	} 
  	
 }  
 void mousepressed()
 {
 	redraw();
 }
 class Walker   
 {     
 	int myX, myY, colour1, colour2, colour3;
 	Walker()
 	{
 		myX = 250;
 		myY = 250;
 		colour1 = (int)(Math.random()*255);
 		colour2 = (int)(Math.random()*255);
 		colour3 = (int)(Math.random()*255);
 		
 	}
 	void walk()
 	{
		myX = myX + (int)(Math.random()*3) - 1;
 		myY = myY + (int)(Math.random()*3) - 1;
 	}
 	void show()
 	{
		fill(colour1,colour2,colour3);
 		ellipse(myX, myY, 20,20);
 		ellipse(myX, 100, 20,20);
 		ellipse(100, myY, 20,20);
 		ellipse(myX, 400, 20,20);
 		ellipse(400, myY, 20,20);
 	}

 }  
