[![flutter_sample](https://github.com/google/generative-ai-dart/actions/workflows/flutter_sample.yml/badge.svg)](https://github.com/google/generative-ai-dart/actions/workflows/flutter_sample.yml)

# Flutter generative AI + Openai RAG backend

A Flutter chat application that uses the `google_generative_ai` package.

## Getting started

To use the Gemini API, you'll need an API key. If you don't already have one, 
create a key in Google AI Studio: https://makersuite.google.com/app/apikey.

When running the app, include your API key using the `--dart-define` flag:

```bash
flutter run --dart-define=API_KEY=$GOOGLE_API_KEY
```

If you use VSCode, you can [specify `--dart-define`
variables](https://dartcode.org/docs/using-dart-define-in-flutter/) in your
launch.json file.

If you use Android Studio or IntelliJ you can use run / debug configurations
(https://www.jetbrains.com/help/idea/run-debug-configuration.html).



To test your Flutter web app along with the Python FastAPI backend, you'll need to follow a series of steps to ensure both parts of your project are running correctly. Here's a step-by-step guide:

# 1. Start the Python FastAPI Backend Server
Before you can use the backend services from your Flutter web app, you need to start the FastAPI server. Here's how to do it:

## Open a Terminal or Command Prompt: Navigate to the /backend directory of your project.

Activate the Python Environment: If you're using a virtual environment (which is recommended), activate it. If you're using Poetry (as indicated by your pyproject.toml), you can activate the environment with:
  ## poetry shell
  
Install Dependencies: Still within the /backend directory, install the required Python dependencies. If you're using Poetry, you can do this with:
  ## poetry install
  
Start the FastAPI Server: You can start the server with the command provided in your README.md. Since you're likely in a development environment, you can use:
  ## uvicorn main:app --reload
  
This command starts the FastAPI server on localhost with port 8000 and enables hot reloading.

# 2. Serve the Flutter Web App
To view your Flutter web app, you'll need to build and serve it. Flutter provides a development server for this purpose.

Open a New Terminal or Command Prompt Window: Navigate to the root directory of your Flutter project.
Ensure Flutter is in Your PATH: Make sure you can run the flutter command. If not, you may need to add Flutter to your system's PATH.
Run the Flutter Web App: Use the following Flutter command to run your web app:
  ## flutter run -d chrome
  
This command builds your Flutter app for the web and launches it in Chrome. If you prefer, you can replace chrome with another supported browser, or omit -d chrome to use the default browser.

## 3. Testing the Integration
Once both the backend and the Flutter web app are running, you can test the integration by interacting with the web app in your browser. If your Flutter app makes requests to the backend, ensure the URLs in your Flutter app's HTTP requests match the URL where the FastAPI server is running (typically http://localhost:8000 for local development).

# Additional Notes
## Environment Variables: Your Python backend uses environment variables (e.g., OPENAI_API_KEY). Make sure these are set in your environment or in a .env file in the /backend directory.
## CORS (Cross-Origin Resource Sharing): Your backend is configured to allow CORS for all origins in development mode. This is necessary for your Flutter web app to communicate with the backend during development. Ensure the environment variable ENVIRONMENT is set to dev to enable this setting.

By following these steps, you should be able to test your Flutter web app with the FastAPI backend successfully.
