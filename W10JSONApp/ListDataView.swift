//
//  ListDataView.swift
//  W10JSONApp
//
//  Created by Default User on 11/13/23.
//

import SwiftUI

struct PersonRow: View{
    var person : People
    var body : some View{
        VStack{
            Text("Name: \(person.Name)").font(.headline).foregroundColor(.black).multilineTextAlignment(.leading).frame(width: 300, height: 30, alignment: .leading)
            
            Text("Address: \(person.Address)").foregroundColor(.blue).font(.subheadline).frame(width: 300, height: 30, alignment: .leading)
            
            Text("Email: \(person.Email)").foregroundColor(.blue).font(.subheadline).frame(width: 300, height: 30, alignment: .leading)
            
            Text("Salary: \(person.Salary)").foregroundColor(.blue).font(.subheadline).frame(width: 300, height: 30, alignment: .leading)
        }
    }
}



struct ListDataView: View {
    @ObservedObject var fetch = GetData()

    var body: some View {
        List{
            ForEach(fetch.people, id: \.self){ p in
                PersonRow(person: p)
                
            }
        }
    }
}

struct ListDataView_Previews: PreviewProvider {
    static var previews: some View {
        ListDataView()
    }
}
