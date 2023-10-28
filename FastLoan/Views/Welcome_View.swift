//
//  WelcomeView.swift
//  FastLoan
//
//  Created by Aljwhra Alnasser on 28/10/2023.
//

import SwiftUI

struct Welcome_View: View {
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    Image("pig")
                        .resizable()
                        .frame(width:100, height: 100)
                        .foregroundColor(.white)
                        .padding()
                    Text("FastLoan")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                }
                .padding()
                .frame(maxWidth:.infinity )
                
                VStack(spacing: 25){
                    Text("Welcome!")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                    
                    NavigationLink {
                        
                        SignIn_View()
                    } label: {
                        
                        Text("Sign in")
                            .foregroundColor(.purple2).bold()
                            .font(.title2)
                            .frame(width: 270, height: 55)
                            .background(Color.white)
                            .cornerRadius(80)
                        
                    }
                 
                    
                    HStack{
                        Text("or")
                            .foregroundColor(.white)
                            .font(.callout)

                        NavigationLink {
                            
                          //  SignIn_View()
                        } label: {
                            Text("Create an account")
                                .underline()
                                .foregroundColor(.white)
                        }
                    }
                    
                    
                }
                .frame(maxWidth:.infinity, maxHeight: .infinity )
                
            }.background(
                
                LinearGradient(gradient: Gradient(colors: [Color.purple1,Color.purple2]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
            )
        }
    }
    
}


//#Preview {
//    WelcomeView()
//}

struct  Welcome_View_Previews: PreviewProvider {
    static var previews: some View {
        Welcome_View()
    }
}

