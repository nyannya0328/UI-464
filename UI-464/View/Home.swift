//
//  Home.swift
//  UI-464
//
//  Created by nyannyan0328 on 2022/02/14.
//

import SwiftUI

struct Home: View {
    @State var colums = Array(repeating: GridItem(.flexible(),spacing: 10), count: 1)
    
    
    var widht = (UIScreen.main.bounds.width - 45) / 2
    
    var body: some View {
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                LazyVGrid(columns: colums, spacing: 10) {
                    
                    
                    ForEach(albumns){album in
                        
                        
                        CustomView(columns: $colums) {
                            
                            
                            Image(album.cover)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: colums.count == 1 ? 65 : widht, height: colums.count == 1 ? 65 : widht)
                                .cornerRadius(25)
                            
                        } detail: {
                            
                            
                            VStack(alignment: .leading, spacing: 15) {
                                
                                
                                
                                Text(album.author)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                                
                                
                                Text(album.name)
                                    .font(.caption.weight(.light))
                                    .foregroundColor(.gray)
                                
                            }
                           
                            
                        }

                        
                    }
                    
                    
                }
                
                
            }
            .navigationBarTitle("CustomViewBuilder")
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing){
                    
                    
                    
                    Button {
                        
                        if colums.count == 2{
                            
                            
                            colums.removeLast()
                            
                            
                        }
                        else{
                            
                            
                            colums.append(GridItem(.flexible(),spacing: 15))
                        }
                        
                    } label: {
                        
                        
                        
                        Image(systemName: colums.count == 1 ? "rectangle.3.offgrid" : "rectangle.grid.1x2")
                            .font(.system(size: 25, weight: .bold))
                            
                    }

                }
            }
        }
       
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
