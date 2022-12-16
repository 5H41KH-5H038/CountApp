//
//  ContentView.swift
//  CountApp
//
//  Created by mayank on 16/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var backGrondColor: Color = .blue
    @State var title : String = "This is macbook"
    @State var count : Int = 0
    var body: some View {
        ZStack{
            backGrondColor
                .edgesIgnoringSafeArea(.all)
            
                    VStack(spacing: 10){
                    Text(title)
                    .font(.title)
                    Text("Count : \(count)")
                    .font(.headline)
                    .underline()
                
                HStack{
                        Button("Increase"){
                        backGrondColor = .green
                                    title = "Value is increase"
                        count += 1
                    }
                    .foregroundColor(.white)
                    
                    Button("Decrease"){
                        backGrondColor = .red
                        title = "Value is decrease"
                        count -= 1
                    }
                    .foregroundColor(.white)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
