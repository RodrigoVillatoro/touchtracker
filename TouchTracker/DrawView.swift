//
//  DrawView.swift
//  TouchTracker
//
//  Created by Rodrigo Villatoro on 3/11/16.
//  Copyright © 2016 Rodrigo Villatoro. All rights reserved.
//

import UIKit

class DrawView: UIView {
    
    var currentLine: Line?
    var finishedLines = [Line]()
    
    func strokeLine(line: Line) {
        let path = UIBezierPath()
        path.lineWidth = 10
        path.lineCapStyle = CGLineCap.Round
        
        path.moveToPoint(line.begin)
        path.addLineToPoint(line.end)
        path.stroke()
    }
    
    override func drawRect(rect: CGRect) {
        
        // Draw finished lines in black
        UIColor.blackColor().setStroke()
        for line in finishedLines {
            strokeLine(line)
        }
        
        if let line = currentLine {
            // If there is a line currently beng drawn, do it in red
            UIColor.redColor().setStroke()
            strokeLine(line)
        }
        
    }
    
}
