//
//  AddToBucketListView.swift
//  BucketList
//
//  Created by Pedro Thomas on 9/26/23.
//

import SwiftUI

struct AddToBucketListView: View {
  
  @State private var goal = ""
  @State private var showAlert = false
  @ObservedObject var bucketList: BucketListViewModel
  
  var body: some View {
    NavigationStack {
      VStack(spacing: 30) {
        RoundedBarView(barColor: .white )
          .overlay {
            TextField("What Do You Want To Do?", text: $goal)
              .padding()
              .foregroundColor(.red)
          }
        
        Button {
          if goal.isEmpty {
            showAlert.toggle()
          } else {
            bucketList.addToBucketList(goal: goal)
            bucketList.addToBucketListViewPresented = false
          }
        } label: {
          RoundedBarView(barColor: .red)
            .overlay {
              Text("Add To Bucket list")
                .foregroundColor(.white)
                .bold()
            }
            .alert("Please add a goal", isPresented: $showAlert) {
              Button("Ok", role: .cancel) {}
            }
        }
        
        Spacer()
      }
      .navigationTitle("Bucket List 🥅")
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Button("Cancel") { bucketList.addToBucketListViewPresented.toggle() }
            .tint(.red)
        }
      }
      .padding(.top)
    }
  }
}

struct AddToBucketListView_Previews: PreviewProvider {
  static var previews: some View {
    AddToBucketListView(bucketList: BucketListViewModel())
  }
}


