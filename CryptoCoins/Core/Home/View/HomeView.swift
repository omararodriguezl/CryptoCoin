//
//  HomeView.swift
//  CryptoCoins
//
//  Created by Omar Rodriguez on 11/28/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView (.vertical, showsIndicators: false){
                // Top movers view
                TopMoversView(viewModel: viewModel)
                
                Divider()
                //all coins views
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
