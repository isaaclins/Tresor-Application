@echo off
cd backend
start "Backend" mvnw spring-boot:run
cd ../frontend
start "Frontend" npm start

