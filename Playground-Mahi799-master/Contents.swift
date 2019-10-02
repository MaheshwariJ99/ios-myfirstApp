    //Task2
struct Cat {
    let name: String
    //: - Note: nil to represent that cat is in a super-position, true and false means the cat is alive and not respectively.
    var isAlive: Bool?
}

protocol Explosive {
    //: - TODO: when detonated, the explosives should go off 50% of the time
    func detonate () -> Bool
}

protocol Bunker {
    //: - TODO: when initialising cat's `isAlive` should be set to nil, to represent that cat is in a super-position
    init(occupent: Cat, explosive: Explosive)
    
    var occupent: Cat { get set }
    var explosive: Explosive { get }
    
    //: - TODO: By the mere action of opening the bunker door, determines the state of the cat's life.
    func open()
}

func checkIfTheCatIsAlive(cat: Cat) {
    // TODO: if the cat is alive, print "Its alive!!! 😸"
    if(cat.isAlive == true)
    {
        print("Its alive!!!")
    }
    // TODO: if the cat is dead, print "Oh no 😿"
    if(cat.isAlive == false)
    {
        print("Oh no")
    }
    // TODO: if the cat is neither alive nor dead, print "Its cat-tum superposition! 🤷‍♂😼"
    if(cat.isAlive == nil)
    {
        print("Its cat-tum superposition!")
    }
}

var cat = Cat(name:"Jellie",isAlive:nil)

extension Explosive{
    func detonate () -> Bool{
        return Bool.random()
    }
}
struct tnt:Explosive{
    func detonate()->Bool{
        return Bool.random()
    }
}
let TNT = tnt()
struct bunker : Bunker {
    func open() {
        checkIfTheCatIsAlive(cat: occupent)
        
    }
    var occupent: Cat
    var explosive: Explosive
    
}
var bunker1 = bunker(occupent:cat,explosive:TNT)
bunker1.open()
if(bunker1.explosive.detonate()==true){
    bunker1.occupent.isAlive=false
}
else{
    bunker1.occupent.isAlive=true
}
bunker1.open()
/*:
 ### 2.2 Run the experiment
 Using the implementations of the protocols and the functions, write the following program
 
 Your program should do the following
 1. Create a 'living' cat named "Jellie"
 2. Create a TNT
 3. Create a Bunker and place Jellie and the TNT inside of the bunker,
 4. Query the state of the cat
 - Note: at this point, the cat should be neither alive nor dead.
 5. Open the bunker to find out whether the explosives exploded or not (wave function collapsed!)
 6. Query the state of the cat,
 * if the cat is alive, print `Its alive!!!`
 * if the cat is dead, print `Oh no :(`
 - Note: at this point, the cat should be either alive or dead; but not both
 */

/*:
 ### 2.3 Tweaking the Experiment
 
 Implement the following protocol for `DangerousBunker` and re-write the program to make use of the new `DangerousBunker`'s implementation
 
 - Note: The difference of `DangerousBunker` compared to `Bunker` should be that,
 * The DangerousBunker takes in more than just one explosive
 * When one explosive is exploded on detonation, all explosives will explode as a chain reaction
 */

protocol DangerousBunker {
    init(occupent: Cat, explosives: [Explosive])
    var occupent: Cat { get set }
    var explosives: [Explosive] { get }
    func open()
}

