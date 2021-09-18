//
//  RecipeDescription.swift
//  recipesWatch WatchKit Extension
//
//  Created by user on 18.09.2021.
//

import WatchKit
import Foundation


class RecipeDescription: WKInterfaceController {
    
    @IBOutlet weak var fullRecipe: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let context = context as? String {
            fullRecipe.setText(context)
        }
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
