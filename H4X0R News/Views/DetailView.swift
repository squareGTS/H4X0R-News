//
//  DetailView.swift
//  H4X0R News
//
//  Created by Maxim Bekmetov on 05.10.2020.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    var url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
