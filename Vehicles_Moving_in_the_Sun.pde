
void setup()
{
// Set the size of the window to be 400x400, since I'm using a 400x400 pixel canvas
size(400, 400);
}

void draw()
{
  /* Note where I'm drawing the vehicles and objects isn't going to be exactly where the coordinates are in my final sketch
  because that was my first time sketching objects on the pixel graph and I didn't know where to exactly place the objects */
  
  // I want the sky to be blue (I used a color code of sky blue and convert it to an rgb value)
background(135, 206, 235);

noStroke(); // Makes the sun look realistic without a stroke
fill(250, 250, 0, 255); // Make the sun yellow
ellipse(370, 30, 25, 25); // Draw the sun using the ellipse

triangle(365, 13, 370, 8, 375, 13); // Triangle at the top of the sun
triangle(348, 29, 353, 25, 353, 33); // Triangle at the left of the sun's location
triangle(385, 25, 385, 33, 390, 29); // Triangle at the right of the sun's location
triangle(365, 45, 370, 50, 375, 45); // Triangle at the bottom of the sun
triangle(355, 47, 360, 45, 355, 40); // Triangle at the bottom left of the sun's location
triangle(385, 47, 380, 45, 385, 40); // Triangle at the bottom right of the sun's location
triangle(353, 13, 354, 19, 359, 14); // Triangle at the top left of the sun's location
triangle(380, 15, 384, 19, 387, 14); // Triangle at the top right of the sun's location

// Create a rectangle to make up the first car (Don't need to use a stroke yet but this will be useful when you press the mouse)
noStroke();
fill(0, 0, 200); // Make the first car blue
rect(mouseX + 60, 180, 80, 20); // Move mouse along the horizontal axis of the first car

noStroke();
fill(0); // Make the tires black for the first car
ellipse(mouseX + 80, 200, 15, 15); // Draw and move the first tire using your mouse along the x-axis
ellipse(mouseX + 120, 200, 15, 15); // Draw and move the second tire using your mouse along the x-axis

noStroke();
fill(255); // Make the car door handler white for the first car
rect(mouseX + 100, 185, 10, 5);

noStroke();
fill(180); // Make the first car window(right window) grey
triangle(mouseX + 115, 180, mouseX + 115, 154, mouseX + 130, 180);

noStroke();
fill(0, 0, 200, 63); // Make the side windows blue to reflect the first car's color but with a low opacity to show some reflection
rect(mouseX + 85, 153, 30, 27);

noStroke();
fill(180); // Make the second window (left window) of the first car also be light grey
triangle(mouseX + 85, 180, mouseX + 85, 154, mouseX + 70, 180);

// Create a rectangle to make up the second car (Don't need to use a stroke yet but this will be useful when you press the mouse)
noStroke();
fill(200, 0, 0); // Make the second car red
rect(260 - mouseX, 180, 80, 20);

// Make the tires black for the second car as well
noStroke();
fill(0);
ellipse(320 - mouseX, 200, 15, 15); // Right tire in the second car
ellipse(280 - mouseX, 200, 15, 15); // Left tire in the second car

// Make the car door handle white for the second car
noStroke();
fill(255);
rect(290 - mouseX, 185, 10, 5);

noStroke();
fill(180); // Make the left window of the second car grey
triangle(285 - mouseX, 180, 285 - mouseX, 154, 270 - mouseX, 180); // Draw the left window of the second car

// Make the middle window of the second car color red with 63.5% opacity (reason I didn't do 25% opacity is because the window will be slightly blue)
noStroke();
fill(200, 0, 0, 163);
rect(285 - mouseX, 153, 30, 27); // Draw the middle window for the second car as a rectangle

noStroke(); 
fill(180); // Make the right window of the second car grey
triangle(315 - mouseX, 180, 315 - mouseX, 154, 330 - mouseX, 180); // Right window of the second car

/* I was planning to include collision where if you hit the second car while moving the first car, both cars cannot pass by one another and they will stop moving automatically
but because I only have to work with chapters 1-3, I can only create primitive shapes, as well as mouse and key movements and/or events */

// It's time to draw an airplane in this scene
// First I am going to create an ellipse to make a plane and make the color to be green
stroke(0);
fill(0, 200, 0, 255);
ellipse(mouseX + 45, 20, 30, 15);

// I know the triangles at the back of the plane makes it look like a fish, but it's an airplane
triangle(mouseX + 20, 30, mouseX + 20, 10, mouseX + 30, 20); // Draw the back of the plane (I'm using a triangle to demonstrate)
rect(mouseX + 43, 24, 5, 15); // Draw the rectangle at the middle of the airplane
rect(mouseX + 23, 23, 3, 12); // Draw the rectangle at the back of the airplane but in the middle of the triangle also found at the back of the airplane

// Create black windows in the airplane
fill(0);
rect(mouseX + 50, 14, 5, 3); // Notice only the x coordinates and the width are different but the y coords and height are the same to make the windows look realistic to a real life airplane
rect(mouseX + 43, 14, 4, 3);
rect(mouseX + 37, 14, 3, 3);
}

