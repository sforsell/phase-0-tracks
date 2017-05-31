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

/*
------- Release 1: find key-value match -------

input: two objects
  steps:
    - make function with two parameters: objects
    - loop over the first objects keys and values
      - comparing them to the key value pair of second object
        - IF theres a match
          - IF the values at the keys are a match
            - return true
    - all others that haven't been "caught" in the loop returns false. 
output: boolean
*/

function keyValueMatch(object1, object2) {
  for(var i = 0; Object.keys(object1).length > i; i++){
    for(var index = 0; Object.keys(object2).length > index; index++) {
      // very long ugly code. Object.keys(object1)[i] gets the name of the key. object1[Object.keys(object1)[i]] gets the value at that key. 
      if (Object.keys(object1)[i] === Object.keys(object2)[index] && object1[Object.keys(object1)[i]] === object2[Object.keys(object2)[index]]) {
        return true;
      }
    }
  }
  return false;
}

steven = {name: "Steven", age: 54};
tamir = {name: "Tamir", age: 54};
dog1 = {animal: "Dog", legs: 4};
dog2 = {animal: "Dog", legs: 3};
bird = {animal: "Bird", legs: 2};
tRex = {animal: "T-Rex", fur: "none", legs: 2};


console.log(keyValueMatch(steven, tamir)); //returns true
console.log(keyValueMatch(dog1, dog2)); //returns true
console.log(keyValueMatch(steven, dog2)); //returns false
console.log(keyValueMatch(dog1, bird)); //returns false
console.log(keyValueMatch(tRex, bird)); //returns true




var numbers = ["1", "fourteen", "seven", "five"];
var phrases = ["hello", "I", "like", "cheese"];

console.log(longestPhrase(numbers));
console.log(longestPhrase(phrases));



