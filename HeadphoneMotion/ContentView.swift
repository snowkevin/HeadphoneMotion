//
//  ContentView.swift
//  HeadphoneMotion
//
//  Created by Kevin Snow on 2/22/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = HeadphoneMotionViewModel()
    
    var body: some View {
        VStack {
            Text("Pitch: \(viewModel.pitch)")
                .padding()
            Text("Roll: \(viewModel.roll)")
                .padding()
            Text("Yaw: \(viewModel.yaw)")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
