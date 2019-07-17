import UIKit


class SchoolViewController: UIViewController
{
    
    @IBOutlet weak var scenarioLabel: UILabel!
    // IB Outlet that will display the scenario
    @IBOutlet weak var optionButton1: UIButton!
    // IB Outlet that will display Option 1
    @IBOutlet weak var optionButton2: UIButton!
    // IB Outlet that will display Option 2
    
    let schoolEpisode: [episode] =
        [episode(scenario: "The club members start to brainstorm their ideas for the robot. You try contributing but they dismiss your ideas before you even get a chance to elaborate. ", options: ["You continue to try and get them to listen", "You give up and passively listen to the rest of the meeting"]),
         episode(scenario: "While the club is working on the robot, you are told to just work on the documentation and aren’t included in the building of the robot. ", options: ["You continue to work on the documentation", "You ask to work on the robot"]),
         episode(scenario: "The members building run into a problem, you suggest some examples on how they could fix it but they dismiss your suggestions.", options: ["You keep suggesting your solutions", "You continue to work on documentation"])
    ]
    
    var currentScenario: episode?
    // '?' Make it an episode optional, so it might have an episode (scenario and options). Else we woudl have a run time error
    var currentIndex = 0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setEpisode()
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
