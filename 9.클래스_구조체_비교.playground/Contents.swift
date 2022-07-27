import Foundation

// 옵셔널로 선언된 프로퍼티는 nil을 가질 수 있는 상황. 그래서 나중에 초기화를 해도 됌.
// nil을 담을 수 없는 프로퍼티는 값이 무조건 있어야 함. 그래서 초기화가 필요함 => 이니셜라이저
class Monster {
    var name: String
    var level: Int
    
    init(name: String, level: Int) { // 초기화 구문. 이니셜라이저
        self.name = name
        self.level = level
    }
}

let easy = Monster(name: "쉬운 몬스터", level: 1) // 클래스를 초기화 한 것. 인스턴스를 만들었다.

easy.name = "쉬운몬스터2"
easy.level = 2

var hard = easy

hard.name = "보스몬스터"
hard.level = 100

print(easy.name, easy.level)
print(hard.name, hard.level)

struct StructMonster {
    var name: String
    var level = 1
    
    
}

let structMonster = StructMonster(name: <#T##String#>) // 멤버와이즈 초기화 구문
