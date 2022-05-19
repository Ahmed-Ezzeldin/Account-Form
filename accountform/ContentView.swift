//
//  ContentView.swift
//  accountform
//
//  Created by Cloud Secrets on 19/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName = "";
    @State private var lastName = "";
    @State private var birthDate = Date();
    @State private var isSendNewsletter = false;
    @State private var likesNumber = 0;
    
    
    var body: some View {
        NavigationView {
            
            Form{
                Section(header: Text("Personal Information" )) {
                    TextField("First Name" , text: $firstName)
                    TextField("Last Name" , text: $lastName)
                    DatePicker("Birthday" , selection: $birthDate , displayedComponents: .date)
                }
                Section(header: Text("Actions")) {
                    Toggle("Send Newsletter" , isOn: $isSendNewsletter)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                    Stepper("Number of Likes", value: $likesNumber , in: 1...100)
                    Text("This video has \(likesNumber) likes")
                    Link("Terms of service", destination: URL(string: "https://google.com")!)
                    
                }
            
            }
            .accentColor(.green)
            .navigationTitle("Account")
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
