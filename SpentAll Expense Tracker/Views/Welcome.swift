//
//  Welcome.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 27/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct Welcome: View {
    @EnvironmentObject var environmentData: EnvironmentData
    
    //    private func checkAuthentication() {
    //        SpentAllClient().checkUser() { result in
    //            switch result {
    //            case .success(let user):
    //                print(user?.name ?? "")
    //            case .failure(let error):
    //                print("error: \(error)")
    //            }
    //        }
    //    }
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ZStack {
                    Color.spentDarkPurple()
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        Spacer()
                        VStack {
                            VStack { Image("logo_square_transparent")
                                .resizable()
                                .scaledToFit()
                            }
                            .frame(width: geometry.size.width * 0.6)
                            Text(verbatim: "SpentAll")
                                .foregroundColor(Color.spentPink())
                                .font(Font.rubik(36))
                                .kerning(4)
                            
                            Text("Easy Expense Tracker".uppercased())
                                .font(Font.karla(20))
                                .kerning(3)
                                .foregroundColor(Color.spentWhite())
                                .padding(8)
                        }
                        Spacer()
                        VStack {
                            NavigationLink(destination: SignIn(networkManager: NetworkManager())) {
                                CustomButton(label: "Login", isOn: true, color: .spentPurple()) {
                                }.padding(.vertical, CGFloat(10))
                            }
                            NavigationLink(destination: SignUp(isReset: false)) {
                                CustomButton(label: "Sign Up", isOn: true, color: .spentPurple()) {
                                }.padding(.vertical, 10)
                            }
                            Rectangle()
                                .frame(height: 1.5)
                                .foregroundColor(Color.spentPurple())
                                .padding(.horizontal)
                            
                            NavigationLink(destination: WelcomeInfo()) {
                                CustomButton(label: "Tell Me More", isOn: true, color: .spentPink()) {
                                }.padding(.vertical, 10)
                            }
                        }
                        Spacer()
                        NavigationLink(destination: ContactUs()) {
                            Text(verbatim: "contact us")
                                .kerning(2)
                                .underline(true, color: Color.spentWhite())
                                .foregroundColor(Color.spentWhite())
                        }
                        Spacer()
                    }
                    NavigationLink(destination: TabBarView(), isActive: self.$environmentData.isLoggedIn) { EmptyView() }
                }
            }
            .accentColor(Color.spentWhite())
            .navigationBarTitle(Text(""), displayMode: .inline)
            .navigationBarItems(trailing:
                Image("logo_square_transparent")
                    .imageScale(.large)
                    .padding(.trailing, (geometry.size.width / 2.0) + -30) // image width = 60
            )
//                .alert(isPresented: environmentData.alert?.title != nil) {
//                    Alert(title: Text(environmentData.alert?.title), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
//            }
            //                .onAppear(perform: self.checkAuthentication)
            
        }
        
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome().environmentObject(EnvironmentData())
    }
}
