//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by wesley s favarin on 23/06/19.
//  Copyright © 2019 wesley s favarin. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var show = false
    
    var body: some View {
        
        VStack{
       
            Text("Aprendendo SwiftUI").font(.largeTitle).fontWeight(.semibold).color(.black).padding(4).animation(.basic(duration: 0.3, curve: .easeOut))
            Image("loo").frame(width: show ?  414 : 300, height: show ? 600 : 300).clipped().cornerRadius(show ? 0 : 30).shadow(radius: 30).blur(radius: show ? 0 : 30).animation(.spring()).aspectRatio(contentMode: .fill)
            
            Text("iOS Swift Br:  SwiftUI").font(.subheadline).fontWeight(.regular).color(.black).padding(4).animation(.basic(duration: 0.4, curve: .easeIn))
            
            Button(action: {
                withAnimation {
                    self.show.toggle()
                }
            }) {
            Text("Animação")
            }
            
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
