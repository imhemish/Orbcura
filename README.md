# Orbcura

Orbcura is a mobile application designed to empower visually and auditorily impaired individuals, enabling them to navigate digital services with ease. The app extends accessibility options for commonly used applications, ensuring inclusivity in everyday digital interactions.

## Motivation

Many digital applications lack proper accessibility support, making it difficult for visually impaired individuals to use them effectively. While existing solutions like TalkBack and VoiceOver provide navigation assistance, they do not ensure full functionality within third-party applications. Orbcura bridges this gap by integrating accessibility features into essential services such as UPI payments and AI-powered image descriptions, creating a seamless and inclusive experience.

## Features

- **4-Corner Touch UI**: Simplifies navigation using easy-to-reach screen corners. Users may not know what is on the screen, but they can physically feel the edges of the device and the volume buttons, making the process intuitive and accessible.
- **SmartCam**: AI-powered image description for captured photos.
- **Voice-Guided Navigation**: Ensures smooth interaction across all app screens.
- **UPI Payments with Volume Button PIN Entry**: Secure and intuitive PIN entry system.
- **Real-Time Text-to-Speech & Speech-to-Text**: Powered by Google APIs for accessibility.
- **QR Code Scanning**: Uses `mobile_scanner` to facilitate secure transactions.

## UPI Payment Process

Orbcura enables visually impaired users to perform secure UPI transactions with an intuitive PIN entry system using volume buttons. The process is as follows:

1. **Accessing UPI Payments**: Users navigate to the UPI screen by swiping left or right from the Home Screen.
2. **Scanning QR Code**: The `mobile_scanner` library detects QR codes, and Google Speech-to-Text confirms the merchant’s name.
3. **Entering the PIN**: Since users cannot see the on-screen keypad, Orbcura allows PIN entry using volume buttons:
   - The **Volume Up** button toggles through digits (1-5) and (6-0).
   - The **Volume Down** button acts as a backspace.
   - After entering all digits, a volume up submits the PIN.
4. **Transaction Confirmation**: The app provides voice feedback on the transaction status, ensuring users stay informed.

## Future Scope

- **Enhanced Image Descriptions**: Automatically generate alternative text for images lacking alt descriptions in various apps like Instagram.
- **Local AI Models**: Reducing dependency on cloud-based services for faster and more private processing.
- **Expanded UPI Support**: We are looking out for integrating UPI via NPCI's USSD.

## User Flow

![user flow](https://github.com/user-attachments/assets/97615a9c-1b51-4d30-8ca6-6b6db58fde7f)

## Architecture Diagram

![Orbcura Flutter App](https://github.com/user-attachments/assets/124281cc-e912-47fa-8d5e-450a2eb17a6f)

## Technologies Used

- **Flutter**: For easy app development.
- **Google Speech-to-Text & Text-to-Speech APIs**: For voice-based interactions.
- **Gemini AI**: AI-powered image descriptions and accessibility enhancements.
- **mobile_scanner**: Flutter-based QR code scanner for payments.

## Installation

You can get the MVP from the [releases](https://github.com/imhemish/Orbcura/releases) section.

1. Clone this repository:

   ```bash
   git clone https://github.com/your-repo/orbcura.git
   ```
2. Navigate to the project directory:

   ```bash
   cd orbcura
   ```
3. Install dependencies:

   ```bash
   flutter pub get
   ```
4. Run the app:

   ```bash
   flutter run
   ```

