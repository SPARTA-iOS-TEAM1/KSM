//
//  SceneDelegate.swift
//  Cafedi
//
//  Created by Jamong on 9/12/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // UIScene : 앱에서 하나의 사용자 인터페이스를 관리하는 단위
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        // 매개변수 scene를 UIWindoScene으로 캐스팅 및 유효성 검사
        // UIWindoScene : 화면에 표시되는 UI요소를 관리하는 객체
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let onboardingVC = OnboardingViewController()
        let navigationController = UINavigationController(rootViewController: onboardingVC)
        
        // 새로운 UIWindow 객체를 생성 및 windowScene와 연결
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

