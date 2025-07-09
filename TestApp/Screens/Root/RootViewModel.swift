//
//  RootViewModel.swift
//  SwiftAppTemplate
//
//  Created by Vijay Goswami on 03/01/24.
//

import Foundation

@MainActor
class RootViewModel : ObservableObject {
    
    // MARK: - Attributs
    
    @Published var isAppStartCompleted: Bool = false
    @Published var isUserDetailsFilled: Bool = UserPreferences.shared.isProfileComplete
    @Published var isTermsAndConditionsAccepted: Bool =  UserPreferences.shared.isPrivacyPolicyAccepted
    
    // MARK: - Functions
    
    func start() async throws {
        guard !isAppStartCompleted else { return }
        
        // All starting set up will be done here
        // testing load time 2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(Int(2 * 1000))) {
            self.isAppStartCompleted = true
        }
       
    }
    
    func setInitialScreenVisitedStatus() {
        isUserDetailsFilled = UserPreferences.shared.isProfileComplete
        isTermsAndConditionsAccepted =  UserPreferences.shared.isPrivacyPolicyAccepted
    }
    
    func markUserDetailsCompleted() {
        guard !isUserDetailsFilled else { return }
        
        UserPreferences.shared.isProfileComplete = true
        isUserDetailsFilled = true
    }
    
    func markTermsAndConditionsAccepted() {
        guard !isTermsAndConditionsAccepted else { return }
        
        UserPreferences.shared.isPrivacyPolicyAccepted = true
        isTermsAndConditionsAccepted = true
    }
    
}
