Setlocal EnableDelayedExpansion
@echo off
chcp 65001

set QUTE_TRANS_SOURCE=auto
set QUTE_TRANS_TARGET=en
set result=false


for %%x in (%*) do (
   :: What language is being translated from
   if "%1"=="-s" set result=true
   if "%1"=="--source" set result=true
   if "!result!"=="true" (
	   set QUTE_TRANS_SOURCE=%2
	   set result=false
   )

   :: What language to translate
   if "%3"=="-t" set result=true
   if "%3"=="--target" set result=true
   if "!result!"=="true" (
	   set QUTE_TRANS_TARGET=%4
	   set result=false
   )

   :: Option if you only need to specify which language to translate into
   if "%1"=="-t" set result=true
   if "%1"=="--target" set result=true
   if "!result!"=="true" (
	   set QUTE_TRANS_TARGET=%2
	   set result=false
   )

   :: Full page translation
   if "%%x"=="--url" set QUTE_TRANS_URL=true

   :: Translation of selected text
   if "%%x"=="--text" set QUTE_TRANS_URL=false

)

if "%QUTE_TRANS_URL%"=="" (
    :: Default use automatic language for source
    :: Default use English for target
    set PAGE=https://translate.google.com/translate?
    set CONT_KEY=u
    set CONTENT=%QUTE_URL%
) else if "%QUTE_TRANS_URL%"=="false" (
    :: Translate selected text
    set PAGE=https://translate.google.com/?op=translate
    set CONT_KEY=text
    set CONTENT=%QUTE_SELECTED_TEXT%
) else  (
    :: Default translate URL
    set PAGE=https://translate.google.com/translate?
    set CONT_KEY=u
    set CONTENT=%QUTE_URL%
)

echo open -t %PAGE%sl=%QUTE_TRANS_SOURCE%^&^tl=%QUTE_TRANS_TARGET%^&^%CONT_KEY%=%CONTENT% >> %QUTE_FIFO%
