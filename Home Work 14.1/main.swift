//
//  main.swift
//  Home Work 14.1
//
//  Created by Nor Gh's Mac mini on 6/17/22.
//  Copyright © 2022 Nor Gh's Mac mini. All rights reserved.
//

import Foundation

print("Hello, World!")

//1. Ստեղծել class որը MyTime անունով որը պետք է ունենա ժամանակը բնութագրող property-եր (ժամ, րոպե, վարկյան)։
//Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները՝։
//- փոխել ժամի սկզբնական արժեքը
//- փոխել րոպեի սկզբնական արժեքը
//- փոկել վարկյանի սկզբնական արժեքը
//- վերադաձնի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ss (23:45:31)
//- տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ss (23:45:31)
//- ունենալ addSecond ֆունկցիա որը կավելացնի ընդանուր ժամին վարկյաներ և կաղված արժեքից կփոխի րոպեն և ժամը


class MyTime {
    
    let myDefoultTime = 01
    
    var hour: Int = Int(18)
    var minute: Int = Int(45)
    var second: Int = Int(31)
    
    func setHour(hours:Int){
        if hour < 24 {
            self.hour += hours
        } else if hour > 24 {
            print("Hour now is zero please insert correct hours!")
            hour = myDefoultTime
        }
    }
    func setMinute(minute:Int){
        if minute < 60 {
            self.minute += minute
        } else if minute > 60 {
            print("Hour now is zero please insert correct hours!")
            self.minute = myDefoultTime
        }
    }
    func setSecond(second:Int){
        if second < 60 {
            self.second += second
        } else if second > 60 {
            print("Hour now is zero please insert correct hours!")
            self.second = myDefoultTime
        }
    }
    
    func getMytime() -> String {
        return "hh:mm:ss (\(hour):\(second):\(minute))"
    }
    
    func printMyTime(){
        print("hh:mm:ss (\(hour):\(second):\(minute))")
    }
    
    func addSecond(number:Int){
        setHour(hours: number)
        setMinute(minute: number)
        setSecond(second: number)
    }
    // ունենալ addSecond ֆունկցիա որը կավելացնի ընդանուր ժամին վարկյաներ և կաղված արժեքից կփոխի րոպեն և ժամը
}

var time = MyTime()

//time.addSecond(number: 3)

//time.setHour(hours: 15)
//time.setMinute(minute: 35)
//time.setSecond(second: 11)

//print(time.getMytime())





//2. Ստեղծել class որը MyDate անունով որը պետք է ունենա ամսաթիվը  և ժամանակը բնութագրող property-եր (օր, ամիս, տարի, MyTime տիպի property-ի որը ստեղծվել էր առաջին խնդրում)։
//Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները՝։
//- փոխել օրվա սկզբնական արժեքը     //
//- փոխել ամսվա սկզբնական արժեքը   //
//- փոխել տարվա սկզբնական արժեքը  //
//- փոխել ժամի սկզբնական արժեքը    //
//- փոխել րոպեի սկզբնական արժեքը   //
//- փոկել վարկյանի սկզբնական արժեքը   //
//- վերադաձնի ամսաթիվի տեքստային տարբերակը այս ֆորմատով dd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)
//- տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ssdd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)
//ունենալ addSecond ֆունկցիա որը կավելացնի ընդանուր ժամին վարկյաներ և կաղված արժեքից կփոխի րոպեն և ժամը, օրը, ամիսը, տարին

class MyDate {

    let myDefoultDate = 01
    var currentYear = 2022

    var day: Int = Int(02)
    var mounth: Int = Int(03)
    var year: Int = Int(2022)
    var time = MyTime()

    func setDay(day:Int){
        if day < 30 {
            self.day += day
        } else if day > 30 {
            print("Please insert correct day : \(self.day)")
            self.day = myDefoultDate
        }
    }
    func setMounth(mounth:Int){
        if mounth < 12 {
            self.mounth += mounth
        } else if mounth > 12 {
            print("Please insert correct Mounth : \(self.mounth)")
            self.mounth = myDefoultDate
        }
    }
    func setYear(year:Int){
        if year < 2023 {
            self.year = year
        } else if year > 2023 {
            print("Please insert correct Year : \(self.currentYear)")
            self.mounth = currentYear
        }
    }
    func setHour(hour:MyTime){
        if hour.hour < 24 {
            self.time.hour = hour.hour
        } else if hour.hour < 24 {
            print("Please insert correct Hour : \(time.myDefoultTime)")
            self.time.hour = time.myDefoultTime
        }
    }
    func setSecond(second:MyTime){
        if second.second < 60 {
            self.time.second = second.second
        } else if second.second > 60 {
            print("Please insert correct Hour : \(time.myDefoultTime)")
            self.time.second = time.myDefoultTime
        }
    }
    func setMiunte(minute:MyTime){
        if minute.minute < 60 {
            self.time.minute = minute.minute
        } else if minute.minute > 60 {
            print("Please insert correct Minute : \(time.myDefoultTime)")
            self.time.minute = time.myDefoultTime
        }
    }
    func returnDateAndTime() -> String {
        "dd:mm:yyyy hh:mm:ss (\(self.day):\(self.mounth):\(self.year) \(time.hour):\(time.minute):\(time.second))"
    }
    func printDateAndTime(){
        print("dd:mm:yyyy hh:mm:ss (\(self.day):\(self.mounth):\(self.year) \(time.hour):\(time.minute):\(time.second))")
    }
    
    
    //- վերադաձնի ամսաթիվի տեքստային տարբերակը այս ֆորմատով dd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)     //
    //- տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ssdd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)       //
    //ունենալ addSecond ֆունկցիա որը կավելացնի ընդանուր ժամին վարկյաներ և կաղված արժեքից կփոխի րոպեն և ժամը, օրը, ամիսը, տարին

    
    func addSecond(add second:Int){
        time.addSecond(number: second)
        setDay(day: second)
        setMounth(mounth: second)
        setYear(year: second)
    }
}


let data = MyDate()
data.addSecond(add: 1)

print(data.returnDateAndTime())



//- վերադաձնի ամսաթիվի տեքստային տարբերակը այս ֆորմատով dd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)     //
//- տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ssdd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)       //
//ունենալ addSecond ֆունկցիա որը կավելացնի ընդանուր ժամին վարկյաներ և կաղված արժեքից կփոխի րոպեն և ժամը, օրը, ամիսը, տարին
