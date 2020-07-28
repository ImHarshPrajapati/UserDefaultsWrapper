//
//  ContentView.swift
//  UserDefaultsWrapper
//
//  Created by harshadp_MS021 on 27/07/20.
//  Copyright © 2020 com.HP. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Propeties
    @ObservedObject var settingsStore = SettingsStore()
    
    //Body
    var body: some View {
        
        return NavigationView {
            Form {
                Section(header: Text("Easy way to manage userDefautls")) {
                    Toggle(isOn: self.$settingsStore.isDefault) {
                        Text(verbatim: "isDefault: \(self.settingsStore.isDefault)")
                    }
                    TextField("Nickname", text: self.$settingsStore.nickName)
                }
            }
            .navigationBarTitle("HP Defaults Wrapper")
        }
    }
}

//MARK: - Preview Provider
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


class SettingsStore: ObservableObject {
    @Published var isDefault: Bool = HPUserDefaults.shared.isDefault {
        didSet {
            HPUserDefaults.shared.isDefault = self.isDefault
        }
    }
    
    @Published var nickName: String = HPUserDefaults.shared.nickName {
        didSet {
            HPUserDefaults.shared.nickName = self.nickName
        }
    }
}
