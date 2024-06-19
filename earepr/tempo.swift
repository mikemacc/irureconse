import SwiftUI

class ViewModel: ObservableObject {
    @Published var name: String = "John"
}

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()

    var body: some View {
        VStack {
            Text("Hello, \(viewModel.name)!")
            Button("Change Name") {
                self.viewModel.name = "Jane"
            }
        }
    }
}
