//
//  DetailRecipe.swift
//  recipesWatch WatchKit Extension
//
//  Created by user on 18.09.2021.
//

import WatchKit
import Foundation


class DetailRecipe: WKInterfaceController {
    
    @IBOutlet weak var iconRecipe: WKInterfaceImage!
    @IBOutlet weak var nameRecipe: WKInterfaceLabel!
    @IBOutlet weak var imageRecipe: WKInterfaceImage!
    @IBOutlet weak var authorRecipe: WKInterfaceLabel!
    @IBOutlet weak var textRecipe: WKInterfaceLabel!
    @IBOutlet weak var ratingRecipe: WKInterfaceSlider!
    
    var recipe: recipe!
    
    @IBAction func changeRating(_ value: Float) {
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let item = context as? recipe {
            
            self.recipe = item
            iconRecipe.setImageNamed(item.icon)
            nameRecipe.setText(item.name)
            imageRecipe.setImageNamed(item.image)
            authorRecipe.setText(item.author)
            textRecipe.setText(item.text)
            ratingRecipe.setValue(Float(item.rating))
        }
        // Configure interface objects here.
    }
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        return recipe.text
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
