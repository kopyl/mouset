import Cocoa
import Foundation
import ArgumentParser

func moveMouseTo(point: CGPoint) {
    CGEvent(mouseEventSource: nil, mouseType: CGEventType.mouseMoved, mouseCursorPosition: point, mouseButton: CGMouseButton.left)?.post(tap: CGEventTapLocation.cghidEventTap)
}

@main
struct Mouset: ParsableCommand {
    @Argument(help: "Specify x")
    public var x: Int?
    
    @Argument(help: "Specify y")
    public var y: Int?

    public func run() throws {
      if let x = x, let y = y {
          moveMouseTo(point: CGPoint(x: x, y: y))
      }
      else {
          let locaction = "x: \(Int(NSEvent.mouseLocation.x)), y: \(Int(NSEvent.mouseLocation.y))"
          print("Current mouse location: \(locaction)")
          print("To move mouse to this location, run:")
          print("mouset \(Int(NSEvent.mouseLocation.x)) \(Int(NSEvent.mouseLocation.y))")
      }
    }
}
