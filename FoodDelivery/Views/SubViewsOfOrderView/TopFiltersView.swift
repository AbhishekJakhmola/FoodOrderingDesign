//
//  TopFiltersView.swift
//  FoodDelivery
//
//  Created by cynomac on 24/08/21.
//

import SwiftUI

struct TopFiltersView: View {
    @State var sortedList = productList
    @State var sorted:Bool = false
    
//    var view:OrderView
//    
//    init(view: OrderView) {
//        self.view = view
//    }
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                //MAX Safety button
                Spacer()
                Button("  MAX Safety  ") {
                    print("MAX Safety")
                }.font(.system(size: 14))
                .frame(height: 35)
                .foregroundColor(.black)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1)
                )
                Spacer()
                //Pro Button
                Button(action: {
                    print("Pro")
                }, label: {
                    HStack(spacing: 2){
                        Text(" ")
                        Image(systemName: "crown")
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                        Text("PRO  ")
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                    }.frame(height: 35)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                    )
                })
                Spacer()
                //Cuisines Button
                Button(action: {
                    print("Cuisines")
                }, label: {
                    HStack(spacing: 1){
                        Text("  Cuisines ")
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                        Image(systemName: "arrowtriangle.down.fill")
                            .frame(height: 12, alignment: .top)
                            .foregroundColor(.black)
                            .font(.system(size: 10))
                        Text("  ")
                    }.frame(height: 35)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                    )
                })
                Spacer()
                // Sorting products dropdown
                ZStack{
                    Text("  Rating        ")
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                        .frame(height: 35)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                        )
                        .position(x: 40, y: 17)
                    Menu {
                        Button(action: {
                            self.sorted = true
                            self.sortedList = productList.sorted{
                                $0.ratingOfTheItem > $1.ratingOfTheItem
                            }
                            print(self.sortedList)
                        }, label: {
                            Text("Most Popular")
                        })
                        Button(action: {
                            self.sorted = true
                            self.sortedList = productList.sorted{
                                $0.ratingOfTheItem < $1.ratingOfTheItem
                            }
                            print(self.sortedList)
                        }, label: {
                            Text("Least Popular")
                        })
                        Button(action: {
                            self.sorted = true
                            self.sortedList = productList
                        }, label: {
                            Text("None")
                        })
                    } label: {
                        Text(" ")
                        Image(systemName: "arrow.up.arrow.down")
                        Text("Popular  ")
                    }.frame(height: 35)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .font(.system(size: 14))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                    )
                    .position(x: 100, y: 17)
                }.frame(width: 150, height: 35)
            }.frame( height: 45, alignment: .center)
        }
    }
}

struct TopFiltersView_Previews: PreviewProvider {
    static var previews: some View {
        TopFiltersView()
    }
}
