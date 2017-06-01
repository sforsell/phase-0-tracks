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

/*
------- Release 2: generate random test data -------
input: an integer
  steps:
    - make an empty array to store the strings.
    - make a function with one parameter: an integer
      - declare an array with all the letters of the alphabet in it.
      - Make a loop that runs as many times as the paramater says.
        - For each iteration make a word between 1-10 letters long.
          - for each letter of the word grab a random letter from alphabet array.
            take the random letters and make a string.
          - add the string to the array.
output: an array of strings

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

var stringCollection = [];

function randomStrings(number){
  var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  // makes "number" times of words
  for(i = 0; i < number; i++){
    var word = ""
    // sets word length to be between 1-10.
    for(index = 0; index < Math.ceil(Math.random()*10); index++){
      // adds a random character from alphabet to word.
      word = word.concat(alphabet[Math.floor(Math.random()*alphabet.length)]);
    }
    // adds word to string.
    stringCollection.push(word);
  }
  return stringCollection;
}



// ------- DRIVER CODE --------
var numbers = ["1", "fourteen", "seven", "five"];
var phrases = ["hello", "I", "like", "cheese"];

console.log(longestPhrase(numbers));
console.log(longestPhrase(phrases));

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


console.log(longestPhrase(randomStrings(5)));







