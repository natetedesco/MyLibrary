//
//  Untitled.swift
//  MyLibrary
//  Created by Developer on 12/25/24.
//

import SwiftUI

// MARK: - Styling
public extension View {
    func primary() -> some View {
        foregroundStyle(.primary)
    }
    
    func secondary() -> some View {
        foregroundStyle(.secondary)
    }
    
    func tertiary() -> some View {
        foregroundStyle(.tertiary)
    }
    
    func quaternary() -> some View {
        foregroundStyle(.quaternary)
    }
}

// MARK: - Frame
public extension View {
    
    func maxWidth() -> some View {
        frame(maxWidth: .infinity)
    }
    
    func maxHeight() -> some View {
        frame(maxHeight: .infinity)
    }
    
    func maxFrame() -> some View {
        frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func leading() -> some View {
        frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func trailing() -> some View {
        frame(maxWidth: .infinity, alignment: .trailing)
    }
    
    func centered() -> some View {
        frame(maxWidth: .infinity, alignment: .center)
    }
    
    func top() -> some View {
        frame(maxHeight: .infinity, alignment: .top)
    }
    
    func bottom() -> some View {
        frame(maxHeight: .infinity, alignment: .bottom)
    }
    
    func topLeading() -> some View {
        frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }

    func topTrailing() -> some View {
        frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
    }

    func bottomLeading() -> some View {
        frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
    }

    func bottomTrailing() -> some View {
        frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
    }
    
    func verticalCenter() -> some View {
        frame(maxHeight: .infinity, alignment: .center)
    }
}

// MARK: - Font Weights
public extension View {
    func ultraLight() -> some View {
        fontWeight(.ultraLight)
    }
    
    func thin() -> some View {
        fontWeight(.thin)
    }
    
    func light() -> some View {
        fontWeight(.light)
    }
    
    func regular() -> some View {
        fontWeight(.regular)
    }
    
    func medium() -> some View {
        fontWeight(.medium)
    }
    
    func semibold() -> some View {
        fontWeight(.semibold)
    }
    
    func bold() -> some View {
        fontWeight(.bold)
    }
    
    func heavy() -> some View {
        self.fontWeight(.heavy)
    }
    
    func black() -> some View {
        fontWeight(.black)
    }
}


// MARK: - Padding
public extension View {
    
    
    func customPadding(_ args: Any...) -> some View {
            var view = self as any View
            
            var i = 0
            while i < args.count - 1 {
                if let edge = args[i] as? Edge.Set,
                   let value = args[i+1] as? CGFloat {
                    view = view.padding(edge, value) as any View
                    i += 2
                } else {
                    i += 1
                }
            }
            
            return AnyView(view)
        }
    
    
    func topPadding(_ padding: CGFloat = 16) -> some View {
        frame(maxHeight: .infinity, alignment: .top)
            .padding(.top, padding)
    }
    
    func bottomPadding(_ padding: CGFloat = 16) -> some View {
        frame(maxHeight: .infinity, alignment: .bottom)
            .padding(.bottom, padding)
    }
    
    func leadingPadding(_ padding: CGFloat = 16) -> some View {
        frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, padding)
    }
    
    func trailingPadding(_ padding: CGFloat = 16) -> some View {
        frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.trailing, padding)
    }
    
    func horizontalPadding(_ padding: CGFloat = 16) -> some View {
        self.padding(.horizontal, padding)
    }
    
    func verticalPadding(_ padding: CGFloat = 16) -> some View {
        self.padding(.vertical, padding)
    }
}

// MARK: - Materials
public extension View {
    
    func bar() -> some View {
        background(.bar)
    }
    
    func ultraThinMaterial() -> some View {
        background(.ultraThinMaterial)
    }
    
    func thinMaterial() -> some View {
        background(.thinMaterial)
    }
    
    func regularMaterial() -> some View {
        background(.regularMaterial)
    }
    
    func thickMaterial() -> some View {
        background(.thickMaterial)
    }
    
    func ultraThickMaterial() -> some View {
        background(.ultraThickMaterial)
    }
}

