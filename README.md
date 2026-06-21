<div align="center">

# 🌤️ Skyui

**Native-feeling alerts, toasts, and presentation components for SwiftUI.**

[![Swift](https://img.shields.io/badge/Swift-5.9%2B-F05138?style=for-the-badge&logo=swift&logoColor=white)](https://swift.org)
[![Platforms](https://img.shields.io/badge/Platforms-iOS%20%7C%20iPadOS%20%7C%20macOS-007AFF?style=for-the-badge&logo=apple&logoColor=white)](https://developer.apple.com)
[![SPM](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-3DDC97?style=for-the-badge&logo=swift&logoColor=white)](https://www.swift.org/package-manager/)
[![License](https://img.shields.io/badge/License-MIT-A78BFA?style=for-the-badge)](#-license)

[![Skysmind](https://img.shields.io/badge/Skysmind-Visit%20Site-FF6FA5?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgc3Ryb2tlPSJ3aGl0ZSIgc3Ryb2tlLXdpZHRoPSIyLjIiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCI+CiAgPHBhdGggZD0iTTE4IDEzdjZhMiAyIDAgMCAxLTIgMkg1YTIgMiAwIDAgMS0yLTJWOGEyIDIgMCAwIDEgMi0yaDYiLz4KICA8cG9seWxpbmUgcG9pbnRzPSIxNSAzIDIxIDMgMjEgOSIvPgogIDxsaW5lIHgxPSIxMCIgeTE9IjE0IiB4Mj0iMjEiIHkyPSIzIi8+Cjwvc3ZnPgo=&logoColor=white)](https://skysmind-cd5e3.web.app/)
[![GitHub](https://img.shields.io/badge/GitHub-sky43535%2FSkyui-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/sky43535/Skyui)
[![Branch](https://img.shields.io/badge/branch-main-FFD93D?style=for-the-badge&logo=git&logoColor=white)](https://github.com/sky43535/Skyui/tree/main)

<br/>

![Alerts](https://img.shields.io/badge/✓-Alerts-FF6B6B?style=flat-square)
![Toasts](https://img.shields.io/badge/✓-Toasts-4ECDC4?style=flat-square)
![SwiftUI%20Native](https://img.shields.io/badge/✓-SwiftUI%20Native-A78BFA?style=flat-square)
![Zero%20Config](https://img.shields.io/badge/✓-Sensible%20Defaults-3DDC97?style=flat-square)

</div>

<p align="center">
Skyui is a lightweight SwiftUI component framework focused on native-feeling <strong>alerts</strong>, <strong>toasts</strong>, <strong>sheets</strong>, and other presentation components. It aims to provide simple APIs, sensible defaults, and minimal setup &mdash; while remaining fully SwiftUI-native.
</p>

<div align="center">
<a href="https://github.com/sky43535/Skyui">Repository</a> •
<a href="https://skysmind-cd5e3.web.app/">Skysmind</a> •
<a href="#-quick-start-30-seconds">Quick Start</a> •
<a href="#-api-reference">API Reference</a>
</div>

---

## 📑 Table of Contents

- [Quick Start (30 seconds)](#-quick-start-30-seconds)
- [Alerts](#-alerts)
  - [Error Alert](#error-alert)
  - [Success Alert](#success-alert)
  - [Warning Alert](#warning-alert)
  - [Info Alert](#info-alert)
  - [Alert Actions](#alert-actions)
  - [Custom Alerts](#custom-alerts)
  - [Alert Types](#alert-types)
- [Toasts](#-toasts)
  - [Toast Variants](#toast-variants)
  - [Toast Positions](#toast-positions)
  - [Toast Types](#toast-types)
- [Automatic Behavior](#-automatic-behavior)
- [API Reference](#-api-reference)
- [License](#-license)

---

## 🚀 Quick Start (30 seconds)

> [!IMPORTANT]
> Skyui currently lives only on the **`main`** branch — there are no tagged releases yet. Xcode's Swift Package Manager UI also requires you to add packages from a repo **you have write access to**, so the fastest path today is to fork it first.

### 1. Fork the repo

Fork **[sky43535/Skyui](https://github.com/sky43535/Skyui)** to your own GitHub account.

### 2. Add it via Swift Package Manager

In Xcode: **File ▸ Add Package Dependencies…** and paste **your fork's URL** (not the original):

```
https://github.com/<your-username>/Skyui.git
```

When prompted for the dependency rule, choose **Branch** and enter:

```
main
```

Or add it directly to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/<your-username>/Skyui.git", branch: "main")
]
```

### 3. Import it

```swift
import Skyui
```

### 4. Inject it once, near the root of your app

```swift
ContentView()
    .skyui()
```

`.skyui()` is required once near the root of your app. It silently adds two hosts to your view hierarchy:

| Host | Responsible for |
|------|------------------|
| `SkyAlertHost` | Rendering and presenting `SkyAlert` calls |
| `SkyToastHost` | Rendering, queuing, and auto-dismissing `SkyToast` calls |

> [!WARNING]
> Without `.skyui()` applied, alerts and toasts will not appear anywhere in your view hierarchy.

That's it — you're ready to fire alerts and toasts from anywhere in your app. 🎉

---

## 🔔 Alerts

### Error Alert

```swift
SkyAlert.error(
    title: "Connection Failed",
    message: "Unable to reach server."
)
```

### Success Alert

```swift
SkyAlert.success(
    title: "Success",
    message: "Your changes were saved."
)
```

### Warning Alert

```swift
SkyAlert.warning(
    title: "Warning",
    message: "This action cannot be undone."
)
```

### Info Alert

```swift
SkyAlert.info(
    title: "Update Available",
    message: "A new version is ready to install."
)
```

All four share the same signature:

```swift
SkyAlert.error( // .success / .warning / .info — identical shape
    title: String,
    message: String,
    caption: String? = nil,
    action: SkyAlertAction? = nil
)
```

**Parameters**

| Parameter | Type | Required | Description |
|-----------|------|:--------:|--------------|
| `title` | `String` | ✅ Yes | Main title. |
| `message` | `String` | ✅ Yes | Main body text. |
| `caption` | `String?` | ⬜️ No | Optional smaller text at the bottom. |
| `action` | `SkyAlertAction?` | ⬜️ No | Optional primary action button. |

---

### Alert Actions

#### Single Action

```swift
SkyAlert.success(
    title: "Saved",
    message: "Your profile was updated.",
    action: SkyAlertAction(
        title: "Done"
    ) {
        print("Tapped")
    }
)
```

#### Destructive Action

```swift
SkyAlert.error(
    title: "Delete Account",
    message: "This action is permanent.",
    action: SkyAlertAction(
        title: "Delete",
        role: .destructive
    ) {
        deleteAccount()
    }
)
```

#### Two Buttons

```swift
SkyAlert.custom(
    SkyAlertModel(
        type: .error,
        title: "Delete Account",
        message: "This action is permanent.",
        primaryAction: SkyAlertAction(
            title: "Delete",
            role: .destructive
        ) {
            deleteAccount()
        },
        secondaryAction: SkyAlertAction(
            title: "Cancel",
            role: .cancel
        ) {}
    )
)
```

---

### Custom Alerts

`SkyAlert.custom()` accepts a `SkyAlertModel` directly, giving you full control over both action slots:

```swift
SkyAlert.custom(
    SkyAlertModel(
        type: .success,
        title: "Welcome",
        message: "Account created.",
        caption: "Thanks for joining."
    )
)
```

---

### Alert Types

| Type | Use Case |
|------|----------|
| 🔴 `.error` | Failures, blocked actions |
| 🟢 `.success` | Confirmations, completed actions |
| 🟡 `.warning` | Risky or irreversible actions |
| 🔵 `.info` | Neutral, informational messages |

Each type automatically controls:

- 🖼️ Icon
- 🎨 Border color
- ✨ Accent color

---

## 🍞 Toasts

### Toast Variants

```swift
SkyToast.success("Profile updated")
SkyToast.error("Unable to connect")
SkyToast.warning("Low battery")
SkyToast.info("Update available")
```

All four share the same signature:

```swift
SkyToast.success( // .error / .warning / .info — identical shape
    message: String,
    position: SkyToastPosition = .top
)
```

**Parameters**

| Parameter | Type | Description |
|-----------|------|--------------|
| `message` | `String` | Toast text. |
| `position` | `SkyToastPosition` | Display location. Defaults to `.top`. |

---

### Toast Positions

```swift
// Top
SkyToast.success(
    "Saved",
    position: .top
)

// Bottom
SkyToast.success(
    "Saved",
    position: .bottom
)
```

`SkyToastPosition` cases:

```swift
.top
.bottom
```

---

### Toast Types

| Type | Use Case |
|------|----------|
| 🟢 `.success` | Confirmations, completed actions |
| 🔴 `.error` | Failures, blocked actions |
| 🟡 `.warning` | Risky or transient issues |
| 🔵 `.info` | Neutral, informational messages |

Each type automatically controls:

- 🖼️ Icon
- 🎨 Border color
- ✨ Accent color

`SkyToast.custom()` accepts a `SkyToastModel` directly:

```swift
SkyToastModel(
    type: SkyToastType,
    message: String,
    position: SkyToastPosition = .top
)
```

---

## 🎛 Automatic Behavior

Skyui handles presentation, layout, and dismissal for you — nothing below needs to be configured manually.

<table>
<tr>
<td valign="top" width="50%">

**Alerts**

- 🎯 Centered on screen
- 🧊 Ultra-thin material background
- 🎨 Colored border
- 🖼️ Type-specific icon
- 📝 Optional caption
- 🔘 Optional primary action
- 🔘 Optional secondary action

</td>
<td valign="top" width="50%">

**Toasts**

- ⏱️ Auto-dismiss after 3 seconds
- 📍 Top or bottom positioning
- 🎬 Animated in / out
- 💊 Capsule style
- 🎨 Colored border
- 🖼️ Type-specific icon

</td>
</tr>
</table>

---

## 📚 API Reference

> [!TIP]
> This section covers **100% of Skyui's current public API surface.** If you've read this far, you already know how to use every part of the framework.

### `SkyAlert`

```swift
SkyAlert.error(...)
SkyAlert.success(...)
SkyAlert.warning(...)
SkyAlert.info(...)
SkyAlert.custom(...)
```

### `SkyToast`

```swift
SkyToast.success(...)
SkyToast.error(...)
SkyToast.warning(...)
SkyToast.info(...)
SkyToast.custom(...)
```

### `SkyAlertAction`

```swift
SkyAlertAction(
    title: String,
    role: Role = .normal,
    action: () -> Void
)
```

| Property | Description |
|----------|--------------|
| `title` | Button title. |
| `role` | Button style — see [Roles](#roles). |
| `action` | Closure executed when tapped. |

#### Roles

```swift
.normal
.cancel
.destructive
```

### `SkyAlertModel`

```swift
SkyAlertModel(
    type: SkyAlertType,
    title: String,
    message: String,
    caption: String? = nil,
    primaryAction: SkyAlertAction? = nil,
    secondaryAction: SkyAlertAction? = nil
)
```

| Property | Description |
|----------|--------------|
| `type` | Alert style — see [Alert Types](#alert-types). |
| `title` | Title text. |
| `message` | Body text. |
| `caption` | Optional footer text. |
| `primaryAction` | Main button. |
| `secondaryAction` | Secondary button. |

### `SkyAlertType`

```swift
.error
.success
.warning
.info
```

Controls: icon, border color, accent color.

### `SkyToastModel`

```swift
SkyToastModel(
    type: SkyToastType,
    message: String,
    position: SkyToastPosition = .top
)
```

| Property | Description |
|----------|--------------|
| `type` | Toast style — see [Toast Types](#toast-types). |
| `message` | Toast text. |
| `position` | Toast location. |

### `SkyToastPosition`

```swift
.top
.bottom
```

### `SkyToastType`

```swift
.success
.error
.warning
.info
```

Controls: icon, border color, accent color.

---

## 📄 License

Skyui is available under the MIT License. See the `LICENSE` file for details.

<div align="center">

Made with 💙 and SwiftUI &nbsp;•&nbsp; <a href="https://skysmind-cd5e3.web.app/">Skysmind</a>

</div>
