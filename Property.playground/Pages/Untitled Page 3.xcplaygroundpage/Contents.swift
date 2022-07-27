//: [Previous](@previous)

import Foundation
struct ExchangeRate {
    
    var currencyRate: Double {

        willSet {
            print("환율 변동 예정 : USD:\(currencyRate)->\(newValue) ")
        }
        
        didSet {
            print("환율 변동 완료 : USD:\(oldValue)->\(currencyRate) ")
        }
    }
    
    var USD: Double {
        willSet {
            print("환전 금액: USD:\(newValue)로 환전될 예정")
        }
        
        didSet {
            print("KRW:\(KRW)원 ->\(USD)로 환전되었음")
        }
    }
    
    var KRW: Double {
        get {
            return USD * currencyRate
        }
        set {
            USD = newValue / currencyRate
        }
    }
    
    init(currencyRate: Double, USD: Double) {
        self.currencyRate = currencyRate
        self.USD = USD
    }
}
var rate = ExchangeRate(currencyRate: 1200, USD: 1)
rate.KRW = 500000
rate.currencyRate = 1350
rate.KRW = 500000
