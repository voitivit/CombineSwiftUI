//
//  UserView.swift
//  ContactList
//
//  Created by emil kurbanov on 13.04.2022.
//

import SwiftUI

struct UserView: View {
    private let userView: User
    init(userView: User) {
        self.userView = userView
    }
    
    
    var body: some View {
        HStack {
            Image(uiImage: UIImage(systemName: "person")!)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 15) {
                Text(userView.name)
                    .font(.system(size: 18))
                    .foregroundColor(Color.blue)
                Text("моб.: \(userView.phone) \nemail: \(userView.email)")
                    .font(.system(size: 14))
            }
        }
    }
}


