//
//  ListView.swift
//  DaysMatter
//
//  Created by Audrey Jiang on 2023-02-06.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            
            NavigationLink(destination: {
                DaysDetailView(daysToShow: list1)
            }, label: {
                Text("List 1")
            })
            NavigationLink(destination: {
                DaysDetailView(daysToShow: list2)
            }, label: {
                Text("List 2")
            })
            NavigationLink(destination: {
                DaysDetailView(daysToShow: list3)
            }, label: {
                Text("List 3")
            })
            
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}
