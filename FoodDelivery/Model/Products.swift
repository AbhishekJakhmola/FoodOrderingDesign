//
//  Products.swift
//  FoodDelivery
//
//  Created by cynomac on 23/08/21.
//

import SwiftUI

struct products:Identifiable {
    var id: String { nameOfTheRestaurant }
    var nameOfTheRestaurant:String
    var itemToServe:String
    var imageOfTheItem:String
    var ratingOfTheItem:Double
    var priceOfTheItem:Double
    var deliverWithin:Int
    var specialOfferToLabel:String
}

var productList = [products(nameOfTheRestaurant: "KFC", itemToServe: "Chicken Bucket", imageOfTheItem: "KFC", ratingOfTheItem: 3.2, priceOfTheItem: 123, deliverWithin: 32, specialOfferToLabel: "Thrusday double offer"),
    products(nameOfTheRestaurant: "Burger King", itemToServe: "Anything Combo - Veg", imageOfTheItem: "burger_king", ratingOfTheItem: 4.1, priceOfTheItem: 50, deliverWithin: 30, specialOfferToLabel: "Thrusday double offer"),
    products(nameOfTheRestaurant: "Cake House", itemToServe: "Blue Berry Cake", imageOfTheItem: "Cake_house", ratingOfTheItem: 3.9, priceOfTheItem: 80.6, deliverWithin: 45, specialOfferToLabel: "Thrusday double offer"),
    products(nameOfTheRestaurant: "Dominos", itemToServe: "Veg Extravaganza", imageOfTheItem: "Dominos", ratingOfTheItem: 4.3, priceOfTheItem: 129, deliverWithin: 30, specialOfferToLabel: "Thrusday double offer"),
    products(nameOfTheRestaurant: "Dunkin'", itemToServe: "9 Donuts combo", imageOfTheItem: "Dunkin", ratingOfTheItem: 3.8, priceOfTheItem: 399, deliverWithin: 45, specialOfferToLabel: ""),
    products(nameOfTheRestaurant: "McDonald's", itemToServe: "McVeggie", imageOfTheItem: "McDonalds", ratingOfTheItem: 4.5, priceOfTheItem: 299, deliverWithin: 35, specialOfferToLabel: "Thrusday double offer"),
    products(nameOfTheRestaurant: "Milk Shake Bar", itemToServe: "Strawberry Shake", imageOfTheItem: "Milk_Shake_Bar", ratingOfTheItem: 4.3, priceOfTheItem: 344, deliverWithin: 40, specialOfferToLabel: "Thrusday double offer"),
    products(nameOfTheRestaurant: "Pie Store", itemToServe: "Lemon Pie", imageOfTheItem: "Pie_store", ratingOfTheItem: 3.8, priceOfTheItem: 233, deliverWithin: 40, specialOfferToLabel: ""),
    products(nameOfTheRestaurant: "Pizza Hut", itemToServe: "Pan Pizza Veg", imageOfTheItem: "PizzaHut", ratingOfTheItem: 4.1, priceOfTheItem: 254, deliverWithin: 30, specialOfferToLabel: ""),
    products(nameOfTheRestaurant: "SubWay", itemToServe: "Subway Veggie", imageOfTheItem: "SubWay", ratingOfTheItem: 3.2, priceOfTheItem: 199, deliverWithin: 30, specialOfferToLabel: "")]


