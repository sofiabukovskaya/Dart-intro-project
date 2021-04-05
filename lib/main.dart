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
print('Demonstrate method where' + deck.cardsWithSuit('Diamonds').toString());

print(deck);
print('Demonstrate method sublist' + deck.deal(5).toString());
print(deck);

deck.removeCard('Diamonds', 'Ace');
print('Demonstrate method removeWhere' + deck.toString());
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
       return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {
      var hand = cards.sublist(0, handSize);
      cards = cards.sublist(handSize);
      return hand;
  }

  removeCard(String suit, String rank) {
        cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
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