window.onload = test;

function test() {

var el = document.createElement("H1");
var t = document.createTextNode("Sarah & Sofia's test site");
el.appendChild(t);
// document.body.appendChild(el);
document.body.insertBefore(el, document.body.firstChild);
}

function changeImg() {
document.getElementById("cat").src = "http://www.funchap.com/wp-content/uploads/2014/05/help-dog-picture.jpg" ;

}