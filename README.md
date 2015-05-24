# GoSquared Swift

GoSquared API in Swift

## Usage

```swift
import GoSquared

// Setup a client
let gs = GoSquared(config: GSConfig(key: "your key", token: "your site token"))

// Track an event with optional addtional information
gs.tracking.event("Event Name", data: [
    "additional": "data"
])
```
