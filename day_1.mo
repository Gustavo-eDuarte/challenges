import Array "mo:base/Array";
import Nat "mo:base/Nat";

actor {
  
//Challenge 1

public func add(n : Nat , m : Nat) : async Nat {
  return(n + m);
};

//Challenge 2

public func square( n : Nat) : async Nat{
  return(n * n);
};

//Challenge 3 

public func days_to_seconds(n : Nat) : async Nat {
  return(n * 24 * 60 * 60);
};

// Challenge 4 

var counter : Nat = 0;

counter := 10;
counter := 80;

public func increment_counter(n : Nat) : async Nat {
  counter := counter + n;
  return(counter);
};

public func clear_counter() : async () {
  counter:= 0;
};

// Challenge 5

let a : Bool = true;
let b : Bool = false;

public func divide(n : Nat, m : Nat) : async Bool {
  if(n % m == 0) {
    return(true);
  } else {
    return(false);
  }
};

//Challenge 6

public func is_even(n : Nat) : async Bool{
  if(n / 2 == 0) {
    return(true);
  } else {
    return(false);
  }
};

//Challenge 7

let array : [Nat] = [1, 2, 3];




//challenge 8

//challenge 9 

//challenge 10


};
