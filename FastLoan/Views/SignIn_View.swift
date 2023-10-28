//
//  SignIn_View.swift
//  FastLoan
//
//  Created by Aljwhra Alnasser on 28/10/2023.
//

import SwiftUI

struct SignIn_View: View {
    
    @State private var email = ""
    @State private var password = ""
    
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
                    
                    
                    
//                    HStack{
//                        Text("john.smith@gmail.com")
//                            .foregroundColor(.white)
//                            .bold()
//                    }
                    
                    VStack(spacing: 16){
                        TextField("Enter your Email", text: $email)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal,45)
                        Divider()
                            .background(Color.white)
                            .frame(width: 300)
                        
                        SecureField("Enter your Password", text: $password)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                            .padding(.horizontal,45)
                        
                        Divider()
                            .background(Color.white)
                            .frame(width: 300)
                        
                    }
                    
                    NavigationLink {
//                      Home_View()
                        Tab_View()
                    } label:{
                        
                        Text("Sign in")
                            .foregroundColor(.purple2).bold()
                            .font(.title2)
                            .frame(width: 270, height: 55)
                            .background(Color.white)
                            .cornerRadius(80)
                        
                    } 
                    
                    HStack{
                        Text("Don't have an acccount?")
                            .foregroundColor(.white)
                            .font(.callout)
                        NavigationLink {
                            
                            //   SignIn_View()
                        } label: {
                            
                            Text("Register")
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
//    SignIn_View()
//}

struct  SignIn_View_Previews: PreviewProvider {
    static var previews: some View {
        SignIn_View()
    }
}

