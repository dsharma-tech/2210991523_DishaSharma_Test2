//
//  MealDetailTableViewController.swift
//  2210991523_Test2
//
//  Created by Disha Sharma on 23/11/24.
//

import UIKit

class MealDetailTableViewController: UITableViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    var meal: Meal?
    init?(data: Meal? = nil, coder: NSCoder) {
        self.meal = data
        super.init(coder: coder)
    }
    required init?(coder: NSCoder) {
            super.init(coder: coder)
        }
    @IBOutlet var share: UIButton!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var cameraButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let meal = meal {
                    print("Selected meal: \(meal.name)")
                }
        updateUI()
    }
    @IBAction func cameraButtonTapped(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: {action in print("User has choosen camera")
                imagePicker.sourceType = .camera
                self.present(imagePicker,animated: true , completion: nil)
            })
            alertController.addAction(cameraAction)
        }
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler: {action in print("User has choosen photo library")
                imagePicker.sourceType = .photoLibrary
                self.present(imagePicker,animated: true , completion: nil)
            })
            
            alertController.addAction(photoLibraryAction)
        }
        present(alertController, animated: true, completion: nil)

    }
    

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else { return }
        imageView.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func shareButtonTapped(_ sender: Any) {
        guard let image = imageView.image else { return }
        let activityController = UIActivityViewController(activityItems: [image, "image"], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    
    
    @IBOutlet var recepieNameLabel: UITextField!
    
    @IBOutlet var ingredientsLabel: UITextField!
    
    @IBOutlet var preparationInstructionLabel: UITextField!
    
    
    @IBOutlet var categoryLabel: UITextField!
    
    @IBOutlet var nutritionLabel: UITextField!
    
    func updateUI() {
        guard let meal = meal else { return }
            guard let foodItem = meal.food.first else { return }
            recepieNameLabel.text = foodItem.recipeName
            ingredientsLabel.text = foodItem.ingredients.joined(separator: ", ")
            preparationInstructionLabel.text = foodItem.preparationInstructions
          
            categoryLabel.text = foodItem.category
            nutritionLabel.text = "Calories: \(foodItem.calorieCount) kcal | Time: \(foodItem.preparationTime)"
    }
}
