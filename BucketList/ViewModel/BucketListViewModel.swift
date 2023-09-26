//
//  BucketListViewModel.swift
//  BucketList
//
//  Created by Pedro Thomas on 9/26/23.
//

import Foundation

class BucketListViewModel: ObservableObject {
  
  var goals: [bucketListGoal] = []
  var addToBucketListViewPresented = false
  
  func addToBucketList(goal: String) {
    goals.append(bucketListGoal(goalYouWant: goal))
  }
  
}
