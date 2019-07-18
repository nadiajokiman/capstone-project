import UIKit


class FunViewController: UIViewController
{
    var numGems = 0
    
    @IBOutlet weak var scenarioLabel: UILabel!
    // IB Outlet that will display the scenario
    @IBOutlet weak var optionButton1: UIButton!
    // IB Outlet that will display Option 1
    @IBOutlet weak var optionButton2: UIButton!
    // IB Outlet that will display Option 2
    
    let schoolEpisode: [episode] =
        [episode(scenario: "Your waiter comes by the table to ask for your water order. “Good evening ladies. What brings you here tonight?”", options: ["Tell him that the wink made you uncomfortable", "Ignore it and tell him your order"]),
         episode(scenario: "He responds with “Hey babe, what do you want to eat tonight?”", options: ["Tell him not to call you babe", "Ignore his comment and tell him your order"]),
         episode(scenario: "He brings everyone their food and says “Enjoy babe,” when he hands it to you.", options: ["Tell him to stop", "Ignore his comment and continue eating your food"]),
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
            controller.episodeCompleted = "fun"
            controller.numberOfGems = numGems
            
        }
    }
    func setEpisode()
    {
        if(currentIndex<schoolEpisode.count)
        {
            currentScenario = schoolEpisode[currentIndex]
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
    @IBAction func optionButton1(_ sender: Any)
    {
        nextEpisode()
    }
    @IBAction func optionButton2(_ sender: Any)
    {
        nextEpisode()
    }
    
}
