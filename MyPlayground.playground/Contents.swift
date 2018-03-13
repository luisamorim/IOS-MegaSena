import UIKit
import PlaygroundSupport


public class CustomComponent:UIView {
    
    public override init(frame: CGRect) {
        super.init(frame:frame)
        setupViews()
    }
    
    public func setupViews(){
        self.addSubview(label)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    var label:UILabel = {
        let lbl = UILabel(frame:CGRect(x: 0, y: 0, width: 100, height: 20))
        lbl.text = "1"
        return lbl
    }()

}

public class RootViewController:UIViewController{
    public override func viewDidLoad() {
        view = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 650))
        view.backgroundColor = UIColor.white
        
        let customView = CustomComponent(frame: view.bounds)
        view.addSubview(customView)
    }
}

PlaygroundPage.current.liveView = RootViewController()
