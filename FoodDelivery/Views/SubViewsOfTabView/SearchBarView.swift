//
//  SearchBarView.swift
//  FoodDelivery
//
//  Created by cynomac on 25/08/21.
//

import SwiftUI

struct SearchBarView: UIViewControllerRepresentable {
    
    func makeCoordinator() -> Coordinator {
        return SearchBarView.Coordinator(parent: self)
    }
    
    
    var view:OrderView
    
    // onSearch and onCancel closures
    var onSearch: (String)->()
    var onCancel: ()->()
    
    //closure on call
    init(view: OrderView,onSearch: @escaping (String)->(),onCancel: @escaping ()->()) {
        self.view = view
        self.onSearch = onSearch
        self.onCancel = onCancel
    }

    
    func makeUIViewController(context: Context) -> UINavigationController {
        let childView = UIHostingController(rootView: view)
        
        let controller = UINavigationController(rootViewController: childView)
        
        controller.setNavigationBarHidden(true, animated: false)
        
        let searchController = UISearchController()
        
        searchController.searchBar.placeholder = "Restaurant name, cuisine, or a dish"

//        searchController.searchBar.frame.size.width = UIScreen.main.bounds.width - 90
        // search Bar delegates
        searchController.searchBar.delegate = context.coordinator
        
        let textFieldInsideSearchBar = searchController.searchBar.value(forKey: "searchField") as? UITextField
        textFieldInsideSearchBar?.background?.withTintColor(.white)
        
        
        let glassIconView = textFieldInsideSearchBar?.leftView as? UIImageView

        //Magnifying glass
        glassIconView?.tintColor = .red
        
        controller.navigationBar.topItem?.searchController = searchController
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        
    }
    
    class Coordinator: NSObject, UISearchBarDelegate{
        
        var parent: SearchBarView
        
        init(parent: SearchBarView) {
            self.parent = parent
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            self.parent.onSearch(searchText)
        }
        
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            self.parent.onCancel()
        }
    }
    
}

//struct SearchBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBarView()
//    }
//}
