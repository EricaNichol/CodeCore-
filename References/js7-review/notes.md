
# You don't know JS!

---

# This Afternoon

- Review Game
- Javascript Review
- jQuery Review
- The Javascript World

---

# Review Game

- 4 teams

- Must choose top cards first.

- Each time one person answers Q in a row, 100 point reduction from points earned.


---

# Javascript Review

```js
var number = 5;
var string = "Hello";
var array = [1, 2, 3];
var object = {a: 1, b: 2};
var func = function (x) { return x * x; }

if (object.a == 1) {
  console.log("A is 1");
}

for (var i = 0; i < array.length; i += 1) {
  var value = func(array[i]);
  console.log(value);
}
```

---

## What does it do?

```js
var mystery = function (a, b) {
  var r = [];
  for (var i = 0; i < a.length; i += 1) {
    r.push( b(a[i]) );
  }

  return r;
}

var result = mystery([1, 2, 3, 4, 5], function (x) {
  return x * x;
});

console.log(result);
```

---

## Pair Exercise

1. Make a webpage that prompts the user to enter a list of numbers (e.g. "1 5 27 33"), and alerts the sum of those numbers (e.g. 66).

2. [Challenge] Make a webpage that prompts the user to enter a list of numbers (e.g. "1 5 27 33"), and alerts the sum, product, AND average of those numbers.

---

# jQuery Review


---

## What does it do?

```js
$('#new-post').on('submit', function(event) {
  var firstName = $(this).children('input[name="first_name"]').val();

  if (firstName.length > 0) {
    event.preventDefault();
    alert("Hello, " + firstName);
  }
});
```

---

## Pair Exercise

In the jquery lab.

1. When a container is clicked, add the "highlight" class to all the shapes in that container.

2. [Challenge] When "button 1" is clicked, make all of the shapes "small". When "button 2" is clicked, make all the shapes "large".

3. [Challenge] When the shapes change size, make them transition smoothly using CSS animations.

---

# The Javascript World



---

## Frameworks

- Bootstrap
- Foundation
- Backbone
- React
- Angular
- Ember

---

## Bootstrap Components

- Tabs
- Alerts
- Carousel
- Tooltip
- Modal
- ...

- All jQuery based



---

## Libraries

- `jQuery UI`: advanced UI components
- `chosen`: an awesome select tag replacement
- `pickadate.js`: user-friendly date picker
- `animate.css`: gaudy animations

---

## Libraries

- `hopscotch`: tours
- `font-awesome`: all the icons you ever wanted
- `chartjs.org`: awesome free charts library
- `highcharts`: awesome paid charts library

---

## Libraries

- `codemirror` + `ace`: Code editors
- `mousetrap`: Easy keyboard shortcut events
- `underscore`: Adds missing functionality to Javascript
- `Google Maps`: Easier than you think
- `turbolinks`: Faster Rails apps

---

## The Browser

- Canvas
- Web Audio and Video
- Chrome Plugins
- WebGL and three.js

---

## Robotics

- `johnny five`: arduino, raspberry pi, etc.

---

## Native Development

- Scripting OSX
- iOS and Android with React Native

---

## Javascript as a Platform

- Coffeescript
- Typescript
- Dart
- Clojurescript
- ...
