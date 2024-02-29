@echo off
cd backend
echo Starting FastAPI server...
poetry run uvicorn main:app --reload
cd app/engine
if not exist data mkdir data
cd ../../..
echo Launching Flutter web app...
flutter run -d chrome
