import SwiftUI

class CameraViewModel: ObservableObject {
    @Published var detectedObject: String = ""
    @Published var confidence: Float = 0.0
    @Published var boundingBox: CGRect = .zero
}
