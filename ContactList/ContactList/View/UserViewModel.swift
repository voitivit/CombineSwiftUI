//
//  UserViewModel.swift
//  ContactList
//
//  Created by emil kurbanov on 13.04.2022.
//

import SwiftUI
import Combine

class UserViewModel: ObservableObject {
    private let url = "https://jsonplaceholder.typicode.com/users"
    private var task: AnyCancellable?
    
    @Published var user: [User] = []
    
    func fetchUsers() {
        task = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
            .map {$0.data}
            .decode(type: [User].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \UserViewModel.user, on: self)
    }
}


