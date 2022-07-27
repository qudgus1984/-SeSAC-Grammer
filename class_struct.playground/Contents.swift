import Foundation
// SuperClass, SubClass, BaseClass

// BaseClass
class Monster {
    var clothes = "Orange + Christmas"
    var speed = 5
    var power = 20
    var expoint: Double = 500
    
    func attack() {
        print("공격!!")
    }
}

// var nickname = "고래밥" // 초기화
var easyMonster = Monster() // 초기화(인스턴스)
easyMonster.clothes
easyMonster.power

easyMonster.attack()
easyMonster.attack()

// BossMonster : SubClass Monster : SuperClass
class BossMonster: Monster {
    var levelLimit = 500
    
    func bossAttack() {
        print("스페셜 공격")
    }
    // 재정의
    override func attack() {
        super.attack()
        print("오버라이드 공격!")
    }
}

var finalBoss = BossMonster()
finalBoss.bossAttack()
finalBoss.levelLimit
finalBoss.speed
finalBoss.clothes
finalBoss.attack()

// 구조체는 값 타입, 클래스는 참조 타입

// (구조체) 값 타입
var nickname = "고래밥"

var subNickname = nickname

subNickname = "칙촉"

print(nickname) // 고래밥

print(subNickname) // 칙촉

// (클래스) 참조 타입
var miniMonster = Monster()

var bossMonster = miniMonster

bossMonster.power = 5000

print(miniMonster.power) // 5000
print(bossMonster.power) // 5000


// 실습

class mapleStoryBegginer {
    var power = 10
    var speed = 5
    var hp = 200
    var mp = 100
    
    func attack() {
        print("기본 공격")
    }
    func begginerSkill() {
        print("달팽이 던지기!")
    }
}

class mapleStoryWizard: mapleStoryBegginer {
    func formerWizard() {
        super.mp += 100
    } // 함수로 만들었을 때 super class의 저장속성을 변환시키지 않음. 이유가 뭐였지...?
    func WizardSkill1() {
        print("에너지볼트!")
    }
    func WizardSkill2() {
        print("매직 클로!!")
    }
}


class mapleStoryWarrior: mapleStoryBegginer {
    func WarriorSkill() {
        func formerWarrior() {
            super.hp += 100
            super.power += 10
        }
        print("파워 어택!!")
    }
}

class mapleStoryThief: mapleStoryBegginer {
    func formerThief() {
        super.speed += 5
        super.hp += 50
    }
    override func attack() {
        print("표창 던지기!")
    }
    func ThiefSkill() {
        print("표창 두개던지기!")
    }
}

class mapleStoryArcher: mapleStoryBegginer {
    
    func formerArcher() {
        super.mp += 50
        super.speed += 5
    }
    override func attack() {
        print("화살 쏘기")
    }
    func ArcherSkill() {
        print("화살 두개쏘기!")
    }
    
}

// 초보자
var begginer = mapleStoryBegginer()

// 4개 전직 완료
var Wizard = mapleStoryWizard()
Wizard.formerWizard()
var Thief = mapleStoryThief()

var Archer = mapleStoryArcher()
var Warrior = mapleStoryWarrior()
