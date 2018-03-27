//
//  Utils.swift
//  HeroesManual
//
//  Created by Colby Chance on 3/18/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import Foundation
import UIKit


struct SIMBA_UI_COLORS {
    static let green = UIColor(red: 36/255, green: 185/255, blue: 102/255, alpha: 1.0)
    static let purple = UIColor(red: 59/255, green: 2/255, blue: 96/255, alpha: 1.0)
}


struct SIMBA_FONT_TYPES {
    static let heading = UIFont(name: "Helvetica-Bold", size: 30)
    static let content = UIFont(name: "HelveticaNeue", size: 20)
}

struct SIMBA_TEXT_STYLES {
    static let bullet = [NSAttributedStringKey.foregroundColor: SIMBA_UI_COLORS.green,
                          NSAttributedStringKey.font: SIMBA_FONT_TYPES.content!]
    static let heading = [NSAttributedStringKey.foregroundColor: SIMBA_UI_COLORS.purple, NSAttributedStringKey.font: SIMBA_FONT_TYPES.heading!]
    static let content = [NSAttributedStringKey.font: SIMBA_FONT_TYPES.content!]
}

struct SIMBA_BULLET_SYMBOLS {
    static let bullet1 = "•"
    static let bullet2 = "-"
}
