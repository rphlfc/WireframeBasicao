//
//  ContentView.swift
//  Wireframe
//
//  Created by Raphael Cerqueira on 01/05/21.
//

import SwiftUI

struct ContentView: View {
    @State var search = ""
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack {
                    HStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .font(.title)
                                .foregroundColor(Color(#colorLiteral(red: 0.3411838412, green: 0.1000181958, blue: 0.6608016491, alpha: 1)))
                                
                            TextField("", text: $search)
                            
                            Spacer()
                        }
                        .padding(8)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color("ForegroundColor"))
                                .border(Color(#colorLiteral(red: 0.3411838412, green: 0.1000181958, blue: 0.6608016491, alpha: 1)), width: 2)
                        )
                        
                        
                        Button(action: {}, label: {
                            ZStack(alignment: .topTrailing) {
                                Image(systemName: "cart")
                                    .font(.title)
                                    .foregroundColor(Color("ForegroundColor"))
                                
                                Circle()
                                    .frame(width: 12, height: 12)
                                    .foregroundColor(Color(#colorLiteral(red: 0.1959293485, green: 0.05765388161, blue: 0.3307349086, alpha: 1)))
                            }
                        })
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Lorem ipsum dolor sit amet")
                                .redacted(reason: .placeholder)
                            
                            Text("Lorem ipsum")
                                .redacted(reason: .placeholder)
                        }
                        
                        Spacer()
                    }
                    .padding(.top)
                    .padding(.horizontal)
                    
                    Button(action: {}, label: {
                        
                    })
                    .frame(width: 130, height: 30)
                    .background(Color("AccentColor"))
                    .cornerRadius(5)
                    .padding(.top, 20)
                    
                    LazyVGrid(columns: Array.init(repeating: GridItem(.adaptive(minimum: 200, maximum: 200)), count: 4), content: {
                        ForEach(0..<8) { index in
                            VStack {
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color("BackgroundColor"))
                                    .redacted(reason: .placeholder)
                                
                                Text("Lorem")
                                    .redacted(reason: .placeholder)
                            }
                        }
                    })
                    .padding()
                    .background(Color("ForegroundColor"))
                    .padding(.top)
                    
                    VStack {
                        HStack {
                            Text("Lorem ipsum dolor sit amet")
                                .redacted(reason: .placeholder)
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                Text("Lorem ipsum")
                                    .foregroundColor(Color("AccentColor"))
                                    .redacted(reason: .placeholder)
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color("AccentColor"))
                            })
                        }
                        .padding(.horizontal)
                    
                        HStack {
                            Image(systemName: "photo")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .redacted(reason: .placeholder)
                            
                            VStack(alignment: .leading) {
                                Text("Lorem ipsum")
                                    .redacted(reason: .placeholder)
                                
                                Text("Lorem")
                                    .redacted(reason: .placeholder)
                                
                                Spacer()
                                
                            }
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                
                            })
                            .frame(width: 130, height: 30)
                            .background(Color("AccentColor"))
                            .cornerRadius(5)
                            .padding(.top, 20)
                        }
                        .frame(height: 80)
                        .padding(.horizontal)
                        
                    }
                    .padding(.top)
                    
                    VStack {
                        HStack {
                            Text("Lorem ipsum")
                                .redacted(reason: .placeholder)
                            
                            Spacer()
                        }
                        .padding(.top)
                        .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack(spacing: 15) {
                                ForEach(0..<8) { index in
                                    VStack {
                                        Image(systemName: "photo")
                                            .resizable()
                                            .frame(width: 70, height: 70)
                                            .redacted(reason: .placeholder)
                                        
                                        HStack {
                                            VStack(alignment: .leading) {
                                                Text("Lorem ipsum")
                                                    .font(.caption)
                                                    .redacted(reason: .placeholder)
                                                
                                                Text("Lorem")
                                                    .font(.caption2)
                                                    .redacted(reason: .placeholder)
                                            }
                                            
                                            Spacer(minLength: 0)
                                        }
                                    }
                                    .padding()
                                    .background(Color("BackgroundColor"))
                                }
                                
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                        })
                    }
                    .background(Color("ForegroundColor"))
                    .padding(.top)
                    
                    Spacer(minLength: 0)
                }
            })
        
            VStack {
                Spacer()
                
                HStack(spacing: 30) {
                    ForEach(0..<5) { index in
                        Button(action: {}, label: {
                            VStack(spacing: 8) {
                                Circle()
                                    .frame(width: 30, height: 30)
                                    
                                Text("Botão")
                                    .font(.caption)
                            }
                            .foregroundColor(Color("ForegroundColor"))
                        })
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color("BackgroundColor").ignoresSafeArea(.all, edges: .bottom))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
