//
//  ReviewView.swift
//  KazPlaygroundSwiftUI
//
//  Created by 원태영 on 2023/01/20.
//

import SwiftUI

struct ReviewView: View {
    @StateObject var storeVM : StoreViewModel = StoreViewModel()
    
    var body: some View {
        VStack {
            Button {
                Task {
                    storeVM.requestData(userID: "dduri")
                }
            } label: {
                Text("패치하기")
            }
            
            List {
                ForEach(storeVM.reviews) { review in
                    Text(review.content)
                }
            }
            
        }
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
