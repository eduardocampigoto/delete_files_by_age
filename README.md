# delete_files_by_age
Script to delete files by age of last write date

This script was created for attend a need to delete a bunch of log files created daily in separetad paths, that were filling a server disk and causing slowness.

Before execute the script, you need to configure the variables on the head of script.

#### USE CAREFULLY

#### *e.g.*


To delete **anything** in folder "C:\example01\", that was created **after last 30 days** in folder 

```powershell
$days = 30
$paths = 'C:\example01\'
$recursive = 0
```


To delete **just .exe files** in folder "C:\example01\" that was created **after last 30 days** in folder 

```powershell
$days = 30
$paths = 'C:\example01\*.exe'
$recursive = 0
```


To delete **anything** in folders "C:\example01\, C:\example02 and C:\example03" that was created **after last 30 days** in folder 

```powershell
$days = 30
$paths = 'C:\example01\','C:\example02\','C:\example03\'
$recursive = 0
```


To delete **just .exe, .mp3 and .mp4 files** in folders "C:\example01\, C:\example02 and C:\example03" that was created **after last 30 days** in folder 

```powershell
$days = 30
$paths = 'C:\example01\*.exe','C:\example01\*.mp3','C:\example02\*.mp4','C:\example02\*.exe','C:\example02\*.mp3','C:\example02\*.mp4','C:\example03\*.exe','C:\example03\*.mp3','C:\example03\*.mp4'
$recursive = 0
```

To delete **recursively anything** in folder "C:\example01\", that was created **after last 30 days** in folder 

```powershell
$days = 30
$paths = 'C:\example01\'
$recursive = 1
```


To delete **recursively just .exe files** in folder "C:\example01\" that was created **after last 30 days** in folder 

```powershell
$days = 30
$paths = 'C:\example01\*.exe'
$recursive = 1
```


To delete **recursively anything** in folders "C:\example01\, C:\example02 and C:\example03" that was created **after last 30 days** in folder 

```powershell
$days = 30
$paths = 'C:\example01\','C:\example02\','C:\example03\'
$recursive = 1
```


To delete **recursively just .exe, .mp3 and .mp4 files** in folders "C:\example01\, C:\example02 and C:\example03" that was created **after last 30 days** in folder 

```powershell
$days = 30
$paths = 'C:\example01\*.exe','C:\example01\*.mp3','C:\example02\*.mp4','C:\example02\*.exe','C:\example02\*.mp3','C:\example02\*.mp4','C:\example03\*.exe','C:\example03\*.mp3','C:\example03\*.mp4'
$recursive = 1
```




