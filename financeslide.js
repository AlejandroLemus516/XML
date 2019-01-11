<!-- -->
var image1=new Image()
image1.src="finance.png"
var image2=new Image()
image2.src="greekfood3.png"


<!-- -->
var step = 1
function slideit(){
document.images.slide.src=eval("image"+step+".src")
if(step < 2)
step++
else
step = 1
setTimeout("slideit()",2500)

}
slideit()
<!-- -->
