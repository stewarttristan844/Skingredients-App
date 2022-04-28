//
//  ContentView.swift
//  Shared
//
//  Created by csuftitan on 2/21/22.
//

import SwiftUI

struct ContentView: View {
    @State var data: String = ""
    @State var currentPage = 1
    
    var body: some View {
        
        if currentPage == 1 {
            WalkthroughScreen()
        }
        
        if currentPage == 2 {
            VStack{
                switchView()
            }
        }
        
        /*
        VStack{
            switchView()
        }
        */
        
    } // var body : some View
    
} // struct ContentView : View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Instructions Screen
struct WalkthroughScreen: View {
    @AppStorage("currentPage") var currentPage = 1
    var body: some View{
        ZStack{

            VStack(spacing: 20){
                HStack{
                    
                    Spacer()
                    
                    // Done Button go to switchView
                    Button(action: {
                        withAnimation(.easeInOut){
                            currentPage = 2
                        }
                        
                    }, label: {
                        Text("Done")
                            .fontWeight(.semibold)
                    })
                    
                } // HStack
                .foregroundColor(.black)
                .padding()
                
                Spacer(minLength: 0)
                
                Image("skincare2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("Welcome to Skingredients!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("skingredients"))
                    .padding(.top)
                
                
                Spacer(minLength: 0)
            } // VStack
            //.background(Color("Color").ignoresSafeArea())
        } // ZStack
        
        
    } // var body: some View
} //struct WalkthroughScreen

