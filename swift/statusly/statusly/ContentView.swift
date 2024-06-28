import SwiftUI

struct ContentView: View {
    @State private var userName: String = ""
    @State private var password: String = ""
    @State private var availability : String = "Available"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Welcome!")
            TextField("Username:", text:$userName)
            SecureField("Password:", text:$password)
            //Button"Get Status", action: () -> fetchStatus(completionHandler: handleStatusResponse))
            Button {
                fetchStatus(completionHandler: handleStatusResponse)
            } label: {
                Text("Get Status")
                    .padding(20)
            }
            
            Text(availability)
            
        }
        .padding()
    }
        
    func fetchStatus(completionHandler: @escaping (String) -> Void) {//TODO: This would go somewhere else
        // Setup the variable lotsOfFilms
        var status: String = "Hi Mom"
          
        // Call the API with some code
          
        // Using data from the API, assign a value to lotsOfFilms
          
        // Give the completion handler the variable, lotsOfFilms
        completionHandler(status)
    }
        
        func handleStatusResponse(with status: String) -> Void {
            self.availability = status
        }
}

#Preview {
    ContentView()
}
