//
//  ContentView.swift
//  First_homework
//
//  Created by User19 on 2020/3/18.
//  Copyright © 2020 00657110. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .center){
            //Image("open").resizable().scaledToFit().frame(width: UIScreen.main.bounds.width*2/3, height: UIScreen.main.bounds.height*2/3)
            
            
           
            Path { (orange) in
                           orange.addArc(center: CGPoint(x: 100, y: 100), radius: 140,
                           startAngle: .degrees(180), endAngle: .degrees(0), clockwise: false)
                           orange.addLine(to:CGPoint(x: 220, y: 100))
                           orange.addArc(center: CGPoint(x: 100, y: 100), radius: 120,
                           startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
                           orange.addLine(to:CGPoint(x: 0, y: 100))
                                     
                       }.fill(Color(red: 0.997, green: 0.491, blue: 0.023)).offset(x:136,y:290)
            
            Path { (green) in   //green_rainbow
                           green.addArc(center: CGPoint(x: 100, y: 100), radius: 120,
                           startAngle: .degrees(180), endAngle: .degrees(0), clockwise: false)
                           green.addLine(to:CGPoint(x: 200, y: 100))
                           green.addArc(center: CGPoint(x: 100, y: 100), radius: 100,
                           startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
                           green.addLine(to:CGPoint(x: 0, y: 100))
                          
                       }.fill(Color(red: 0.187, green: 0.641, blue: 0.246)).offset(x:136,y:290)
                       
            
          
            
            Path { (red) in     //red_rainbow
                red.addArc(center: CGPoint(x: 100, y: 100), radius: 100,
                startAngle: .degrees(180), endAngle: .degrees(0), clockwise: false)
                red.addLine(to:CGPoint(x: 180, y: 100))
                red.addArc(center: CGPoint(x: 100, y: 100), radius: 80,
                startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
                red.addLine(to:CGPoint(x: 0, y: 100))
                
            }.fill(Color(red: 0.996, green: 0, blue: 0.008)).offset(x:136,y:290)
            
            
            
           Path { (green) in    //white_line
                         green.addArc(center: CGPoint(x: 100, y: 100), radius: 120,
                         startAngle: .degrees(180), endAngle: .degrees(0), clockwise: false)
                         green.addLine(to:CGPoint(x: 200, y: 100))
                         green.addArc(center: CGPoint(x: 100, y: 100), radius: 100,
                         startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
                         green.addLine(to:CGPoint(x: 0, y: 100))
                        
                     }.stroke(Color(red: 255, green: 255, blue: 255),lineWidth: 3).offset(x:136,y:290)
            
            Path(ellipseIn: CGRect(x: 15, y: 20, width: 170,height: 140)).fill(Color(red: 1.0, green: 0.952, blue: 0.776)).offset(x:136,y:290)//face
            Path(ellipseIn: CGRect(x: 15, y: 20, width: 170,height: 140)).stroke(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, lineWidth: 5).offset(x:136,y:290)//臉的邊框
            Path(ellipseIn: CGRect(x: 45, y: 60, width: 30,height: 30)).fill(Color.black).offset(x:136,y:290)//左眼
            Path(ellipseIn: CGRect(x: 125, y: 60, width: 30,height:     30)).fill(Color.black).offset(x:136,y:290)//右眼
            Path(ellipseIn: CGRect(x: 90, y: 100, width: 20,height:
                10)).stroke(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, lineWidth: 5).offset(x:136,y:290)//鼻子
            
            Path { (smile) in     //smile
                /*smile.addArc(center: CGPoint(x: 100, y: 90), radius: 50,
                    startAngle: .degrees(60), endAngle: .degrees(130), clockwise: false)*/
                smile.move(to: CGPoint(x: 70, y: 120))
                smile.addQuadCurve(to: CGPoint(x: 130, y: 120), control: CGPoint(x: 100, y: 150))
                
            }.stroke(Color(red: 0.996, green: 0, blue: 0.008),lineWidth: 6).offset(x:136,y:290)
            //Path(circle().frame(width: 80, height: 80)).offset(x:136,y:290)
                /*face.move(to: CGPoint(x: 20, y: 100))
                face.addQuadCurve(to: CGPoint(x: 100, y: 20), control: CGPoint(x: 10, y: 20))
                face.addQuadCurve(to: CGPoint(x: 180, y: 100), control: CGPoint(x: 180, y: 20))*/
           
            
            /*Path { (white_1) in
                white_1.addArc(center: CGPoint(x: 100, y: 100), radius: 100,
                startAngle: .degrees(180), endAngle: .degrees(0), clockwise: false)
                        
                          
            }.fill(Color.white).offset(x:136,y:290)*/
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
