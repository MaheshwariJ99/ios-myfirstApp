var firstName:String = readLine() ??
var lastName:String = readLine() ??
var age = readLine() ??

var actualAge = Int(age)

//struct Profile {
    //let firstName: String
    //let lastName: String
    //let age: Int?
//}

func validate(firstName: String, lastName:String, age:Int?) -> Profile? {

// TODO
 guard age ! = nil else {
	print("Age cannot be optional")
	return nil
}
 let minAge:Int = 15
 let maxAge:Int = 55
 guard minAge <= age! && maxAge >= age! else {
   print("Age is not valid")
retun nil
}
var profileP = profile(firstName: String, lastNmae:String, age:Int) -> profileP?
print(profileP)
return nil
}




