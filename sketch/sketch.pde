import javafx.geometry.BoundingBox;
//adds images 
PImage img, img2, img3, img4, img5, img6;


void setup() {
 size(1280, 800); 
 
img = loadImage("img/patternbackground.png");
img2 = loadImage("img/starplate.png");
img3 = loadImage("img/starshieldplate.png");
img4 = loadImage("img/starspikeplate.png");
img5 = loadImage("img/starsponge.png");
img6 = loadImage("img/starsteelwool.png");
}

int x = 200; //X axis movement
int y = 400; //Y axis movement
int speed = 20; //Movement speed

BoundingBox Bodybounds;
BoundingBox rock1, rock2, rock3, rock4, rock5;
BoundingBox image2, image3, image4, image5, image6;
void draw(){
  background (123, 210, 196); //Background color
   
    fill(255, 255, 255);
   

   //makes the images of enemies and adds a collider to all of them
  image(img, 0,0 );//second background
   image(img2, 1050,350 );
   image2 =new BoundingBox((double)1050, (double)350, (double)189, (double)202);
   
  
   
    ellipse(500, 300, 50, 30);
   rock1 = new BoundingBox((double)550, (double)330, (double)50, (double)30);
    ellipse(700, 400, 50, 30);
    rock2 = new BoundingBox((double)750, (double)430, (double)50, (double)30);
      ellipse(600, 500, 50, 30);
   rock3 = new BoundingBox((double)650, (double)530, (double)50, (double)30);
        ellipse(700, 600, 50, 30);
        rock4 = new BoundingBox((double)750, (double)630, (double)50, (double)30);
          ellipse(600, 700, 50, 30);
           rock5 = new BoundingBox((double)650, (double)730, (double)50, (double)30);
          //150-350,200-450
          
          
          
    Bodybounds = new BoundingBox((double)x-60, (double)y-200, (double)185, (double)190);    
    
    image(img3, 570,0 );
     image3 = new BoundingBox((double)570, (double)0, (double)222, (double)218);
  
     image(img4, 1050,0 );
      image4 = new BoundingBox((double)1050, (double)0, (double)222, (double)312);

      image(img5, 0,570 );
       image5 = new BoundingBox((double)0, (double)570, (double)170, (double)246);

       image(img6, 820,200 );
        image6 = new BoundingBox((double)820, (double)200, (double)198, (double)148);



          
    
  
  int a =0;
    int b =0;
      int c =0;   
        
  int d =0;
    int e =0;
      int f =0;
  
   int g =0;
    int h =0;
      int j =0;   
        
  int k =0;
    int l =0;
      int m =0;
  //Square background loop
  for(int i = 0; i<=1280; i++){
  square(a,b,c);
  
    square(d,e,f);
    
    fill(123, 210, 196);
  a+=10;
  b+=20;
  c+=10;
  d+=5;
  e+=5;
  f+=5;
  }
  //boundaries on the rocks
  fill(123, 72, 48);

  
  
  fill(191, 146, 61); //color for shoes
  ellipse(x - 50, y, 100, 50); //left shoe
  fill(191, 146, 61);
  ellipse(x + 50, y, 100, 50); //right shoe
  fill(247, 30, 30);//Body color
  triangle(x + 98, y - 170, x, y, x - 97, y - 170); //body
 
  
  fill(255, 229, 179);//Head color
  ellipse(x, y- 200, 200, 200); //head
  
  
  fill(0,0,0);//Eye color
  ellipse(x - 40, y-200, 50, 50); //left eye
  fill(0,0,0);
  ellipse(x + 40, y-200, 50, 50); //right eye
  
  
  if (keyPressed) {
    if (key == 's'|| key == 'S') {
      
          //activates patterned background
        image(img, 0,0 );
   image(img2, 1050,350 );
    image(img3, 570,0 );
     image(img4, 1050,0 );
      image(img5, 0,570 );
       image(img6, 820,200 );
      //need to disable squared background
      fill(123, 72, 48);
  ellipse(500, 300, 50, 30);
    ellipse(700, 400, 50, 30);
      ellipse(600, 500, 50, 30);
        ellipse(700, 600, 50, 30);
          ellipse(600, 700, 50, 30);
  
  
  fill(191, 146, 61); //color for shoes
  ellipse(x - 50, y, 100, 50); //left shoe
  fill(191, 146, 61);
  ellipse(x + 50, y, 100, 50); //right shoe
  fill(247, 30, 30);//Body color
  triangle(x + 98, y - 170, x, y, x - 97, y - 170); //body
  
  fill(255, 229, 179);//Head color
  ellipse(x, y- 200, 200, 200); //head
  
  fill(0,0,0);//Eye color
  ellipse(x - 40, y-200, 50, 50); //left eye
  fill(0,0,0);
  ellipse(x + 40, y-200, 50, 50); //right eye
  

    }
  } else if (key == 'f'|| key == 'F'){
    
       //activates patterned background
        background (255, 255, 255);
   image(img2, 1050,350 );
    image(img3, 570,0 );
     image(img4, 1050,0 );
      image(img5, 0,570 );
       image(img6, 820,200 );
      //need to disable squared background
      
        for(int z = 0; z<=1280; z++){
  square(g,h,j);
  
    square(k,l,m);
    
    fill(123, 210, 196);
  g+=10;
  h+=20;
  j+=10;
  k+=5;
  l+=5;
  m+=5;

  }
      
      fill(123, 72, 48);
  ellipse(500, 300, 50, 30);
    ellipse(700, 400, 50, 30);
      ellipse(600, 500, 50, 30);
        ellipse(700, 600, 50, 30);
          ellipse(600, 700, 50, 30);
  
  
  fill(191, 146, 61); //color for shoes
  ellipse(x - 50, y, 100, 50); //left shoe
  fill(191, 146, 61);
  ellipse(x + 50, y, 100, 50); //right shoe
  fill(247, 30, 30);//Body color
  triangle(x + 98, y - 170, x, y, x - 97, y - 170); //body
  
  fill(255, 229, 179);//Head color
  ellipse(x, y- 200, 200, 200); //head
  
  
  fill(0,0,0);//Eye color
  ellipse(x - 40, y-200, 50, 50); //left eye
  fill(0,0,0);
  ellipse(x + 40, y-200, 50, 50); //right eye
  

  }
  
  else{
    
  }
  
}




