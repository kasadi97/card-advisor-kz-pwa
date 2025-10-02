@echo off
title Card Advisor PWA Server
color 0A
echo.
echo  ╔══════════════════════════════════════════════════════════════╗
echo  ║                        🏦 Card Advisor PWA                   ║
echo  ║              Красивое приложение для выбора карт             ║
echo  ╚══════════════════════════════════════════════════════════════╝
echo.
echo  🚀 Запускаем локальный сервер...
echo.

REM Проверяем наличие Python
python --version >nul 2>&1
if errorlevel 1 (
    echo  ❌ Python не найден! Установите Python с python.org
    pause
    exit /b 1
)

REM Запускаем сервер
echo  ✅ Python найден
echo  🌐 Запускаем сервер на порту 8000...
echo.
echo  📱 Откройте в браузере: http://localhost:8000
echo  🔧 Для создания APK используйте: https://www.pwabuilder.com  
echo.
echo  ⚡ Для остановки нажмите Ctrl+C
echo.

python server.py

echo.
echo  🛑 Сервер остановлен
pause