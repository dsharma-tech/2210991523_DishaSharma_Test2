//
//  Meal.swift
//  2210991523_Test2
//
//  Created by Disha Sharma on 23/11/24.
//

import Foundation
import UIKit

struct Meal {
    var name: String
    var food: [Food]
}

var meals: [Meal] {
    let breakfast = Meal(name: "Breakfast", food: [
        Food(
            name: "Pancakes",
            description: "Fluffy pancakes with syrup",
            recipeName: "Fluffy Pancakes",
            calorieCount: 350,
            preparationTime: "15 minutes",
            thumbnail: UIImage(named: "pancakesThumbnail") ?? UIImage(),
            ingredients: ["1 cup flour", "1 egg", "1/2 cup milk", "1 tbsp sugar"],
            preparationInstructions: "Mix all ingredients and cook on a griddle until golden brown.",
            category: "Vegetarian"
        ),
        Food(
            name: "Orange Juice",
            description: "Freshly squeezed orange juice",
            recipeName: "Fresh Orange Juice",
            calorieCount: 120,
            preparationTime: "5 minutes",
            thumbnail: UIImage(named: "orangeJuiceThumbnail") ?? UIImage(),
            ingredients: ["4 oranges"],
            preparationInstructions: "Squeeze fresh oranges and serve.",
            category: "Vegan"
        ),
        Food(
            name: "Sandwich",
            description: "Sandwich on whole wheat bread",
            recipeName: "Whole Wheat Sandwich",
            calorieCount: 250,
            preparationTime: "10 minutes",
            thumbnail: UIImage(named: "sandwichThumbnail") ?? UIImage(),
            ingredients: ["2 slices of whole wheat bread", "Lettuce", "Tomato", "Cheese", "Turkey"],
            preparationInstructions: "Layer ingredients between slices of bread.",
            category: "Non-Vegetarian"
        )
    ])
    
    let lunch = Meal(name: "Lunch", food: [
        Food(
            name: "Grilled Chicken",
            description: "Grilled chicken with vegetables",
            recipeName: "Grilled Chicken with Veggies",
            calorieCount: 500,
            preparationTime: "30 minutes",
            thumbnail: UIImage(named: "grilledChickenThumbnail") ?? UIImage(),
            ingredients: ["1 chicken breast", "Olive oil", "Mixed vegetables", "Garlic"],
            preparationInstructions: "Grill chicken and vegetables, drizzle with olive oil and garlic.",
            category: "Gluten-Free"
        ),
        Food(
            name: "Caesar Salad",
            description: "Classic Caesar salad with croutons",
            recipeName: "Classic Caesar Salad",
            calorieCount: 350,
            preparationTime: "10 minutes",
            thumbnail: UIImage(named: "caesarSaladThumbnail") ?? UIImage(),
            ingredients: ["Romaine lettuce", "Caesar dressing", "Croutons", "Parmesan"],
            preparationInstructions: "Toss all ingredients together and serve.",
            category: "Vegetarian"
        ),
        Food(
            name: "Iced Tea",
            description: "Refreshing iced tea with lemon",
            recipeName: "Iced Lemon Tea",
            calorieCount: 50,
            preparationTime: "10 minutes",
            thumbnail: UIImage(named: "icedTeaThumbnail") ?? UIImage(),
            ingredients: ["Tea bag", "Lemon", "Ice", "Sugar (optional)"],
            preparationInstructions: "Brew tea, add ice, and serve with lemon.",
            category: "Vegan"
        )
    ])
  
    let dinner = Meal(name: "Dinner", food: [
        Food(
            name: "Steak",
            description: "Grilled steak with mashed potatoes",
            recipeName: "Grilled Steak with Mashed Potatoes",
            calorieCount: 800,
            preparationTime: "45 minutes",
            thumbnail: UIImage(named: "steakThumbnail") ?? UIImage(),
            ingredients: ["1 steak", "4 potatoes", "Butter", "Salt", "Pepper"],
            preparationInstructions: "Grill the steak to desired doneness and serve with mashed potatoes.",
            category: "Non-Vegetarian"
        ),
        Food(
            name: "Garlic Bread",
            description: "Crispy garlic bread",
            recipeName: "Crispy Garlic Bread",
            calorieCount: 250,
            preparationTime: "10 minutes",
            thumbnail: UIImage(named: "garlicBreadThumbnail") ?? UIImage(),
            ingredients: ["1 loaf of bread", "Butter", "Garlic", "Parsley"],
            preparationInstructions: "Spread butter and garlic mixture on bread and toast.",
            category: "Vegetarian"
        ),
        Food(
            name: "Salad",
            description: "Fresh vegetable salad",
            recipeName: "Fresh Veggie Salad",
            calorieCount: 150,
            preparationTime: "10 minutes",
            thumbnail: UIImage(named: "saladThumbnail") ?? UIImage(),
            ingredients: ["Lettuce", "Tomatoes", "Cucumber", "Olives", "Olive oil"],
            preparationInstructions: "Chop all vegetables and toss together with olive oil.",
            category: "Vegan"
        )
    ])
    
    let snacks = Meal(name: "Snacks", food: [
        Food(
            name: "Cheese and Crackers",
            description: "Cheese served with crispy crackers",
            recipeName: "Cheese and Crackers",
            calorieCount: 300,
            preparationTime: "5 minutes",
            thumbnail: UIImage(named: "cheeseAndCrackersThumbnail") ?? UIImage(),
            ingredients: ["Cheddar cheese", "Crackers"],
            preparationInstructions: "Serve slices of cheese with crackers.",
            category: "Vegetarian"
        ),
        Food(
            name: "Fruit Salad",
            description: "A mix of fresh fruits",
            recipeName: "Fresh Fruit Salad",
            calorieCount: 200,
            preparationTime: "10 minutes",
            thumbnail: UIImage(named: "fruitSaladThumbnail") ?? UIImage(),
            ingredients: ["Apple", "Banana", "Orange", "Grapes"],
            preparationInstructions: "Chop all fruits and toss them together.",
            category: "Vegan"
        ),
        Food(
            name: "Yogurt Parfait",
            description: "Yogurt layered with granola and berries",
            recipeName: "Yogurt Parfait",
            calorieCount: 180,
            preparationTime: "5 minutes",
            thumbnail: UIImage(named: "yogurtParfaitThumbnail") ?? UIImage(),
            ingredients: ["Greek yogurt", "Granola", "Blueberries", "Honey"],
            preparationInstructions: "Layer yogurt, granola, and berries in a glass and drizzle with honey.",
            category: "Vegetarian"
        )
    ])
    
    return [breakfast, lunch, dinner, snacks]
}
