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
    @State var from: Date = Date()  // Sets to current date and time
    @State var to: Date = Date()    // Sets to current date and time
    
    // MARK: Computed property
    var differenceInDays: Int {
        
        guard let daysLeft = Calendar.current.dateComponents([.day], from: from, to: to).day
        else {
            return 0
        }
        
        return daysLeft
    }
    // Describe the user interface
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea(.all)
            ZStack {
                // 1 - Background
                // Image(string)
                Image(daysToShow.background)
                    .resizable()
                    .frame(width: 420, height: 440)
                // 2
                VStack(spacing: 10) {
                    
                    
                    // Title name
                    Text(daysToShow.title)
                        .font(Font.custom("Helvetica", size: 40.0, relativeTo: .largeTitle))
                    
                    Group {
                        
                        
                        VStack{
                            Text("\(differenceInDays)")
                                .font(Font.custom("Helvetica", size: 100.0))
                                .fontWeight(.black)
                            
                            DatePicker(selection: .constant(Date()),displayedComponents: .date, label: {
                                Text("From")
                                    .foregroundColor(.black)
                            })
                            .background {
                                Color.white
                            }
                            
                            DatePicker(selection: .constant(Date()),displayedComponents: .date, label: {
                                Text("To")
                                    .foregroundColor(.black)
                            })
                            .background {
                                Color.white
                            }
                        }
                        
                    }
                    .padding()
                    
                    // Day of the week description
                    Text(daysToShow.dayOfTheWeek)
                        .font(Font.custom("Helvetica", size: 20.0))
                }
            }
            .clipShape(
                    RoundedRectangle(cornerRadius: 30)
            )
                // Border
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.white, lineWidth: 15)
                )
        }
        .foregroundColor(Color.white)
    }
    
    
}



struct DaysDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DaysDetailView(daysToShow: list1)
        }
    }
}
