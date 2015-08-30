# GoSquared Swift

GoSquared API in Swift

## Installation

Until this libary is completed, the best way to install is with git submodules:

 - In your project directory, run: `git submodule add git@github.com:edwellbrook/gosquared-swift.git`
 - Drag in `GoSquared.xcodeproj` into the sidebar of you project in Xcode
 - In your target's Build Phases, add GoSquared iOS/OSX to the "Target Dependencies" section
 - In your target's Build Phases, add GoSquared iOS/OSX to the "Link Binary with Libraries" section

## Usage

```swift
import GoSquared

// Setup a client
let gs = GoSquared(key: "your key", token: "your site token")

// Track an event with optional addtional information
gs.tracking.event("Event Name", data: [
    "additional": "data"
])
```
