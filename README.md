# GoSquared Swift API

The GoSquared Swift API library allows you to interact with the [GoSquared API](https://www.gosquared.com/docs/api/).

It is written in Swift 3 and has support for the [Swift Package Manager](https://github.com/apple/swift-package-manager).

## Installation

[CocoaPods](https://cocoapods.org) is the recommended way to install this library:

```ruby
# In your Podfile add the following, then
# save and run `pod install`:
pod 'GoSquaredAPI', :git => 'https://github.com/edwellbrook/gosquared-swift.git', :tag => '0.1.0'
```

> **Note:** Although I recommend CocoaPods, you can install this library manually, with git submodules, the Swift Package Manager or Carthage.

## Example Usage

```swift
import GoSquaredAPI

// Configure client
let gosquared = GoSquared(key: "API_KEY", token: "PROJECT_KEY")

// Build request
let request = gosquared.now.concurrents()

// Execute request
GoSquaredAPI.performRequest(request) { response, error in
    // do something with response/error
}
```

## API

The API breaks down each GoSquared product into its own namespace (e.g. "now", "trends", "people").

Each namespace then has multiple functions, which return a `URLRequest`. This `URLRequest` can then be executed with the provided `GoSquaredAPI.performRequest`, or your own networking system.

The request building and execution are decoupled to give you full control over your networking.

### Account

 - `blockedItems()`
 - `isBotBlockingEnabled()`
 - `setBotBlockingEnabled(enabled: Bool)`
 - `blockedIPs()`
 - `setBlockedIPs(ipAddresses: [String])`
 - `unblockIPs(ipAddresses: [String])`
 - `blockedVisitors()`
 - `setBlockedVisitors(visitorIds: [String])`
 - `unblockVisitors(visitorIds: [String])`
 - `reportPreferences()`
 - `sharedUsers()`
 - `projects()`
 - `taggedVisitors()`
 - `webhooks()`
 - `addWebhook(_ webhookUrl: String, name: String)`
 - `webhookTriggers(webhookId: Int)`
 - `addWebhookTrigger(webhookId: Int, trigger: String, value: AnyObject)`
 - `removeWebhookTrigger(_ webhookId: Int, triggerId: Int)`
 - `me()`

### Chat

 - `chats()`
 - `messages(personId: String, limit: Int, offset: Int)`
 - `stream()`

### Ecommerce

 - `aggregate()`
 - `browser()`
 - `category()`
 - `country()`
 - `language()`
 - `os()`
 - `product()`
 - `sources()`
 - `transaction()`

### Now

 - `browsers()`
 - `campaigns()`
 - `concurrents()`
 - `engagement()`
 - `geo()`
 - `overview()`
 - `pages()`
 - `sources()`
 - `timeSeries()`
 - `visitors()`

### People

 - `devices(limit: Int, offset: Int)`
 - `device(deviceId: String)`
 - `eventTypes()`
 - `search(_ query: String, parameters: [String: String])`
 - `details(personId: String)`
 - `devices(personId: String, limit: Int, offset: Int)`
 - `feed(personId: String, parameters: [String: String])`
 - `smartGroups()`

### Tracking

 - `identify(personId: String, properties: [String: AnyObject])`
 - `event(_ name: String, personId: String?, properties: [String: AnyObject]?)`

### Trends

 - `aggregate(parameters: [String: String])`
 - `browsers(parameters: [String: String])`
 - `categories(parameters: [String: String])`
 - `countries(parameters: [String: String])`
 - `events(parameters: [String: String])`
 - `languages(parameters: [String: String])`
 - `organisations(parameters: [String: String])`
 - `os(parameters: [String: String])`
 - `pages(parameters: [String: String])`
 - `basePaths(parameters: [String: String])`
 - `products(parameters: [String: String])`
 - `screenDimensions(parameters: [String: String])`
 - `sources(parameters: [String: String])`
 - `transactions(parameters: [String: String])`

### Combining Functions

The **Now** and **Trends** namespaces offer the ability to group multiple calls to the same namespace into one request. An example of this can be seen below:

```swift
import GoSquaredAPI

// Configure client
let gosquared = GoSquared(key: "API_KEY", token: "PROJECT_KEY")

// Build request with endpoints and parameters
let request = gosquared.now.combiningFunction(functions: [
    GoSquaredAPI.CombiningFunction(endpoint: "timeSeries", parameters: [ "limit": "0" ]),
    GoSquaredAPI.CombiningFunction(endpoint: "concurrents", parameters: [ "limit": "0" ])
])

// Execute request
GoSquaredAPI.performRequest(request) { response, error in
    // do something with response/error
}
```

## License

The MIT License (MIT)
