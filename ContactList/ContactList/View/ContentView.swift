//
//  ContentView.swift
//  ContactList
//
//  Created by emil kurbanov on 13.04.2022.
//

import SwiftUI
import Combine
struct ContentView: View {
    @ObservedObject var viewModel =  UserViewModel()
    
    
    var body: some View {
        NavigationView {
            List(viewModel.user, id: \.id){
                UserView(userView: $0)
                    .listRowBackground(Color.clear)
            }
            .padding(.leading, -20)
            .padding(.trailing, -20)
            .navigationBarTitle("Контакты")
            .onAppear {
                self.viewModel.fetchUsers()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


