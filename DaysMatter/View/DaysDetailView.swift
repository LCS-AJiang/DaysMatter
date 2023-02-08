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
        
        ZStack {
            // 1 - Background
            // Image(string)
            Image(daysToShow.background)
            
            // 2
            VStack(spacing: 40) {
                
                
                // Title name
                Text(daysToShow.title)
                    .font(Font.custom("Helvetica", size: 40.0, relativeTo: .largeTitle))
                
                Group {
                    
                    // day description
                    Text("\(daysToShow.days)")
                        .font(Font.custom("Helvetica", size: 100.0))
                    
                    HStack{
                        // Date description
                        Text(daysToShow.date)
                            .font(Font.custom("Helvetica", size: 20.0))
                        
                        // Day of the week description
                        Text(daysToShow.dayOfTheWeek)
                            .font(Font.custom("Helvetica", size: 20.0))
                    }
                }
            }
                    // Trim sharp edges of VStack box
                    .clipShape(
                        RoundedRectangle(cornerRadius: 25)
                    )
        }
        
        
    }
}




//        // Border
//        .overlay(
//            RoundedRectangle(cornerRadius: 25)
//                .stroke(Color.black, lineWidth: 5)
//        )
//        // Move in from edges
//        .padding()
//        // Nav title
////        .navigationTitle(daysToShow.name )
//
//    }
//}

struct DaysDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DaysDetailView(daysToShow: list1)
    }
}
