//
//  backgroundCustom.swift
//  FastLoan
//
//  Created by Aljwhra Alnasser on 28/10/2023.
//

import SwiftUI

struct backgroundCustom: View {
    var body: some View {
     // ZStack{
            Rectangle()
            
                .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
            LinearGradient(gradient: Gradient(colors: [Color.purple1,Color.purple2]), startPoint: .top, endPoint: .bottom)
       // }
     
        .ignoresSafeArea()
    }
}

//#Preview {
//    backgroundCustom()
//}

struct  backgroundCustom_Previews: PreviewProvider {
    static var previews: some View {
        backgroundCustom()
    }
}
