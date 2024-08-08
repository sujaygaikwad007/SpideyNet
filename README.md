# SpideyNet

SpideyNet is a lightweight and easy-to-use Swift library designed to simplify the process of making network requests. It provides a convenient and clean API for performing common HTTP methods (GET, POST, PATCH, DELETE), handling responses, and managing network errors.

 [![Version](https://img.shields.io/cocoapods/v/SpideyNet.svg?style=flat)](https://cocoapods.org/pods/SpideyNet)
 [![License](https://img.shields.io/cocoapods/l/SpideyNet.svg?style=flat)](https://cocoapods.org/pods/SpideyNet)
 [![Platform](https://img.shields.io/cocoapods/p/SpideyNet.svg?style=flat)](https://cocoapods.org/pods/SpideyNet)

## Requirements

- iOS 15.0+
- Swift 5.0+

## Installation

### CocoaPods

SpideyNet is available through [CocoaPods](https://cocoapods.org/pods/SpideyNet). To install it, simply add the following line to your Podfile:

```ruby
pod 'SpideyNet'
```


## Usage

To use SpideyNet in your project, follow these steps:

1. Import the module:

```swift
import SpideyNet
```

2. Use the provided NetworkManager methods:

#### GET Request Example


```swift
import Foundation
import SpideyNet

struct MyData: Decodable {
    let id: Int
    let name: String
}

func fetchData() {
    guard let url = URL(string: "https://api.example.com/data") else { return }

    NetworkManager.shared.request(url: url, method: .get) { (result: Result<MyData, NetworkError>) in
        switch result {
        case .success(let data):
            print("Data received: \(data)")
        case .failure(let error):
            print("Failed with error: \(error)")
        }
    }
}


```

#### POST Request Example

```swift
import Foundation
import SpideyNet

struct PostData: Encodable {
    let name: String
}

struct ResponseData: Decodable {
    let id: Int
    let name: String
}

func postData() {
    guard let url = URL(string: "https://api.example.com/data") else { return }

    let postData = PostData(name: "New Item")
    let bodyData = try? JSONEncoder().encode(postData)

    NetworkManager.shared.request(url: url, method: .post, body: bodyData) { (result: Result<ResponseData, NetworkError>) in
        switch result {
        case .success(let data):
            print("Data received: \(data)")
        case .failure(let error):
            print("Failed with error: \(error)")
        }
    }
}
```

####  PATCH Request Example

```swift
import Foundation
import SpideyNet

struct PatchData: Encodable {
    let name: String
}

func patchData() {
    guard let url = URL(string: "https://api.example.com/data/1") else { return }

    let patchData = PatchData(name: "Updated Item")
    let bodyData = try? JSONEncoder().encode(patchData)

    NetworkManager.shared.request(url: url, method: .patch, body: bodyData) { (result: Result<ResponseData, NetworkError>) in
        switch result {
        case .success(let data):
            print("Data received: \(data)")
        case .failure(let error):
            print("Failed with error: \(error)")
        }
    }
}
```

####  DELETE Request Example

```swift
import Foundation
import SpideyNet

struct EmptyResponse: Decodable {}

func deleteData() {
    guard let url = URL(string: "https://api.example.com/data/1") else { return }

    NetworkManager.shared.request(url: url, method: .delete) { (result: Result<EmptyResponse, NetworkError>) in
        switch result {
        case .success:
            print("Data deleted successfully")
        case .failure(let error):
            print("Failed with error: \(error)")
        }
    }
}
```
These examples demonstrate how to use the SpideyNet library to perform common HTTP operations and handle network responses and errors gracefully.





