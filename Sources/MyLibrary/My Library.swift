// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

// MARK: - Font Structs
public struct LargeTitle: View {
    var text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text).font(.largeTitle)
    }
}

public struct Title: View {
    var text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text).font(.title)
    }
}

public struct Title2: View {
    var text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text).font(.title2)
    }
}

public struct Title3: View {
    var text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text).font(.title3)
    }
}

public struct Headline: View {
    var text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text).font(.headline)
    }
}

public struct Subheadline: View {
    var text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text).font(.subheadline)
    }
}

public struct Body: View {
    var text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text).font(.body)
    }
}

public struct Callout: View {
    var text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text).font(.callout)
    }
}

public struct Footnote: View {
    var text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text).font(.footnote)
    }
}

public struct Caption: View {
    var text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text).font(.caption)
    }
}

public struct Caption2: View {
    var text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text).font(.caption2)
    }
}

public struct Symbol: View {
    var text: String
    
    public init(_ text: String) {
        self.text = text
    }
    
    public var body: some View {
        Image(systemName: text)
    }
}

public struct Card<Content: View>: View {
    @ViewBuilder var content: Content
    
    var background: Material
    var padding: CGFloat
    var corners: CGFloat
    
    public init(
        background: Material = .regularMaterial,
        padding: CGFloat = 16,
        corners: CGFloat = 20,
        @ViewBuilder content: () -> Content
    ) {
        self.background = background
        self.padding = padding
        self.corners = corners
        self.content = content()
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            content
        }
        .frame(maxWidth: .infinity)
        .padding(padding)
        .background(background)
        .cornerRadius(corners)
    }
}
