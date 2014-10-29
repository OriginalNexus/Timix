; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{AE15D0A5-84C2-4284-8444-461174FCC77C}
AppName=Timix
AppVersion=0.7.0
;AppVerName=Timix 0.7.0
AppPublisher=Nexus Inc.
DefaultDirName={pf}\Timix
DefaultGroupName=Timix
AllowNoIcons=yes
LicenseFile=..\LICENCE
OutputDir=..\bin
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\bin\Timix.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\data\*"; DestDir: "{app}\data\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\libs\bin\bass.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\libs\bin\glew32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\libs\bin\glut32.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Timix"; Filename: "{app}\Timix.exe"; IconFilename: "{app}\Timix.exe"
Name: "{group}\{cm:UninstallProgram,Timix}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Timix"; Filename: "{app}\Timix.exe"; IconFilename: "{app}\Timix.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Timix"; Filename: "{app}\Timix.exe"; IconFilename: "{app}\Timix.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\Timix.exe"; Description: "{cm:LaunchProgram,Timix}"; Flags: nowait postinstall skipifsilent

