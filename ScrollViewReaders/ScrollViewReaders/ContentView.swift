//
//  ContentView.swift
//  ScrollViewReaders
//
//  Created by Thongchai Subsaidee on 28/7/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    let itemCount: Int = 100
    
    var body: some View {
    
        ScrollViewReader { scrollViewProxy in
            VStack {
                
                HStack {
                    Button(action: {
                        scrollViewProxy.scrollTo(0)
                    }, label: {
                        Text("Scroll to top")
                            .frame(width: UIScreen.main.bounds.width / 2.2, height: 50)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    })
                    
                    Button(action: {
                        scrollViewProxy.scrollTo(itemCount-1)
                    }, label: {
                        Text("Scroll to buttom")
                            .frame(width: UIScreen.main.bounds.width / 2.2, height: 50)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(10)
                        
                    })
                }
                
                ScrollView {
                    LazyVStack {
                        ForEach(0..<itemCount) { i in                            
                            Text("Item: \(i)")
                                .frame(height: 50)
                                .id(i)
                        }
                    }
                }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
