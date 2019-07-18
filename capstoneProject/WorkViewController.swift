import UIKit

class WorkViewController: UIViewController
{
    var numGems = 0
    
    @IBOutlet weak var scenarioLabel: UILabel!
    // IB Outlet that will display the scenario
    @IBOutlet weak var optionButton1: UIButton!
    // IB Outlet that will display Option 1
    @IBOutlet weak var optionButton2: UIButton!
    // IB Outlet that will display Option 2

    let workEpisode: [episode] =
    [episode(scenario: "You have a creepy coworker named Richard. He’s significantly bigger which intimidates you, and continuously speaks down to you. ", options: ["Tell him to Stop", "Ignore It"]),
    episode (scenario: "You go back to work and are handing out orders. You hand a customer their food and say “Have a good rest of your day” as you do to EVERY customer. He responds with a very disgusting and creepy look, and says Have a wonderful day beautifual.", options: ["Walk away into the back", "Ignore him and continue working"]),
    episode (scenario: "A (male) customer approaches you, complaining about how their meal was made. You suggest making them a new meal, but they only ignore you and continue complaining. ", options: ["Continue listening to their complaints", "Continue suggesting a replacement meal"])
    ]
    var currentScenario: episode?
    // '?' Make it an episode optional, so it might have an episode (scenario and options). Else we woudl have a run time error
    var currentIndex = 0

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setEpisode()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if(segue.identifier == "ShowResult")
        {
            let controller = segue.destination as! ResultsController
            //Setting as Results Controller allows us to acces data and variables from here in the other Controller
            controller.episodeCompleted = "work"
            controller.numberOfGems = numGems
            
        }
    }
    func setEpisode()
    {
        if(currentIndex<workEpisode.count)
        {
            currentScenario = workEpisode[currentIndex]
            scenarioLabel.text = currentScenario?.scenario
            optionButton1.setTitle(currentScenario?.options[0], for: .normal)
            optionButton2.setTitle(currentScenario?.options[1], for: .normal)
        }
    }
    func nextEpisode()
    {
        currentIndex = currentIndex+1
        setEpisode()
    }

    @IBAction func option1Button(_ sender: Any)
    {
        nextEpisode()
    }
    @IBAction func option2Button(_ sender: Any)
    {
        nextEpisode()
    }
}
