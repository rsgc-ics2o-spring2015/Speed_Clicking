// Global variables
float leftBoundary, rightBoundary, topBoundary, bottomBoundary;  // Boundaries of click targets
int clicks;      // Tracks how many clicks made in current game
int timeLeft = 5;  // Time left in current round

// Runs once
void setup() {
  
  // Make canvas
  size(500, 500);
  
  // Initialize boundaries of click target
  leftBoundary = width / 5;        // Width is 3/5 of the screen width
  rightBoundary = width / 5 * 4;
  topBoundary = height / 5 * 2;    // Height is 2/5 of screen height
  bottomBoundary = height / 5 * 4;
    
  // Text alignment – horizontally and vertically centred
  textAlign(CENTER, CENTER);
  
}

// Runs repeatedly to create animation
void draw() {
  
  // Paint background as grey
  background(200);

  // Shape fill is white
  fill(255);
  
  // Draw click target
  rect(leftBoundary, topBoundary, rightBoundary - leftBoundary, bottomBoundary - topBoundary);

  // Text fill is black, size is 32 points
  fill(0);
  textSize(32);
  
  // Report clicks
  text("Clicks: " + clicks, 0, 0, width, height / 5);

  // Update time left
  if (clicks > 0 && frameCount % 60 == 0 && timeLeft > 0) {
    timeLeft = timeLeft - 1;
  }

  // Report time left in round
  text("Time left in round: " + timeLeft, 0, 0, width, height / 5 * 2);
}

// Responds to mouse clicks
void mousePressed() {
  
  // Verify that click was inside boundaries of target
  if (mouseX > leftBoundary && mouseX < rightBoundary && mouseY > topBoundary && mouseY < bottomBoundary && timeLeft > 0) {
     clicks = clicks + 1;   
  }
  
}
