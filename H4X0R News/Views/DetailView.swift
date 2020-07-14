//
//  DetailView.swift
//  H4X0R News
//
//  Created by Ramzi chamcham on 2020-03-05.
//  Copyright © 2020 Ramzi Chamcham. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")

    }
}
