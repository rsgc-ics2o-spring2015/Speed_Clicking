// Global variables
float leftBoundary, rightBoundary, topBoundary, bottomBoundary;  // Boundaries of click targets

// Runs once
void setup() {
  
  // Make canvas
  size(500, 500);
  
  // Initialize boundaries of click target
  leftBoundary = width / 5;        // Width is 3/5 of the screen width
  rightBoundary = width / 5 * 4;
  topBoundary = height / 5 * 2;    // Height is 2/5 of screen height
  bottomBoundary = height / 5 * 4;
  
  // Shape fill is white
  fill(255);
    
}

// Runs repeatedly to create animation
void draw() {
  
  // Paint background as grey
  background(200);
  
  // Draw click target
  rect(leftBoundary, topBoundary, rightBoundary - leftBoundary, bottomBoundary - topBoundary);
  
}
