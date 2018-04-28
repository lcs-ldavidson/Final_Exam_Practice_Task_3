//: # Exam Prep 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![undertones-no-grid](undertones-no-grid.png "Undertones")
 ![undertones-with-grid](undertones-with-grid.png "Undertones")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let lightGrey = Color(hue: 84, saturation: 6, brightness: 88, alpha: 100)
let deepRed = Color(hue: 7, saturation: 97, brightness: 72, alpha: 100)

// Begin your solution here...

//background rectangle
canvas.fillColor = lightGrey
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)

canvas.textColor = deepRed

var subTextYPosition = 505

canvas.drawText(message: """
straight music presents
the undertones

with special guests
the chords
""", size: 11, x: 15, y: subTextYPosition, kerning: -0.25)


//set origin
canvas.translate(byX: 14, byY: 390)

//write undertone

for toneAlpha in stride(from: 100, to: 0, by: -5) {
    
    canvas.textColor = Color.init(hue: 0, saturation: 0, brightness: 0, alpha: toneAlpha)
    
    canvas.drawText(message: "undertones", size: 70, x: 0, y: -30, kerning: 0)
    
    canvas.rotate(by: -4.736842105263158)
    
}



canvas.translate(byX: -14, byY: -390)














/*:
 **Remember to commit and push your work,please**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
