//
//  StepAction.swift
//  CoordinatorArticle
//
//  Created by Andrej Jasso on 05/04/2022.
//

import UIKit

enum StepAction {

    case push(UIViewController)
    case present(UIViewController, UIModalPresentationStyle)
    case dismiss
    case pop
    case none

}
