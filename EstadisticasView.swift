//
//  EstadisticasView.swift
//  Proyecto1
//
//  Created by Alumno on 30/04/26.
//

import  SwiftUI

    struct EstadisticasView: View {

        var Fichajes: [futbolistas] = [
            .init(name:"1. Lamine Yamal", ImageName:"fichaje1" , Valor: "200,00 millones de euros"),
            .init(name:"2. Erling Haaland", ImageName:"fichaje2", Valor: "200,00 millones de euros" ),
            .init(name:"3. Kylian Mbappe", ImageName:"fichaje3", Valor: "200,00 millones de euros"),
            .init(name:"4. Pedri", ImageName:"fichaje4", Valor: "150,00 millones de euros" ),
            .init(name:"5. Vinicius Junior", ImageName:"fichaje5", Valor: "140,00 millones de euros"),
            .init(name:"6. Jude Belligham", ImageName:"fichaje6", Valor: "140,00 millones de euros"),
            .init(name:"7. Michael Olise", ImageName:"fichaje7", Valor: "140,00 millones de euros"),
            .init(name:"8. Jamal Musiala", ImageName:"fichaje10" , Valor: "120,00 millones de euros"),
            .init(name:"9. Bukayo saka", ImageName:"fichaje8" , Valor: "120,00 millones de euros"),
            .init(name:"3. Federico Valverde", ImageName:"fichaje9", Valor: "120,00 millones de euros")
        ]

        var body: some View {
            NavigationView {
                List(Fichajes) { futbolista in
                    NavigationLink {
                        Caracteristicas(futbolista: futbolista)                    } label: {
                        HStack {
                            Image(futbolista.ImageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())

                            Text(futbolista.name)
                        }
                    }
                }
                .navigationTitle("Los valiosos futbolistas")
            }
        }
    }

struct futbolistas: Identifiable {
    var id = UUID()
    var name: String
    var ImageName: String
    var Valor: String
    
}

#Preview {
    EstadisticasView()
}
