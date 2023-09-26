//
//  ContentView.swift
//  BucketList
//
//  Created by Pedro Thomas on 9/26/23.
//

import SwiftUI

struct BucketListMainView: View {
  
  @ObservedObject var bucketList: BucketListViewModel = BucketListViewModel()
  
  var body: some View {
    NavigationStack {
      VStack {
        List {
          ForEach(bucketList.goals) { goal in
            Text("\(goal.goalYouWant)")
          }
          .onDelete(perform: bucketList.deleteItem)
          .onMove(perform: bucketList.moveitem)
        }
        .listStyle(.plain)
        .navigationTitle("Bucket List 🪣")
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            Button("Add") { bucketList.addToBucketListViewPresented.toggle() }
          }
          
          ToolbarItem(placement: .navigationBarLeading) {
            EditButton()
          }
        }
        .sheet(isPresented: $bucketList.addToBucketListViewPresented) {
          AddToBucketListView(bucketList: bucketList)
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    BucketListMainView()
  }
}
