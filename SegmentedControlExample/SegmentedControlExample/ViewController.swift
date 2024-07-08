//
//  ViewController.swift
//  OvyoSegmentedControlExample
//
//  Created by Parveen Khan on 04/06/24.
//

import UIKit
import SwiftUISegmentedControl

class ViewController: UIViewController, SegmentedControlDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .gray
        let viewInterface = HMSegementedControl()
        viewInterface.setItems(["HOME", "EURO 2024", "SPORTS", "MOVIES", "TV SHOWS", "KIDS", "LIVE"])
        viewInterface.setItemSelectedTitleColor(.yellow)
        viewInterface.itemSelectedBarColor(.yellow)
        viewInterface.setItemTitleColor(.white)
        // let image: UIImage = UIImage.init(systemName: "star.fill")!
        let image: UIImage = UIImage(named: "star")!
        // image.withTintColor(.red, renderingMode: .alwaysTemplate)
        viewInterface.setItemTintColor(.white)
        viewInterface.setItemSelectedTintColor(.yellow)
        // uncomment it to show item with images
        //viewInterface.setItemsImages([UIImage(named: "home")!, UIImage(named: "contacts")!, UIImage(named: "moneyTransfer")!, UIImage(named: "pcOnDesk")!, UIImage(named: "camper")!, UIImage(named: "userAccount")!, UIImage(named: "star")!])
        //viewInterface.setItemBar(true)
        viewInterface.setFontName("Gotham-Bold")
        viewInterface.setFontSize(12)
        viewInterface.addTarget(self)
        
        //to set other properties
        // viewInterface.setItemBackgroundColor(.red)
        // viewInterface.setItemSelectedBackgroundColor(.green)
        // viewInterface.setCornerRadius(20)
        
        let view1: UIView = viewInterface.create()
        view.addSubview(view1)
        view1.backgroundColor = .black
        view1.frame = CGRect(x: 0, y: 64, width: view.bounds.width, height: 50)
        
    }
    
    func tabDidClickAt(_ index: Int) {
        
        switch index {
        case 0:
            self.view.backgroundColor = .black
        case 1:
            self.view.backgroundColor = .gray
        case 2:
            self.view.backgroundColor = .cyan
        case 4:
            self.view.backgroundColor = .purple
        case 3:
            self.view.backgroundColor = .systemPink
        default:
            self.view.backgroundColor = .white
        }
    }
}

public struct FontLoader {
    public static func loadFont(bundle: Bundle, fontName: String, fontExtension: String) {
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
              let fontData = try? Data(contentsOf: fontURL),
              let provider = CGDataProvider(data: fontData as CFData),
              let font = CGFont(provider) else {
            return
        }
        
        var error: Unmanaged<CFError>?
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
}
