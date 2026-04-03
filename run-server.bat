@echo off
echo ========================================
echo  SO THU TIEN MINI - Local Server
echo ========================================
echo.

REM Thu Python truoc
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo [Python] Starting server on http://localhost:8080
    echo.
    echo Mo trinh duyet va vao: http://localhost:8080/nvtd.html
    echo.
    echo Nhan Ctrl+C de dung server.
    python -m http.server 8080
    goto end
)

REM Thu Python 3 (mot so may goi la py)
py --version >nul 2>&1
if %errorlevel% == 0 (
    echo [Python] Starting server on http://localhost:8080
    echo.
    echo Mo trinh duyet va vao: http://localhost:8080/nvtd.html
    echo.
    echo Nhan Ctrl+C de dung server.
    py -m http.server 8080
    goto end
)

REM Thu npx serve (Node.js)
npx --version >nul 2>&1
if %errorlevel% == 0 (
    echo [Node.js] Starting server on http://localhost:8080
    echo.
    echo Mo trinh duyet va vao: http://localhost:8080/nvtd.html
    echo.
    echo Nhan Ctrl+C de dung server.
    npx serve -p 8080 .
    goto end
)

echo KHONG TIM THAY Python hoac Node.js.
echo.
echo Cai Python tai: https://www.python.org/downloads/
echo Sau do chay lai file nay.
echo.
pause

:end
