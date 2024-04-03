//
//  ContentView.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-01-19.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                GACTabView()
//                    .disabled(showProgressView)
//                    .blur(radius: showProgressView ? 3 : 0)
                
//                ProgressView()
//                    .frame(width: geometry.frame(in: .global).width,
//                           height: geometry.frame(in: .global).height)
//                    .background(.black)
//                    .opacity(showProgressView ? 0.2 : 0.0)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
