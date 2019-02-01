if exist filelist.txt (
for /f %%i in (filelist.txt) do rmdir /s /q %%i\bin
for /f %%i in (filelist.txt) do rmdir /s /q %%i\obj
echo "Done removing bin and obj"
) ELSE (
echo "Please wait generating file list..."
dir /b /a:d > filelist.txt
for /f %%i in (filelist.txt) do rmdir /s /q %%i\bin
for /f %%i in (filelist.txt) do rmdir /s /q %%i\obj
echo "Done removing bin and obj"
)