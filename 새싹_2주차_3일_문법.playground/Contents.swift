import Foundation

var email: String = "jack@jack.com" // 선언과 초기화

var email2: String?
email2 = "jack@jack.com" // 선언만 하고 나중에 초기화

type(of: email)
type(of: email2)

var array = Array(repeating: 0, count: 100)
print(array)

var array2: [Int]? = [Int](1...100)
type(of: array2)

if array2 == nil {
    print("값이 없습니다")
} else {
    print("값이 있습니다")
}

// 삼항연산자 >> 조건 ? ㅇㅇ : ㄴㄴ
let result = array2 == nil ? "값이 없습니다" : "값이 있습니다"

// 반환값: 100% 상황에 대한 대응이 가능해야 함
func example() -> String {
    
    let result = Int.random(in: 1...100)
    
    return result > 50 ? "UP" : "Down"
}

example()

func bmiResult() -> (String, Double) {
    let result = Double.random(in: 1...30)
    
    if result < 18.5 {
        return ("고래밥", 1.0)
    } else if result >= 18.5 && result < 23 {
        return ("고래밥", 2.0)
    } else {
        return ("고래밥", 4.0)
    }
    
    //return 3.0
}

let userBMI = bmiResult()
type(of: userBMI)

// 문자열 보간법: String Interpolation (feat. RawString)
print("\(userBMI.0)님의 BMI 등급은 \(userBMI.1)입니다.")
print(userBMI.0 + "님의 BMI 등급은 " + "\(userBMI.1)" + "입니다.")

// 5.1 return 생략
@discardableResult // 함수는 사용하고 싶지만, result값을 사용하고 싶지 않을 때 뜨는 경고표시를 지우고 싶을 때 사용하는 키워드
func randomNumber() -> Int {
    Int.random(in: 1...100)
}

let plusNumber = randomNumber() + 10
print(plusNumber)

randomNumber()

// 닉네임: 손님
// 매개변수 기본값
// 함수 이름이 같은 함수 > 오버로딩
func sayHello(nickname: String? = "손", gender: Int? = 2) -> String {
    return nickname! + "님, 반갑습니다!"
}

let user = array2 == nil ? "손" : "고래밥"
// sayHello(nickname: user, gender: <#Int?#>)

sayHello()
sayHello(nickname: "테스트")
sayHello(nickname: "son", gender: 1)

print("안녕하세요", separator: "123", terminator: "456")
print("안녕히가세요", separator: "123", terminator: "456")

// 열거형(ex. 남/여/안함 -> 블랙/파랑/흰)
enum Gender: String {
    case man = "남성"
    case woman = "여성"
    case nothing
}

var gender: Gender = Gender.woman // "남자" "여자" "선택안함" // 0 1 2

//if gender == 0 {
//    print("남성입니다")
//} else if gender == 1 {
//    print("여성입니다")
//} else if gender == 2 {
//    print("아직 선택하지 않았습니다")
//}

switch gender {
case .man: print("남성입니다")
case .woman: print("여성입니다")
case .nothing: print("아직 선택하지 않았습니다")
}


gender.rawValue

enum HTTPCode: Int {
    case OK // 0
    case NO_PAGE // 1
    case NOT_FOUND = 404
    case SEVER_ERROR // 405
    
    func showStatus() -> String {
        switch self {
        case .OK: return "정상입니다"
        case .SEVER_ERROR: return "긴급점검"
        case .NOT_FOUND: return "잘못된 문제"
        case .NO_PAGE: return "페이지를 찾을 수 없음"
        }
    }
}

var networkStatus: HTTPCode = .SEVER_ERROR

//switch networkStatus {
//case .OK: print("정상", networkStatus.rawValue)
//case .NO_PAGE: print("잘못된 URL 주소", networkStatus.rawValue)
//default: print("기타", networkStatus.rawValue)
//}

var resultStatus = networkStatus.showStatus()
print(resultStatus)
