//
//  TabViewDesign.swift
//  FoodDelivery
//
//  Created by cynomac on 23/08/21.
//

import SwiftUI

struct TabViewDesign: View {
    @State var filteredList = productList
    var body: some View {
        TabView{
            SearchBarView(view: OrderView(selectedItem: products(nameOfTheRestaurant: "", itemToServe: "", imageOfTheItem: "", ratingOfTheItem: 0, priceOfTheItem: 0, deliverWithin: 0, specialOfferToLabel: ""), filteredList: $filteredList), onSearch: { searchString in
                if searchString != "" {
                    self.filteredList = productList.filter{$0.nameOfTheRestaurant.lowercased().contains(searchString.lowercased())}
                }
                else {
                    self.filteredList = productList
                }
            }, onCancel: {
                self.filteredList = productList
            }).tabItem {
                Image(systemName: "bag")
                Text("Order")
            }
            GoOutView().tabItem {
                Image(systemName: "figure.walk")
                Text("Go Out")
            }
            ProView().tabItem {
                Image(systemName: "crown")
                Text("Pro")
            }
            NutritionView().tabItem {
                Image(systemName: "bolt.heart")
                Text("Nutrition")
            }
            DonateView().tabItem {
                Image(systemName: "figure.stand.line.dotted.figure.stand")
                Text("Donate")
            }
        }.background(Color.white)
        .foregroundColor(.black)
    }
}

struct TabViewDesign_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDesign()
    }
}

//struct OrderView: View {
//    var body: some View {
//        Color.purple.ignoresSafeArea()
//    }
//}

struct GoOutView: View {
    var body: some View {
        Color.blue.ignoresSafeArea()
    }
}

struct ProView: View {
    var body: some View {
        Color.green.ignoresSafeArea()
    }
}

struct NutritionView: View {
    var body: some View {
        Color.yellow.ignoresSafeArea()
    }
}

struct DonateView: View {
    var body: some View {
        Color.red.ignoresSafeArea()
    }
}
