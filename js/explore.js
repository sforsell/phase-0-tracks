// Reverse function

// take a string and print the word out backwards. 
  // start at the end of the word and count backwards
  // to print each character. 

  // input: string
  // steps: iterate over string backwards
  // output: string. 

function reverse(string) {
  var reversed_string = ""
  for (var i = string.length-1; i > -1 ; i--) {
      reversed_string = reversed_string + string[i];
  }
  return reversed_string;
}

backwards = reverse("JavaScript");

if (backwards.length >= 5){
  console.log(backwards);
}
