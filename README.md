## Simple Demo App

### Splash Page 
contains a cancel button that will exit the app. Another button will take to the Main Menu Page

### Main Menu Page 
Reads an xml file from qrc (this could easily be http) and build a swipeable grid view of buttons from the 
xml model. 
There is button back to the splash page. Each item in the grid view is a button that will pull up a keyboard

### KeyboardPage
Text box is prepopulated with the name of the button that led the user to the keyboard. User can then update this
text. When they hit Enter, the current text is sent to the console log.

## Task
fork this project in github, make changes necessary and raise a pull request.

1. Add left and right arrows on the main screen to add additional nav to the grid view. Swipeability should
be maintained, but the arrows will also allow the user to move left and right through the buttons (for example 
if no touch screen was available).

2. Can the current keyboard implementation be improved?

3. Best practices. Are there best practices and refactoring you would apply to this base code?
