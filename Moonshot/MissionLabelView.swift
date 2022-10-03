//
//  MissionLabelView.swift
//  Moonshot
//
//  Created by Ryan Prince on 9/15/22.
//

import SwiftUI

struct MissionLabelView: View {
    let mission: Mission
    
    var body: some View {
//        Text("hello")
        VStack {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            
            VStack {
                Text(mission.displayName)
                    .font(.headline)
                    .foregroundColor(.white)
                
                Text(mission.formattedLaunchDate)
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.5))
            }
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(.lightBackground)
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(.lightBackground)
        )
    }
}

struct MissionLabelView_Previews: PreviewProvider {
    static var previews: some View {
        MissionLabelView(mission: Mission.sampleData)
    }
}
