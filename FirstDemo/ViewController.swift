//
//  ViewController.swift
//  FirstDemo
//
//  Created by GC_Developer on 09/11/2016.
//  Copyright © 2016 GC_Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfVowelsShort(string: String) -> Int{
        //create an array of Characters containing all the vowels
        let vowels: [Character] = ["a","i","u","e","o","A","I","U","E","O"]
        
        return string.characters.reduce(0){$0 + (vowels.contains($1) ? 1 : 0)}
    }        
    
    func numberOfVowelsLong(string: String) -> Int{
        //create an array of Characters containing all the vowels
        let vowels: [Character] = ["a","i","u","e","o","A","I","U","E","O"]
        
        //create a counter to store the nuber of vowels
        var numberOfVowels = 0
        
        
        //iterate through the characters in a given string and increment
        //the counter if the current character is in the vowels array
        for character in string.characters{
            if vowels.contains(character){
                numberOfVowels += 1
            }
        }
        
        return numberOfVowels
    }

    func makeHeadlineLong(string: String) -> String {
        //split the string into words
        let words = string.components(separatedBy: " ")
        
        var headline = ""
        
        //iterate through the words, taking out the first character, replacing
        //it with an uppercase character and then concatenating it with the
        //remaining characters in the word. Add this concatenation to the headline
        //variable to remake the sentence
        for var word in words{
            let firstCharacter = word.remove(at: word.startIndex)
            headline += "\(String(firstCharacter).uppercased())\(word) "
        }
        
        //removes the last element in the headline which would be a space
        headline.remove(at: headline.index(before: headline.endIndex))
        
        return headline
    }
    
    func makeHeadlineShort(string: String) -> String{
        
        //returns an array which maps the words which have been split from the string.
        //the mapping places the result of replacing the first character from the
        //current word in each array slot and seperates these results by a space
        return string.components(separatedBy: " ").map {
                var word = $0
                let firstCharacter = word.remove(at: word.startIndex)
                return "\(String(firstCharacter).uppercased())\(word)"
        }.joined(separator: " ")
    }
    
    func sortWord(string: String) -> [String]{
        let words = string.components(separatedBy: "")	
        
        return words
    }
}

