import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?
  private var appCoordinator: AppCoordinator!
  
  let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
  
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
    if let windowScene = scene as? UIWindowScene {
      let window = UIWindow(windowScene: windowScene)
      self.window = window
      appCoordinator = AppCoordinator(window: window, context: context)
      appCoordinator.start()
    }
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
    
    (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
  }
  
  
}

