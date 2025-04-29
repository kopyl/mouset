import Cocoa
import Foundation
import ArgumentParser

func moveMouseTo(point: CGPoint) {
    guard let event =
    CGEvent(
        mouseEventSource: nil,
        mouseType: .mouseMoved,
        mouseCursorPosition: point,
        mouseButton: .left
    )
    else { return }
    
    event.post(tap: .cghidEventTap)
}

@main
struct Mouset: ParsableCommand {
    @Argument(help: "Specify x")
    public var x: Int?
    
    @Argument(help: "Specify y")
    public var y: Int?

    public func run() throws {
      if let x = x, let y = y {
          let moveToPoint = CGPoint(x: x, y: y)
          moveMouseTo(point: moveToPoint)
      }
      else {
          guard let screen = NSScreen.main else { return }
          
          let currentX = Int(NSEvent.mouseLocation.x)
          let currentY = Int(screen.frame.size.height - NSEvent.mouseLocation.y)
          
          let locaction = "x: \(currentX), y: \(currentY)"
          
          print("Current mouse location: \(locaction)")
          print("To move mouse to this location, run:")
          print("mouset \(currentX) \(currentY)")
      }
    }
}
