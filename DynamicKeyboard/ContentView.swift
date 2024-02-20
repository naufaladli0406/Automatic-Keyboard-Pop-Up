//
//  ContentView.swift
//  DynamicKeyboard
//
//  Created by Naufal Adli on 20/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var showView = false
    var body: some View {
        VStack{
            Button(action: { showView.toggle() }, label: {
                Label("Start typing", systemImage: "Keyboard.fill")
            })
            .tint(.green)
            .buttonStyle(.bordered)
            .controlSize(.large)
        }.padding()
            .sheet(isPresented: $showView){
                TextSheet()
            }
    }
}

#Preview {
    ContentView()
}
