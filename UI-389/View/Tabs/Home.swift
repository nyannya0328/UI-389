//
//  Home.swift
//  UI-389
//
//  Created by nyannyan0328 on 2021/12/11.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack{
                
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 20, height:280)
                    .cornerRadius(10)
                
                
                Text("Master Swift UI")
                    .font(.caption.bold())
                    .foregroundColor(.black)
                    .frame(maxWidth:.infinity,alignment: .leading)
                    
            }
            
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
