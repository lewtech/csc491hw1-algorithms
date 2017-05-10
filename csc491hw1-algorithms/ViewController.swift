//
//  ViewController.swift
//  csc491hw1-algorithms
//
//  Created by Lew Flauta on 5/8/17.
//  Copyright © 2017 Lew Flauta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    var values:[Int] = [6,1,4,5,2,6]
    let identifier = "CellId"
    let cellId = "cellId"

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var arrayLabel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .gray
        arrayLabel.text = "Initial Array Here"



        collectionView.dataSource = self



    }


    @IBOutlet weak var processSelectionSort: UIButton!

    @IBAction func startSelectionSort(_ sender: Any) {

        self.arrayLabel.text = String(describing: values)
        algSelectionSort(array: values)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! BarCell

        if let max = values.max() {
            let value = values[indexPath.item]
            let ratio = value / max

            //cell.barHeightConstraint?.constant = maxHeight() * ratio
        }

        return cell
    }

    func algSelectionSort(array:Array<Any>){
        var A:[Int] = array as! [Int]

        self.arrayLabel.text = String(describing: A)





            var key:Int
            var i:Int
            for j:Int in 0...A.count-1{

                sleep(2)
                DispatchQueue.main.async {
                    self.arrayLabel.text = String(describing: A)
                    print (A)
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




    }

    func maxHeight() -> CGFloat {
        return view.frame.height - 20 - 44 - 8
    }

    func empty(){}

}

