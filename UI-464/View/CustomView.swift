//
//  CustomView.swift
//  UI-464
//
//  Created by nyannyan0328 on 2022/02/14.
//

import SwiftUI

struct CustomView<Content : View,Detail : View>: View  {
    
    
    var content : Content
    var detail : Detail
    @Binding var columns : [GridItem]
    
    init(columns : Binding<[GridItem]>, @ViewBuilder content : @escaping()->Content,@ViewBuilder detail : @escaping()->Detail) {
        
        
        self.content = content()
        self.detail = detail()
        self._columns = columns
    }
  
    var body: some View{
        
        if columns.count == 1{
            
            
            HStack(spacing:15){
                
                content
                
              detail
                
                
            }
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding(.horizontal)
            
            
        }
        else{
            
            
            VStack{
                
                content
                
                detail
            }
            .padding()
            
            
            
            
        }
    }
}

