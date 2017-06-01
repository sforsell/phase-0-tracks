// RELEASE 0, #3
var arrayOfColors = ['red', 'blue', 'green', 'yellow'];

var arrayOfNames = ['Joe', 'Bonnie', 'Steph', 'Paris'];


// RELEASE 0, #4
arrayOfNames.push("Harry");
arrayOfColors.push("lime green");

// Release 1,
// assign colors to corresponding horse names
// Possibly a loop?
// if names array length is equal to colors array length iterate through them

horses = {};
if (arrayOfNames.length === arrayOfColors.length) {
  for(var i = 0; i < arrayOfNames.length; i++) {
    horses[arrayOfNames[i]] = arrayOfColors[i];
  }
}

// DRIVER CODE
console.log(arrayOfColors);
console.log(arrayOfNames);
console.log(horses);


// ******RELEASE 2


function Car(make, color, year) {
 this.make = make;
 this.color = color;
 this.year = year;
// function within function
 this.rev = function() {console.log('VROOOOOOOOOOOOOOOOM!');};
}

// DRIVER CODE

var sportsCar = new Car('Corvette', 'BRIGHT YELLOW', 1988);
var familyCar = new Car('Volvo', 'beige', 2001);
var luxuryCar = new Car('Rolls Royce', 'Black', 2018);

console.log(familyCar, luxuryCar, sportsCar);
sportsCar.rev();
console.log(Object.keys(familyCar))
console.log(Object.keys(familyCar)[1])
console.log(familyCar[Object.keys(familyCar)[1]])
console.log(familyCar[Object.keys(familyCar).slice(3)])