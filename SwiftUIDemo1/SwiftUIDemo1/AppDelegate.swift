//
//  AppDelegate.swift
//  SwiftUIDemo1
//
//  Created by zhangjixin7 on 2020/7/16.
//  Copyright © 2020 jixin. All rights reserved.
//

/*
 *  https://onevcat.com/2019/06/swift-ui-firstlook/
 */

import UIKit

/// Main函数入口
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        
        /*
         这个名字的 Configuration 在 Info.plist 的 “UIApplicationSceneManifest -> UISceneConfigurations” 中进行了定义，指定了 Scene Session Delegate 类为 $(PRODUCT_MODULE_NAME).SceneDelegate。这部分内容是 iOS 13 中新加入的通过 Scene 管理 app 生命周期的方式，以及多窗口支持部分所需要的代码。这部分不是我们今天的话题。在 app 完成启动后，控制权被交接给 SceneDelegate，它的 scene(_:willConnectTo:options:) 将会被调用，进行 UI 的配置：
         */
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

