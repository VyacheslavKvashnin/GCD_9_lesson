//
//  TwoView.swift
//  GCD_9_lesson
//
//  Created by Вячеслав Квашнин on 01.09.2021.
//

import SwiftUI

struct TwoView: View {
    var body: some View {
        VStack {
            
        }
        .onAppear {
            print2000()
        }
    }
}

struct TwoView_Previews: PreviewProvider {
    static var previews: some View {
        TwoView()
    }
}

func print2000() {
    for item in 0...200000 {
        print(item)
    }
}
