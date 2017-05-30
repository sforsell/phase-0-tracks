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
          - ELSE return false
        - ELSE
          - return false
output: boolean
*/

function keyValueMatch(object1, object2) {
  for(var key = 0; Object.keys(object1).length > key; key++){
    if (Object.keys(object1)[key] === Object.keys(object2)[key]) {
      if (object1[key] === object2[key]) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}

person1 = {name: "Steven", age: 54};
person2 = {name: "Tamir", age: 54};
animal1 = {animal: "Dog", legs: 4};
animal2 = {animal: "Dog", legs: 3};
animal3 = {animal: "Bird", legs: 2};

console.log(keyValueMatch(person1, person2)); //returns true
console.log(keyValueMatch(animal1, animal2)); //returns true
console.log(keyValueMatch(person1, animal2)); //returns false
console.log(keyValueMatch(animal1, animal3)); //returns true, but should return false.
//keyValueMatch only checks if the keys are matching, not their respective value...




var numbers = ["1", "fourteen", "seven", "five"];
var phrases = ["hello", "I", "like", "cheese"];

console.log(longestPhrase(numbers));
console.log(longestPhrase(phrases));



