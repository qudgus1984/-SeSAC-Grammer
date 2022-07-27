import Foundation


// 현재 시간 정보를 받아서 문자열로 변환해주는 함수
func dateFormatStyle() {
    
    let value = Date()
    
    print(value)
    print(value.formatted())
    print(value.formatted(date: .omitted, time: .shortened))
    print(value.formatted(date: .complete, time: .shortened))
    
    let locale = Locale(identifier: "ko-KR")
    
    let result = value.formatted(.dateTime.locale(locale).day().month(.twoDigits).year())
    print(result)
    
    let result2 = value.formatted(.dateTime.day().month(.twoDigits).year())
    print(result2)
}

dateFormatStyle()

// Number, String을 받아서 변환해주는 함수

func numberFormatStyle() {
    print(80.formatted(.percent))
    
    print(1345678901.formatted())
    
    print(1984333232.formatted(.currency(code: "krw")))
    
    let result = ["루피", "우솝", "상디", "조로"].formatted()
    print(result)
}

numberFormatStyle()
