//
//  ContentView.swift
//  GCD_9_lesson
//
//  Created by Вячеслав Квашнин on 01.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    var body: some View {
        NavigationView {
        VStack {
            
//            NavigationLink("Press", destination: TwoView())
            NavigationLink(
                destination: TwoView(),
                label: {
                    Text("Press")
                        .font(.largeTitle)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                })
            Button(action: {
//                afterBlock(second: 2, queue: .global()) {
//                    print("Hello")
//                    print(Thread.current)
//                }
                
//                afterBlock(second: 0) {
//                    print("Hello")
//                    self.show = true
//                    print(Thread.current)
//                    
//                }
                
            }, label: {
                Text("Button")
            })
            
        }
        }.alert(isPresented: $show, content: {
            Alert(title: Text("Some text"))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func showAlert() {
    
    Alert(title: Text("Alert"), message: Text("still text"))
    
    
}

func afterBlock(second: Int, queue: DispatchQueue = DispatchQueue.global(), complition: @escaping () -> ()) {
    
    queue.asyncAfter(deadline: .now() + .seconds(second)) {
        complition()
    }
}
