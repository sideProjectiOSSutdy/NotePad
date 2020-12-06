//
//  AppDelegate.swift
//  NotePad
//
//  Created by 김효성 on 2020/12/03.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = NoteListViewController(contentsView: NoteListContentsView())
        window?.makeKeyAndVisible()
        
        return true
    }
}

