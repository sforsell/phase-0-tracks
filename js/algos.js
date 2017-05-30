/*
------- Release 0: find the longest phrase -------

input: an array
  steps:
    - make function with one parameter: the array
    - put the first item of array in a new variable
    - loop over each item in array
      - comparing it to the item in new variable
        - IF item in array is longer/bigger then item in variable
          - over-write variable with longer item
    - return the variable
output: a string (item from the array)
*/

function longestPhrase(array) {
  var longestString = array[0];
  //start loop at 1 because we already have index 0 in our variable
  for(var index = 1; array.length > index; index++){
    if (longestString.length < array[index].length) {
      longestString = array[index];
    }
  }
  return longestString;
}

var numbers = ["1", "fourteen", "seven", "five"];
var phrases = ["hello", "I", "like", "cheese"];

console.log(longestPhrase(numbers));
console.log(longestPhrase(phrases));