void updateBallVelocity() {
  ballVx += accball;
  // Add control for movement keys here
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePosition() {
  if (left_down){
  leftPaddle += 2;
  }
  if (right_down){
  rightPaddle += 2;
  }
  if (left_up){
  leftPaddle += -2;
  }
  if (right_up){
  rightPaddle += -2;
  }
  if (leftPaddle>height-90){
 leftPaddle = height-90; 
  }
  if (rightPaddle>height-90){
  rightPaddle = height-90; 
  }
  if (leftPaddle<=90){
 leftPaddle += 2; 
  }
  if (rightPaddle<=90){
  rightPaddle += 2; 
  }
}


void resolveCollisions() {
// Resolving Collisions with floor (bottom wall).
  if (ballY > height-ballRadius){
  ballY = height-ballRadius;
  ballVy *= -1;
  }
  if (ballX > width-ballRadius){
  ballX = width-ballRadius;
  ballVx *= -1;
    }
if (ballY < ballRadius){
ballY = ballRadius;
ballVy *= -1;
}
if (ballX < ballRadius){
ballX = ballRadius;
ballVx *= -1;
}
}

void ballCollisions(){
  if((ballX<(ballRadius+paddleWidth))&&((ballY>leftPaddle)&&(ballY==(leftPaddle+paddleLength/2)))){
    ballX=ballRadius+paddleWidth;
    ballVx=-ballVx;
    ballVy= BALL_VELOCITY + ((paddleLength/2)/ballVy);
    }
  if((ballX>(displayWidth-(ballRadius+paddleWidth)))&&((ballY>rightPaddle)&&(ballY==(rightPaddle+paddleLength/2)))){
    ballX=(displayWidth-paddleWidth)-ballRadius;
    ballVx=-ballVx;
    ballVy= BALL_VELOCITY + ((paddleLength/2)/ballVy); 
}
}


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  