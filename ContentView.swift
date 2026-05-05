//
//  ContentView.swift
//  Proyecto1
//
//  Created by Alumno on 16/04/26.
//


import SwiftUI

struct ContentView: View {

var body: some View {

ZStack(alignment: .bottom) {


    Image("images")

    .resizable()

    .scaledToFill()

    .frame(  width: 300, height:
    300, alignment: .leading)
     
    .position(x: 180, y: 300)
    
    

    .clipped()
    

HStack {

VStack(alignment: .leading) {

Text("Ferreteria FGH")
        .font(.title)
        .bold()
.font(.headline)
    

Text("contiene herramientas de primera calidad lo cuales vendemos diferentes herramientas")
    Text(" - martillo")
    Text(" - alicates")
    Text(" - destornilladores")
    Text(" - Pinturas")
    Text(" - Herramientas eléctricas")
    Text(" - tornillos")
    Text(" - Etc.")
    
        

.font(.subheadline)

}

Spacer()

}

.padding()

.foregroundColor(.primary)

.background(Color.primary

.colorInvert()

.opacity(0.75))

}

}

}
#Preview {
    ContentView()
}
