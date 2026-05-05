//
//  Nosotros.swift
//  Proyecto1
//
//  Created by Alumno on 30/04/26.
//

import SwiftUI

struct Nosotros: View {
    var body: some View {
        Text("INSTITUCION FAF")
            .position(x: 200, y: 120)
            .font(.title)
            .bold()
        Image("Image")
            .resizable()
            .scaledToFit()
            .frame(width: 250 , height: 320)
            .clipShape(Circle())
            .position(x: 200, y:50 )
        
        Text("Nosotros somos el pretigioso Instituto de nalisis del valor de los mejores futbolistas del Mundo")
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .position( x: 200, y:50)
        }
    
}

#Preview {
    Nosotros()
}
