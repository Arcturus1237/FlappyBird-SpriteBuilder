//
//  ContactBio.swift
//  Contacts
//
//  Created by Arcturus on 2019-11-18.
//  Copyright © 2019 Arcturus. All rights reserved.
//

import SwiftUI

struct ContactBio: View {
    var name: String
    var headline: String
    var bio: String
    var body: some View {
        VStack {
            Image(name)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.orange,
                lineWidth:4).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/))
            Text(name)
                .font(.title)
            Text (headline)
                .font(.subheadline)
            Divider()
            Text (bio)
                .font(.headline)
                .multilineTextAlignment(.center)
            .lineLimit(nil)
        }.padding() .navigationBarTitle(Text(name),
        displayMode: .inline)
    }
}

struct ContactBio_Previews: PreviewProvider {
    static var previews: some View {
        ContactBio(name: "Tim Cook", headline: "CEO", bio:"Before being named CEO in August 2011, Tim was Apple’s chief operating officer and was responsible for all of the company’s worldwide sales and operations, including end-to-end management of Apple’s supply chain, sales activities, and service and support in all markets and countries. He also headed Apple’s Macintosh division and played a key role in the continued development of strategic reseller and supplier relationships, ensuring flexibility in response to an increasingly demanding marketplace.")
    }
}

