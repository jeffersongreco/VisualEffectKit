import SwiftUI
import AppKit

public struct VisualEffectConfig: Hashable, Sendable {
    public var material: NSVisualEffectView.Material
    public var blendingMode: NSVisualEffectView.BlendingMode
    public var state: NSVisualEffectView.State
    public var isEmphasized: Bool
    
    public init(
        material: NSVisualEffectView.Material = .sidebar,
        blendingMode: NSVisualEffectView.BlendingMode = .behindWindow,
        state: NSVisualEffectView.State = .followsWindowActiveState,
        isEmphasized: Bool = false
    ) {
        self.material = material
        self.blendingMode = blendingMode
        self.state = state
        self.isEmphasized = isEmphasized
    }
}

public struct VisualEffectView: NSViewRepresentable {
    
    private let config: VisualEffectConfig
    
    public init(
        material: NSVisualEffectView.Material = .sidebar,
        blendingMode: NSVisualEffectView.BlendingMode = .behindWindow,
        state: NSVisualEffectView.State = .followsWindowActiveState,
        isEmphasized: Bool = false
    ) {
        self.config = VisualEffectConfig(
            material: material,
            blendingMode: blendingMode,
            state: state,
            isEmphasized: isEmphasized
        )
    }
    
    public init(configuration: VisualEffectConfig) {
        self.config = configuration
    }
    
    
    public func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        return view
    }
    
    public func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        if nsView.material != config.material { nsView.material = config.material }
        if nsView.blendingMode != config.blendingMode { nsView.blendingMode = config.blendingMode }
        if nsView.state != config.state { nsView.state = config.state }
        if nsView.isEmphasized != config.isEmphasized { nsView.isEmphasized = config.isEmphasized }
    }
}
