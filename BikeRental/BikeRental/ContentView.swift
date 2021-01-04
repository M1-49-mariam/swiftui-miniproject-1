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
    @State var hours = 0
    @State var numBike = 0
    @State var price = 3
    @State var total = 0.0
    
    var body: some View {
       
        
        VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ )
        {
        
            Image(bike)
            TextField("اسم المستلم", text: $name)
            
            TextField("رقم الهاتف", text: $PhNumb)
            Spacer()
            
            HStack (alignment: .center){
            Button(action: {
                if hours > 0 {
                hours -= 1
                }
                else {
                    
                }
            }, label: {
               
                Image(systemName: "minus")
                    .foregroundColor(Color.white)
                    
                    .frame(width: 50.0, height: 50.0)
                    .background(Color.gray)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                  
                
            })
                Text("\(hours)")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    hours += 1
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
                if numBike > 0 {
                    numBike -= 1
                }
                else {
                    
                }
                
            }, label: {
               
                Image(systemName: "minus")
                    .foregroundColor(Color.white)
                    
                    .frame(width: 50.0, height: 50.0)
                    .background(Color.gray)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                  
                
            })
        
                Text("\(numBike)")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    numBike += 1
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
        let total = (price * hours) * numBike;
        Text("\(total)")
            .font(.title)
            .fontWeight(.bold)
        Text("المبلغ الكلي")
            .font(.title)
            .fontWeight(.bold)
        
       
        NavigationLink(destination: Checkout(name: $name, hours: $hours, numBike: $numBike, PhNumb: $PhNumb, total: $total)) {
                    Text("اضغط للمتابعه")
                        .font(.title)
                   
                        .foregroundColor(Color.white)

                        .multilineTextAlignment(.center)
                        .frame(width: 400.0)
                        .background(Color.blue)
                 }.buttonStyle(PlainButtonStyle())
    
    

}
}
}



struct Checkout: View {
    @Binding var name: String
    @Binding var hours: Int
    @Binding var numBike: Int
    @Binding var PhNumb: String
    @Binding var total: Double
    
    var body: some View {
        VStack{
            
        Text("الفاتورة")
            .font(.largeTitle)
            .fontWeight(.bold)
            HStack {
            Text("الاسم")
                Spacer()
                Text("\(name)")
                
            }
            .padding()
            HStack {
            Text("الساعات")
                Spacer()
                Text("\(hours)")
                
            }
            .padding()
            
            HStack {
            Text("رقم الهاتف")
                Spacer()
                Text("\(PhNumb)")
                
            }
            .padding()
            
            HStack {
            Text("المبلغ")
                Spacer()
                Text("\(total)")
                
            }
            .padding()
        }
        Spacer()
        
        Button(action: {}, label: {
            Text("ادفع الان")
                .font(.title)
           
                .foregroundColor(Color.white)

                .multilineTextAlignment(.center)
                .frame(width: 400.0)
                .background(Color.blue)
        })
        
            
    }
}

