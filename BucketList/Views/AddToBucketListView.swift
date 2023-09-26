//
//  AddToBucketListView.swift
//  BucketList
//
//  Created by Pedro Thomas on 9/26/23.
//

import SwiftUI

struct AddToBucketListView: View {
  @State private var goal = ""
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    NavigationStack {
      VStack(spacing: 30) {
        RoundedBarView(barColor: .white )
          .overlay {
            TextField("What Do You Want To Do?", text: $goal)
              .padding()
          }
        
        Button {
          //
        } label: {
          RoundedBarView(barColor: .red)
            .overlay {
              Text("Add To Bucket list")
                .foregroundColor(.white)
                .bold()
            }
        }
        
        Spacer()
      }
      .navigationTitle("Bucket List 🥅")
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Button("Cancel") { dismiss() }
            .tint(.red)
        }
      }
      .padding(.top)
    }
  }
}

struct AddToBucketListView_Previews: PreviewProvider {
  static var previews: some View {
    AddToBucketListView()
  }
}


