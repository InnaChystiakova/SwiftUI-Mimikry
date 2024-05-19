//
//  ContentView.swift
//  Mimikry
//
//  Created by Inna Chystiakova on 19/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State var isToggle: Bool = false
    
    var body: some View {
        VStack {
            if !isToggle { Spacer()}
            HStack {
                if !isToggle { Spacer() }
                BlueButton(isToggle: $isToggle)
            }.padding()
        }
    }
}

struct BlueButton: View {
    @Binding var isToggle: Bool
    
    var body: some View {
        Button {
            self.isToggle.toggle()
        } label: {
            let text = isToggle ? "Back" : "Open"
            let imageText = isToggle ? "arrowshape.backward.fill" : ""
            Label(text, systemImage: imageText)
                .padding()
                .foregroundStyle(.white)
        }
        .frame(width: isToggle ? 350 : nil, height: isToggle ? 400 : nil, alignment:.topLeading)
        .background(.blue)
        .cornerRadius(10)
        .animation(.easeInOut, value: isToggle)
    }
}

#Preview {
    ContentView()
}
