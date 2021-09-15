import UIKit

var str = "Hello, playground"
print("npuBeT")

func sum(a:Int, b:Int){
    print(a+b)
}

sum(a:1, b:2)
let a = 5
let b = 7
sum(a:a,b:b)

/*func sumOpt(a:Int? = nil)
{
    print(a != nil ? a!:"Empty value")
}
*/
func sumOpt(a:Int? = nil)
{
    if let aNotOptional = a {
        print (aNotOptional)
    }
}

//sumOpt() можно вызвать так -- ошибка
sumOpt(a:9)
sumOpt()


struct User{
    var name, adress: String
    var age: Int
}
//var arrayUsers = [User]()
var arrayUsers = [User]()
arrayUsers.append(User(name: "Dmitry", adress: "North Osetia", age: 24))
arrayUsers
    .append(User(
                name: "Igor",
                adress: "Moscow",
                age: 27))
// Добавление элемента
print(arrayUsers.count) //Количество элементов
for user in arrayUsers{
    print(user.name)
}
arrayUsers[1].name = "Andrey"
print(arrayUsers[1].name)


class UserClass {
    var arrayUsers = [User]()
    // инициализация класса
    init() {
        setUsers()
    }
    private func setUsers(){
        self.arrayUsers.append(User(name: "Dmitry", adress: "North Osetia", age: 24))
        self.arrayUsers.append(User(name: "Igor",adress: "Moscow",age: 27))
    }
    func getAddresses(){
        for user in self.arrayUsers {//self - используем переменную внутри класса
            print(user.adress)
        }
    }
    func getNames() {
        for user in self.arrayUsers{
            print(user.name)
        }
    }
}
let users = UserClass()
print(users.arrayUsers)
users.getAddresses()
//print(users.arrayUsers[0].name)
users.getNames()


