//
//  New_loan_View.swift
//  FastLoan
//
//  Created by Aljwhra Alnasser on 29/10/2023.
//

import SwiftUI

struct New_loan_View: View {
    
    @State private var sliderValue1: Double = 0.5
    @State private var sliderValue2: Double = 0.9
    
    var items: [(String,String , Color)] = [
        ("Lona amount","$6000" , .purple1),
        ("Next payment","01.10.2023" , .purple1),
        ("Your Debt","$500" , .purple1)
    ]
    
    var body: some View {
        NavigationStack{
            
            VStack(spacing:0){
                
                VStack(alignment:.leading){
                    
                    Text("Fill in the following options")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                    
                    HStack{
                        Text("Loan amount")
                        Spacer()
                        Text("$8 500")
                            .padding(.top)
                    }
                    .bold()
                    .foregroundColor(.white)
                    
                    Slider(value: $sliderValue1, in: 0...1)
                        .padding()
                        .accentColor(Color.white)
                    
                    HStack{
                        Text("$500")
                        Spacer()
                        Text("$10 000")
                        
                    }
                    .bold()
                    .foregroundColor(.gray)
                    
                    HStack{
                        Text("Loan term")
                        Spacer()
                        Text("12 days")
                            .padding(.top)
                    }
                    .bold()
                    .foregroundColor(.white)
                    Slider(value: $sliderValue2, in: 0...1)
                        .padding()
                        .accentColor(Color.white)
                    
                    HStack{
                        Text("5 days")
                        Spacer()
                        Text("30 days")
                        
                    }
                    .bold()
                    .foregroundColor(.gray)
                }
                .padding()
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                .background(
                    ZStack{
                        Rectangle()
                        
                        LinearGradient(gradient: Gradient(colors: [Color.purple1,Color.purple2]), startPoint: .top, endPoint: .bottom)
                    }
                        .ignoresSafeArea()
                )
                
                
                VStack{
                    
                    ForEach(items, id: \.1) { item in
                        MyList(title:item.0, num:item.1, color: item.2)
                    }.padding(.bottom)
                    
                    NavigationLink {
                        
                    } label:{
                        
                        Text("Get money")
                            .foregroundColor(.white).bold()
                            .font(.title2)
                            .frame(width: 270, height: 55)
                            .background(Color.purple2)
                            .cornerRadius(80)
                        
                    }
                    
                }
                .padding()
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                .background(
                    ZStack{
                        Rectangle()
                        Color.mygray
                    }
                        .ignoresSafeArea()
                )
                
            }
            .navigationBarBackButtonHidden(true) // Hide the back button
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    HStack(spacing: 101){
                        Button(action: {}){
                            Image(systemName: "person.fill")
                        }
                        Text("New Loan")
                            .foregroundColor(.white)
                            .font(.title3)
                        Button(action: {}){
                            Image(systemName: "bell.fill")
                        }
                    }
                }
                
            }
        }
        
    }
}

//#Preview {
//    New_loan_View()
//}

struct  New_loan_Viewpreviews: PreviewProvider{
    static var previews: some View {
        New_loan_View()
    }
}