// Press the mouse pad or your actual mouse and watch the colors/opacity change as you press with your mouse each time
void mousePressed()
{
  // Change the blue color a bit to make it look like the shadows has reflected on the first car
stroke(0);
fill(0, 0, 100); // Make the first car blue
rect(mouseX + 60, 180, 80, 20); // Move mouse of the first car

noStroke(); // Tires don't really need a stroke because it's already black anyway
fill(0); // The tires are the only property of a car that won't be modified once the mouse is pressed (applies to the second car as well)
ellipse(mouseX + 80,200,15,15);
ellipse(mouseX + 120,200,15,15);

fill(155); // Make the car door handler for the first car grey once the mouse is pressed
rect(mouseX + 100, 185, 10, 5);

stroke(0); // I put the stroke at 0 once the mouse is pressed to give the windows a feel like it's inside the shadow
fill(200); // Make the right window of the second car to be less gray than its original color
triangle(mouseX + 115, 180, mouseX + 115, 154, mouseX + 130, 180);

stroke(0); // Included to reflect shadows
fill(0, 0, 100); // Make the side windows blue to reflect the car's color
rect(mouseX + 85, 153, 30, 27);

stroke(0); // Included to reflect shadows
fill(200); // Make the left window of the second car to be less gray than its original color
triangle(mouseX + 85, 180, mouseX + 85, 154, mouseX + 70, 180);

// Change the red color a bit to make it look like the shadows has reflected on the second car
stroke(0);
fill(100, 0, 0);
rect(260 - mouseX, 180, 80, 20);

// Make the tires black for the second car as well
noStroke();
fill(0);
ellipse(320 - mouseX, 200, 15, 15);
ellipse(280 - mouseX, 200, 15, 15);

// Make the car door handle grey for the second car once the mouse has been pressed
fill(155);
rect(290 - mouseX, 185, 10, 5);

// Left window of the second car
stroke(0); // Included to reflect shadows
fill(180);
triangle(285 - mouseX, 180, 285 - mouseX, 154, 270 - mouseX, 180);

// Middle window of the second car
stroke(0); // Included to reflect shadows
fill(100, 0, 0);
rect(285 - mouseX, 153, 30, 27);

// Right window of the second car
stroke(0); // Included to reflect shadows
fill(180);
triangle(315 - mouseX, 180, 315 - mouseX, 154, 330 - mouseX, 180);

// Difference between print() and println() is that print() doesn't format to a new line like println() does, it formats to a new line automatically
println("Both cars' colors has become slightly darker to reflect the shadows!");

// I'm changing the airplane's color to be a bit darker green and opacity from 100% to 25%
stroke(0);
fill(0, 100, 0, 63);
ellipse(mouseX + 45, 20, 30, 15);

// Triangles found at the back of the airplane
triangle(mouseX + 20, 30, mouseX + 20, 10, mouseX + 30, 20); // Draw the back of the plane
rect(mouseX + 43, 24, 5, 15); // Draw the rectangle at the middle of the airplane
rect(mouseX + 23, 23, 3, 12); // Draw the rectangle at the middle of the triangle that is found at the back of the airplane

// The black windows will be modified to a grey color to give it a feeling that people are in the airplane
fill(155);
rect(mouseX + 50, 14, 5, 3);
rect(mouseX + 43, 14, 4, 3);
rect(mouseX + 37, 14, 3, 3);

println("The airplane color has become slightly darker to reflect the shadows! Its opacity is also changed from 100% to 25%!");
println("The airplane windows became grey, people are inside the airplane!");
}

// Press any key on your keyboard (includes numeric keys so don't worry if you have a gaming computer or laptop with numeric keys)
void keyPressed()
{
  // Change the opacity of the sun here

noStroke(); // I don't need a stroke for the sun
fill(250, 250, 0, 63); // Modify the opacity of the sun to 25%
ellipse(370, 30, 25, 25);

triangle(365, 13, 370, 8, 375, 13); // Triangle at the top of the sun
triangle(348, 29, 353, 25, 353, 33); // Triangle at the left of the sun's location
triangle(385, 25, 385, 33, 390, 29); // Triangle at the right of the sun's location
triangle(365, 45, 370, 50, 375, 45); // Triangle at the bottom of the sun
triangle(355, 47, 360, 45, 355, 40); // Triangle at the bottom left of the sun's location
triangle(385, 47, 380, 45, 385, 40); // Triangle at the bottom right of the sun's location
triangle(355, 19, 352, 13, 360, 15); // Triangle at the top left of the sun's location
triangle(380, 16, 384, 20, 388, 14); // Triangle at the top right of the sun's location

println("The sun's opacity changed from 100% to 25%!");
}
