//
//  CoinLogoView.swift
//  Crypto
//
//  Created by Lawson Guilbeau on 2/10/24.
//

import SwiftUI

struct CoinLogoView: View {

    let coin: CoinModel

    var body: some View {
        VStack {
            CoinImageView(coin: coin)
                .frame(width: 50, height: 50)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundStyle(Color.theme.accent)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Text(coin.name)
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryText)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
        }
    }
}

struct CoinLogoView_Previews: PreviewProvider {
    static var previews: some View {

        Group {
            CoinLogoView(coin: dev.coin)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.light)

            CoinLogoView(coin: dev.coin)
                .previewLayout(.sizeThatFits)
        }
    }
}
