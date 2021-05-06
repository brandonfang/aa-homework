'use strict';

// Phase 1 - Callbacks

const titleize = (array, callback) => {
  let titles = array.map(ele => `Mx. ${ele} Jingleheimer Schmidt`);
  callback(titles);
};

titleize(["Mary", "Brian", "Leo"], (array) => {
  array.forEach(ele => console.log(ele));
});

// Phase 2 - Constructors, Prototypes, and this

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = () => {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = () => {
  this.height += 12;
};

Elephant.prototype.addTrick = (trick) => {
  this.tricks.push(trick);
};

Elephant.prototype.play = () => {
  let trick = this.tricks[Math.floor(Math.random * this.tricks.length)];
  console.log(`${this.name} is ${trick}`)
};

// Phase 3 - Function Invocation

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = (elephant) => {
  console.log(`${elephant.name} is trotting by!`);
};

herd.forEach(Elephant.paradeHelper);

// Phase 4 - Closures

const dinerBreakfast = () => {
  let order = "I'd like cheesy scrambled eggs please.";
  console.log(order);
  
  return (food) => {
    order = `${order.slice(0, order.length - 8)} and ${food} please.`;
    console.log(order)
  };
}
