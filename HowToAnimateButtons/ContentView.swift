//
//  ContentView.swift
//  HowToAnimateButtons
//
//  Created by ramil on 17.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var Ocolor = Color.blue
    @State private var Ocorner = 15
    var body: some View {
        VStack {
            Button(action: {
                self.Ocolor = self.Ocolor == Color.green ? Color.orange : Color.green
                self.Ocorner = self.Ocorner == 15 ? 100 : 15
            }) {
                Text("PressMe!")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 200, alignment: .center)
                    .background(Ocolor)
                    .font(.title)
                    .cornerRadius(CGFloat(Ocorner))
            }
        }
        .animation(.spring(response: 0.5, dampingFraction: 2, blendDuration: 0.5))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
