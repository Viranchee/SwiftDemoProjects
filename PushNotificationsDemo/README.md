# Push Notifications

“Simply put, a push notification is a way to send any type of data to your user’s app”

Excerpt From: “Push Notifications by Tutorials”. RayWenderlich. 

### How to use:

1. Clone the repo
2. With a paid Apple Developer Account, create Identifier from "https://developer.apple.com/account/resources/identifiers/list" with Push Notification capability
3. Update Bundle Identifier and Team which has Push Notification capability
4. Run the project on Device or Simulator


### History

Apple first used bitfields for payloads (data) in Push Notifications
Why: Optimal memory and network usage. Bandwidth saving, optimal throughput
Cons: Hard for humans to understand, decode, debug

Then, Apple switched to JSON, because easier construction and debugging.
Also, JSON simplicity allows for extensibility in the future 

Limitation: 4KB (4096B) payload max size
