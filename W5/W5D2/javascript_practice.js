function madLib(verb, adjective, noun) {
  console.log('We shall ' + verb.toUpperCase() + " the " + adjective.toUpperCase() + " " + noun.toUpperCase() + ".")
}

// madLib('make', 'best', 'guac');


function isSubstring(searchString, subString) {
  var length = subString.length
  for (let i = 0; i < searchString.length - length; i++) {
    if (searchString.substring(i, i+length) === subString) {
      return true;
    }
  }
  return false;
}


// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(array) {
  var new_array = []
  for (let i = 0; i < array.length; i++) {
    if (array[i] % 3 === 0 || array[i] % 5 === 0) {
      new_array.push(array[i]);
    }
  }

  return new_array;
}

// console.log(fizzBuzz([1,2,3,4,5,6,7,8,9]))

function isPrime(number) {
  for (let i = 2; i < number; i++) {
    if (number % i === 0 ) {
      return false;
    }
  }

  return true;
}

// console.log(isPrime(2))
// console.log(isPrime(10))
// console.log(isPrime(15485863))
// console.log(isPrime(3548563))


function sumOfNPrimes(n) {
  if (n===0) {
    return 0;
  }
  var sum_of_primes = 0
  var num_primes_summed = 0

  var num_being_considered = 2

  while (num_primes_summed < n) {
    if (isPrime(num_being_considered)) {
      sum_of_primes += num_being_considered
      num_primes_summed += 1
    }
    num_being_considered += 1
  }
  return sum_of_primes;
}
//
// console.log(sumOfNPrimes(0))
// console.log(sumOfNPrimes(1))
// console.log(sumOfNPrimes(4))


function titleize(names_array) {
  let new_names = names_array.map(function(x) {
    return 'Mx. ' + x + ' Jingleheimer Schmidt';
  })
  new_names.forEach(function(x) {
    console.log(x);
  })
}

// titleize(["Mary", "Brian", "Leo"]);


function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;

  this.trumpet = function() {
    console.log(this.name + ' the elephant goes phRRRRR!!!');
  };

  this.grow = function() {
    this.height = this.height + 10;
  };

  this.addTrick = function(trick) {
    this.tricks.push(trick);
  };

  this.play = function() {
    var trick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
    console.log(this.name + " is " + trick);
  };

  this.paradeHelper = function() {
    console.log(this.name + ' is trotting by!');
  }
}




let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
// ellie.trumpet()
// console.log(ellie.name)
// console.log(ellie.height)
// ellie.grow()
// console.log(ellie.height)
//
// console.log(ellie.tricks)
// ellie.addTrick("blah")
// console.log(ellie.tricks)
// ellie.play()

let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);
let herd = [ellie, charlie, kate, micah];

Elephant.parade = function() {
  herd.forEach( elephant => {
    elephant.paradeHelper();
  });
};

Elephant.parade();


// Elephant.paradeHelper(micah);
