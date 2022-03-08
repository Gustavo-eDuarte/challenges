import Array "mo:base/Array";
import Char "mo:base/Char";
import Debug "mo:base/Debug";
import Int "mo:base/Int";
import Iter "mo:base/Iter";
import Nat "mo:base/Nat";
import Nat32 "mo:base/Text";
import Nat8 "mo:base/Nat8";
import Prim "mo:prim";
import Text "mo:base/Text";

actor{

//Challenge 1

public func nat_to_nat8(n : Nat) : async Nat8 {
    return(Nat8.fromNat(n));
};

//Challenge 2

public func max_number_with_n_bits (n: Nat) : async Nat {
    return (2**n -1);
};

//Challenge 3 

public func decimal_to_bits (n: Nat) : async Text {
    var tmp: Nat = n;
    var binary: Nat = 0;
    var counter: Nat = 0;
    while (tmp > 0) {
      binary := ((tmp % 2)*(10**counter)) + binary;
      tmp := (tmp/2);
      counter += 1;
    };
    var output = Nat.toText(binary);
    return output
  };

//Challenge 4

public func capitalize_character (c: Char) : async Text {

    var tmp : Nat32 = Char.toNat32(c);
    tmp -= 32;
    var output: Char = Char.fromNat32(tmp);
    return Char.toText(output);
};
// Write Char as a number that is correspondent to its value in the ascii table in https://github.com/motoko-bootcamp/bootcamp/blob/main/daily_challenges/day_2/img/ascii.png

//Challenge 5 

//Challenge 6 

public func is_inside (t : Text, c: Text) :async Bool{
    
    var counter = 0;
    for (char in t.chars()){
      for (char2 in c.chars()){
        if  (char == char2) {
          counter +=1;
        };
      };
    };
    return counter >= 1;
  };

//Challenge 7

//Challenge 8

//Challenge 9

//Challenge 10


}