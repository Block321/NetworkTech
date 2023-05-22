import UIKit

public struct NetworkTech {
    public init() {
        let view = UIView(frame: UIApplication.shared.windows.first?.rootViewController?.view.frame ?? CGRect.zero)
        view.backgroundColor = UIColor.red
        UIApplication.shared.windows.first?.rootViewController?.view.addSubview(view)
    }
}
