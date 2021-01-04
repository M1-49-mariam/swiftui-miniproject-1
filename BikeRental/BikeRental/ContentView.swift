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
                
                Text("مرحبا بك،، يمكنك اختيار الدراجة المناسبة لك من القائمة وأكمل بياناتك للحجز")
                NavigationLink(destination: information(bike: "bike"),
                    label: {BikeRow(bike:"bike", number: "1")
              
                        }).navigationTitle("تأجير الدراجات")
                
                NavigationLink(destination: information(bike: "bike1"),
                    label: {BikeRow(bike:"bike1", number: "2")
              
                        }).navigationTitle("تأجير الدراجات")
                
                NavigationLink(destination: information(bike: "bike4"),
                    label: {BikeRow(bike:"bike4", number: "3")
              
                        }).navigationTitle("تأجير الدراجات")
                NavigationLink(destination: information(bike: "bike4"),
                    label: {BikeRow(bike:"bike4", number: "4")
              
                        }).navigationTitle("تأجير الدراجات")
                NavigationLink(destination: information(bike: "bike2"),
                    label: {BikeRow(bike:"bike2", number: "5")
              
                        }).navigationTitle("تأجير الدراجات")
                


    }
        } .ignoresSafeArea()
        
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
    @State var name = ""

    @State var PhNumb = ""
    @State var counter1 = 0
    @State var counter2 = 0
    @State var price = 3

    
    var body: some View {
       
        
        VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ )
        {
        
            Image(bike)
            TextField("اسم المستلم", text: $name)
            
            TextField("رقم الهاتف", text: $PhNumb)
            Spacer()
            
            HStack (alignment: .center){
            Button(action: {
                counter1 -= 1
            }, label: {
               
                Image(systemName: "minus")
                    .foregroundColor(Color.white)
                    
                    .frame(width: 50.0, height: 50.0)
                    .background(Color.gray)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                  
                
            })
                Text("\(counter1)")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    counter1 += 1
                }, label: {
                    
                    Image(systemName: "plus")
                        .foregroundColor(Color.white)
                        
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                   
                    
                })
              Spacer()
                Text("عدد الساعات")
                    
                    .fontWeight(.bold)
            }
          
            .padding()
            
            HStack (alignment: .center){
            Button(action: {
                counter2 -= 1
            }, label: {
               
                Image(systemName: "minus")
                    .foregroundColor(Color.white)
                    
                    .frame(width: 50.0, height: 50.0)
                    .background(Color.gray)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                  
                
            })
        
                Text("\(counter2)")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    counter2 += 1
                }, label: {
                    
                    Image(systemName: "plus")
                        .foregroundColor(Color.white)
                        
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                   
                    
                })
              Spacer()
                Text("عدد الدراجات")
                    
                    .fontWeight(.bold)
            }
            Spacer()
                
        }
        let total = (price * counter1) * counter2;
        Text("\(total)")
            .font(.body)
            .fontWeight(.bold)
        
        
    }
    
    
    
}

}
