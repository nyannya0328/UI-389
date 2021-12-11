//
//  SlideView.swift
//  UI-389
//
//  Created by nyannyan0328 on 2021/12/11.
//

import SwiftUI

struct SlideView: View {
    @Binding var currentTab : String
    
    @Namespace var animation
    var body: some View {
        VStack{
            
            HStack(spacing:15){
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    
                
                Text("Girl")
                    .font(.title.bold())
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth:.infinity,alignment: .leading)
            
            
            
            ScrollView(getRect().height < 750 ? .vertical : .init(), showsIndicators: false) {
                
                
                VStack(alignment:.leading,spacing: 25){
                    TabCardView(icon: "theatermasks.fill", title: "Home")
                    
                    
                    TabCardView(icon: "safari.fill", title: "Discover")
                    
                    TabCardView(icon: "applewatch", title: "Devices")
                    
                    TabCardView(icon: "person.fill", title: "Profile")
                    
                    TabCardView(icon: "gearshape.fill", title: "Settings")
                    
                    TabCardView(icon: "info.circle.fill", title: "About")
                    
                    TabCardView(icon: "questionmark.circle.fill", title: "Help")
                    
                    Spacer()
                    
                    TabCardView(icon: "rectangle.portrait.and.arrow.right", title: "Log Out")
                    
                    
                    
                }
                .padding()
                .padding(.top,45)
                
                
                
                
                
            }
            .frame(width: getRect().width / 2, alignment: .leading)
            .frame(maxWidth:.infinity,alignment: .leading)//
            
            
            
            
            
        }
        .padding(.leading,10)
        .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
        .background(Color("BG"))
    }
    
    @ViewBuilder
    func TabCardView(icon : String,title : String)->some View{
        
        
        
        Button {
         
                
                if title == "Log Out"{}
                else{
                    
                    withAnimation{
                    
                    currentTab = title
                }
            }
        } label: {
            HStack(spacing:10){
                
                
            Image(systemName: icon)
                    .font(.title3)
                    .frame(width: currentTab == title ? 47 : nil, height: 50)
                    .foregroundColor(currentTab == title ? Color("Purple") : (title == "Log Out" ? Color("Orange") :.white))
                 
                    .background(
                    
                        ZStack{
                            
                            if currentTab == title{
                                
                                Color.white.clipShape(Circle())
                                    .matchedGeometryEffect(id: "TABCIRCLE", in: animation)
                                
                            }
                            
                        }
                    
                    
                    )
                
                
                Text(title)
                    .font(.callout.bold())
                    .foregroundColor(title == "Log Out" ? Color("Orange") : .white)
                
                    
                
                    
                    
                
                
                
                
            }
            .padding(.trailing,20)
            
            .background(
            
                ZStack{
                    
                    
                    if currentTab == title{
                        
                        
                        
                        Color("Purple").clipShape(Capsule())
                            .matchedGeometryEffect(id: "TABCAPSULE", in: animation)
                    }
                }
            
            
            )
        }
        .offset(x: currentTab == title ? 15 : 0)

        
    }
}

struct SlideView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
