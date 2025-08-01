# AIM2025

A modern reboot of AOL Instant Messenger (AIM) for 2025, built in Flutter.

## 🚀 Getting Started

1. **Clone the repo**
2. **Install dependencies**
   ```
   flutter pub get
   ```
3. **Add your Firebase configuration**
   - Already set up in `lib/firebase_options.dart`
   - Make sure your project matches the IDs and keys in your Firebase console.

4. **Add assets**
   - Place your logo as `assets/logo.png`
   - Add any sounds/images you want to use.

5. **Run the app**
   ```
   flutter run
   ```

## 🏗️ Project Structure

- `lib/screens/` - All app screens (welcome, login, chat, profile, settings, etc.)
- `lib/widgets/` - Reusable UI components
- `lib/services/` - Firebase/auth/data logic
- `lib/models/` - Data models (User, Message, etc.)
- `assets/` - Images, sounds, icons

## 🔥 Firebase Setup

- Auth, Firestore, Storage already scaffolded.
- Security rules sample:
  ```js
  match /userdata/{userId} {
    allow read, write: if request.auth != null && request.auth.uid == userId;
  }
  match /messages/{chatId} {
    allow read, write: if request.auth != null;
  }
  match /friends/{userId}/categories/{docId} {
    allow read, write: if request.auth != null && request.auth.uid == userId;
  }
  ```

## 📄 Privacy & Terms

- See `lib/screens/privacy_terms.dart` (Coming soon).

## 🎨 Colors & Branding

- Blue: #0077CC
- Yellow: #FFCC00
- Fonts: Tahoma/Verdana (Google Fonts)
- Logo: Provided in assets

## 🛠️ Next Steps

- Implement login/signup logic
- Add friends list, chat, profile, settings screens
- Integrate sound notifications and push messaging

---

**Contact:** xfiniteradio@gmail.com