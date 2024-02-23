//
//  MarketDataModel.swift
//  Crypto
//
//  Created by Lawson Guilbeau on 2/7/24.
//

import Foundation

// JSON Data:
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response: 
 {
 "data": {
   "active_cryptocurrencies": 12635,
   "upcoming_icos": 0,
   "ongoing_icos": 49,
   "ended_icos": 3376,
   "markets": 931,
   "total_market_cap": {
     "btc": 40134912.03851876,
     "eth": 735199258.156932,
     "ltc": 26045647391.2601,
     "bch": 7437557475.238035,
     "bnb": 5796515607.129068,
     "eos": 2493043030583.8364,
     "xrp": 3503074534256.185,
     "xlm": 16450301152879.316,
     "link": 95569601290.217,
     "dot": 257284924579.05453,
     "yfi": 247715929.86511245,
     "usd": 1789317272284.146,
     "aed": 6572162341099.672,
     "ars": 1485399600720496.2,
     "aud": 2740160470775.943,
     "bdt": 196234409147547.1,
     "bhd": 674302424743.0096,
     "bmd": 1789317272284.146,
     "brl": 8894517228797.256,
     "cad": 2406586998290.372,
     "chf": 1561655278462.3457,
     "clp": 1704111687208020,
     "cny": 12722761532849.22,
     "czk": 41412497534243.35,
     "dkk": 12375913115520.541,
     "eur": 1659582823457.185,
     "gbp": 1415772241253.019,
     "gel": 4750637357914.425,
     "hkd": 13994574252960.621,
     "huf": 644353404821043.2,
     "idr": 28006854745089964,
     "ils": 6537547998467.327,
     "inr": 148476937096948.84,
     "jpy": 265343449923492.12,
     "krw": 2374385655569428,
     "kwd": 550911105646.2955,
     "lkr": 560133799766685.5,
     "mmk": 3754951769710014.5,
     "mxn": 30510006673171.465,
     "myr": 8521623509253.261,
     "ngn": 1619332131417155,
     "nok": 18919489323878.234,
     "nzd": 2923697900663.2173,
     "php": 100080090094762.58,
     "pkr": 499145092315335.4,
     "pln": 7209152132763.746,
     "rub": 161986905185104.7,
     "sar": 6710417518777.257,
     "sek": 18733266128765.227,
     "sgd": 2402833010653.1177,
     "thb": 63753374411484.234,
     "try": 54730518401332.164,
     "twd": 56098671542017.95,
     "uah": 67222284442281.48,
     "vef": 179164338473.8117,
     "vnd": 43705886184530584,
     "zar": 33775510695090.01,
     "xdr": 1341510206501.4094,
     "xag": 80444251179.55978,
     "xau": 877856946.9553239,
     "bits": 40134912038518.76,
     "sats": 4013491203851875.5
   },
   "total_volume": {
     "btc": 1486504.9349474423,
     "eth": 27230091.45681218,
     "ltc": 964670941.4449742,
     "bch": 275470041.650666,
     "bnb": 214689621.02689183,
     "eos": 92336586272.88158,
     "xrp": 129745832697.05147,
     "xlm": 609281361365.8339,
     "link": 3539678467.7769566,
     "dot": 9529242513.53262,
     "yfi": 9174828.933378031,
     "usd": 66272200942.769135,
     "aed": 243417794062.7912,
     "ars": 55015788616176.31,
     "aud": 101489248523.75673,
     "bdt": 7268071680943.692,
     "bhd": 24974612653.081665,
     "bmd": 66272200942.769135,
     "brl": 329432483666.41095,
     "cad": 89134453463.00104,
     "chf": 57840123728.016884,
     "clp": 63116381825009.84,
     "cny": 471221857583.4668,
     "czk": 1533823766551.937,
     "dkk": 458375389063.91547,
     "eur": 61467135013.413704,
     "gbp": 52436951185.1529,
     "gel": 175952693503.0527,
     "hkd": 518326878841.7693,
     "huf": 23865369760805.84,
     "idr": 1037309556103587.5,
     "ils": 242135758335.553,
     "inr": 5499244635410.472,
     "jpy": 9827711778431.19,
     "krw": 87941789708794.3,
     "kwd": 20404481676.06833,
     "lkr": 20746069077837.46,
     "mmk": 139074786829147.17,
     "mxn": 1130020552715.3464,
     "myr": 315621356989.9386,
     "ngn": 59976341853206.18,
     "nok": 700734418444.4463,
     "nzd": 108287053263.26035,
     "php": 3706736610586.572,
     "pkr": 18487187470834.348,
     "pln": 267010432509.61353,
     "rub": 5999622815254.298,
     "sar": 248538448213.03635,
     "sek": 693837139131.3263,
     "sgd": 88995414385.42302,
     "thb": 2361278519590.8687,
     "try": 2027092662311.8289,
     "twd": 2077765911413.2944,
     "uah": 2489758977570.193,
     "vef": 6635835480.39948,
     "vnd": 1618765613269642,
     "zar": 1250967319435.8994,
     "xdr": 49686456029.425125,
     "xag": 2979470249.0390844,
     "xau": 32513804.504531935,
     "bits": 1486504934947.4424,
     "sats": 148650493494744.22
   },
   "market_cap_percentage": {
     "btc": 48.88905875334113,
     "eth": 16.34782442132684,
     "usdt": 5.36895381611151,
     "bnb": 2.653356107118404,
     "sol": 2.4924822013593007,
     "xrp": 1.5554275165074827,
     "usdc": 1.5369529802575812,
     "steth": 1.2978348401445101,
     "ada": 0.9928309560344467,
     "avax": 0.725512446069495
   },
   "market_cap_change_percentage_24h_usd": 2.901742320978901,
   "updated_at": 1707358339
 }
}
 
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }

    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }

    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }

    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }

}
