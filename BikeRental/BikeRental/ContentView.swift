//
//  ContentView.swift
//  BikeRental
//
//  Created by Mariam2 on 1/4/21.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        
        NavigationView{
            
            List{
                
                Text("تأجير الدراجات")
                    .font(.title)
                    .padding()
                Text("مرحبا بك،، يمكنك اختيار الدراجة المناسبة لك من القائمة وأكمل بياناتك للحجز")
                NavigationLink(destination: Text(""),
                    label: {BikeRow(bike:"bike", number: "1")
              
                        }).navigationTitle("تأجير الدراجات")
                
                NavigationLink(destination: Text(""),
                    label: {BikeRow(bike:"bike1", number: "2")
              
                        }).navigationTitle("تأجير الدراجات")
                
                NavigationLink(destination: Text(""),
                    label: {BikeRow(bike:"bike4", number: "3")
              
                        }).navigationTitle("تأجير الدراجات")
                NavigationLink(destination: Text(""),
                    label: {BikeRow(bike:"bike4", number: "4")
              
                        }).navigationTitle("تأجير الدراجات")
                


    }
        }
        .ignoresSafeArea()
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct BikeRow: View {
    
    let bike: String
  
    let number: String
    
    var body: some View {
        
        HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ )
        {
            Text(number)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                
                .frame(width: 50.0, height: 50.0)
                .background(Color.blue)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        
            Image(bike)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            
            
            
        }
        
    }
    
    
}



struct information: View {
    
    let bike: String
  
 
    
    var body: some View {
        
        HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ )
        {
        
            Image(bike)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            
            
            
        }
        
    }
    
    
}

}
