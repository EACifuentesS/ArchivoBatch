@echo off
echo Empezando la creacion de los archivos de texto...

cd /d "C:\Users\erick\OneDrive\Desktop\archivosBatch\DocumentosWord"

if not exist DocumentosTxt (
    mkdir DocumentosTxt
) else (
    echo La carpeta DocumentosTxt ya existe.
)

for %%i in (*.doc) do (
    DocTo.exe "%%i" "C:\Users\erick\OneDrive\Desktop\archivosBatch\DocumentosWord\docto.exe\%%~ni.txt"
    if errorlevel 1 (
        echo Error al convertir el archivo: %%i 
    ) else (
        echo Archivo convertido correctamente: %%i
    )
)

xcopy *.txt DocumentosTxt\ /C /I /Q /Y

echo Todos los archivos de texto fueron creados.
pause
