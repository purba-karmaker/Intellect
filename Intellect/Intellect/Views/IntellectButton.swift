//
//  IntellectButton.swift
//  Intellect
//
//  Created by Prajna Karmaker on 9/1/23.
//

import SwiftUI

struct IntellectButton: View {
    let title: String
    let backround: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10).foregroundColor(backround)
                   
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

struct IntellectButton_Previews: PreviewProvider {
    static var previews: some View {
        IntellectButton(title: "Value", backround: .blue){
            //Action
        }
    }
}
