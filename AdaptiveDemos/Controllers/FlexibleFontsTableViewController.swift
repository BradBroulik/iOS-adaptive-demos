import UIKit

class FlexibleFontsViewController: UITableViewController {
    
    var clinics = [
        "Mayo Clinic":                  "5300 Grand Del Mar Flu Court, Rochester, MN 55130",
        "Cleveland Clinic":             "166 Wellness St, Cleveland, OH 73666",
        "Hospital of Cornell":          "6526 Rx Yount Street, New York, NY 83877",
        "Drake University Hospital":    "6462 Washington Street Minute Clinic, Durham, NC 94599",
        "Brigham Hospital":             "321 Davey Tooth Ache Street, Boston, MA 93938",
        "Massachuesetts Hospital":      "25 Healthy Activity Street, Boston, MN 99944",
        "UCLA Medical Center":          "22 E-Stress Street, Los Angeles, CA 99933",
        "Cedars Medical Center":        "31 Elizabeth 10000 Steps St, Los Angelas, CA 83933",
        "St. Francis Hospital":         "Waterfront iOS Research & Development, Roslyn, NY 88332",
        "Mount Sinai Hospital":         "73 Prossers Flexible Road, New York, NY 89392"
    ]
    
    var clinicNames:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clinicNames = [String](clinics.keys)
        
        tableView.estimatedRowHeight = 68.0
        tableView.rowHeight = UITableViewAutomaticDimension

        showLeftBarButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Table View Delegate
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clinics.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! CustomSubtitleTableViewCell
        
        let clinicName = clinicNames[indexPath.row]
        cell.titleLabel.text = clinicName
        cell.detailLabel.text = clinics[clinicName]
        
        return cell
    }
    
}