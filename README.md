# 💪 BMI Calculator App

A sleek and simple Flutter app to calculate your Body Mass Index (BMI). It takes into account your height, weight, age, and gender, and returns your BMI along with a health interpretation. Designed for both fun and function — clean UI, fast logic, and no fluff.

## 📱 Preview
<p align="center">
  <img src="https://github.com/user-attachments/assets/15cadc2c-86bb-44f5-a17b-270932430583" alt="Gender Screen" width="45%" />
  <img src="https://github.com/user-attachments/assets/1086082e-45bc-4c43-9c90-d15e73469b45" alt="Result Screen" width="45%" />
</p>


## 🚀 Features

- 👨‍⚕️ Gender selection
- 📏 Adjustable height via a slider
- ⚖️ Increment/decrement buttons for weight & age
- 🧠 Real-time BMI calculation with interpretation
- ✨ Smooth navigation & custom UI widgets
- 🔙 Recalculate button to go back and update inputs

## 🛠️ Tech Stack

- **Flutter** (Dart)
- **Custom Widgets**: Reusable UI components (`GenderCard`, `CustomContainer`)
- **State Management**: `setState` (simple and efficient for this app)
- **Navigation**: `Navigator.push` / `pop`

## 📂 Project Structure

```bash
lib/
│
├── bmi/
│   ├── pages/
│   │   ├── bmi_screen.dart      # Main screen with input UI
│   │   └── result.dart          # Result display screen
│   └── widgets/
│       ├── custom_container.dart
│       └── gender_card.dart
│
├── core/
│   └── colors.dart              # Centralized color definitions
└── main.dart
```

## 📏 BMI Reference Table

| BMI Range   | Category    |
| ----------- | ----------- |
| < 18.5      | Underweight |
| 18.5 – 24.9 | Normal      |
| 25.0 – 29.9 | Overweight  |
| 30.0+       | Obesity     |

## 🧪 To Run Locally

```bash
git clone https://github.com/nadaeltorgoman/bmi-calculator-app.git
cd bmi-calculator-app
flutter pub get
flutter run

```

## 🙌 Credits

Created with 💙 by [Engineer Nada](https://github.com/nadaeltorgoman)

---

*Healthy body, healthy code.*

```
