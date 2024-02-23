//
//  CoinModel.swift
//  Crypto
//
//  Created by Lawson Guilbeau on 2/3/24.
//

import Foundation

// CoinGecko API info
/*
 
 URL: https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h&locale=en
 
 JSON Response:
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
     "current_price": 43002,
     "market_cap": 843733774131,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 903190596021,
     "total_volume": 7900969213,
     "high_24h": 43247,
     "low_24h": 42884,
     "price_change_24h": -135.27127259226108,
     "price_change_percentage_24h": -0.31358,
     "market_cap_change_24h": -2895050647.2163086,
     "market_cap_change_percentage_24h": -0.34195,
     "circulating_supply": 19617575,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 69045,
     "ath_change_percentage": -37.70306,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 67.81,
     "atl_change_percentage": 63332.25837,
     "atl_date": "2013-07-06T00:00:00.000Z",
     "roi": null,
     "last_updated": "2024-02-04T02:57:53.132Z",
     "sparkline_in_7d": {
       "price": [
         42119.61049464309,
         41969.01474640476,
         42096.26849936433,
         42100.19924104035,
         42243.164276481606,
         42718.87312951667,
         42548.75221005666,
         42416.53676285781,
         42383.132497367864,
         42475.10086290655,
         42598.12287558346,
         42606.1501752891,
         42463.622391185,
         42424.05693330369,
         42385.71898087929,
         42272.6852553511,
         42248.82817305251,
         42312.41578389574,
         42194.23739337939,
         41980.423079023545,
         41749.655704104494,
         41951.05032076392,
         41990.0230743614,
         41821.00081465337,
         42037.094217521364,
         41954.13378472504,
         42159.453294130806,
         42213.87678291097,
         42345.62659933033,
         42201.29568504947,
         42122.659406393344,
         42140.70389674424,
         42029.221583535786,
         42126.29912243522,
         42260.1291812186,
         42303.18928218671,
         42221.033712587014,
         42082.30862183737,
         42003.49246747787,
         41920.84489382702,
         42623.587192208324,
         43130.238726311036,
         43014.86733307615,
         42971.904926316914,
         43003.336805506806,
         43131.262436752215,
         43212.003822979554,
         43156.86535172865,
         43285.81166738812,
         43196.66445851454,
         43444.78049418779,
         43644.372959296204,
         43519.165631588585,
         43407.77698078261,
         43348.72391735571,
         43332.264713625664,
         43358.190533762754,
         43379.362163596474,
         43307.41199355394,
         43475.1502787089,
         43550.95312814601,
         43372.69361415296,
         43302.94347699142,
         43420.61576132656,
         43340.022690955484,
         43517.12566243187,
         43427.77615206975,
         43366.1768139239,
         43545.49270151435,
         43620.35900180388,
         43539.73184624675,
         43337.837788392375,
         42950.147696810294,
         42901.59180517213,
         42798.09230395545,
         42802.57709205834,
         42908.04180387903,
         42962.09763629275,
         42963.59279264482,
         42898.15409330055,
         43001.15792207282,
         42968.116656258055,
         42806.613269106696,
         42415.14688991787,
         42584.5058447302,
         42565.457452555274,
         42771.85621874149,
         42903.13983786931,
         43332.3883596826,
         43485.70897717812,
         43654.51712848932,
         43480.824521543276,
         43327.78818595673,
         42562.12857020692,
         42404.14212145746,
         42648.58414716887,
         42572.11954415061,
         42451.35159730011,
         41971.37081992855,
         42102.1899654303,
         41972.164605150596,
         42027.6010615729,
         42126.91786999389,
         42159.31959067968,
         42168.68058752811,
         42177.58561272934,
         42114.8572672568,
         42172.56557944518,
         42081.525961501626,
         42087.76854973732,
         42209.148906733644,
         42580.4716431663,
         42576.40013290742,
         42661.49152445381,
         42915.93143439214,
         42838.19988104702,
         43163.90997472211,
         42920.94040446363,
         43114.6281099444,
         42948.57887771115,
         43047.60429822887,
         43179.2307450622,
         43123.82590229378,
         43042.112452825015,
         43013.952409832986,
         42956.62278013269,
         43083.92964621275,
         43128.32568318218,
         43079.88947611951,
         42952.65889951286,
         42972.11442946044,
         43065.46992640998,
         43121.354369192275,
         43105.15563374108,
         42615.454720557136,
         42783.145749511794,
         43137.89532095854,
         43205.78780674947,
         42979.559922843335,
         42906.81254969984,
         43053.14720341743,
         42901.482562136305,
         42974.41242225966,
         43152.08654619782,
         43172.84771167777,
         43206.260747557084,
         43196.40064606637,
         43137.50338330662,
         43157.42337824539,
         43170.910924288815,
         43151.1486513564,
         43076.63672703351,
         43051.91886409902,
         43020.53686472216,
         43072.644491941144,
         43040.372624079326,
         42969.81108136093,
         43047.87890324671,
         43055.806660718925,
         43034.07958655818,
         43098.4737720461,
         43092.1189504407,
         43219.75215269059,
         43049.65145516272,
         43027.941944062484,
         43048.37817568016,
         43009.4376323046,
         43014.05074546157
       ]
     },
     "price_change_percentage_24h_in_currency": -0.3135815983374885
   },
 
 */

struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?

    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }

    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }

    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }

    var rank: Int {
        return Int(marketCapRank ?? 0)
    }

}

struct SparklineIn7D: Codable {
    let price: [Double]?
}
