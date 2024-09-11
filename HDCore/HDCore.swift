//
//  HDCore.swift
//  HDCore
//
//  Created by thtuan on 4/9/24.
//

import Foundation
import UIKit

struct HDCoreConfig {
    let apiKey: String
}

//protocol HDCore {
//    
//    static func config()
//    
//    
//    open static func requestDOP()
//    
//}


class HDCore {
    
    private static var completionHandler: ((String) -> Void)?
    
    public static func config(_ config: HDCoreConfig) {
        
    }
    
    public static func requestDOP(presentController: UIViewController, _ completionHandler: @escaping (String) -> Void) {
        self.completionHandler = completionHandler
        
        presentController.present(DOPViewController(), animated: true)
    }
}
