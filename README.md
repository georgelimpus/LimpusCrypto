# 🚀 LimpusCrypto

*A SwiftUI + MVVM cryptocurrency tracking app powered by the CoinGecko API.*

## 📄 Overview

LimpusCrypto is an iOS application that displays live cryptocurrency market data, provides search functionality, and allows users to track their personal portfolio using Core Data.

This project is built using **SwiftUI, MVVM, Combine, and Core Data**, following clean and scalable architecture patterns.

---

## ✨ Features

* 📡 **Live crypto data** retrieved using the CoinGecko API
* 📋 **Dynamic coin list** with prices, market caps, and rankings
* 🔍 **Real-time search filtering** using Combine’s debounce
* 📊 **Market overview / statistics view**
* 💼 **Portfolio management** with Core Data persistence
* 🧩 **MVVM architecture** with reactive data flow
* 🔄 **Automatic UI updates using @Published + Combine pipelines**

---

## 🧱 Architecture

### **MVVM + Combine**

* **Models**: Coin model, Market data model, Portfolio entity
* **ViewModels**: Handle API networking, filtering, statistics calculation, and business logic
* **Views**: SwiftUI components updated automatically via `@Published` and Combine publishers
* **Combine** is used for:

  * Network request pipelines
  * Debouncing search input
  * Binding portfolio updates to the UI

---

### **Networking Layer**

* Built using **URLSession** and **Codable**
* Generic download service
* Decodes CoinGecko API JSON responses
* Error-tolerant and composable

---

### **Core Data Integration**

* Used to store **portfolio holdings** locally
* Implements:

  * Save/update/delete functions
  * Smooth syncing with ViewModels
  * Persistent storage across app launches

---

## 🧠 Learning Outcomes

Through developing LimpusCrypto, I gained experience with:

* Structuring apps using **MVVM**
* Using **Combine** for reactive, event-driven state updates
* Implementing **Core Data** for local persistence
* Designing reusable SwiftUI components
* Creating modular, scalable architectures suitable for real-world apps
* Handling API data formatting, decoding, and transformation

---

## 🛠 Installation

1. Clone the repository
2. Open `LimpusCrypto.xcodeproj`
3. Build & run on iOS 17+
4. Uses CoinGecko’s public endpoints with an API key (demo account). Requests are subject to CoinGecko rate limits

---

## 🔮 Future Improvements

* Price charts & historical data
* Haptics + animations
* Watchlist functionality
* Offline caching
* Enhanced statistics
* Unit tests

---

## 📸  Switching from Live Prices -> Portfolio



![Adobe Express - Screen Recording 2025-12-12 at 13 31 34](https://github.com/user-attachments/assets/c069d525-5cc2-4217-9935-e5bdf83bac42)




## 📸  Editing Portfolio



<img width="302" height="655" alt="Simulator Screenshot - iPhone 17 Pro - 2025-12-12 at 13 31 00" src="https://github.com/user-attachments/assets/e7ee6bbd-601f-4d4a-9200-8d5ee98e93af" />




## 📸  Live Prices with Dark Mode Active



<img width="302" height="655" alt="Simulator Screenshot - iPhone 17 Pro - 2025-12-12 at 13 38 51" src="https://github.com/user-attachments/assets/b52a2b9b-3ba5-408a-8a07-491010903e53" />


## 📸  Portfolio Coins with 24hr Percentage Change as Weighted Average

<img width="302" height="655" alt="Simulator Screenshot - iPhone 17 Pro - 2025-12-12 at 13 30 40" src="https://github.com/user-attachments/assets/8d0fcdca-6c6e-4167-951f-7dfb1dea1d06" />
