import 'package:flutter/material.dart';

void main() {
  //task 1
var name = myName();
print('My name is $name');
print('My name is ${name.length}');

//task2
var person = new Person('Sonya');
person.printName();

//task3
var deck = new Deck();
deck.shuffle();
print(deck.cardsWithSuit('Diamonds'));
}

String myName() {
  return 'Sonya';
}

class Person {
    String firstName;

    Person(this.firstName);

    printName() {
      print(firstName);
    }
}

class Deck {
    List<Card> cards = [];

    Deck() {
      var ranks =['Ace', 'Two', 'Three', 'Four', 'Five'];
      var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];
      for(var suit in suits) {
        for (var rank in ranks) {
          var card = new Card(suit, rank);
          cards.add(card);
        }
      }
    }

  String toString() {
    return cards.toString();
  }

  shuffle() {
      cards.shuffle();
  }

  cardsWithSuit(String suit) {
       return cards.where((card){
        return card.suit == suit;
      });
  }
}


class Card {
    String suit;
    String rank;

    Card(this.suit, this.rank);

    String toString() {
    return '$rank of $suit';
  }
}