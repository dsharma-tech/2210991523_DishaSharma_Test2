//
//  MealTableViewController.swift
//  2210991523_Test2
//
//  Created by Disha Sharma on 23/11/24.
//

import UIKit

class MealTableViewController: UITableViewController {
    var mealsSections: [Meal] = meals
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return mealsSections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section < mealsSections.count {
            
            return mealsSections[section].food.count
        } else {
            
            return 1
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        
        if indexPath.section < mealsSections.count {
            
            let meal = mealsSections[indexPath.section]
            let foodItem = meal.food[indexPath.row]

            var content = cell.defaultContentConfiguration()
            content.text = foodItem.name
            content.secondaryText = foodItem.description
            cell.contentConfiguration = content
        } else {
            
        }
        
        return cell
        
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
            return mealsSections[section].name
        
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            var selectedMeal = meals[indexPath.section]
                    
                    selectedMeal.food.remove(at: indexPath.row)
                    
                    

            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
           
        }    
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .delete
    }
    
    
    @IBSegueAction func moveData(_ coder: NSCoder, sender: Any?) -> MealDetailTableViewController? {
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else { return nil }
//        let dummy = meals[indexPath.row]
        return MealDetailTableViewController(coder: coder)
    }
    
    @IBAction func unwindToMain(_ unwindSegue: UIStoryboardSegue) {
//        let sourceViewController = unwindSegue.source
        guard let source = unwindSegue.source as? MealDetailTableViewController,
                  let data = source.meal else { return }
        
            if let indexPath = tableView.indexPathForSelectedRow {
//                meals[indexPath.section].food[indexPath.row] = data
                tableView.reloadRows(at: [indexPath], with: .none)
            } else {
                if let selectedMealIndex = tableView.indexPathForSelectedRow?.section {
//                    meals[selectedMealIndex].food.append(data)
                    let indexPath = IndexPath(row: meals[selectedMealIndex].food.count - 1, section: selectedMealIndex)
                    tableView.insertRows(at: [indexPath], with: .none)
                }
            }
    }

    }


