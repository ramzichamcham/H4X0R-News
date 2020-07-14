//
//  WebView.swift
//  H4X0R News
//
//  Created by Ramzi chamcham on 2020-03-05.
//  Copyright © 2020 Ramzi Chamcham. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        //Context is a type alias for UIViewRepresentableContext<WebView>
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        //Context is a type alias for UIViewRepresentableContext<WebView>
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
        
    }
    
    
}
