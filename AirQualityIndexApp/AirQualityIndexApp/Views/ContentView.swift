//
//  ContentView.swift
//  AirQualityIndexApp
//
//  Created by ankit bharti on 21/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let info = """
                         Mahendra Singh Dhoni born 7 July 1981), commonly known as MS Dhoni, is an Indian international cricketer who captained the Indian national team in limited-overs formats from 2007 to 2016 and in Test cricket from 2008 to 2014. Under his captaincy, India won the 2007 ICC World Twenty20, the 2010 and 2016 Asia Cups, the 2011 ICC Cricket World Cup and the 2013 ICC Champions Trophy. A right-handed middle-order batsman and wicket-keeper, Dhoni is one of the highest run scorers in One Day Internationals (ODIs) with more than 10,000 runs scored and is considered an effective "finisher" in limited-overs formats. He is also regarded by some as one of the best wicket-keepers and captain in modern limited-overs international cricket.
                    
                            He made his ODI debut in December 2004 against Bangladesh, and played his first Test a year later against Sri Lanka. Dhoni has been the recipient of many awards, including the ICC ODI Player of the Year award in 2008 and 2009 (the first player to win the award twice), the Rajiv Gandhi Khel Ratna award in 2007, the Padma Shri, India's fourth highest civilian honour, in 2009 and the Padma Bhushan, India's third highest civilian honour, in 2018.[7] He was named as the captain of the ICC World Test XI in 2009, 2010 and 2013. He has also been selected a record 8 times in ICC World ODI XI teams, 5 times as captain. The Indian Territorial Army conferred the honorary rank of Lieutenant Colonel[8] to Dhoni on 1 November 2011. He is the second Indian cricketer after Kapil Dev to receive this honour.
                        
                            Dhoni also holds numerous captaincy records such as the most wins by an Indian captain in Tests, ODIs and T20Is, and most back-to-back wins by an Indian captain in ODIs. He took over the ODI captaincy from Rahul Dravid in 2007 and led the team to its first-ever bilateral ODI series wins in Sri Lanka and New Zealand. In June 2013, when India defeated England in the final of the Champions Trophy in England, Dhoni became the first captain to win all three ICC limited-overs trophies (World Cup, Champions Trophy and the World Twenty20). After taking up the Test captaincy in 2008, he led the team to series wins in New Zealand and the West Indies, and the Border-Gavaskar Trophy in 2008, 2010 and 2013. In 2009, Dhoni also led the Indian team to number one position for the first time in the ICC Test rankings.

                            In 2013, under his captaincy, India became the first team in more than 40 years to whitewash Australia in a Test series. In the Indian Premier League, he captained the Chennai Super Kings to victory at the 2010, 2011 and 2018 seasons, along with wins in the 2010 and 2014 editions of Champions League Twenty20. In 2011, Time magazine included Dhoni in its annual Time 100 list as one of the "Most Influential People in the World."[9] Dhoni holds the post of Vice-President of India Cements Ltd., after resigning from Air India. India Cements is the owner of the IPL team Chennai Super Kings, and Dhoni has been its captain since the first IPL season.[10][11] He announced his retirement from Tests on 30 December 2014.[12]

                            In 2012, SportsPro rated Dhoni as the sixteenth most marketable athlete in the world.[13] Dhoni is the co-owner of Indian Super League team Chennaiyin FC.[14] In June 2015, Forbes ranked Dhoni at 23rd in the list of highest paid athletes in the world, estimating his earnings at US$31 million.[15] In 2016, a biopic M.S. Dhoni: The Untold Story was made about him.
                    """
    
    @State private var isPresented = false
    
    var body: some View {
        ScrollView(.vertical) {
                VStack {
                    Image("beach_sunset")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: 300.0)
                        .aspectRatio(contentMode: .fill)
                    Text(self.info)
                        .font(.subheadline)
                        .layoutPriority(1)
                        .padding()
                    
                    Button(action: {
                        withAnimation { self.isPresented.toggle() }
                    }) {
                        Text("Present Details")
                            .font(.headline)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10.0, antialiased: true)
                    }
                    .sheet(isPresented: $isPresented, content: {
                        DetailsInfo(info: self.info, isPresented: self.$isPresented)
                    })
                    .padding()
                    
                    Spacer()
                }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct DetailsInfo: View {
    let info: String
    @Binding var isPresented: Bool
    var body: some View {
        ScrollView {
            VStack {
                Text(info)
                Spacer()
                Button(action: {
                    self.isPresented.toggle()
                }) {
                    Text("Dismiss")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10.0, antialiased: true)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
            ContentView()
        }
    }
}
