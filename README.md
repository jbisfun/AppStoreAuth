# AppStoreAuth

On-device App Store sign-in for iOS, split out of LiveContainer.

| Product | What it does |
| --- | --- |
| `NativeStore` | Objective-C bridge to StoreServices / AMD |
| `SAPKit` | Runs Apple's SAP signer in an emulated machine (Unicorn via MacADICore) |
| `MacAnisetteKit` | Mac CoreADI anisette (MID/OTP), machine provisioning |
| `AppStoreCore` | App Store authentication flow and client |

```swift
.package(url: "https://github.com/jbisfun/AppStoreAuth", branch: "main")
```

Depends on [MacADICore](https://github.com/jbisfun/MacADICore). Derived from
AnisetteKit (AGPL-3.0, see LICENSE); SAPKit carries its own MIT notices in
`Sources/SAPKit`.
