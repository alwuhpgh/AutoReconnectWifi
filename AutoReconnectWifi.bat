@echo off
set falseCount=0
set reconnectCount=0
:start
echo 正在检测连接状态...
ping -n 1 www.baidu.com -w 1500|findstr TTL= >nul && ( set /a falseCount=0 & echo 连接正常，已重新连接%reconnectCount%次 ) || ( set /a falseCount+=1 & echo 连接失败%falseCount%次 & if %falseCount% GEQ 0 ( echo 正在重新连接中... & netsh wlan connect name="1016" & set /a reconnectCount+=1 & echo 重新连接完毕 & TIMEOUT /T 10 /NOBREAK ))
TIMEOUT /T 2 /NOBREAK >nul
goto start

::TP-LINK_E1EE30
::2-501