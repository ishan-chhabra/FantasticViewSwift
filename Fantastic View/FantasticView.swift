//
//  FantasticView.swift
//  Fantastic View
//
//  Created by Ishan Chhabra on 30/09/18.
//  Copyright © 2018 Ishan Chhabra. All rights reserved.
//

import UIKit

class FantasticView: UIView {

    var colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var duration: TimeInterval = 2.0
    var colorCounter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit(){
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
            UIView.animate(withDuration: self.duration) {
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor  //3
                self.colorCounter+=1
            }
        }
        
        scheduledColorChanged.fire()
    }
}
