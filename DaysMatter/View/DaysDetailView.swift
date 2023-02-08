//
//  DaysDetailView.swift
//  DaysMatter
//
//  Created by Audrey Jiang on 2023-02-06.
//

import SwiftUI

struct DaysDetailView: View {
    // MARK: Stored property
    // Information to show on the days detail
    let daysToShow: Days
    
    // MARK: Computed property
    // Describe the user interface
    var body: some View {
        
        VStack(spacing: 20) {
            
            HStack {
                
                // Force horizontal width as big as possible
                Spacer()
                
            }
            
            // Title name
            Text(daysToShow.title)
                .font(Font.custom("Helvetica", size: 144.0, relativeTo: .largeTitle))
            
            Group {
                
                // Days
                Text("Days")
                    .font(.title2.smallCaps())
                    .fontWeight(.bold)
                
                // day description
                Text("\(daysToShow.days)")
                
                // Date
                Text("Date")
                    .font(.title2.smallCaps())
                    .fontWeight(.bold)
                
                // Date description
                Text(daysToShow.date)
                
                // Day of the week
                Text("Day Of The Week")
                    .font(.title2.smallCaps())
                    .fontWeight(.bold)
                
                // Day of the week description
                Text(daysToShow.dayOfTheWeek)
                
            }
            
            // Push content up in the card
            Spacer()
            
        }
        // Give all elements inside the VStack a bit of padding
        .padding()
        
        // Background
        .background(
            
            // "color"
//            daysToShow.color
        )
        // Trim sharp edges of VStack box
        .clipShape(
            RoundedRectangle(cornerRadius: 25)
        )
        // Border
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.black, lineWidth: 5)
        )
        // Move in from edges
        .padding()
        // Nav title
//        .navigationTitle(daysToShow.name )
        
    }
}

struct DaysDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DaysDetailView(daysToShow: list1)
    }
}
