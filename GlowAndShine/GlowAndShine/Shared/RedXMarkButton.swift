//
//  RedXMarkButton.swift
//  GlowAndShine
//
//  Created by Uri on 1/9/24.
//

import SwiftUI

struct RedXMarkButton: View {
    var body: some View {
        Image(systemName: "xmark.seal")
            .foregroundStyle(.red)
            .font(.title)
            .frame(maxHeight: .infinity, alignment: .top)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 30)
            .padding(.top, 50)
    }
}

#Preview {
    RedXMarkButton()
}
