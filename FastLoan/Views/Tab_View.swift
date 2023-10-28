//
//  Tab_View.swift
//  FastLoan
//
//  Created by Aljwhra Alnasser on 28/10/2023.
//



import SwiftUI

struct Tab_View: View {
    var body: some View {
        TabView{
            Home_View()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                        
                }
          New_loan_View()
                .tabItem {
                    Image(systemName: "circle.hexagongrid.fill")
                    Text("Explore")
                }            
        }
    }
}

struct Tab_View_previews: PreviewProvider{
    static var previews: some View {
        Tab_View()
    }
}
