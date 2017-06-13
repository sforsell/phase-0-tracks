/* need this in html head
<script src="https://code.jquery.com/jquery-1.12.4.js"> 
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"> 
*/

$( "#button" ).on( "click", function() {
      $( "#effect" ).toggle( "fade", 500 );
    });

 // Toggle effects: blind, bounce, clip, drop, explode, fade, 
 // fold, highlight, puff, pulsate, scale, shake, size, slide
 // if you don't want to bring element back and forth there's 
 // also hide and show. 


$( "#button2" ).on( "click", function() {
   $( "#otherEffect" ).animate({
          backgroundColor: "#aa0000",
          color: "#fff",
          width: 500
        }, 1000 );

});

$( "#draggable" ).draggable();

// draggable has a bunch of extras, like clone, opacity, snap, 
// zindex, distance and more. 

$("#sortable").sortable();

// sortable also has a ton of extra options, methods and events. 

/*
.uniqueId()

.uniqueId() will check if the element has an id, and if not, 
it will generate one and set it on the element. It is safe to call .uniqueId() 
on an element without checking if it already has an id. 
If/when the widget needs to clean up after itself, the .removeUniqueId() 
method will remove the id from the element if it was added by .uniqueId() and 
leave the id alone if it was not. .removeUniqueId() is able to be smart about 
this because the generated ids have a prefix of "ui-id-".
*/

$( "#tabs" ).tabs();

$( "#grow" ).hover(function() {
  $("#grow").css("width", "200");
  $("#grow").css("height", "200");
});


$( "#button3" ).on( "click", function() {
  $("body").append("<p> Piling on... </p>")
});