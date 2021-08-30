//
//  TabBarView.swift
//  FoodDelivery
//
//  Created by cynomac on 27/08/21.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selected:Int
    var body: some View {
        HStack{
            Button(action: {
                self.selected = 0
            }, label: {
                Text("DELIVERY")
            }).frame(width: (UIScreen.main.bounds.width - 20) / 3, height:50)
            .background(self.selected == 0 ? Color.black : Color.init(red: 242/255, green: 242/255, blue: 242/255, opacity: 0.5))
            .foregroundColor(self.selected == 0 ? .white : .gray)
            .cornerRadius(10)
            Button(action: {
                self.selected = 1
            }, label: {
                Text("DINING")
            }).frame(width: (UIScreen.main.bounds.width - 20) / 3, height:50)
            .background(self.selected == 1 ? Color.black : Color.init(red: 242/255, green: 242/255, blue: 242/255, opacity: 0.5))
            .foregroundColor(self.selected == 1 ? .white : .gray)
            .cornerRadius(10)
            Button(action: {
                self.selected = 2
            }, label: {
                Text("REVIEWS")
            }).frame(width: (UIScreen.main.bounds.width - 20) / 3, height:50)
            .background(self.selected == 2 ? Color.black : Color.init(red: 242/255, green: 242/255, blue: 242/255, opacity: 0.5))
            .foregroundColor(self.selected == 2 ? .white : .gray)
            .cornerRadius(10)
        }.frame(width: UIScreen.main.bounds.width - 20, height:50)
        .background(Color.init(red: 242/255, green: 242/255, blue: 242/255, opacity: 0.5))
        .cornerRadius(10)
    }
}

