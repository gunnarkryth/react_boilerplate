@echo off

start "" cmd /c "npm install && npm install sass && npm install react-router-dom && npm install tanstack && graphql-request && markdown-to-react && npm run dev"
timeout /t 10

start http://localhost:5173/