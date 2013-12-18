Controller
==========

A keyboard controller for Processing that handles left and right movement that reliably handles cases where both the left and right keys are being used at the same time.

## Reference

| Direction | Key |
| --------- | --- |
| Left | `a` or `A` |
| Right | `d` or `D` |

| Function Name | Return value |
| ------------- | ------------ |
| `handleKeyPress();` | nothing |
| `handleKeyReleased();` | nothing |
| `isGoingLeft();` | boolean |
| `isGoingRight();` | boolean |

##Setup:

Create an instance of Controller.  
`Controller gameController = new Controller();`

Place corresponding Controller functions within `keyPressed()` and `keyReleased()`.

```
void keyPressed() {
	gameController.handleKeyPress();
}
void keyReleased() {
	gameController.handleKeyReleased();
}
```

In your `draw()` function you can continually check which direction the controller is going in with `gameController.isGoingLeft()` and `gameController.isGoingRight()`.
