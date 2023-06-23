#Requires AutoHotkey v2.0
#SingleInstance Force

;MsgBox  (A_MyDocuments . "\Steam-writing-assistant\Hotstring\tybo\Autocomb.txt")

;safe code
FileAppend("gg","C:\Users\max\Desktop\tst combine\ahk\anew.txt")

;select a file
SelectedFile := FileSelect(, , "Selct a file to re-combile it", "(*.txt") 
if SelectedFile = "" ;no file
    {
    MsgBox "you didn't select anything; the program will close itself"
    return
    }
else ;manabalte a file
    {
    ;MsgBox "The following file was selected:`n" SelectedFile
;variable from file
    fileText := Fileread(SelectedFile)

;replace " ,"
    fileText :=StrReplace(fileText, ",", "::")

;split as array
    modFileText := StrSplit(fileText, "`n", "`r")


;delte old folder
FileDelete("C:\Users\max\Desktop\tst combine\ahk\anew.txt")

;loob  
    For index, line in modFileText
    {  
       FileAppend("::" . line . "`n", (A_MyDocuments . "\Steam-writing-assistant\Hotstring\tybo\Autocomb.ahk"))
    }

    
    MsgBox "recomile complete"
    }   