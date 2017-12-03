##########################################################
# InstallerAttri.nsh
# Dec 12 2017
# This file described attributes of Installer
# can be included by other files
##########################################################
!include "MUI.nsh"
!insertmacro MUI_LANGUAGE	"English"

#set backgroud font
#BGFont 

#set background window color
#BGGradient 

#add a placeholder for an image
#AddBrandingImage left 100

#set band text,default is 'Nullsoft Install System vX.XX'
BrandingText "Analog Devices Inc."

#caption outside PageEx: titlebar of the installer	
#caption inside PageEx: subcaption of the current page
Caption "ADuCM355 Package installation"

#change default text on the component page
ComponentText "Text above the controls, to the right of the component page" \
				"Subtext next to installation type selection" \
				"Subtext2 to the left of the components list and below the installation type"
				
#change text of Show details button
#DetailsButtonText "changed Show details"

#change text of directory page
DirText "Text above the controls, to the right of the installation icon" \
		"subtext on the directory selection frame" 
		#"Text on Browse Button"
		
#specify which variable used to contain the directory page selected
#DirVar 

#sets icon of the installer
Icon ADI.ico

#sets text of install button
#InstallButtonText

#Sets foreground and background colors to use for the install info screen 
#InstallColors EEEE00 5500EE

#sets default installation directory
#InstallDir

#InstProgressFlags
InstProgressFlags smooth colored

#sets background color of license data
#LicenseBkColor 555555

#specifies a text or RTF file for license
LicenseData license.txt

#change text on the license page
LicenseText "by clicking agree button, you are agree balabala"	
			#"text on the 'I Agree' button"
			
#set the name of the installer
Name "ADuCM355Installer"

#set output file 
OutFile ADuCM355Installer2.0.exe

#execution level for windows
RequestExecutionLevel user	#or admin

# sets installer font, the font should be present on user's machine
#SetFont

#sets whether or not the details of the install are shown
ShowInstDetails show

#sets whether or not the details of the install are shown
#ShowUninstDetails

#overrides the subcaptions for each of the installer pages
SubCaption 0 " - subcaption of license page"
SubCaption 1 " - subcaption of installation option page"
SubCaption 2 " - subcaption of directory page"
SubCaption 3 " - subcaption of intalling files page"
SubCaption 4 " - subcaption of complete page"

#set whther or not XP visual style manifest
XPStyle on

#version information stored in installer/unstaller.
#can be viewed in File properties and details tab
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductName" "ADuCM355"
VIAddVersionKey /LANG=${LANG_ENGLISH} "Comments" "Package of ADuCM355"
VIAddVersionKey /LANG=${LANG_ENGLISH} "CompanyName" "Analog Devices"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalTrademarks" "Test Application is a trademark of Fake company"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalCopyright" "© Analog Devices Inc."
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileDescription" "Package of ADuCM355"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileVersion" "2.0"

#sets product version
VIProductVersion 2.0.0.0

#sets file version
VIFileVersion 2.0.0.0




###################################################################
#									Uninstall
###################################################################

#sets what title bar of uninstaller
UninstallCaption "ADuCM355 uninstall"

#sets icon of uninstaller
UninstallIcon ADI.ico

#sets subcaptions for uninstaller pages
UninstallSubCaption 0 "subcaption of confirmation page"
UninstallSubCaption 1 "subcaption of uninstalling file page"
UninstallSubCaption 2 "subcaption of complete page"

#specifies text on the uninstaller confirmation page
UninstallText "text above the controls"	\
				"text next to the uninstall location"
				
	
