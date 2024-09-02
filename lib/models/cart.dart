import 'package:flutter/material.dart';
import 'package:shoeshop_flutter/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop=[
    Shoe(
      name: 'Running Shoes',
      price: '200',
      description: 'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
      imagePath: 'lib/images/shoes3.png',
    ),
    Shoe(
      name: 'Air Max',
      price: '240',
      description: 'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
      imagePath: 'lib/images/shoes2.jpg',
    ),
    Shoe(
      name: 'Air Jordon 4',
      price: '260',
      description: 'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
      imagePath: 'lib/images/shoes4.jpg',
    ),
    Shoe(
      name: 'SB Dunk Pandas',
      price: '220',
      description: 'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
      imagePath: 'lib/images/shoes5.png',
    ),

  ];
  //list of items in user cart
  List<Shoe> userCart=[];
  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }
  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }
  //add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemToCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}