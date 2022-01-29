//
//  AuthenticationVM.swift
//  MVVM_Lab
//
//  Created by Ahmed Fayeq on 29/01/2022.
//

import Foundation

class AuthenticationVM{
    
    var user: User!
    var userName: String {user.userName}
    var email: String {user.email}
    
    typealias authenticationLoginCallBack = (_ status: Bool, _ messsage: String) -> Void
    var loginCallBack: authenticationLoginCallBack?
    
    func authenticateUserWith(_ userName: String, andPassword password: String){
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            if userName.count != 0{
                if password.count != 0{
                    self.verifyUserWith(userName, andPassword: password)
                }else{
                    //empty password
                    self.loginCallBack?(false, "password shouldn't be empty")
                }
            }else{
                //empty email
                self.loginCallBack?(false, "email shouldn't be empty")
            }
        }
    }
    
    //MARK: verifyUserWith
    fileprivate func verifyUserWith(_ userName: String, andPassword password: String){
        if userName == "test" && password == "123456"{
            user = User(userName: userName, email: "\(userName)@gmail.com")
            self.loginCallBack?(true, "user is successfully authenticated")
        }else{
            // invalid credentials
            self.loginCallBack?(false, "Please enter valid credantials")
        }
    }
    
    //MARK: loginCompletionHandler
    func loginCompletionHandler(callBack: @escaping authenticationLoginCallBack){
        loginCallBack = callBack
    }
}
