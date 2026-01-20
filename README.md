# 📱 WhatsApp UI Clone (Flutter)
A Flutter-based WhatsApp UI clone demonstrating the use of core Material components such as TabBar, TabBarView, ListView, dialogs, and popup menus. This project focuses on UI structure, navigation patterns, and widget composition rather than backend functionality.
---
## 🛠️ Tech Stack

- Flutter
- Dart
- Material Design
---
## 📸 UI Overview

- The application mimics WhatsApp’s primary layout with:
    - AppBar containing actions and menu
    - Tab-based navigation (Chats, Calls, Status)
    - Dynamic lists using ListView.builder
    - Dialog interactions via menu options
---
## 🧩 Code Structure & Analysis
### 1. Stateful Widget
```
class WHATSAPP_UI extends StatefulWidget
```
- Enables dynamic UI updates.
- Required for managing interactive components like dialogs and tabs.

### 2. DefaultTabController
```
DefaultTabController(length: 3)
```
- Manages tab selection state.
- Ensures TabBar and TabBarView stay in sync.

### 3. AppBar with Actions

- Search Icon
- PopupMenuButton with:
  - New Group
  - New Chat
  - Settings
  - Logout
-Each menu item opens an AlertDialog, demonstrating modal UI interaction.

### 4. TabBar
```
TabBar(
  tabs: [Text("Chats"), Text("Calls"), Text("Status")]
)
```

- Clean tab navigation.
- Custom indicator styling for better UX.

### 5. TabBarView Screens
- 🟢 Chats Tab
  - ListView.builder
  - Reusable ListTile
  - Avatar, title, subtitle, and unread indicator

- 📞 Calls Tab
  - Simple ListTile
  - Call icon and timestamp

- 🟣 Status Tab
  - Sectioned UI:
      - Recent Updates
      - Viewed Updates
      - Circular avatars with border styling
      - Network images

## ✨ Features Implemented
- Tab-based navigation (WhatsApp-style)
- Popup menu with actionable dialogs
- Dynamic chat list using ListView.builder
- Status updates with image avatars
- Material Design theming
- Clean and readable UI hierarchy

## 📚 What We Learned by Building This UI

- Proper usage of DefaultTabController
- Syncing TabBar & TabBarView
- Implementing PopupMenuButton actions
- Showing dialogs using showDialog
- Efficient list rendering with ListView.builder
- Custom avatar styling with borders
- Structuring complex UI layouts cleanly
- Applying consistent Material theming
## 🧑‍💻 Author
Khubaib Husain | Flutter Developer
