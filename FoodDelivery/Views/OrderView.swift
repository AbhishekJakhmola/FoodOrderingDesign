//
//  OrderView.swift
//  FoodDelivery
//
//  Created by cynomac on 23/08/21.
//

import SwiftUI

struct OrderView: View {
    @State var presentingDesc = false
    @State var selectedItem:products
    @Binding var filteredList:[products]
//    @Binding var sorted:Bool
//    @Binding var sortedList:[products]
    
    var body: some View {
        VStack(spacing: 20){
            
            TopFiltersView()
            
            if false {
//                Text("\(sortedList.count) restaurants around you").font(.system(size: 20))
//                    .bold()
//                    .foregroundColor(Color.black)
//                    .frame(width: UIScreen.main.bounds.width - 20, height: 25, alignment: .leading)
//
//                ScrollView(.vertical, showsIndicators: false){
//                    VStack(spacing: 23){
//                        ForEach(sortedList){ item in
//                            CardView(item: item)
//                        }
//                    }
//                }
            }
            else{
                Text("\(filteredList.count) restaurants around you").font(.system(size: 20))
                    .bold()
                    .foregroundColor(Color.black)
                    .frame(width: UIScreen.main.bounds.width - 20, height: 25, alignment: .leading)
                    
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 23){
                        ForEach(filteredList){ item in
                            CardView(item: item).onTapGesture {
                                self.presentingDesc = true
                                self.selectedItem = item
                            }
                        }
                    }
                }.fullScreenCover(isPresented: $presentingDesc) {
                    DescriptionView(item: self.selectedItem)
                }
            }
        }
    }
}

//struct OrderView_Previews: PreviewProvider {
//    static var previews: some View {
//        OrderView()
//    }
//}
