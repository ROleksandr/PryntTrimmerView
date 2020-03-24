//
//  HandlerView.swift
//  PryntTrimmerView
//
//  Created by HHK on 27/03/2017.
//  Copyright © 2017 Prynt. All rights reserved.
//

import Foundation
import UIKit

class HandlerView: UIView {
    private var inset: CGFloat = UIScreen.main.bounds.size.height == 568 ? -40 : -20

    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let hitFrame = bounds.insetBy(dx: inset, dy: inset)
        return hitFrame.contains(point) ? self : nil
    }
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let hitFrame = bounds.insetBy(dx: inset, dy: inset)
        return hitFrame.contains(point)
    }
}
