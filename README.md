# NavigationIOSExample

# Navigate to another screen:
```swift
@IBAction func onButtonClick(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mosterController = storyBoard.instantiateViewController(withIdentifier: "mosterController") as! MosterController
        mosterController.mosterProtocol = self
        mosterController.mosterName = textInputName.text
        self.navigationController?.pushViewController(mosterController, animated: true)
}
```

# Do update when go back
```swift
 override func viewDidDisappear(_ animated: Bool) {
        if (mosterProtocol != nil) {
            let name = inputMosterName.text
            mosterProtocol?.doUpdateValue(value: name!)
        }
}
```
