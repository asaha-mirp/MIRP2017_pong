void setup() {
  size(displayWidth, displayHeight);
  ballX= height/2;
  ballY=width/2;
  ballVx = BALL_VELOCITY;
  ballVy = 0.0;
  fill (255);
 // rectMode(CENTER);
  //rect (height/2, width/2, 10, height); 
  //frameRate(10);
  }

void draw() {
  background (bgColor);
  drawPaddles();
  drawGameScreen();
  drawBall();
   updateBallVelocity();
 updateBallPosition();
resolveCollisions();
updatePaddlePosition();
ballCollisions();

}

void drawGameScreen() {
 fill (255);
  rectMode(CENTER);
  rect (height/2, width/2, 10, height); 
  // Draw background
  // Update Ball Velocity and Resolve Collisions
  // Update Ball and Paddle Positions
  // Draw Ball and Paddles
  // Display Scores
}

void drawBall() {
 fill (ballColor);
 ellipse (ballX, ballY, ballRadius, ballRadius);
  // Display Ball in correct position
}

void drawPaddles() {
  fill(paddleColor);
  rectMode(CENTER);
  rect(10, leftPaddle,  paddleWidth, paddleLength, 7);
  fill(paddleColor);
  rectMode(CENTER); 
 rect(width-10, rightPaddle,  paddleWidth, paddleLength, 7);
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
}