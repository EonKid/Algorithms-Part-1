//
//  quick_find_union.swift
//  Algorithms
//
//  Created by Dhruv Narayan Singh on 24/03/18.
//  Copyright © 2018 Dhruv Narayan Singh. All rights reserved.
//

import Foundation

class quickFind: NSObject {
    //Quick find algorithms
    var arrData = [1,2,3,4,5,6,7,8]
    
    //Find
    func isConnected(p:Int,q:Int)->Bool{
        return arrData[p] == arrData[q]
    }
    
    //Union
    
    func union(p:Int,q:Int)->[Int]{
        let id_p = arrData[p - 1]
        let  id_q = arrData[q - 1]
        for i in 0 ..< arrData.count {
            if arrData[i] == id_p {
                arrData[p-1] = id_q
            }
        }
        return arrData
    }
    
   // print(isConnected(p: 1, q: 2))
   // print(union(p: 1, q: 2))
}

