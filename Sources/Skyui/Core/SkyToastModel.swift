import Foundation

public struct SkyToastModel: Identifiable {

    public let id = UUID()

    public let type: SkyToastType
    public let message: String
    public let position: SkyToastPosition

    public init(
        type: SkyToastType,
        message: String,
        position: SkyToastPosition = .top
    ) {
        self.type = type
        self.message = message
        self.position = position
    }
}
