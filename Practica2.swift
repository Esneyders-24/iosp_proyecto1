//
//  Practica2.swift
//  Proyecto1
//
//  Created by Alumno on 23/04/26.
//

import SwiftUI


let tab1Text = ""



struct Practica2: View {
    @State  var correoelectronico: String = ""
    @State var Clave: String = ""
        var body: some View {
            
        
            NavigationStack() {
                Text("BIENVENIDO A LA INSTITUCION FAF")
                    .position(x: 200, y: 80)
                    .font(.title)
                    .bold()
                
                
                NavigationLink {
                    Nosotros()
                } label:{
                    Image("Image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250 , height: 320)
                        .clipShape(Circle())
                        .position(x: 200, y:40 )
                    }
                
                
                Form {
                    
                    Section(header: Text("Correo Electrónico")) {
                        TextField("Correo Electrónico", text: $correoelectronico)
                            .autocorrectionDisabled(true)
                            .keyboardType(.emailAddress)
                            .padding(7)
                            .font(.headline)
                            .background(Color.gray.opacity(0.3))
                            .overlay(
                                content: {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.red, lineWidth: 2)
                                        
                                }
                            )
                        
                        
                    }
                    Section(header: Text("Clave")) {
                        SecureField("Clave", text: $Clave)
                            .autocorrectionDisabled(true)
                            .keyboardType(.emailAddress)
                            .padding(7)
                            .font(.headline)
                            .keyboardType(.numberPad)
                            .background(Color.gray.opacity(0.3))
                            .overlay(
                                content: {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.red, lineWidth: 2)
                                    
                                }
                            )
                        
                        }
                    
                    
                    NavigationLink {
                        EstadisticasView()
                    } label: {
                          Image(systemName: "play.circle" )
                         Text("Iniciar Sesión")
                    }
                    .buttonStyle(.borderedProminent)
                    .background(.yellow, in: RoundedRectangle(cornerRadius: 12))
                    .frame(width: 200, height: 30)
                    .offset( x:70 , y: -10)
                                       
                    

                    }
                .offset(y: -70)
                .scrollContentBackground(.hidden)
                
                

                }
        
       
                }
    }






#Preview {
    Practica2 ()
}
