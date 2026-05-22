@echo off
chcp 65001 >nul
echo ============================================
echo   THVL -- He thong quan ly phat song v2.0
echo ============================================
echo.

REM Kiem tra Python
python --version >nul 2>&1
if errorlevel 1 (
    echo [LOI] Chua cai Python. Tai ve tai https://www.python.org/downloads/
    echo Khi cai: tich chon "Add Python to PATH"
    pause
    exit /b 1
)

echo Python da san sang:
python --version
echo.

echo [1/2] Cai dat thu vien (dung python -m pip)...
python -m pip install --upgrade pip -q
python -m pip install flask==3.0.3 flask-sqlalchemy==3.1.1 werkzeug==3.0.3 openpyxl==3.1.2 xlrd==2.0.1 "pandas==2.1.4" -q

if errorlevel 1 (
    echo.
    echo [LOI] Cai thu vien that bai. Thu cai tung goi...
    python -m pip install flask flask-sqlalchemy werkzeug openpyxl xlrd -q
    python -m pip install "pandas<2.2" -q
)

echo.
echo [2/2] Khoi dong ung dung...
echo.
echo  May chu nay :  http://localhost:5000
echo  May khac LAN : http://%COMPUTERNAME%:5000
echo  hoac dung IP: ipconfig de tim dia chi IP
echo.
echo  Nhan Ctrl+C de dung ung dung.
echo.

python app.py

pause
