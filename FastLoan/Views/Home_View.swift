//
//  Home_View.swift
//  FastLoan
//
//  Created by Aljwhra Alnasser on 28/10/2023.
//





import SwiftUI

struct Home_View: View {
    @State private var fill: CGFloat = 0.0
    
    
    
    var items: [(String,String , Color)] = [
        ("Lona amount","$6000" , .purple1),
        ("Next payment","01.10.2023" , .purple1),
        ("Your Debt","$500" , .purple1)
    ]
    
    
    var body: some View {
        NavigationStack{
            ZStack {
                
                backgroundCustom()
                
                ScrollView{
                    
                    // circular cage
                    ZStack {
                        // Track circle & background
                        Circle()
                            .frame(width: 250, height: 250)
                            .foregroundColor(.white)
                        //  .stroke(Color.white, lineWidth: 20)
                        
                        // Animation circle
                        Circle()
                            .trim(from: 0, to: self.fill)
                            .stroke(Color.green, style: StrokeStyle(lineWidth: 10)
                                    // .frame(width: 250, height: 250)
                            )
                            .frame(width: 220, height: 220)
                            .rotationEffect(.init(degrees: -50))
                            .animation(Animation.linear(duration: 0.01)) // Adjust the animation duration as needed
                        
                        VStack(alignment: .center, spacing: 10) {
                            Text("Currunt loan \n balance")
                                .multilineTextAlignment(.center)
                            Text("$\(Int(self.fill * 100.0))")
                                .foregroundColor(.purple2)
                                .font(.title)
                                .bold()
                            Text("Due on \n 01.15.2023")
                                .multilineTextAlignment(.center)
                        }
                        
                        
                    }
                    .padding(20)
                    .padding(.bottom,10)
                    .onTapGesture {
                        
                        for x in 0...100{
                            DispatchQueue.main.asyncAfter(deadline: .now()+TimeInterval(x/20)){
                                self.fill += 0.01
                            }
                        }
                    }
                    
                    
                    VStack(spacing: 15){
                        
                        HStack{
                            Text("More details about your current lona")
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                        } .padding(.top,50)
                        
                        ForEach(items, id: \.1) { item in
                            MyList(title:item.0, num:item.1, color: item.2)
                        }
                        
                        
                    }
                    .padding()
                    .background(.mygray)
                    .frame(width: 400, height: 400)
                    
                    
                    ZStack{
                        
                        VStack{
                            Image("pig2")
                                .resizable()
                                .scaledToFit()
                                .frame(width:50, height: 50)
                            
                            Text("Make a lonan \n payment")
                                .multilineTextAlignment(.center)
                            
                        }.background(
                            Rectangle()
                                .cornerRadius(20)
                                .frame(width: 140, height: 140)
                            
                                .foregroundColor(Color.white)
                        )  .offset(x:-80)
                        
                        
                        VStack(spacing: 10){
                            Image(systemName: "doc.text.fill")
                                .foregroundColor(.purple1)
                                .font(.title)
                            Text("Issue \n new lona")
                                .multilineTextAlignment(.center)
                        }.background(
                            
                            Rectangle()
                                .cornerRadius(20)
                                .frame(width: 140, height: 140)
                            
                                .foregroundColor(Color.white)
                        )
                        .offset(x:80)
                        
                        
                    }
                    .offset(y:-400)
                    
                    
                }
                
                
            }
            .navigationBarBackButtonHidden(true) // Hide the back button
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    HStack(spacing: 117){
                        Button(action: {}){
                            Image(systemName: "person.fill")
                        }
                        Text("Home")
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
//    Home_View()
//}

struct  Home_View_Previews: PreviewProvider {
    static var previews: some View {
        Home_View()
    }
}



struct MyList: View {
    
    var title : String
    var num : String
    var color : Color
    
    var body: some View {
        
        HStack(spacing: 15){
            Text(title)
                .foregroundColor(.black)
            Spacer()
            
            Text(num)
                .foregroundColor(color)
            
        }.padding()
            .background(
                Rectangle()
                    .cornerRadius(20)
                    .frame(maxWidth:.infinity, maxHeight: .infinity )
                    .foregroundColor(Color.white)
            )
    }
}
