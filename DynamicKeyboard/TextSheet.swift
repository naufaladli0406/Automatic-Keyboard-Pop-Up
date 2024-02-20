//
//  TextSheet.swift
//  DynamicKeyboard
//
//  Created by Naufal Adli on 20/02/24.
//

import SwiftUI

struct TextSheet: View {
    @State var text = ""
    @FocusState var showkeyboard : Bool
    var body: some View {
        NavigationStack{
            
            Text("Type something below:")
                         .font(.headline)
                         .foregroundColor(.secondary)
                         .multilineTextAlignment(.leading)
                         .frame(maxWidth: .infinity,alignment: .leading)
                         .padding(.leading,20)
            
            TextEditor(text: $text)
                .bold().font(.title)
                .padding(12)
                .focused($showkeyboard)
                .navigationTitle("Dynamic keyboard")
            
        }.onAppear{
            showkeyboard = true
        }
    }
}

#Preview {
    TextSheet()
}
