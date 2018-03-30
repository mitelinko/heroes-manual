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
    static let bullet = [NSAttributedStringKey.foregroundColor: SIMBA_UI_COLORS.green, NSAttributedStringKey.font: SIMBA_FONT_TYPES.content!]
    static let heading = [NSAttributedStringKey.foregroundColor: SIMBA_UI_COLORS.purple, NSAttributedStringKey.font: SIMBA_FONT_TYPES.heading!]
    static let content = [NSAttributedStringKey.font: SIMBA_FONT_TYPES.content!]
}

struct SIMBA_PARAGRAPH_STYLES {
    static let point = Paragraph_Data(symbol: "•", firstLineHeadIndent: 0, headIndent: 14)
    static let subpoint = Paragraph_Data(symbol: "-", firstLineHeadIndent: 30, headIndent: 44)
}

struct USER_METADATA {
    static let agreementKey = "UserAcceptedAgreement"
    static let currentAgreementValue : Int = 1
    static let professionKey = "UserProfessionKey"
}

enum USER_PROFESSION: String {
    case healthcare = "HealthCare"
    case firstResponder = "FirstResponder"
    case socialWorker = "SocialWorker"
    case justice = "Justice"
    case none = "None"
}

let LANDING_PAGE_DICTIONARY = [USER_PROFESSION.healthcare.rawValue: "HealthcareHomeViewController", USER_PROFESSION.firstResponder.rawValue: "FirstResponderHomeViewController", USER_PROFESSION.socialWorker.rawValue: "SocialWorkerHomeViewController", USER_PROFESSION.justice.rawValue: "JusticeHomeViewController"]
let HOME_SEGUES_DICTIONARY: [String: USER_PROFESSION] = ["toHealthcare": .healthcare, "toFirstRespondre": .firstResponder, "toSocialWorker": .socialWorker, "toJustice": .justice]

struct Paragraph_Data {
    let symbol : Character
    let firstLineHeadIndent: CGFloat
    let headIndent : CGFloat
}
