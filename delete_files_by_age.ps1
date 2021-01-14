#DAYS - Max age of files that will be kept in path
# e.g. 30
$days = 9999

# PATHS - Literal paths where files need to be deleted
# They need to be between aposthrophes and, if have more than one, separated by commas.
# e.g. 'C:\example01\*.txt', 'C:\example02\*.*', 'C:\example03\'
$paths = '','','','' 

#RECURSIVE - To delete files recursively
# 1 - enable de recursive deletion 
# 0 - keep this value to disable recursive deletion
$recursive = 0

#################################
# Do not edit below
#################################



function deleteFilesByDate{
        param($path, $days)
        $Date = (get-date) - (new-timespan -day $days) 
        if($recursive -eq 1){
            Get-ChildItem $path -Recurse | where {$_.LastWriteTime -le $Date} | del 
        }else{
            Get-ChildItem $path | where {$_.LastWriteTime -le $Date} | del 
        }
}


foreach ( $path in $paths ){

    deleteFilesByDate $path $days
}
