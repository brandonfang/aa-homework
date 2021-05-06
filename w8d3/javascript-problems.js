// Phase 1 - JS Fundamentals

// function mysteryScoping1() {
//   var x = "out of block";
//   if (true) {
//     var x = "in block";
//     console.log(x);
//   }
//   console.log(x);
// }

// console.log(mysteryScoping1())

// function mysteryScoping2() {
//   const x = "out of block";
//   if (true) {
//     const x = "in block";
//     console.log(x);
//   }
//   console.log(x);
// }

// console.log(mysteryScoping2());

// function mysteryScoping3() {
//   const x = "out of block";
//   if (true) {
//     var x = "in block";
//     console.log(x);
//   }
//   console.log(x);
// }

// console.log(mysteryScoping3());

// function mysteryScoping4() {
//   let x = "out of block";
//   if (true) {
//     let x = "in block";
//     console.log(x);
//   }
//   console.log(x);
// }

// console.log(mysteryScoping4());

// function mysteryScoping5() {
//   let x = "out of block";
//   if (true) {
//     let x = "in block";
//     console.log(x);
//   }
//   let x = "out of block again";
//   console.log(x);
// }

// console.log(mysteryScoping5());

function madLib(verb, adjective, noun) {
  return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`;
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}


// Phase 2 - JS Looping Constructs

function fizzbuzz(array) {
  let result = [];

  for (let i = 0; i < array.length; i++) {
    if (array[i] % 3 === 0 ^ array[i] % 5 === 0) {
      result.push(array[i]);
    }
  }

  return result;
}

function isPrime(n) {
  if (n < 2) return false;

  for (let i = 2; i < n; i++) {
    if (n % i === 0) return false;
  }
  
  return true;
}

function sumOfNPrimes(n) {
  let count = 0;
  let sum = 0;
  let i = 2;

  while (count < n) {
    if (isPrime(i)) {
      sum += i;
      count += 1;
    }
  }

  return sum;
}
