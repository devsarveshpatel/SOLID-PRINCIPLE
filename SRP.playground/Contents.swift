//MARK: - Single Responsibility Principle (SRP)
/*
 According to SRP There should be never more than one reason for a class to change.
 */

import Foundation
class Handler{
    func handle(){
        let data = apiCall()
        let array = parseData(data: data)
        saveToDB(responseModel: array)
    }
    func apiCall() -> String{
       return "Data"
    }
    func parseData(data: String) -> String{
        return "[ResponseModel]"
    }
    func saveToDB(responseModel: String){
        print("\(#function) : Core Data/Realm etc.")
       
    }
}
//MARK: - This class have 3 responsibilty : SRP FAIL
/*
 1. API Call
 2. Parse Data
 3. SaveToDB
 */
