# rename_videos.ps1

# Định nghĩa đường dẫn tới thư mục chứa video
$targetDir = "D:\code\New folder\FileVault_mkdocs\docs\demo\gui"

# Chuỗi cần loại bỏ
$searchText = "_compressed"

# Lọc các file .mp4 có chứa chuỗi "_compressed"
Get-ChildItem -Path $targetDir -Filter "*$searchText.mp4" | ForEach-Object {
    
    $oldName = $_.Name
    # Tạo tên mới bằng cách thay thế chuỗi
    $newName = $oldName -replace $searchText, ""
    
    Write-Host "Đổi tên: '$oldName' --> '$newName'"
    
    # Thực hiện đổi tên
    Rename-Item -Path $_.FullName -NewName $newName -ErrorAction Stop
}

Write-Host "`nHoàn tất quá trình đổi tên."