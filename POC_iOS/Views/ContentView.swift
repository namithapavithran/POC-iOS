//
//  ContentView.swift
//  POC_iOS
//
//  Created by Namitha Pavithran on 01/09/21.
//

import SwiftUI

struct ContentView: View {
  
        var body: some View {
            NavigationView {
                VStack {
                    
                        List {
                            OutlineGroup(customData, children: \.connections) { data in
                                HStack {
                                    VStack(alignment: .leading, spacing: 6) {
                                        Text(data.name).font(.system(size: 16))
                                        Text(data.info).font(.system(size: 14))
                                }
                                    VStack(alignment: .leading) {
                                        Text("\(data.profit) $ ").bold().font(.system(size: 13))
                                        Text("\(data.income) $ ").bold().font(.system(size: 13))
                                }
                                }
                            }
                        }
                    
                    .padding()
                }
                .navigationBarTitle(Text("Hierarchical Views"), displayMode: .inline)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
