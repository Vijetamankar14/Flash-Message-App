
# Flash Messenger App

Flash Messenger App is a simple chat application built using Flutter and Firebase. It allows users to register, log in, and send text messages to each other in real-time. Below are the key components of this project:

# Components

_Welcome Screen: The entry point of the app, displaying the app logo and options to log in or register.

_Login Screen: Users can log in with their email and password. Firebase Authentication is used for user authentication.

-Registration Screen: New users can register with their email and password. Firebase Authentication is used to create new user accounts.

_Chat Screen: Users can send and receive real-time messages. The chat messages are stored in Firestore, and the app uses Firebase to manage and display them.

_RoundedButtonWidget: A reusable widget for creating rounded buttons with different colors and labels.

_constants.dart: A file containing constant styling and design elements used throughout the app.

# Dependencies

_firebase_auth: Firebase Authentication for user sign-in and registration.
_cloud_firestore: Firebase Firestore for real-time data storage and retrieval.
_modal_progress_hud_nsn: A widget to display a loading spinner during async operations.
_animated_text_kit: A package for creating animated text effects in the welcome screen.


This simple chat app provides a foundation for building more advanced features and customizations. It's a great starting point for those interested in learning about mobile app development with Flutter and Firebase.