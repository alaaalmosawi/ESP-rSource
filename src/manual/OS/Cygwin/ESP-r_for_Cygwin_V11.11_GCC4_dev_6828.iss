[Setup]
OutputDir=C:\Installer_cygwin_esp\Installer
SourceDir=C:\Installer_cygwin_esp\Source
OutputBaseFilename=ESP-r_setup_cygwin_v11_11_dev_6828
VersionInfoVersion=11.11.6828
VersionInfoCompany=ESRU and others
VersionInfoDescription=version 11.11.6828 GCC4 XML X11 GTK for cygwin
VersionInfoCopyright=ESRU and others 2001-2011
Compression=zip
MinVersion=0,5.0.2195
AppCopyright=Copywrite ESRU and Natural Resources Canada 2001-2011
AppName=ESP-r for Cygwin
AppVerName=ESP-r for Cygwin V11.11.6828
InfoAfterFile=C:\Installer_cygwin_esp\Source\esru\README_cygwin_after_installer.txt
InfoBeforeFile=C:\Installer_cygwin_esp\Source\esru\README_cygwin_before_installer.txt
LicenseFile=C:\Installer_cygwin_esp\Source\esru\GPL.txt
PrivilegesRequired=poweruser
ChangesEnvironment=true
DefaultDirName=C:\cygwin\usr\esru
EnableDirDoesntExistWarning=true
DirExistsWarning=auto
AppendDefaultDirName=false
DisableStartupPrompt=false
FlatComponentsList=false
AlwaysShowDirOnReadyPage=true
ShowLanguageDialog=no
UsePreviousGroup=true
AppPublisher=Energy System Research Unit, Glasgow (and others)
AppPublisherURL=http://www.esru.strath.ac.uk
AppVersion=ESP-r Version 11.11.6828
UninstallDisplayName=ESP-r
MergeDuplicateFiles=false
DisableDirPage=false
AllowNoIcons=true
DefaultGroupName=ESP
WizardSmallImageFile=C:\Installer_cygwin_esp\Source\Esru\esplogosmall.bmp
AppID={{657A736E-6F01-474E-8BBB-3E5EE35F97E0}
UninstallDisplayIcon={app}\esplogosmall.bmp
AllowRootDirectory=true
DisableProgramGroupPage=true
AllowUNCPath=false
UsePreviousSetupType=false
UsePreviousTasks=false
[Files]
Source: Esru\GPL.txt; DestDir: {app}; Flags: comparetimestamp
Source: Esru\README_cygwin_after_installer.txt; DestDir: {app}; Flags: comparetimestamp
Source: Esru\README_cygwin_before_installer.txt; DestDir: {app}; Flags: comparetimestamp
Source: Esru\esp-r\bin\link_to; DestDir: {app}; Flags: comparetimestamp
Source: Esru\esp-r\bin\link_to_bash; DestDir: {app}; Flags: comparetimestamp
Source: Esru\bash_profile; DestDir: {app}; Flags: comparetimestamp
Source: Esru\Documents\*.*; DestDir: {app}\Documents; Flags: comparetimestamp
Source: Esru\*.*; DestDir: {app}; Flags: comparetimestamp recursesubdirs ignoreversion
[Dirs]
Name: {app}\esp-r
Name: {app}\Models
Name: {app}\Documents
Name: {app}\esp-r\bin
Name: {app}\esp-r\binX11
Name: {app}\esp-r\binGTK
Name: {app}\esp-r\climate
Name: {app}\esp-r\databases
Name: {app}\esp-r\electric_loads
Name: {app}\esp-r\manual
Name: {app}\esp-r\etc
Name: {app}\esp-r\lib
Name: {app}\esp-r\training
Name: {app}\esp-r\validation
Name: {app}\esp-r\xsl
Name: {app}\; Flags: uninsneveruninstall
[Registry]
Root: HKCR; SubKey: .cfg; ValueType: string; ValueData: ESP-r model; Flags: uninsdeletekey
Root: HKCR; SubKey: ESP-r model; ValueType: string; ValueData: ESP-r configuration file; Flags: uninsdeletekey
Root: HKCR; Subkey: ESP-r model\DefaultIcon; ValueType: string; ValueData: {app}\esplogosmall.bmp,-1; Flags: uninsdeletevalue
[_ISTool]
UseAbsolutePaths=true
[Run]
Filename: C:\cygwin\Cygwin.bat; Flags: skipifdoesntexist postinstall
