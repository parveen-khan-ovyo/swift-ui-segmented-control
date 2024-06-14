# SwiftUISegmentedControl
swift-ui-segmented-control developed in SwiftUI, this can be used to replaced older HMSegmentedControl

<p align="center">
 <img src = https://github.com/OvyoTech/swift-ui-segmented-control/assets/135009495/a9dd86a9-4530-4cb4-839b-5d180d44733a>
</p>

#Features   
📸 Supports both text and images   
↕️ Multiple sizing and selection styles   
📜 Horizontal scrolling for an infinite number of segments   
⚙️ Advanced title styling with text attributes for font, color, etc   
🖥 Compatible with both Swift and Objective-C   
🖥 Compatible with both SwiftUI View and Swift view  
📱 Updated for Xcode 15.4, iOS 13 and Swift 5.9. Supports all the way back to iOS 13!   

# Installation
1. Select File > Swift Packages > Add Package Dependency....
2. Add the Github URL of the Package file: https://github.com/OvyoTech/swift-ui-segmented-control
3. Choose the appropriate version rule.
4. Select Add Package.

# Usage

The code below will create a segmented control with the default looks:

 **Segmented Control in UIView**

```
let viewInterface = HMSegementedControl()
viewInterface.setItems(["HOME", "EURO 2024", "SPORTS", "MOVIES", "TV SHOWS", "KIDS", "LIVE"])
viewInterface.setItemSelectedTitleColor(Color.yellow)
viewInterface.itemSelectedBarColor(Color.yellow)
        
let view1: UIView = viewInterface.create()
view.addSubview(view1)
view1.frame = CGRect(x: 0, y: 64, width: view.bounds.width, height: 50)
```
   
**Segmented Control in SwiftUI View**

```
    var body: some View {   
        let interface = HMSegementedControl()   
        interface.setItems(["HOME", "EURO 2024", "SPORTS", "MOVIES", "TV SHOWS", "KIDS", "LIVE"])   
        return VStack { interface.create()   
                .background(Color.black)    
                .frame(width: UIScreen.main.bounds.width, height: 50)    
                .padding(.top, 20)    
            Spacer()   
        }   
    }   
```  

Included is a demo projects showing how to customize swift-ui-segmented-control with UIView and SwiftUI view.

# Possible Styles
<p align="center">
<img src = https://github.com/OvyoTech/swift-ui-segmented-control/assets/135009495/d78bec5f-d4bb-44be-9334-2ec072bad77e>
</p>

<p align="center">        
<img src = https://github.com/OvyoTech/swift-ui-segmented-control/assets/135009495/745a3fc1-892f-4b7d-a9dc-23b79ed20664>
</p>

<p align="center">        
<img src = https://github.com/OvyoTech/swift-ui-segmented-control/assets/135009495/971076b1-9bf0-4ea1-ad77-f689c8cf39fa>
</p>

#License   

swift-ui-segmented-control is licensed under the terms of the GNU GENERAL PUBLIC LICENSE. Please see the [LICENSE](https://github.com/OvyoTech/swift-ui-segmented-control/blob/develop/LICENSE) file for full details.

# Maintainers
Parveen - parveen.khan@ovyo.com,   
Vishal - vishal@ovyo.com,   
Srikant - srikanth.suryawanshi@ovyo.com.  
