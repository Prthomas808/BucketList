//
//  ContentView.swift
//  BucketList
//
//  Created by Pedro Thomas on 9/26/23.
//

import SwiftUI

struct BucketListMainView: View {
  
  @State private var AddToBucketListPresented = false
  
  var body: some View {
    NavigationStack {
      VStack {
        List {
          ForEach(1..<5, id: \.self) { item in
            Text("Bucket List Item \(item)")
          }
        }
        .listStyle(.plain)
        .navigationTitle("Bucket List 🪣")
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            Button("Add") { AddToBucketListPresented.toggle() }
          }
        }
        .sheet(isPresented: $AddToBucketListPresented) {
          AddToBucketListView()
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
