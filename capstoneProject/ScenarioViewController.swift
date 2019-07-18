import UIKit

struct episode
{
    var scenario: String
    var options: [String]
}

class ScenarioViewController: UIViewController
{
    var scenarios = [
        "work" : [
            "episodes" :     [episode(scenario: "You have a creepy coworker named Richard. He’s significantly bigger which intimidates you, and continuously speaks down to you. ", options: ["Tell him to Stop", "Ignore It"]),
                              episode (scenario: "You go back to work and are handing out orders. You hand a customer their food and say “Have a good rest of your day” as you do to EVERY customer. He responds with a very disgusting and creepy look, and says Have a wonderful day beautifual.", options: ["Walk away into the back", "Ignore him and continue working"]),
                              episode (scenario: "A (male) customer approaches you, complaining about how their meal was made. You suggest making them a new meal, but they only ignore you and continue complaining. ", options: ["Continue listening to their complaints", "Continue suggesting a replacement meal"])
            ],
            "background" : UIImage(named: "work")!
        ],
        "school" : [
            "episodes" :    [episode(scenario: "The club members start to brainstorm their ideas for the robot. You try contributing but they dismiss your ideas before you even get a chance to elaborate. ", options: ["You continue to try and get them to listen", "You give up and passively listen to the rest of the meeting"]),
                             episode(scenario: "While the club is working on the robot, you are told to just work on the documentation and aren’t included in the building of the robot. ", options: ["You continue to work on the documentation", "You ask to work on the robot"]),
                             episode(scenario: "The members building run into a problem, you suggest some examples on how they could fix it but they dismiss your suggestions.", options: ["You keep suggesting your solutions", "You continue to work on documentation"])
            ],
            "background" : UIImage(named: "school")!
        ],
        "fun" : [
            "episodes" :    [episode(scenario: "Your waiter comes by the table to ask for your water order. “Good evening ladies. What brings you here tonight?”", options: ["Tell him that the wink made you uncomfortable", "Ignore it and tell him your order"]),
                          episode(scenario: "He responds with “Hey babe, what do you want to eat tonight?”", options: ["Tell him not to call you babe", "Ignore his comment and tell him your order"]),
                          episode(scenario: "He brings everyone their food and says “Enjoy babe,” when he hands it to you.", options: ["Tell him to stop", "Ignore his comment and continue eating your food"]),
            ],
            "background" : UIImage(named: "restaurant")!
            ]
        
]

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

}
