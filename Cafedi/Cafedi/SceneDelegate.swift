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
        
        // 새로운 UIWindow 객체를 생성 및 windowScene와 연결
        let window = UIWindow(windowScene: windowScene)
        
        // ViewController 객체를 생성
        // ViewController : 앱의 UI를 담당하는 클래스
        let vc = OnboardingViewController()
        // 새로 생성한 ViewController 객체를 윈도우의 rootViewController로 설정
        // rootViewController : 가장 첫번째 화면을 담당
        window.rootViewController = vc
        // 생성한 window 객체를 self.window에 저장하여, 앱 전반에서 참조될 수 있도록 설정
        self.window = window
        // makeKeyAndVisible() : 윈도우(키 윈도우)를 생성 및 화면에 표시
        window.makeKeyAndVisible()
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

