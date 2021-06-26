//
//  AppDelegate.swift
//  MagicSDK-Demo
//
//  Created by KISHAN_RAJA on 08/06/21.
//

import UIKit
import MagicSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // assign the newly created Magic instance to shared property
        // Test key defaults to "rinkeby", live key defaults to "mainnet"
//        Magic.shared = Magic(apiKey: "pk_live_FCA5C3A8411CA08F", network: EthNetwork.rinkeby)
        Magic.shared = Magic(apiKey: "pk_test_D064BF08735D036E", network: EthNetwork.rinkeby)
    
        return true
    }
}
