//
//  InterfaceController.swift
//  recipesWatch WatchKit Extension
//
//  Created by user on 18.09.2021.
//

import WatchKit
import Foundation


class TableInterfaceController: WKInterfaceController {
    // Объявляем аутлет для обращения к таблице
    @IBOutlet weak var table: WKInterfaceTable!
    
    // выполняется при загрузке экрана
    override func awake(withContext context: Any?) {
        // колличество строк
        table.setNumberOfRows(recipe.getRecipe().count, withRowType: "row")
        
        // Configure interface objects here.
        for (index,item) in recipe.getRecipe().enumerated(){
            let controller = table.rowController(at: index) as! RawTable
            controller.recipeName.setText(item.name)
            controller.recipeIcon.setImageNamed(item.icon)
            
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
