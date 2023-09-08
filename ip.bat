@echo off

:: 使用 ipconfig 获取 IPv4 地址并筛选出包含 "IPv4 Address" 的行
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
    set ipv4=%%a
    goto :found
)

:found
:: 移除可能存在的前导空格
set ipv4=%ipv4:~1%

:: 复制 IPv4 地址到剪贴板
echo %ipv4% | clip

:: 显示消息
echo IPv4 地址已复制到剪贴板: %ipv4%

:: 暂停以保持窗口打开
pause
