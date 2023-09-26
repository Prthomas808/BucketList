//
//  BucketListViewModel.swift
//  BucketList
//
//  Created by Pedro Thomas on 9/26/23.
//

import Foundation

class BucketListViewModel: ObservableObject {
  
  @Published var goals: [bucketListGoal] = []
  @Published var addToBucketListViewPresented = false
  
  func addToBucketList(goal: String) {
    goals.append(bucketListGoal(goalYouWant: goal))
  }
  
  func deleteItem(index: IndexSet) {
    goals.remove(atOffsets: index)
  }
  
  func moveitem(indices: IndexSet, newOffset: Int) {
    goals.move(fromOffsets: indices, toOffset: newOffset)
  }
  
}
