//
//  CardView.swift
//  FoodDelivery
//
//  Created by cynomac on 23/08/21.
//

import SwiftUI

struct CardView: View {
    var item:products
    var body: some View {
        ZStack{
            ZStack{
                VStack{
                    ZStack{
                        Image(item.imageOfTheItem).resizable()
                            .frame(width: UIScreen.main.bounds.width - 20 , height: (2 * (UIScreen.main.bounds.height / 3))/3 , alignment: .top)
                        HStack(alignment: .top, spacing: (UIScreen.main.bounds.width * 0.70)){
                            Text(" Promoted ")
                                .foregroundColor(.white)
                                .background(Color.init(red: 36/255, green: 28/255, blue: 32/255, opacity: 0.8))
                                .cornerRadius(4)
                                .font(.system(size: 11))
                                
                            ZStack{
                                Image(systemName: "circle")
                                    .background(Color.white)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                Image(systemName: "bookmark")
                                    .background(Color.white)
                                    .font(.system(size: 20, weight: .light))
                            }.clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                        }
                        .position(x: UIScreen.main.bounds.width * 0.47, y: 30)

                        let xmark = Image(systemName: "xmark.circle.fill")
                        if(item.specialOfferToLabel != ""){
                            HStack(spacing: 0){
                                Text("      \(xmark)")
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(3)
                                    .font(.system(size: 11, weight: .bold))
                                Text(" \(item.specialOfferToLabel)  ")
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(3)
                                    .font(.system(size: 13, weight: .bold))
                            }.background(Color.blue)
                            .cornerRadius(3)
                            .position(x: UIScreen.main.bounds.width * 0.2, y: UIScreen.main.bounds.height * 0.2)
                        }
                        Text(" \(String(item.deliverWithin)) mins ").foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(4)
                            .font(.system(size: 13, weight: .light))
                            .position(x: UIScreen.main.bounds.width * 0.86, y: UIScreen.main.bounds.height * 0.2)
                    }
                    VStack{
                        VStack(spacing: 5){
                            // MARK: Restaurant Name and Star Rating
                            HStack{
                                let starImage = Image(systemName: "star.fill")
                                Text(item.nameOfTheRestaurant).font(.system(size: 20))
                                Spacer()
                                HStack(spacing: 0){
                                    Text(" \(item.ratingOfTheItem, specifier: "%.1f")").foregroundColor(.white)
                                        .background(Color.init(red: 33/255, green: 110/255, blue: 47/255))
                                        .cornerRadius(5)
                                        .font(.system(size: 13, weight: .bold))
                                        .frame(width:30, height:25, alignment: .center)
                                    Text("\(starImage) ").foregroundColor(.white)
                                        .background(Color.init(red: 33/255, green: 110/255, blue: 47/255))
                                        .cornerRadius(5)
                                        .font(.system(size: 8, weight: .bold))
                                }.background(Color.init(red: 33/255, green: 110/255, blue: 47/255))
                                .cornerRadius(5)
                            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                            
                            // MARK: Combo Name and Price
                            HStack{
                                Text(item.itemToServe).font(.system(size: 14))
                                    .bold()
                                    .foregroundColor(Color.init(red: 90/255, green: 90/255, blue: 90/255))
                                Spacer()
                                Text("$\(item.priceOfTheItem, specifier: "%.2f") for one").font(.system(size: 15))
                                    .bold()
                                    .foregroundColor(Color.init(red: 110/255, green: 110/255, blue: 110/255))
                            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                        }
                        HStack{
                                // PUT the ADs or Additional details here.
                        }
                    }.frame(width: UIScreen.main.bounds.width - 20 , height: (UIScreen.main.bounds.height / 3)/3 , alignment: .top)
                }
            }.frame(width: UIScreen.main.bounds.width - 20 , height: UIScreen.main.bounds.height / 3, alignment: .center)
            .background(Color.init(red: 255/255, green: 255/255, blue: 255/255))
            .cornerRadius(20)
        }.shadow(radius: 8)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(item: products(nameOfTheRestaurant: "Dunkin'", itemToServe: "9 Donuts combo", imageOfTheItem: "Dunkin", ratingOfTheItem: 3.8, priceOfTheItem: 399, deliverWithin: 45, specialOfferToLabel: "Thrusday double offer"))
    }
}

