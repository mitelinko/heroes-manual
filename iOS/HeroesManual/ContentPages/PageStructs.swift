//
//  PageStructs.swift
//  HeroesManual
//
//  Created by Colby Chance on 3/15/18.
//  Copyright © 2018 Colby Chance. All rights reserved.
//

import Foundation

struct Content_Page {
    let title: String
    let fileName: String
}

struct CONTENT_PAGES {
    static let generalInfo = Content_Page(title: "General Info", fileName: "General_Info")
    static let beingAPerpetrator = Content_Page(title: "Being A Perpetrator", fileName: "Being_a_Perpetrator")
    static let communicationTips = Content_Page(title: "Communication Tips", fileName: "Communication_Tips_and_Information")
    static let safetyPlanResources = Content_Page(title: "Safety Plan", fileName: "Safety_Plan_and_Resources")
    static let screeningContent = Content_Page(title: "Screen for DV", fileName: "Screening_Content")
    static let fillerContent = Content_Page(title: "Filler", fileName: "Filler_Content")
}

//enum CONTENT_PAGES: Content_Page {
//    case generalInfo = Content_Page(title: "General Info", fileName: "General_Info")
//    case beingAPerpetrator = Content_Page(title: "Being A Perpetrator", fileName: "Being_a_Perpetrator")
//    case communicationTips = Content_Page(title: "Communication Tips", fileName: "Communication_Tips_and_Information")
//    case safetyPlanResources = Content_Page(title: "Safety Plan", fileName: "Safety_Plan_and_Resources")
//    case screeningContent = Content_Page(title: "Screen for DV", fileName: "Screening_Content")
//    case fillerContent = Content_Page(title: "Filler", fileName: "Filler_Content")
//}

