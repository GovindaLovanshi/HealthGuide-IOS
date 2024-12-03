//
//  IGTextModifier.swift
//  HealthGuide
//
//  Created by Govinda lovanshi on 30/11/24.
//

import SwiftUI

struct IGTextModifier:ViewModifier{
    func body(content:Content) -> some View{
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}
