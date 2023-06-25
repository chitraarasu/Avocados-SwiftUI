//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by kirshi on 6/24/23.
//

import SwiftUI

struct RipeningStagesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack(alignment: .center, spacing: 0) {
                Spacer()
                HStack(alignment: .center, spacing: 25){
                    ForEach(ripeningData) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
