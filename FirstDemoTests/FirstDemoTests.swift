//
//  FirstDemoTests.swift
//  FirstDemoTests
//
//  Created by GC_Developer on 09/11/2016.
//  Copyright © 2016 GC_Developer. All rights reserved.
//

import XCTest
@testable import FirstDemo

class FirstDemoTests: XCTestCase {
    
    //create a variable thats of type ViewController
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
    
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        //assign viewController variable to the ViewController
        viewController = ViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    /**
     This test verifies if the vowel counter short version is working as intended
     - String: the word that is used to test the function
     */
    func testNumberOfVowelsShort_ShouldReturnNumberOfVowels(){
        let string = "ohayou" //defines the string to be used for testing
        
        //call the function we want to test, parsing through the string and assigns the result to a constant
        let numberOfVowels = viewController.numberOfVowelsShort(string: string)
        
        //the assert verifies if the constant is equal to the actual number of vowels in the word
        XCTAssertEqual(numberOfVowels,4,"should find 4 vowels in ohayou")
        
    }
    
    /**
     This test verifies if the vowel counter long version is working as intended
     - String: the word that is used to test the function
     */
    func testNumberOfVowelsLong_ShouldReturnNumberOfVowels(){
        let string = "gozaimasu"
       
        let numberOfVowels = viewController.numberOfVowelsLong(string: string)
        
       XCTAssertEqual(numberOfVowels,5,"should find 5 vowels in gozaimasu")
        
        
    }
    
    /**
     This test verifies that the iterative function version to make every word start with a capital letter
     when that word is passed through
     */
    func testMakeHeadlineLong_ShouldReturnEachWordStartsCapital(){
        let inputString = "ohayou this is working fine"
        let expectedHeadline = "Ohayou This Is Working Fine"
        
        let result = viewController.makeHeadlineLong(string: inputString)
        
        XCTAssertEqual(expectedHeadline, result)
        
    }
    
    /**
     This test verifies that the remove function version to make every word start with a capital letter
     when that word is passed through
     */
    func testMakeHeadlineShort_ShouldReturnEachWordStartsCapital(){
        let inputString = "gozaimasu this is working fine"
        let expectedHeadline = "Gozaimasu This Is Working Fine"
        
        let result = viewController.makeHeadlineShort(string: inputString)
        
        XCTAssertEqual(expectedHeadline, result)
    }   		
    
    /**
     This test verifies that the sort array function sorts the aray alphabetically
     */
    func testSortArray_ShouldReturnSortedWord(){
        let inputArray = ["c","d","a","e","b"]
        let expectedArray = ["a","b","c","d","e"]
        
        let result = viewController.sortWord(string: inputArray)
        
        XCTAssertEqual(expectedArray, result)
        
    }
}