void keyPressed()//Movement for the creature

{
    boolean upTouch = false;
boolean downTouch = false;
boolean rightTouch = false;
boolean leftTouch = false;
    if (key == CODED){
      

      
      if(Bodybounds.intersects(rock1) && keyCode == RIGHT){
        rightTouch = true;
      }
      else if(Bodybounds.intersects(rock1) && keyCode == LEFT)
      {
        leftTouch = true;
      }
      if(Bodybounds.intersects(rock1) && keyCode == DOWN){
       downTouch = true;
      }
      else if(Bodybounds.intersects(rock1) && keyCode == UP)
      {
        upTouch = true;
      }
    
      
      
      if(Bodybounds.intersects(rock2) && keyCode == RIGHT){
        rightTouch = true;
      }
      else if(Bodybounds.intersects(rock2) && keyCode == LEFT)
      {
        leftTouch = true;
      }
      if(Bodybounds.intersects(rock2) && keyCode == DOWN){
       downTouch = true;
      }
      else if(Bodybounds.intersects(rock2) && keyCode == UP)
      {
        upTouch = true;
      }  
    

      if(Bodybounds.intersects(rock3) && keyCode == RIGHT){
        rightTouch = true;
      }
      else if(Bodybounds.intersects(rock3) && keyCode == LEFT)
      {
        leftTouch = true;
      }
      if(Bodybounds.intersects(rock3) && keyCode == DOWN){
       downTouch = true;
      }
      else if(Bodybounds.intersects(rock3) && keyCode == UP)
      {
        upTouch = true;
      }
      
      if(Bodybounds.intersects(rock4) && keyCode == RIGHT){
        rightTouch = true;
      }
      else if(Bodybounds.intersects(rock4) && keyCode == LEFT)
      {
        leftTouch = true;
      }
      if(Bodybounds.intersects(rock4) && keyCode == DOWN){
       downTouch = true;
      }
      else if(Bodybounds.intersects(rock4) && keyCode == UP)
      {
        upTouch = true;
      }
  
      if(Bodybounds.intersects(rock5) && keyCode == RIGHT){
        rightTouch = true;
      }
      else if(Bodybounds.intersects(rock5) && keyCode == LEFT)
      {
        leftTouch = true;
      }
      if(Bodybounds.intersects(rock5) && keyCode == DOWN){
       downTouch = true;
      }
      else if(Bodybounds.intersects(rock5) && keyCode == UP)
      {
        upTouch = true;
      }

      if(Bodybounds.intersects(image2) && keyCode == RIGHT){
        rightTouch = true;
      }
      else if(Bodybounds.intersects(image2) && keyCode == LEFT)
      {
        leftTouch = true;
      }
      if(Bodybounds.intersects(image2) && keyCode == DOWN){
       downTouch = true;
      }
      else if(Bodybounds.intersects(image2) && keyCode == UP)
      {
        upTouch = true;
      }  
      
      if(Bodybounds.intersects(image3) && keyCode == RIGHT){
        rightTouch = true;
      }
      else if(Bodybounds.intersects(image3) && keyCode == LEFT)
      {
        leftTouch = true;
      }
      if(Bodybounds.intersects(image3) && keyCode == DOWN){
       downTouch = true;
      }
      else if(Bodybounds.intersects(image3) && keyCode == UP)
      {
        upTouch = true;
      }
            
      if(Bodybounds.intersects(image4) && keyCode == RIGHT){
        rightTouch = true;
      }
      else if(Bodybounds.intersects(image4) && keyCode == LEFT)
      {
        leftTouch = true;
      }
      if(Bodybounds.intersects(image4) && keyCode == DOWN){
       downTouch = true;
      }
      else if(Bodybounds.intersects(image4) && keyCode == UP)
      {
        upTouch = true;
      }
 
       if(Bodybounds.intersects(image5) && keyCode == RIGHT){
        rightTouch = true;
      }
      else if(Bodybounds.intersects(image5) && keyCode == LEFT)
      {
        leftTouch = true;
      }
      if(Bodybounds.intersects(image5) && keyCode == DOWN){
       downTouch = true;
      }
      else if(Bodybounds.intersects(image5) && keyCode == UP)
      {
        upTouch = true;
      }
      
//
      if(Bodybounds.intersects(image6) && keyCode == RIGHT){
        rightTouch = true;
      }
      else if(Bodybounds.intersects(image6) && keyCode == LEFT)
      {
        leftTouch = true;
      }
      if(Bodybounds.intersects(image6) && keyCode == DOWN){
       downTouch = true;
      }
      else if(Bodybounds.intersects(image6) && keyCode == UP)
      {
        upTouch = true;
      }
      
      
       /*Normal Movement*/ 
      if(keyCode == UP && upTouch == false)
      {
       y -= speed;  
      }
      else if(keyCode == DOWN && downTouch == false)
      {
         y += speed;  
      }
      else if(keyCode == RIGHT && rightTouch == false)
      {
            x += speed;  
      }
      else if(keyCode == LEFT && leftTouch == false)
      {
            x -= speed;  
      }
      
      

      /*React to collision*/
       if(upTouch == true)
      {
        y += 100;
              upTouch = false;

      }
      if(downTouch == true)
      {
        y -= 100;
        downTouch = false;


      }
      if(rightTouch == true)
      {
           x -= 100;
                 rightTouch = false;

 
      }
      if(leftTouch == true)
      {
            x += 100; 
                  leftTouch = false;

      }
     
    
    }
}

 
