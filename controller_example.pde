float x = 512;
float w = 50;
Controller gameController = new Controller();

void setup() {
	smooth();
	frameRate(60);
	size(1024, 768);
}

void draw() {

	// Manage key presses with the Controller class
	if(keyPressed) {
		gameController.handleKeyPress();
	}

	// Move the box left or right based on info from the Controller class
	if(gameController.isGoingLeft()) {
		x -= 3;
		// Make sure it doesn't go off the screen
		if (x < 0) {
			x = 0;
		}
	}
	else if(gameController.isGoingRight()) {
		x += 3;
		// Make sure it doesn't go off the screen
		if (x + w > width) {
			x = width - w;
		}
	}

	// Draw stuff
	drawBackground();
	drawGround();
	drawGuy();

}

// Manage key releases with the Controller class

void keyReleased() {
	gameController.handleKeyReleased();
}

// Drawing functions

void drawBackground() {
	background(255);
}

void drawGround() {
	noStroke();
	fill(100);
	rect(0, height - 200, width, 200);
	fill(90);
	rect(0, height - 200, width, 3);
}

void drawGuy() {
	noStroke();
	fill(0);
	rect(x, height - w - 200, w, w);
}
