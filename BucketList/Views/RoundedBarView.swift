//
//  RoundedBarView.swift
//  BucketList
//
//  Created by Pedro Thomas on 9/26/23.
//

import SwiftUI

struct RoundedBarView: View {
  var barColor: Color
  
  var body: some View {
    RoundedRectangle(cornerRadius: 20)
      .frame(width: 350, height: 50)
      .shadow(color: .black, radius: 3, x: 0, y: 2)
      .foregroundColor(barColor)
  }
}

struct RoundedBarView_Previews: PreviewProvider {
    static var previews: some View {
      RoundedBarView(barColor: .black)
    }
}
