@echo off
cd /d "D:\code\New folder\mkdocs\docs\demo"

echo Compressing CLI videos...
for %%f in (cli\*.mp4) do (
    echo Processing %%f
    ffmpeg -i "%%f" -c:v libx264 -crf 28 -preset medium -c:a aac -b:a 128k -movflags +faststart "%%~dpnf_compressed.mp4"
)

echo Compressing GUI videos...
for %%f in (gui\*.mp4) do (
    echo Processing %%f
    ffmpeg -i "%%f" -c:v libx264 -crf 28 -preset medium -c:a aac -b:a 128k -movflags +faststart "%%~dpnf_compressed.mp4"
)

echo Compressing VS Code Extension videos...
for %%f in (vscode_extension\*.mp4) do (
    echo Processing %%f
    ffmpeg -i "%%f" -c:v libx264 -crf 28 -preset medium -c:a aac -b:a 128k -movflags +faststart "%%~dpnf_compressed.mp4"
)

echo Done!
pause