@echo off
set falseCount=0
set reconnectCount=0
:start
echo ���ڼ������״̬...
ping -n 1 www.baidu.com -w 1500|findstr TTL= >nul && ( set /a falseCount=0 & echo ��������������������%reconnectCount%�� ) || ( set /a falseCount+=1 & echo ����ʧ��%falseCount%�� & if %falseCount% GEQ 0 ( echo ��������������... & netsh wlan connect name="1016" & set /a reconnectCount+=1 & echo ����������� & TIMEOUT /T 10 /NOBREAK ))
TIMEOUT /T 2 /NOBREAK >nul
goto start

::TP-LINK_E1EE30
::2-501