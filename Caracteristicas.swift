//
//  Caracteristicas.swift
//  Proyecto1
//
//  Created by Alumno on 30/04/26.
//
import SwiftUI

struct Caracteristicas: View {

    let futbolista: futbolistas

    var body: some View {
        VStack(spacing: 20) {

            Image(futbolista.ImageName)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 20))

            Text(futbolista.name)
                .font(.title)
                .bold()

            Text(futbolista.Valor)
                .font(.body)
                .foregroundColor(.gray)

            Spacer()
        }
        .padding()
        .navigationTitle("Detalle")
    }
}


#Preview {
    Caracteristicas(
        futbolista: futbolistas(
            name: "1. Lamine Yamal",
            ImageName: "fichaje1",
            Valor: "200,00 millones de euros",
        )
    )
}
