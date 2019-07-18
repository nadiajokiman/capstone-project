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
            "background" : UIImage(named: "work")!,
                "outcome" : "Your male colleague approaches the customer and suggests making them a new meal. They immediately agree and walk away to wait for their meal.",
                    "statistics" : "In 2012, Women made comparatively 77.5% of what men made. Even women who work in unionized professions only make about 82% of men’s income and as women go up the pay gap get bigger, 72.3% in upper-level women executive salaries based on statistics provided by the Bureau of Labor Statistics and the U.S. Department of Labor. According to NPRs latest Survey about 38 percent of women have said to have experience sexual harassment at the workplace."
        ],
        "school" : [
            "episodes" :    [episode(scenario: "The club members start to brainstorm their ideas for the robot. You try contributing but they dismiss your ideas before you even get a chance to elaborate. ", options: ["You continue to try and get them to listen", "You give up and passively listen to the rest of the meeting"]),
                             episode(scenario: "While the club is working on the robot, you are told to just work on the documentation and aren’t included in the building of the robot. ", options: ["You continue to work on the documentation", "You ask to work on the robot"]),
                             episode(scenario: "The members building run into a problem, you suggest some examples on how they could fix it but they dismiss your suggestions.", options: ["You keep suggesting your solutions", "You continue to work on documentation"])
            ],
            "background" : UIImage(named: "school")!,
                "outcome" : "The other members don’t let you contribute and dismiss you because you just joined. They told you that you must not know as much as they do, so everything you say doesn’t mean much.",
                    "statistics" : "About 74 percent of young girls express interest in STEM fields and computer science according to the Observer. However, only 28 percent of Computer Science Degrees are earned by women. Since 1991, peaking at 36 percent the rate of women in computing roles has begun to decline. According to the National Center for Women and Information Technology 49 percent of the Intel Science and Engineering Fair 2018 finalist were female."
        ],
        "fun" : [
            "episodes" :    [episode(scenario: "Your waiter comes by the table to ask for your water order. “Good evening ladies. What brings you here tonight?”", options: ["Tell him that the wink made you uncomfortable", "Ignore it and tell him your order"]),
                             episode(scenario: "He responds with “Hey babe, what do you want to eat tonight?”", options: ["Tell him not to call you babe", "Ignore his comment and tell him your order"]),
                             episode(scenario: "He brings everyone their food and says “Enjoy babe,” when he hands it to you.", options: ["Tell him to stop", "Ignore his comment and continue eating your food"]),
            ],
            "background" : UIImage(named: "restaurant")!,
                "outcome" : "He brings back the check for the table and writes “I hope you babes enjoyed the food 😉” You pay and leave feeling disgusted and uncomfortable, that you and your friends were treated that way; you were wanting to have a good time.",
                    "statistics" : "According to the National Museum of Women in the Arts and a recent data survey of the permanent collections of 18 prominent art museums in the U.S. out of over ten thousand artist, 87 percent of them are male. According to the Observer, the tech industry isn’t any better; women own only five percent of startups even though they perform three times better than those with male CEOs."
        ]
        
    ]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
}
