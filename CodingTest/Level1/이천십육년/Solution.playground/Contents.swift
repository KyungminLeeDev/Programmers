import UIKit

enum Day: Int {
    case FRI = 0
    case SAT
    case SUN
    case MON
    case TUE
    case WED
    case THU
    
    func getString() -> String {
        switch self {
        case .FRI:
            return "FRI"
        case .SAT:
            return "SAT"
        case .SUN:
            return "SUN"
        case .MON:
            return "MON"
        case .WED:
            return "WED"
        case .TUE:
            return "TUE"
        case .THU:
            return "THU"
        }
    }
}


func calcDayFromMonth(month: Int) -> Int {
    var day: Int = 0
    
    for i in 1..<month {
        switch i {
        case 1, 3, 5, 7, 8, 10, 12:
            day += 31
            break
        case 2:
            day += 29
            break
        
        case 4, 6, 9, 11:
            day += 30
            break
            
        default:
            break
        }
    }
    
    return day
}


func solution(_ a:Int, _ b:Int) -> String {
    var day = calcDayFromMonth(month: a) + b - 1
    
    day = day % 7
    
    let enumDay = Day.init(rawValue: day)
    
    return enumDay!.getString()
}
