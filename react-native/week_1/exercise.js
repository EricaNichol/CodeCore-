var age = function(x) {
  if(x >= 50) {
    return "old";
  } else {
    return "young";
  }
};


var forEach = function(arr, func) {
  for(var i = 0; i <arr.length; i++) {
    func(arr[i]);
  }
}

forEach([1,2,3], function(x){
  console.log(">>>" + x.tostring());
});

var sayLater = function(s) {
  setTimeout(function() {
    console.log(s.toString());
  }, 5000);
}

sayLater(100);
sayLater("hello");

var count = 0;
for(var key in window) {
  console.log(key);
  count++;
}

console.log(count);

var a = prompt(What is your first name?)
var b = prompt(what is your last name?)

console.log(a+" "+b)


var isEven = function(x) { return x % 2 ==0; };

var filter = function(arr, func) {
  result  = [];
  for(var i = 0; i arr.length; i++) {
    if(func(arr[i])) {
      result.push(arr[i]);
    }
  }
  return result;
}

console.log(filter([1,2,3,4]), isEven)
