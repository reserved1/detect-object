import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CameraViewModel()
    var body: some View {
        ZStack {
            CameraView(viewModel: viewModel)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(viewModel.detectedObject)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.7))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                
                Text("Confidence: % \(String(format: "%.2f", viewModel.confidence))")
                    .padding()
                    .background(Color.black.opacity(0.7))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
            }
            
            Rectangle()
                .stroke(Color.red,lineWidth: 3)
                .frame(width: viewModel.boundingBox.width, height: viewModel.boundingBox.height)
                .position(x: viewModel.boundingBox.midX, y: viewModel.boundingBox.midY)
        }
    }
}

#Preview {
    ContentView()
}
