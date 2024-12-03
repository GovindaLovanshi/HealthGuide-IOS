

import SwiftUI

struct LoginView: View {
        
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                
                VStack(){
                    Text("Welcome Back")
                        .font(.headline)
                        .fontWeight(.semibold)
                }
                .padding(.trailing)
                .padding()
                
                Spacer()
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220,height: 100)
                
                Spacer()
                
                VStack{
                    TextField("Enter Your Email", text: $email)
                        .autocapitalization(.none)
                        .modifier(IGTextModifier())
                    
                    
                    
                    SecureField("Enter Your Password", text: $password)
                        .modifier(IGTextModifier())
                }
                
                Button{
                    
                }label: {
                    Text("Forget Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                        
                }
                .frame(maxWidth: .infinity,alignment: .trailing)
                
                Button{
                    
                }label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 44)
                        .cornerRadius(8,antialiased: true)
                        .background(Color(.pink))
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                        
                }
                .padding(.vertical)
                
                HStack{
                    Rectangle()
                        .frame(width:(UIScreen.main.bounds.width / 2)-40,height: 0.5)
                        .foregroundStyle(.gray)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(.gray)
                    
                    Rectangle()
                        .frame(width:(UIScreen.main.bounds.width / 2)-40,height: 0.5)
                        .foregroundStyle(.gray)
                }
                .foregroundStyle(.gray)
                
                HStack{
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 20,height: 20)
                    
                    Text("Continue With Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                .padding(.top,8)
                
                Spacer()
                
                Divider()
                
                NavigationLink{
                        
                }label: {
                    HStack(spacing:3){
                        Text("Don`t have a Account")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical,16)
            }
        }
    }
}

#Preview {
    LoginView()
}
