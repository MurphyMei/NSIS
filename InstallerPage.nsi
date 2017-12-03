!include "InstallerAttri.nsh"

Page license
Page components
Page directory
Page instfiles

InstType "firstOpt"	
InstType "SecondOpt"

Section SecFirst

	SectionIn	RO
	SectionIn 	1 2

	File ADI.ico

SectionEnd

Section SecSecond
	SectionIn 2
	WriteUninstaller $INSTDIR\uninstallADuCM355.exe
SectionEnd

#insert a section group which constains multiple sections
#SectionGroup
#SectionGroupEnd

Section "Uninstall"
	
	Delete $INSTDIR\ADuCM355Installer2.0.exe
	Delete $INSTDIR\uninstallADuCM355.exe
SectionEnd

#Instructions
#Delete path\file
#Exec 'myprogram.exe'
#ExecShell 
#ExecShellWait
#ExecWait 'myprogram.exe' $0 #return code of myprogram.exe stores in $0
#File
#Rename sourceFile destFile
#RMDir /r /REBOOTOK directory_name	#/REBOOTOK, any files cannot be delete will be deleted after reboot
#SetOutPath

###################Registry,INI,File Instructions
#DeleteINISec ini_filename section_name
#DeleteINIStr ini_filename section_name str_name
#DeleteRegKey /ifempty root_key subkey #/ifempty only delete if no subkeys
#DeleteRegValue root_key subkey key_name
#WriteRegBin root_key subkey key_name valuedata #write a block of binary
#WriteRegDWORD root_key subkey key_name value #write a 32-bit integer
#WriteRegStr root_key subkey key_name value #write a string to the register


#CopyFiles $INSTDIR\*.dat $INSTDIR\backup
#CreateDirectory path

#MessageBox MB_OK text
#Return	#return from function or section
#Quit #installer exit
#StrCmp str1 str2 jump_if_equal jump_if_not_equal


#FileOpen var filename openmode	; file handle stored in var
#FileClose fileHandle
#FileRead handle var maxlen
#FileWrite handle string

#WriteUninstaller	myUninstallprogram.ext
#StrCpy var string
#StrLen var string

###########Stack
#Exch
#Pop
#Push

#IntFmt 	;format integer
#IntOp var value1 OP value2

#Reboot

