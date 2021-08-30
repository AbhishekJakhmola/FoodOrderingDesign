//
//  DescriptionView.swift
//  FoodDelivery
//
//  Created by cynomac on 26/08/21.
//

import SwiftUI

struct DescriptionView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var selected = 2
    var item:products
    var body: some View {
        VStack(spacing:15){
            Spacer()
            VStack(spacing: 20){
                // Top view of icons
                HStack{
                    Image(systemName: "control").font(.system(size: 25)).foregroundColor(.black)
                        .rotationEffect(Angle(degrees: -90))
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    Spacer()
                    HStack(spacing: 25){
                        Image(systemName: "camera")
                        Image(systemName: "bookmark")
                        Image(systemName: "arrowshape.turn.up.right")
                    }.font(.system(size: 18)).foregroundColor(.black)
                }.frame(width: UIScreen.main.bounds.width - 20)
                
                // Details of the tapped hotel
                VStack{
                    // Name , Food combo and ratings
                    HStack{
                        VStack(spacing:5){
                            Text("    \(item.nameOfTheRestaurant)").font(.system(size: 30))
                                .fontWeight(.medium)
                                .frame(width: UIScreen.main.bounds.width / 2 ,alignment: .leading)
                            Text("      \(item.itemToServe)").font(.system(size: 15))
                                .fontWeight(.medium)
                                .frame(width: UIScreen.main.bounds.width / 2 ,alignment: .leading)
                                
                        }
                        Spacer()
                        VStack{
                            HStack(spacing: 0){
                                let starImage = Image(systemName: "star.fill")
                                Text("     \(item.ratingOfTheItem, specifier: "%.1f")").foregroundColor(.white)
                                    .font(.system(size: 15, weight: .bold))
                                    
                                Text(" \(starImage) ").foregroundColor(.white)
                                    .font(.system(size: 10, weight: .bold))
                            }.frame(width:100,alignment: .leading)
                            
                            Text("      DELIVERY").foregroundColor(.white)
                                .font(.system(size: 11, weight: .medium))
                                .frame(width:100,alignment: .leading)
                            
                        }.frame(width:80, height:50, alignment: .center)
                        .background(Color.init(red: 33/255, green: 110/255, blue: 47/255))
                        .cornerRadius(10)
                    }.frame(width: UIScreen.main.bounds.width + 15)
                    // Address , offers and images
                    HStack{
                        VStack(spacing:5){
                            Text("      Address of the restaurant").font(.system(size: 15))
                                .foregroundColor(.gray)
                                .fontWeight(.medium)
                                .frame(width: UIScreen.main.bounds.width / 2 ,alignment: .leading)
                            Text("      Offers with logo").font(.system(size: 15))
                                .fontWeight(.medium)
                                .frame(width: UIScreen.main.bounds.width / 2, height: 20 ,alignment: .leading)
                                .background(Color.green)
                                
                        }
                        Spacer()
                        ZStack{
                            Image(item.imageOfTheItem).resizable()
                                .frame(width:80, height:50, alignment: .center)
                                .cornerRadius(10)
                                .blur(radius: 1.5)
                            
                            VStack{
                                HStack(spacing: 0){
                                    Text("     120").foregroundColor(.white)
                                        .font(.system(size: 15, weight: .bold))
                                }.frame(width:100,alignment: .leading)

                                Text("      PHOTOS").foregroundColor(.white)
                                    .font(.system(size: 11, weight: .medium))
                                    .frame(width:100,alignment: .leading)

                            }.frame(width:80, height:50, alignment: .center)
                            .cornerRadius(10)
                        }
                    }.frame(width: UIScreen.main.bounds.width + 15)
                }
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 6)
            
            VStack{
                TabBarView(selected: $selected).padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                
                GeometryReader{_ in
                    VStack{
                        if self.selected == 0 {
                            Text("DELIVERY DETAILS")
                        }
                        else if self.selected == 1 {
                            Text("DINING DETAILS")
                        }
                        else if self.selected == 2 {
                            ReviewsView(rating: item.ratingOfTheItem).padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                        }
                    }
                }
            }.frame(width: UIScreen.main.bounds.width, height: (5 * UIScreen.main.bounds.height / 6) - 60)
            
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(item: products(nameOfTheRestaurant: "KFC", itemToServe: "Chicken Bucket", imageOfTheItem: "Burger King", ratingOfTheItem: 3.2, priceOfTheItem: 123, deliverWithin: 32, specialOfferToLabel: "Thrusday double offer"))
    }
}
