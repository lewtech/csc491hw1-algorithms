//
//  ViewController.swift
//  csc491hw1-algorithms
//
//  Created by Lew Flauta on 5/8/17.
//  Copyright © 2017 Lew Flauta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var A:[Int] = [6,1,4,5,2,6]

    @IBOutlet weak var arrayLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayLabel.text = "Initial Array Here"
        algSelectionSort(array: A)

    }

    func algSelectionSort(array:Array<Any>){
        var A:[Int] = array as! [Int]

        self.arrayLabel.text = String(describing: A)

let when = DispatchTime.now() + 2 // change 2 to desired number of seconds



            var key:Int
            var i:Int
            for j:Int in 0...A.count-1{
                DispatchQueue.main.asyncAfter(deadline: when) {
                    // Your code with delay
                }



                key = A[j]
                print(A)
                i = j-1
                while ((i>=0) && (A[i]>key)){
                    A[i+1] = A[i]
                    i = i - 1

                    
                }
                A[i+1] = key

            }



    self.arrayLabel.text = String(describing: A)
    print (A)
    }





}

