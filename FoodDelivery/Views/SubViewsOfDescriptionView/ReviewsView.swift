//
//  ReviewsView.swift
//  FoodDelivery
//
//  Created by cynomac on 27/08/21.
//

import SwiftUI

struct ReviewsView: View {
    var rating:Double
    var body: some View {
        VStack(spacing: 30){
            VStack{
                Text("Write a review").frame(width: UIScreen.main.bounds.width - 20, height:20 , alignment: .leading)
                    
                HStack{
                    Text("Share your experience to help others").font(.system(size: 12))
                        .fontWeight(.bold)
                        .frame(height:25 ,alignment: .bottom)
                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "square.and.pencil")
                        .font(.system(size: 23))
                        .foregroundColor(.red)
                        .frame(height:25 ,alignment: .bottom)
                }.frame(width: UIScreen.main.bounds.width - 20, alignment: .leading)
            }
            HStack{
                HStack{
                    VStack{
                        let starImage = Image(systemName: "star.fill")
                        HStack(spacing: 0){
                            Text(" \(rating, specifier: "%.1f")").foregroundColor(.white)
                                .background(Color.init(red: 33/255, green: 110/255, blue: 47/255))
                                .font(.system(size: 13, weight: .bold))
                                .frame(width:30, height:25, alignment: .center)
                            Text("\(starImage) ").foregroundColor(.white)
                                .background(Color.init(red: 33/255, green: 110/255, blue: 47/255))
                                .font(.system(size: 8, weight: .bold))
                        }.background(Color.init(red: 33/255, green: 110/255, blue: 47/255))
                        .cornerRadius(8)
                    }
                    Text("8,315 DELIVERY").foregroundColor(.gray)
                        .font(.system(size: 13, weight: .bold))
                        .frame(height:25, alignment: .center)
                        .overlay(
                            GeometryReader { geo in
                                        Path { path in
                                            path.move(to: CGPoint(x: 0, y: geo.size.height))
                                            path.addLine(to: CGPoint(x: geo.size.width, y: geo.size.height))
                                        }
                                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [1, 1]))
                                        .foregroundColor(.gray)
                                    }
                        )
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 30))
                
                HStack{
                    VStack{
                        let starImage = Image(systemName: "star.fill")
                        HStack(spacing: 0){
                            Text(" \(rating, specifier: "%.1f")").foregroundColor(.white)
                                .background(Color.init(red: 33/255, green: 110/255, blue: 47/255))
                                .font(.system(size: 13, weight: .bold))
                                .frame(width:30, height:25, alignment: .center)
                            Text("\(starImage) ").foregroundColor(.white)
                                .background(Color.init(red: 33/255, green: 110/255, blue: 47/255))
                                .font(.system(size: 8, weight: .bold))
                        }.background(Color.init(red: 33/255, green: 110/255, blue: 47/255))
                        .cornerRadius(8)
                    }
                    Text("234 DINING").foregroundColor(.gray)
                        .font(.system(size: 13, weight: .bold))
                        .frame(height:25, alignment: .center)
                        .overlay(
                            GeometryReader { geo in
                                        Path { path in
                                            path.move(to: CGPoint(x: 0, y: geo.size.height))
                                            path.addLine(to: CGPoint(x: geo.size.width, y: geo.size.height))
                                        }
                                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [1, 1]))
                                        .foregroundColor(.gray)
                                    }
                        )
                }
                
            }.frame(width: UIScreen.main.bounds.width - 20,  alignment: .leading)
            
            Text("Review Highlights").frame(width: UIScreen.main.bounds.width - 20, height:20 , alignment: .leading)
        }
    }
}

//struct ReviewsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ReviewsView(rating: 3.4)
//    }
//}
