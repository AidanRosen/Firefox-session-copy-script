IF EXIST %userprofile%\Desktop\previous.jsonlz4 DEL %userprofile%\Desktop\previous.jsonlz4

:: key thing to notice! It should be "exist" not "exists" <-- found this by looking up why I'm having error, notice there's only exist and not exists <-- seems wrong grammatically, so stuck out 
:: Also compared it to my other WORKING script to see why it wasn't working

for /f "delims== tokens=2" %%i in ('type %userprofile%\AppData\Roaming\Mozilla\Firefox\profiles.ini ^| findstr "Default=Profiles/"') do set PROFILEPATH=%%i

set PROFILEPATH=%PROFILEPATH:/=\%

set FINALPATH=%userprofile%\AppData\Roaming\Mozilla\Firefox\%PROFILEPATH%\sessionstore-backups\previous.jsonlz4
copy %FINALPATH% %userprofile%\Desktop\


::Old research sites:
::https://askubuntu.com/questions/239543/get-the-default-firefox-profile-directory-from-bash
::https://superuser.com/questions/434870/what-is-the-windows-equivalent-of-the-unix-command-cat
::https://www.shellhacks.com/windows-grep-equivalent-cmd-powershell/
::https://stackoverflow.com/questions/43374003/how-to-remove-all-text-in-a-line-before-and-including-an-equals-operator-in-wind
::https://stackoverflow.com/questions/2323292/assign-output-of-a-program-to-a-variable-using-a-ms-batch-file
::explorer /select,%FINALPATH%
::https://ss64.com/nt/explorer.html
::https://superuser.com/questions/381069/open-folder-in-windows-explorer-from-cmd
::https://stackoverflow.com/questions/48260832/how-can-i-concatenate-two-file-paths-in-batch-script-without-the-trailing-am
