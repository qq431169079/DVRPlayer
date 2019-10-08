<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<?xml-stylesheet type="text/xsl" href="is.xsl" ?>
<!DOCTYPE msi [
   <!ELEMENT msi   (summary,table*)>
   <!ATTLIST msi version    CDATA #REQUIRED>
   <!ATTLIST msi xmlns:dt   CDATA #IMPLIED
                 codepage   CDATA #IMPLIED
                 compression (MSZIP|LZX|none) "LZX">
   
   <!ELEMENT summary       (codepage?,title?,subject?,author?,keywords?,comments?,
                            template,lastauthor?,revnumber,lastprinted?,
                            createdtm?,lastsavedtm?,pagecount,wordcount,
                            charcount?,appname?,security?)>
                            
   <!ELEMENT codepage      (#PCDATA)>
   <!ELEMENT title         (#PCDATA)>
   <!ELEMENT subject       (#PCDATA)>
   <!ELEMENT author        (#PCDATA)>
   <!ELEMENT keywords      (#PCDATA)>
   <!ELEMENT comments      (#PCDATA)>
   <!ELEMENT template      (#PCDATA)>
   <!ELEMENT lastauthor    (#PCDATA)>
   <!ELEMENT revnumber     (#PCDATA)>
   <!ELEMENT lastprinted   (#PCDATA)>
   <!ELEMENT createdtm     (#PCDATA)>
   <!ELEMENT lastsavedtm   (#PCDATA)>
   <!ELEMENT pagecount     (#PCDATA)>
   <!ELEMENT wordcount     (#PCDATA)>
   <!ELEMENT charcount     (#PCDATA)>
   <!ELEMENT appname       (#PCDATA)>
   <!ELEMENT security      (#PCDATA)>                            
                                
   <!ELEMENT table         (col+,row*)>
   <!ATTLIST table
                name        CDATA #REQUIRED>

   <!ELEMENT col           (#PCDATA)>
   <!ATTLIST col
                 key       (yes|no) #IMPLIED
                 def       CDATA #IMPLIED>
                 
   <!ELEMENT row            (td+)>
   
   <!ELEMENT td             (#PCDATA)>
   <!ATTLIST td
                 href       CDATA #IMPLIED
                 dt:dt     (string|bin.base64) #IMPLIED
                 md5        CDATA #IMPLIED>
]>
<msi version="2.0" xmlns:dt="urn:schemas-microsoft-com:datatypes" codepage="65001">
	
	<summary>
		<codepage>1252</codepage>
		<title>Installation Database</title>
		<subject></subject>
		<author>##ID_STRING2##</author>
		<keywords>Installer,MSI,Database</keywords>
		<comments>Contact:  Your local administrator</comments>
		<template>Intel;1033</template>
		<lastauthor>Administrator</lastauthor>
		<revnumber>{4B87CE0E-2C6C-4E9A-AA8E-4072E2B484AF}</revnumber>
		<lastprinted/>
		<createdtm>06/21/1999 21:00</createdtm>
		<lastsavedtm>07/15/2000 00:50</lastsavedtm>
		<pagecount>200</pagecount>
		<wordcount>0</wordcount>
		<charcount/>
		<appname>InstallShield Express</appname>
		<security>1</security>
	</summary>
	
	<table name="ActionText">
		<col key="yes" def="s72">Action</col>
		<col def="L64">Description</col>
		<col def="L128">Template</col>
		<row><td>Advertise</td><td>##IDS_ACTIONTEXT_Advertising##</td><td/></row>
		<row><td>AllocateRegistrySpace</td><td>##IDS_ACTIONTEXT_AllocatingRegistry##</td><td>##IDS_ACTIONTEXT_FreeSpace##</td></row>
		<row><td>AppSearch</td><td>##IDS_ACTIONTEXT_SearchInstalled##</td><td>##IDS_ACTIONTEXT_PropertySignature##</td></row>
		<row><td>BindImage</td><td>##IDS_ACTIONTEXT_BindingExes##</td><td>##IDS_ACTIONTEXT_File##</td></row>
		<row><td>CCPSearch</td><td>##IDS_ACTIONTEXT_UnregisterModules##</td><td/></row>
		<row><td>CostFinalize</td><td>##IDS_ACTIONTEXT_ComputingSpace3##</td><td/></row>
		<row><td>CostInitialize</td><td>##IDS_ACTIONTEXT_ComputingSpace##</td><td/></row>
		<row><td>CreateFolders</td><td>##IDS_ACTIONTEXT_CreatingFolders##</td><td>##IDS_ACTIONTEXT_Folder##</td></row>
		<row><td>CreateShortcuts</td><td>##IDS_ACTIONTEXT_CreatingShortcuts##</td><td>##IDS_ACTIONTEXT_Shortcut##</td></row>
		<row><td>DeleteServices</td><td>##IDS_ACTIONTEXT_DeletingServices##</td><td>##IDS_ACTIONTEXT_Service##</td></row>
		<row><td>DuplicateFiles</td><td>##IDS_ACTIONTEXT_CreatingDuplicate##</td><td>##IDS_ACTIONTEXT_FileDirectorySize##</td></row>
		<row><td>FileCost</td><td>##IDS_ACTIONTEXT_ComputingSpace2##</td><td/></row>
		<row><td>FindRelatedProducts</td><td>##IDS_ACTIONTEXT_SearchForRelated##</td><td>##IDS_ACTIONTEXT_FoundApp##</td></row>
		<row><td>GenerateScript</td><td>##IDS_ACTIONTEXT_GeneratingScript##</td><td>##IDS_ACTIONTEXT_1##</td></row>
		<row><td>ISLockPermissionsCost</td><td>##IDS_ACTIONTEXT_ISLockPermissionsCost##</td><td/></row>
		<row><td>ISLockPermissionsInstall</td><td>##IDS_ACTIONTEXT_ISLockPermissionsInstall##</td><td/></row>
		<row><td>InstallAdminPackage</td><td>##IDS_ACTIONTEXT_CopyingNetworkFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize##</td></row>
		<row><td>InstallFiles</td><td>##IDS_ACTIONTEXT_CopyingNewFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize2##</td></row>
		<row><td>InstallODBC</td><td>##IDS_ACTIONTEXT_InstallODBC##</td><td/></row>
		<row><td>InstallSFPCatalogFile</td><td>##IDS_ACTIONTEXT_InstallingSystemCatalog##</td><td>##IDS_ACTIONTEXT_FileDependencies##</td></row>
		<row><td>InstallServices</td><td>##IDS_ACTIONTEXT_InstallServices##</td><td>##IDS_ACTIONTEXT_Service2##</td></row>
		<row><td>InstallValidate</td><td>##IDS_ACTIONTEXT_Validating##</td><td/></row>
		<row><td>LaunchConditions</td><td>##IDS_ACTIONTEXT_EvaluateLaunchConditions##</td><td/></row>
		<row><td>MigrateFeatureStates</td><td>##IDS_ACTIONTEXT_MigratingFeatureStates##</td><td>##IDS_ACTIONTEXT_Application##</td></row>
		<row><td>MoveFiles</td><td>##IDS_ACTIONTEXT_MovingFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize3##</td></row>
		<row><td>PatchFiles</td><td>##IDS_ACTIONTEXT_PatchingFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize4##</td></row>
		<row><td>ProcessComponents</td><td>##IDS_ACTIONTEXT_UpdateComponentRegistration##</td><td/></row>
		<row><td>PublishComponents</td><td>##IDS_ACTIONTEXT_PublishingQualifiedComponents##</td><td>##IDS_ACTIONTEXT_ComponentIDQualifier##</td></row>
		<row><td>PublishFeatures</td><td>##IDS_ACTIONTEXT_PublishProductFeatures##</td><td>##IDS_ACTIONTEXT_FeatureColon##</td></row>
		<row><td>PublishProduct</td><td>##IDS_ACTIONTEXT_PublishProductInfo##</td><td/></row>
		<row><td>RMCCPSearch</td><td>##IDS_ACTIONTEXT_SearchingQualifyingProducts##</td><td/></row>
		<row><td>RegisterClassInfo</td><td>##IDS_ACTIONTEXT_RegisterClassServer##</td><td>##IDS_ACTIONTEXT_ClassId##</td></row>
		<row><td>RegisterComPlus</td><td>##IDS_ACTIONTEXT_RegisteringComPlus##</td><td>##IDS_ACTIONTEXT_AppIdAppTypeRSN##</td></row>
		<row><td>RegisterExtensionInfo</td><td>##IDS_ACTIONTEXT_RegisterExtensionServers##</td><td>##IDS_ACTIONTEXT_Extension2##</td></row>
		<row><td>RegisterFonts</td><td>##IDS_ACTIONTEXT_RegisterFonts##</td><td>##IDS_ACTIONTEXT_Font##</td></row>
		<row><td>RegisterMIMEInfo</td><td>##IDS_ACTIONTEXT_RegisterMimeInfo##</td><td>##IDS_ACTIONTEXT_ContentTypeExtension##</td></row>
		<row><td>RegisterProduct</td><td>##IDS_ACTIONTEXT_RegisteringProduct##</td><td>##IDS_ACTIONTEXT_1b##</td></row>
		<row><td>RegisterProgIdInfo</td><td>##IDS_ACTIONTEXT_RegisteringProgIdentifiers##</td><td>##IDS_ACTIONTEXT_ProgID2##</td></row>
		<row><td>RegisterTypeLibraries</td><td>##IDS_ACTIONTEXT_RegisterTypeLibs##</td><td>##IDS_ACTIONTEXT_LibId##</td></row>
		<row><td>RegisterUser</td><td>##IDS_ACTIONTEXT_RegUser##</td><td>##IDS_ACTIONTEXT_1c##</td></row>
		<row><td>RemoveDuplicateFiles</td><td>##IDS_ACTIONTEXT_RemovingDuplicates##</td><td>##IDS_ACTIONTEXT_FileDir##</td></row>
		<row><td>RemoveEnvironmentStrings</td><td>##IDS_ACTIONTEXT_UpdateEnvironmentStrings##</td><td>##IDS_ACTIONTEXT_NameValueAction2##</td></row>
		<row><td>RemoveExistingProducts</td><td>##IDS_ACTIONTEXT_RemoveApps##</td><td>##IDS_ACTIONTEXT_AppCommandLine##</td></row>
		<row><td>RemoveFiles</td><td>##IDS_ACTIONTEXT_RemovingFiles##</td><td>##IDS_ACTIONTEXT_FileDir2##</td></row>
		<row><td>RemoveFolders</td><td>##IDS_ACTIONTEXT_RemovingFolders##</td><td>##IDS_ACTIONTEXT_Folder1##</td></row>
		<row><td>RemoveIniValues</td><td>##IDS_ACTIONTEXT_RemovingIni##</td><td>##IDS_ACTIONTEXT_FileSectionKeyValue##</td></row>
		<row><td>RemoveODBC</td><td>##IDS_ACTIONTEXT_RemovingODBC##</td><td/></row>
		<row><td>RemoveRegistryValues</td><td>##IDS_ACTIONTEXT_RemovingRegistry##</td><td>##IDS_ACTIONTEXT_KeyName##</td></row>
		<row><td>RemoveShortcuts</td><td>##IDS_ACTIONTEXT_RemovingShortcuts##</td><td>##IDS_ACTIONTEXT_Shortcut1##</td></row>
		<row><td>Rollback</td><td>##IDS_ACTIONTEXT_RollingBack##</td><td>##IDS_ACTIONTEXT_1d##</td></row>
		<row><td>RollbackCleanup</td><td>##IDS_ACTIONTEXT_RemovingBackup##</td><td>##IDS_ACTIONTEXT_File2##</td></row>
		<row><td>SelfRegModules</td><td>##IDS_ACTIONTEXT_RegisteringModules##</td><td>##IDS_ACTIONTEXT_FileFolder##</td></row>
		<row><td>SelfUnregModules</td><td>##IDS_ACTIONTEXT_UnregisterModules##</td><td>##IDS_ACTIONTEXT_FileFolder2##</td></row>
		<row><td>SetODBCFolders</td><td>##IDS_ACTIONTEXT_InitializeODBCDirs##</td><td/></row>
		<row><td>StartServices</td><td>##IDS_ACTIONTEXT_StartingServices##</td><td>##IDS_ACTIONTEXT_Service3##</td></row>
		<row><td>StopServices</td><td>##IDS_ACTIONTEXT_StoppingServices##</td><td>##IDS_ACTIONTEXT_Service4##</td></row>
		<row><td>UnmoveFiles</td><td>##IDS_ACTIONTEXT_RemovingMoved##</td><td>##IDS_ACTIONTEXT_FileDir3##</td></row>
		<row><td>UnpublishComponents</td><td>##IDS_ACTIONTEXT_UnpublishQualified##</td><td>##IDS_ACTIONTEXT_ComponentIdQualifier2##</td></row>
		<row><td>UnpublishFeatures</td><td>##IDS_ACTIONTEXT_UnpublishProductFeatures##</td><td>##IDS_ACTIONTEXT_Feature##</td></row>
		<row><td>UnpublishProduct</td><td>##IDS_ACTIONTEXT_UnpublishingProductInfo##</td><td/></row>
		<row><td>UnregisterClassInfo</td><td>##IDS_ACTIONTEXT_UnregisterClassServers##</td><td>##IDS_ACTIONTEXT_ClsID##</td></row>
		<row><td>UnregisterComPlus</td><td>##IDS_ACTIONTEXT_UnregisteringComPlus##</td><td>##IDS_ACTIONTEXT_AppId##</td></row>
		<row><td>UnregisterExtensionInfo</td><td>##IDS_ACTIONTEXT_UnregisterExtensionServers##</td><td>##IDS_ACTIONTEXT_Extension##</td></row>
		<row><td>UnregisterFonts</td><td>##IDS_ACTIONTEXT_UnregisteringFonts##</td><td>##IDS_ACTIONTEXT_Font2##</td></row>
		<row><td>UnregisterMIMEInfo</td><td>##IDS_ACTIONTEXT_UnregisteringMimeInfo##</td><td>##IDS_ACTIONTEXT_ContentTypeExtension2##</td></row>
		<row><td>UnregisterProgIdInfo</td><td>##IDS_ACTIONTEXT_UnregisteringProgramIds##</td><td>##IDS_ACTIONTEXT_ProgID##</td></row>
		<row><td>UnregisterTypeLibraries</td><td>##IDS_ACTIONTEXT_UnregTypeLibs##</td><td>##IDS_ACTIONTEXT_Libid2##</td></row>
		<row><td>WriteEnvironmentStrings</td><td>##IDS_ACTIONTEXT_EnvironmentStrings##</td><td>##IDS_ACTIONTEXT_NameValueAction##</td></row>
		<row><td>WriteIniValues</td><td>##IDS_ACTIONTEXT_WritingINI##</td><td>##IDS_ACTIONTEXT_FileSectionKeyValue2##</td></row>
		<row><td>WriteRegistryValues</td><td>##IDS_ACTIONTEXT_WritingRegistry##</td><td>##IDS_ACTIONTEXT_KeyNameValue##</td></row>
	</table>

	<table name="AdminExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>InstallAdminPackage</td><td/><td>3900</td><td>InstallAdminPackage</td><td/></row>
		<row><td>InstallFiles</td><td/><td>4000</td><td>InstallFiles</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1500</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>4010</td><td>ScheduleReboot</td><td/></row>
	</table>

	<table name="AdminUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AdminWelcome</td><td/><td>1010</td><td>AdminWelcome</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>ExecuteAction</td><td/><td>1300</td><td>ExecuteAction</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>SetupCompleteError</td><td/><td>-3</td><td>SetupCompleteError</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td/><td>-1</td><td>SetupCompleteSuccess</td><td/></row>
		<row><td>SetupInitialization</td><td/><td>50</td><td>SetupInitialization</td><td/></row>
		<row><td>SetupInterrupted</td><td/><td>-2</td><td>SetupInterrupted</td><td/></row>
		<row><td>SetupProgress</td><td/><td>1020</td><td>SetupProgress</td><td/></row>
	</table>

	<table name="AdvtExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>CreateShortcuts</td><td/><td>4500</td><td>CreateShortcuts</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1500</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>MsiPublishAssemblies</td><td/><td>6250</td><td>MsiPublishAssemblies</td><td/></row>
		<row><td>PublishComponents</td><td/><td>6200</td><td>PublishComponents</td><td/></row>
		<row><td>PublishFeatures</td><td/><td>6300</td><td>PublishFeatures</td><td/></row>
		<row><td>PublishProduct</td><td/><td>6400</td><td>PublishProduct</td><td/></row>
		<row><td>RegisterClassInfo</td><td/><td>4600</td><td>RegisterClassInfo</td><td/></row>
		<row><td>RegisterExtensionInfo</td><td/><td>4700</td><td>RegisterExtensionInfo</td><td/></row>
		<row><td>RegisterMIMEInfo</td><td/><td>4900</td><td>RegisterMIMEInfo</td><td/></row>
		<row><td>RegisterProgIdInfo</td><td/><td>4800</td><td>RegisterProgIdInfo</td><td/></row>
		<row><td>RegisterTypeLibraries</td><td/><td>4910</td><td>RegisterTypeLibraries</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>6410</td><td>ScheduleReboot</td><td/></row>
	</table>

	<table name="AdvtUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="AppId">
		<col key="yes" def="s38">AppId</col>
		<col def="S255">RemoteServerName</col>
		<col def="S255">LocalService</col>
		<col def="S255">ServiceParameters</col>
		<col def="S255">DllSurrogate</col>
		<col def="I2">ActivateAtStorage</col>
		<col def="I2">RunAsInteractiveUser</col>
	</table>

	<table name="AppSearch">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="s72">Signature_</col>
	</table>

	<table name="BBControl">
		<col key="yes" def="s50">Billboard_</col>
		<col key="yes" def="s50">BBControl</col>
		<col def="s50">Type</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="L50">Text</col>
	</table>

	<table name="Billboard">
		<col key="yes" def="s50">Billboard</col>
		<col def="s38">Feature_</col>
		<col def="S50">Action</col>
		<col def="I2">Ordering</col>
	</table>

	<table name="Binary">
		<col key="yes" def="s72">Name</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
		<row><td>ISExpHlp.dll</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\ISExpHlp.dll</td></row>
		<row><td>ISSELFREG.DLL</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\isregsvr.dll</td></row>
		<row><td>NewBinary1</td><td/><td>&lt;ISProductFolder&gt;\Support\Themes\InstallShield Blue Theme\banner.jpg</td></row>
		<row><td>NewBinary10</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CompleteSetupIco.ibd</td></row>
		<row><td>NewBinary11</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CustomSetupIco.ibd</td></row>
		<row><td>NewBinary12</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\DestIcon.ibd</td></row>
		<row><td>NewBinary13</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\NetworkInstall.ico</td></row>
		<row><td>NewBinary14</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\DontInstall.ico</td></row>
		<row><td>NewBinary15</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\Install.ico</td></row>
		<row><td>NewBinary16</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallFirstUse.ico</td></row>
		<row><td>NewBinary17</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallPartial.ico</td></row>
		<row><td>NewBinary18</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallStateMenu.ico</td></row>
		<row><td>NewBinary2</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\New.ibd</td></row>
		<row><td>NewBinary3</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\Up.ibd</td></row>
		<row><td>NewBinary4</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\WarningIcon.ibd</td></row>
		<row><td>NewBinary5</td><td/><td>&lt;ISProductFolder&gt;\Support\Themes\InstallShield Blue Theme\welcome.jpg</td></row>
		<row><td>NewBinary6</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CustomSetupIco.ibd</td></row>
		<row><td>NewBinary7</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\ReinstIco.ibd</td></row>
		<row><td>NewBinary8</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\RemoveIco.ibd</td></row>
		<row><td>NewBinary9</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\SetupIcon.ibd</td></row>
		<row><td>SetAllUsers.dll</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\SetAllUsers.dll</td></row>
	</table>

	<table name="BindImage">
		<col key="yes" def="s72">File_</col>
		<col def="S255">Path</col>
	</table>

	<table name="CCPSearch">
		<col key="yes" def="s72">Signature_</col>
	</table>

	<table name="CheckBox">
		<col key="yes" def="s72">Property</col>
		<col def="S64">Value</col>
		<row><td>ISCHECKFORPRODUCTUPDATES</td><td>1</td></row>
		<row><td>LAUNCHPROGRAM</td><td>1</td></row>
		<row><td>LAUNCHREADME</td><td>1</td></row>
	</table>

	<table name="Class">
		<col key="yes" def="s38">CLSID</col>
		<col key="yes" def="s32">Context</col>
		<col key="yes" def="s72">Component_</col>
		<col def="S255">ProgId_Default</col>
		<col def="L255">Description</col>
		<col def="S38">AppId_</col>
		<col def="S255">FileTypeMask</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="S32">DefInprocHandler</col>
		<col def="S255">Argument</col>
		<col def="s38">Feature_</col>
		<col def="I2">Attributes</col>
	</table>

	<table name="ComboBox">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
	</table>

	<table name="CompLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="s38">ComponentId</col>
		<col def="I2">Type</col>
	</table>

	<table name="Complus">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="I2">ExpType</col>
	</table>

	<table name="Component">
		<col key="yes" def="s72">Component</col>
		<col def="S38">ComponentId</col>
		<col def="s72">Directory_</col>
		<col def="i2">Attributes</col>
		<col def="S255">Condition</col>
		<col def="S72">KeyPath</col>
		<col def="I4">ISAttributes</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISScanAtBuildFile</col>
		<col def="S255">ISRegFileToMergeAtBuild</col>
		<col def="S0">ISDotNetInstallerArgsInstall</col>
		<col def="S0">ISDotNetInstallerArgsCommit</col>
		<col def="S0">ISDotNetInstallerArgsUninstall</col>
		<col def="S0">ISDotNetInstallerArgsRollback</col>
		<row><td>AIVM.dll</td><td>{AEF65124-D6D6-4192-86C5-D82CA60ECE8D}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>aivm.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AmrDll.dll</td><td>{FD96E92F-E8D2-4E96-898E-81A8D6A6E720}</td><td>INFNET</td><td>2</td><td/><td>amrdll.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AnalyzeData.dll</td><td>{1C96D9C6-167C-411A-88B6-237697CDA8E1}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>analyzedata.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AnalyzeData.dll1</td><td>{23B3DAA0-180B-4292-8E98-69B824A52264}</td><td>HIKPF</td><td>2</td><td/><td>analyzedata.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AnalyzeData.dll2</td><td>{01D8A767-FDAE-4D0C-B151-A911D28FB899}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>analyzedata.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AnalyzeData.dll3</td><td>{204AC740-84A7-449D-942E-8EF3A7BED4FF}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>analyzedata.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AnalyzeData.dll4</td><td>{E7E3C51A-8376-4281-8B38-B3F1A6001A51}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>analyzedata.dll4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AudioIntercom.dll</td><td>{1C930052-CF6C-40D6-9E21-0F4B5088770B}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>audiointercom.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AudioIntercom.dll1</td><td>{74AA4E41-1235-41EE-9446-8AAD51C53AA4}</td><td>HIKPF</td><td>2</td><td/><td>audiointercom.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AudioIntercom.dll2</td><td>{90538A4D-23E1-4E1D-83E5-C240F77248AE}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>audiointercom.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AudioIntercom.dll3</td><td>{42426E06-FAA7-43DD-9C32-8B40429B05A3}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>audiointercom.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AudioRender.dll</td><td>{1A6388C1-97A6-4F0D-90EA-7C54BFE61B9B}</td><td>HCNET</td><td>2</td><td/><td>audiorender.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AudioRender.dll1</td><td>{B79F5F6E-DF6E-4E8E-9911-D70AA05885CD}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>audiorender.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AudioRender.dll2</td><td>{61408093-FFE1-4FFF-90EA-E6477867D432}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>audiorender.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>AudioRender.dll3</td><td>{66CBCC87-8EB4-4D33-9760-D63FBAA164BA}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>audiorender.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CMSCommDll.dll</td><td>{7ABEE3B4-CE77-47A3-8A65-F7138FEA898B}</td><td>INFNET</td><td>2</td><td/><td>cmscommdll.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CRashAPI.dll</td><td>{4186E670-E737-4A63-8794-6685CB6E00AD}</td><td>HIKPF</td><td>2</td><td/><td>crashapi.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>CascadeClient.dll</td><td>{4EBC8DB7-C5CC-49D5-9B0F-A967FA3E32D8}</td><td>HIKPF</td><td>2</td><td/><td>cascadeclient.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Cloud_API.dll</td><td>{66923759-911C-4F89-A652-0CA47D187BEA}</td><td>HIKPF</td><td>2</td><td/><td>cloud_api.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Component</td><td>{7794CADA-E529-4F01-81A1-69344A20ACBB}</td><td>INSTALLDIR</td><td>2</td><td/><td>File</td><td>49</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ConfigModule.dll</td><td>{20A6BA2B-1777-49E2-A769-6AE70860F855}</td><td>XM</td><td>2</td><td/><td>configmodule.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>D3DCompiler_43.dll</td><td>{E542F004-D418-4D4E-9D42-04F56A581FF8}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>d3dcompiler_43.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>D3DX9_43.dll</td><td>{DEF4A72B-9A60-4DB0-AB40-22E7C70B3FD6}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>d3dx9_43.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>D3DX9_43.dll1</td><td>{A6483E69-2AF1-4996-826E-17AAF85CAABC}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>d3dx9_43.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DVRSDK.dll</td><td>{044562E0-317E-4018-A6FA-893A30B2323C}</td><td>INSTALLDIR</td><td>2</td><td/><td>dvrsdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DVR_NET_SDK.dll</td><td>{5A270C87-CA0A-494F-B86F-BB53A977A177}</td><td>SHCF</td><td>2</td><td/><td>dvr_net_sdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DVR_NET_SDK.dll1</td><td>{2604BAB8-1508-43B1-A4B5-6979A860E8D9}</td><td>XSJNET</td><td>2</td><td/><td>dvr_net_sdk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DecoderSDK.dll</td><td>{2DDCA169-3C7C-408C-9189-04D0E9E015B2}</td><td>XM</td><td>2</td><td/><td>decodersdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DhDecode.dll</td><td>{3DF19F2C-6EA6-49F6-B252-A444313C9423}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>dhdecode.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DisplayLayoutSDK.dll</td><td>{39D6F9B1-6F5D-4AEE-B842-71F5D335139C}</td><td>SHCF</td><td>2</td><td/><td>displaylayoutsdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DisplayLayoutSDK.dll1</td><td>{F167C41C-8EEE-40DB-B226-9E651FCCA992}</td><td>XSJNET</td><td>2</td><td/><td>displaylayoutsdk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DllDeinterlace.dll</td><td>{0F1059AC-2BBF-4FFF-9991-D44FDC41583D}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>dlldeinterlace.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DllDeinterlace.dll1</td><td>{B2AFBEB2-92BE-445D-9733-68C8E61F1DBB}</td><td>INFNET</td><td>2</td><td/><td>dlldeinterlace.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DllDeinterlace.dll2</td><td>{8F0A4693-8F34-404F-AD39-D2A7235EEF3D}</td><td>XM</td><td>2</td><td/><td>dlldeinterlace.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DrawLib.dll</td><td>{CE983D44-4AFA-4812-952F-22F48C58F7BF}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>drawlib.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DsSdk.dll</td><td>{1E6CDA05-0B1C-4CCF-871A-2E1486345A03}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>dssdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>DycHikSingleThreadDecode.dll</td><td>{1E790D5B-0467-4C94-B61C-1CD8976D089F}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>dychiksinglethreaddecode.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EagleEyeRender.dll</td><td>{E71CDE2F-5D6A-4711-BEF4-AE274B8AB41F}</td><td>HCNET</td><td>2</td><td/><td>eagleeyerender.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EagleEyeRender.dll1</td><td>{57321C6F-4C58-49E2-8649-28DAD2D637BE}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>eagleeyerender.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>EncryptH264Stream.dll</td><td>{92B3EA56-6E61-4C67-82FA-0FFC8DBFE05B}</td><td>INFNET</td><td>2</td><td/><td>encrypth264stream.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>H264Play.dll</td><td>{62487007-C53F-460A-9085-EAFDFE78E4F8}</td><td>XM</td><td>2</td><td/><td>h264play.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCAlarm.dll</td><td>{26DA6CFA-47EF-4643-8031-85892AD15C58}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>hcalarm.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCAlarm.dll1</td><td>{21C05384-F6C5-46AC-B8CE-AAF5732C2531}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>hcalarm.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCCore.dll</td><td>{FE9D5D87-C850-42BE-B5EB-6D263AFF28EF}</td><td>HCNET</td><td>2</td><td/><td>hccore.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCCore.dll1</td><td>{B5E9650B-68B8-4E9A-88AC-F20E5440C155}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>hccore.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCCoreDevCfg.dll</td><td>{28F2DF04-3DD0-4824-934D-0C6A8F16910F}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>hccoredevcfg.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCCoreDevCfg.dll1</td><td>{D051DE58-1559-439F-935B-29D551374A3B}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>hccoredevcfg.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCDisplay.dll</td><td>{F3681A06-D9D3-4939-9B4D-8B363BBBC0F9}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>hcdisplay.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCDisplay.dll1</td><td>{443A7515-622F-4AE3-A5D8-5744CD7DD050}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>hcdisplay.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCGeneralCfgMgr.dll</td><td>{77E7B4AF-C23C-4EE4-9B02-88E74C764CB4}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>hcgeneralcfgmgr.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCGeneralCfgMgr.dll1</td><td>{AB73C556-D0FF-47A6-9B40-1AC91AF5F96F}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>hcgeneralcfgmgr.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCIndustry.dll</td><td>{E2D72685-8E54-41C5-94A8-3694FB8C5F64}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>hcindustry.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCIndustry.dll1</td><td>{0B9C8491-5494-4CA8-A4B0-1A931EA86737}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>hcindustry.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCNetSDK.dll</td><td>{420FBF54-164E-4EC1-AC39-6406BBF12BEF}</td><td>HCNET</td><td>2</td><td/><td>hcnetsdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCNetSDK.dll1</td><td>{07EB8BF5-7508-4F11-A533-1F4A013E12DA}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>hcnetsdk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCNetSDK.dll2</td><td>{67AAFBD0-D7D0-4C4C-BF51-C580CB7574DD}</td><td>INFNET</td><td>2</td><td/><td>hcnetsdk.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCPlayBack.dll</td><td>{F830A922-9235-4C8F-93B3-9E8DC2E78551}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>hcplayback.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCPlayBack.dll1</td><td>{2D7418A3-9562-4C86-8EE5-F3AD2B60AB06}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>hcplayback.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCPreview.dll</td><td>{E2C12A07-A9B2-40C6-8AE8-6049B5AD5003}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>hcpreview.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCPreview.dll1</td><td>{2A0A1391-E4F6-40EF-9277-56C89906456E}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>hcpreview.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCVoiceTalk.dll</td><td>{73379D4F-A647-4DBA-8133-20E1E4F2DE10}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>hcvoicetalk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HCVoiceTalk.dll1</td><td>{708154D1-0B00-4C9F-966B-AD747036940D}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>hcvoicetalk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HWDec.dll</td><td>{87AAFA32-28B2-4F37-8D08-09E65CF90543}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>hwdec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HWDecode.dll</td><td>{134F12F9-9C8A-4385-9576-D1DD8F131645}</td><td>HCNET</td><td>2</td><td/><td>hwdecode.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HWDecode.dll1</td><td>{CB755C96-EA7D-4D45-A607-CF4F2FC2E364}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>hwdecode.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HW_H265dec_Win32D.dll</td><td>{CE71929C-4070-4326-B0C4-FF25D92CDE4E}</td><td>XM</td><td>2</td><td/><td>hw_h265dec_win32d.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HikDev.dll</td><td>{429B2312-3E30-453F-ADC6-17D165DC6D03}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>hikdev.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HikDevSearch.dll</td><td>{ACC44FE7-A76E-4869-A925-1EFF56FA35FB}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>hikdevsearch.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>HikStream.dll</td><td>{510D2405-B3F9-49B7-AF0A-DBE581A6B909}</td><td>HIKPF</td><td>2</td><td/><td>hikstream.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IASStream.dll</td><td>{41FADFDC-FD21-4C7F-9145-0AB3AD3B961F}</td><td>HIKPF</td><td>2</td><td/><td>iasstream.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>INFAudioDecoder.dll</td><td>{F43A8253-CF1C-4BA8-B51B-5B214DB5CBF6}</td><td>INFNET</td><td>2</td><td/><td>infaudiodecoder.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>INFH264.dll</td><td>{A63E5410-8025-4201-8583-7A9A4373021D}</td><td>INFNET</td><td>2</td><td/><td>infh264.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>INFNetSDK.dll</td><td>{13F0D1EC-4F35-41FC-AD17-7155E863F54F}</td><td>INFNET</td><td>2</td><td/><td>infnetsdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>INFPlayCtrl.ocx</td><td>{055E0707-46A1-4DE6-B6E8-0F80251C1197}</td><td>INFNET</td><td>2</td><td/><td>infplayctrl.ocx</td><td>20</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>INFPlaySDK.dll</td><td>{C8534013-E62F-44D5-A7D7-C6761A1E8BB2}</td><td>INFNET</td><td>2</td><td/><td>infplaysdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>INFSVAC.dll</td><td>{8BFD3BB0-01B3-492D-AC9B-205A9B99A221}</td><td>INFNET</td><td>2</td><td/><td>infsvac.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>INFVideoDecoder.dll</td><td>{CA3F3ECD-D2F4-4FF5-A3A5-04F5AE669FBD}</td><td>INFNET</td><td>2</td><td/><td>infvideodecoder.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISMSSDK.dll</td><td>{63C22A57-C14D-41FE-A0AB-A01AAAD0EFEA}</td><td>HIKPF</td><td>2</td><td/><td>ismssdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT</td><td>{7AA23B2E-46B2-4DCD-A3E8-A9AE5DD4DBE6}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT1</td><td>{991D0CF7-741B-4444-B68E-7C2BBABD8027}</td><td>SDK</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT10</td><td>{28FDBA01-B5AE-4F97-93BF-7ACBC87B1831}</td><td>PLATFORMS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT11</td><td>{54E45936-DEFD-49B6-A271-49D2895EEED4}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT12</td><td>{ED977DF7-268C-467D-B790-B80A9C4FF2D3}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT13</td><td>{87A15D8B-FF0C-4426-A8E4-4DCE367CFC0B}</td><td>LANGUAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT14</td><td>{72BC2F45-7FBC-4AB4-B5FC-F37DDB47D693}</td><td>LOG</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT15</td><td>{DCFA85CF-E2BF-4CDD-A118-7F4FC7EA6A5A}</td><td>VSSCLIENT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT16</td><td>{304576FD-4BAC-446C-86CF-3722C28826E2}</td><td>PLAY_PLUGINS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT17</td><td>{3E08ECAB-AAAF-4EB4-8395-95DA1BAE4B0C}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT18</td><td>{0BEE58A2-91CA-4CA1-932F-9C34766AC15D}</td><td>SDK_LOG</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT19</td><td>{F775D878-E0BC-4EE5-A9A7-26CAAEE0950D}</td><td>STREAMCLIENTLOG</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT2</td><td>{FA9735E3-6DBA-4CD9-8BDE-8C70A906A17D}</td><td>DHNET</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT20</td><td>{7CD6822D-F8E0-4E86-A7CC-20933873FCB7}</td><td>INFNET</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT21</td><td>{C35E5619-5CE7-49A4-B624-010780029FB5}</td><td>SHCF</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT22</td><td>{A1DE0EFB-58A4-4D07-8123-36BDDAA7ACEE}</td><td>XM</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT23</td><td>{5460AE99-A3E5-4B1F-BC5C-6B40787FD582}</td><td>XSJNET</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT24</td><td>{A3D75A4B-FF68-4A55-B620-57B9D9830DDD}</td><td>ZYRD</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT25</td><td>{A9ADD5B6-FAD5-420B-A31D-094A81778F79}</td><td>FUNI</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT3</td><td>{FD5A3659-AE03-4E9D-82FB-1DFFDF406BB5}</td><td>HCNET</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT4</td><td>{B6461EB3-5EBE-4001-ACB8-2CA234DD61A2}</td><td>HCNETSDKCOM</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT5</td><td>{A72FBF7F-5D3E-41F6-B74A-3965724DED4D}</td><td>HIKPF</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT6</td><td>{6B9C04AA-B8E8-451E-9019-896F51EA3271}</td><td>DEVICE_PLUGINS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT7</td><td>{9F1EC2DC-E278-48C6-8FCE-56F1393A4AE1}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT8</td><td>{9EFC7F50-3792-44AE-AFEF-624D6037F677}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT9</td><td>{71656105-D6F6-4C59-9F05-2D8A8CD8DE08}</td><td>PLUGINS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Infra.dll</td><td>{33A9E937-BA4C-4D67-92BA-3A61782B2CB2}</td><td>DHNET</td><td>2</td><td/><td>infra.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Infra.dll1</td><td>{1E75FE43-83E7-4B03-8E3D-03331FEE78F3}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>infra.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IvsDrawer.dll</td><td>{04634087-3A58-4971-B3ED-8A24EDC7032B}</td><td>DHNET</td><td>2</td><td/><td>ivsdrawer.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>IvsDrawer.dll1</td><td>{55A7E5B4-000D-449B-B78A-EAB3F3A27140}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>ivsdrawer.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>KmsStream.dll</td><td>{E2B97FAD-CB1B-46E0-B48B-21CD71B2F07D}</td><td>HIKPF</td><td>2</td><td/><td>kmsstream.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MCL_FPTZ.dll</td><td>{DEDA902D-4F90-41E3-9A2B-9EC4E7AD2D10}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>mcl_fptz.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MFCDemo.exe</td><td>{0CD25937-E81D-4673-A0BA-F6C298DD4E4F}</td><td>HIKPF</td><td>2</td><td/><td>mfcdemo.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MJ2KSourceFilter.ax</td><td>{B304A2AC-D122-4281-B2FA-739881F784DA}</td><td>INFNET</td><td>2</td><td/><td>mj2ksourcefilter.ax</td><td>20</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MP3Decoder.dll</td><td>{70AB76D5-277C-48B2-A56C-4583335D79D7}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>mp3decoder.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MP_Render.dll</td><td>{E8996C0C-F51F-449D-8522-96B6156D360F}</td><td>HCNET</td><td>2</td><td/><td>mp_render.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MP_Render.dll1</td><td>{EA40EB17-89B0-44BC-8760-56F236A4678A}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>mp_render.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MP_Render.dll2</td><td>{4EAEEF8F-61D4-453B-8669-10322494A3C4}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>mp_render.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MP_VIE.dll</td><td>{A5286800-24CD-4F75-BE8F-2E87E78031C5}</td><td>HCNET</td><td>2</td><td/><td>mp_vie.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MP_VIE.dll1</td><td>{81DA9A82-63D7-4141-9A5D-4DCB3E774226}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>mp_vie.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MP_VIE.dll2</td><td>{6F89FA27-875C-43DF-948F-CF70373E7A8B}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>mp_vie.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MQPlugins.dll</td><td>{D4E17075-F45F-4E41-9BDD-1AAAB8AC7B7A}</td><td>HIKPF</td><td>2</td><td/><td>mqplugins.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MidPage.dll</td><td>{B2F833CD-1762-4B7D-AA74-D73433156CE1}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>midpage.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MogranDecoderDll.dll</td><td>{E7F988F4-7C2A-4648-B965-C951DD79DB01}</td><td>INFNET</td><td>2</td><td/><td>mograndecoderdll.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MorganExRenderFilter.ax</td><td>{EA74A666-2EDD-43D9-833B-C94FC7D1DB22}</td><td>INFNET</td><td>2</td><td/><td>morganexrenderfilter.ax</td><td>20</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MorganRenderFilter.ax</td><td>{C582641C-18A1-4CBB-B4EF-13735E86DF4D}</td><td>INFNET</td><td>2</td><td/><td>morganrenderfilter.ax</td><td>20</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>MtdOverlayViewer.dll</td><td>{E9481EB3-DB0D-47C3-9D51-CE622426F1D6}</td><td>INFNET</td><td>2</td><td/><td>mtdoverlayviewer.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NVRDll.dll</td><td>{B834AC7A-7EEF-4297-8456-4026B1D531CB}</td><td>INFNET</td><td>2</td><td/><td>nvrdll.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NetFramework.dll</td><td>{2D4E01B2-6BE4-4E13-BEE4-BECED827C02D}</td><td>DHNET</td><td>2</td><td/><td>netframework.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NetFramework.dll1</td><td>{09B4D6B8-B88F-4B91-874C-89605DA4675E}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>netframework.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NetSdk.dll</td><td>{A0231CCF-5AEC-4D65-94BC-25E50DBC243F}</td><td>XM</td><td>2</td><td/><td>netsdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NetStream.dll</td><td>{EBB7F4DE-B9CE-4B27-85DD-9E109423B374}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>netstream.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Newtonsoft.Json.dll</td><td>{905A5E0D-56C7-4871-8106-84A67C702208}</td><td>INSTALLDIR</td><td>2</td><td/><td>newtonsoft.json.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>NullSource.ax</td><td>{F37E51DE-644C-4763-843E-A78A85382FE3}</td><td>INFNET</td><td>2</td><td/><td>nullsource.ax</td><td>20</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>OpenAL32.dll</td><td>{31962F1F-8CF8-44E5-9B80-97E977FABAB5}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>openal32.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>OpenAL32.dll1</td><td>{02D22C6C-F5BC-45C3-B957-67CC82F086BC}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>openal32.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>OpenAL32.dll2</td><td>{AB026664-34B7-4498-91B2-3ACF66467794}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>openal32.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>OpenAL32.dll3</td><td>{1C63B25E-4008-4AC5-AAF4-97DEB643A2FF}</td><td>HIKPF</td><td>2</td><td/><td>openal32.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>OpenAL32.dll4</td><td>{D3BBB2F9-B925-42DA-A6DE-C521DEC15BFF}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>openal32.dll4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>OpenAL32New.dll</td><td>{AB19E429-9487-4356-A023-4E3EBDF38B65}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>openal32new.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>OpenNetStream.dll</td><td>{6B76D7E5-950B-4E3D-B254-C71653F49543}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>opennetstream.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>OpenSDK_Demo_Qt.exe</td><td>{82629F04-CD4F-49C0-960E-185398982D46}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>opensdk_demo_qt.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>PagStream.dll</td><td>{152F9F45-7D1C-467F-A0E1-E7B6228BCCB4}</td><td>HIKPF</td><td>2</td><td/><td>pagstream.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>PdCssVodClient.dll</td><td>{14BF1370-AF59-4364-86DC-EACE25EB2155}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>pdcssvodclient.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>PlayCtrl.dll</td><td>{62A37535-CD3F-4E79-84DC-0949B40F7D1E}</td><td>HCNET</td><td>2</td><td/><td>playctrl.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>PlayCtrl.dll1</td><td>{1454FD58-15C4-405C-BCB4-FF48A97855F3}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>playctrl.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>PlayCtrl.dll2</td><td>{C8D6CC57-C76B-4BDF-BDD3-604B2FB2681D}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>playctrl.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>PlayCtrl.dll3</td><td>{31141C91-1404-4892-BF29-337527AF3EB1}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>playctrl.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>PlayCtrl.dll4</td><td>{CC4976C9-4D27-4D18-9E2C-93A0D1BAB740}</td><td>INFNET</td><td>2</td><td/><td>playctrl.dll4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Player.tlb</td><td>{FA8D1184-81F7-4D35-B6B0-121EBC4C8120}</td><td>INSTALLDIR</td><td>2</td><td/><td>player.tlb</td><td>20</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>PushClient.dll</td><td>{DF489A3A-05FE-47D8-AF3F-1E03B2EF629D}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>pushclient.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Core.dll</td><td>{E0826FC6-56DD-4891-A32D-445C3B81AF50}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>qt5core.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Gui.dll</td><td>{BBF16FCE-1B33-4DF7-BB2E-F6C012B345D3}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>qt5gui.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Qt5Widgets.dll</td><td>{6F62D9D2-61CD-437D-9E5B-F317B414F7C4}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>qt5widgets.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>QtCore4.dll</td><td>{977E7CC9-B305-49F7-BB45-2B1DE2711A8F}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>qtcore4.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>QtGui4.dll</td><td>{015F7626-2C5E-4FD0-9F85-1CA996CA1521}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>qtgui4.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>QtXml4.dll</td><td>{7C7CC67C-C813-44FE-B2FF-1BE14360488A}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>qtxml4.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>RTPRTCP.dll</td><td>{AB23186A-9731-4A04-A8BB-4816F273F487}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>rtprtcp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>RTSPClient.dll</td><td>{6D823C86-BFAE-4E7A-9D87-907591DFA138}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>rtspclient.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>RTSPClientSync.dll</td><td>{2FEDBF19-81E9-4F94-94FC-AD6954B8FA3A}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>rtspclientsync.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>RTSPClientSync.dll1</td><td>{614489D7-7D79-4FF3-A9D4-E4A3F291A9B1}</td><td>HIKPF</td><td>2</td><td/><td>rtspclientsync.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SDKLibrary.dll</td><td>{20291983-1605-4000-91EC-2994C407D592}</td><td>INSTALLDIR</td><td>2</td><td/><td>sdklibrary.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Sadp.dll</td><td>{27924E58-6A08-468F-867A-E1B4B696A915}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>sadp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Stream.dll</td><td>{EBC80701-45C4-4400-951E-CCB5DB8B32DB}</td><td>DHNET</td><td>2</td><td/><td>stream.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>Stream.dll1</td><td>{D7D37D0D-4A79-4149-819F-AB37C07F6508}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>stream.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamAnalyzer.dll</td><td>{E5EC6F59-CBF5-461F-BAB1-300CBBF7F7E3}</td><td>INFNET</td><td>2</td><td/><td>streamanalyzer.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamClient.dll</td><td>{3BD4CABB-2314-4024-9851-C404108C4FBB}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>streamclient.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamClient.dll1</td><td>{E5DF5661-C788-491F-95C2-3BB8B96738EF}</td><td>HIKPF</td><td>2</td><td/><td>streamclient.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamClient_V30.dll</td><td>{B6CB9E64-074D-4FD5-A6F2-FD0266F7DB12}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>streamclient_v30.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamLayer.dll</td><td>{8371284F-EB20-4F51-B05C-F7A7B0C61C91}</td><td>HIKPF</td><td>2</td><td/><td>streamlayer.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamReader.dll</td><td>{D4C09DBB-7A69-4A40-B61F-A151FAB6460A}</td><td>XM</td><td>2</td><td/><td>streamreader.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamSvr.dll</td><td>{B27D6265-0505-4AA4-8E2C-F08CD63700EA}</td><td>DHNET</td><td>2</td><td/><td>streamsvr.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamSvr.dll1</td><td>{AFF8FD96-25C4-4419-8D86-77450D0C745E}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>streamsvr.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamTransClient.dll</td><td>{5AF69841-E93C-4911-98A2-8822E9007256}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>streamtransclient.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamTransClient.dll1</td><td>{00EE18B4-1DB3-4A9C-99C0-5ECBD4FA9B8B}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>streamtransclient.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamTransClient.dll2</td><td>{BD1BC864-D911-4915-A95B-C487309BB182}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>streamtransclient.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamTransClient.dll3</td><td>{44463AA3-948D-43CD-934C-F68AA91C659F}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>streamtransclient.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StreamTransClient.dll4</td><td>{BF5473E2-7005-4709-A291-FE4643F6E37A}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>streamtransclient.dll4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>StunClientLib.dll</td><td>{850D1BA3-316E-4A2A-AF4D-2774E0CD993D}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>stunclientlib.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SuperRender.dll</td><td>{B2236D05-3007-405F-888F-43067701EF0F}</td><td>HCNET</td><td>2</td><td/><td>superrender.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SuperRender.dll1</td><td>{738C563B-D33D-4810-8469-11E9B7FC13F5}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>superrender.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SuperRender.dll2</td><td>{07A49431-4C7D-4DCB-A791-8061D39C0733}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>superrender.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SuperRender.dll3</td><td>{B12952F8-1AC5-4433-B617-1A2507E640F0}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>superrender.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SystemTransform.dll</td><td>{A3FC5FED-7243-4141-B532-32C24732FABB}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>systemtransform.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SystemTransform.dll1</td><td>{C9A05ED1-0D3E-41F8-BBEB-43BA74872223}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>systemtransform.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SystemTransform.dll2</td><td>{E7064C56-7630-43E2-A759-D0F9F588652D}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>systemtransform.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SystemTransform.dll3</td><td>{DC4E3BCD-AB9C-4104-86D6-317977E63A82}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>systemtransform.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SystemTransform.dll4</td><td>{28977837-A097-45D5-AC07-0E0D2216D112}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>systemtransform.dll4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>SystemTransform.dll5</td><td>{74FD3784-2822-41A6-BD29-8419ADDF7140}</td><td>HIKPF</td><td>2</td><td/><td>systemtransform.dll5</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>TTSClient.dll</td><td>{04EEA8EB-EBCF-48D4-8859-9562048760A9}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>ttsclient.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>TransportEngine.dll</td><td>{28E0257B-8F73-498A-9DDC-9C4389EEA925}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>transportengine.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>TransportEngine.dll1</td><td>{4DEBCCE9-32A5-4C1F-8BCC-53AA8D154DC4}</td><td>HIKPF</td><td>2</td><td/><td>transportengine.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>V2216DLLDemo.exe</td><td>{7D1FE427-569A-4203-83DE-D5530637C7A1}</td><td>INFNET</td><td>2</td><td/><td>v2216dlldemo.exe</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>V2216Render.dll</td><td>{51D63274-8FDA-4124-ADFD-D76156CA1A02}</td><td>INFNET</td><td>2</td><td/><td>v2216render.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>VAGOper.dll</td><td>{E9E7C357-954A-462C-8C56-8657A0910A35}</td><td>HIKPF</td><td>2</td><td/><td>vagoper.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>VSSSubSys.dll</td><td>{955C87FB-8AF3-48C9-82F9-015EA9282C4E}</td><td>HIKPF</td><td>2</td><td/><td>vsssubsys.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>VSS_Talk.dll</td><td>{9D41952B-2055-44B6-A939-0091A1D19457}</td><td>HIKPF</td><td>2</td><td/><td>vss_talk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>VTHStack.dll</td><td>{EFF2A607-FC98-474A-9A2E-E1B045776263}</td><td>DHNET</td><td>2</td><td/><td>vthstack.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>VcaCfg.dll</td><td>{ECBD4715-2D92-4C66-84FF-E4072742E166}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>vcacfg.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>VcaDraw.dll</td><td>{B539DDB6-E8B0-4CD2-953E-442B4F3624A8}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>vcadraw.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>VcaPlay.dll</td><td>{78BBFF07-A09D-4143-84C2-B22FD05F5CDB}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>vcaplay.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>VideoDecodeSDK.dll</td><td>{8D4F5DC3-44C1-4F66-98D4-E834AE92764A}</td><td>SHCF</td><td>2</td><td/><td>videodecodesdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>VideoDecodeSDK.dll1</td><td>{B953EB40-6C62-4A3C-9A94-E61C9226B538}</td><td>XSJNET</td><td>2</td><td/><td>videodecodesdk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>VideoDisplaySDK.dll</td><td>{8FD7EE71-E250-419E-9A54-DD7A77D3C4AF}</td><td>SHCF</td><td>2</td><td/><td>videodisplaysdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>VideoDisplaySDK.dll1</td><td>{B32C451D-F31B-4611-B5B8-84A898DCA43C}</td><td>XSJNET</td><td>2</td><td/><td>videodisplaysdk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>VtduStream.dll</td><td>{FB7705A9-497F-4CAA-A593-E912688EF613}</td><td>HIKPF</td><td>2</td><td/><td>vtdustream.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>WPFComponent.dll</td><td>{1A80F0E3-6CB4-4BA2-B76D-78EDC51FBFA2}</td><td>DEVICE_PLUGINS</td><td>2</td><td/><td>wpfcomponent.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>WPFComponent.dll1</td><td>{56CAD1A6-2B92-4BC7-87DF-F32520C34086}</td><td>HIKPF</td><td>2</td><td/><td>wpfcomponent.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>YUVProcess.dll</td><td>{D4DEE7B1-57AB-4C83-90A1-1D0AA8D4B512}</td><td>HCNET</td><td>2</td><td/><td>yuvprocess.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>YUVProcess.dll1</td><td>{DEE8ADBE-9CF1-472B-A6AF-676B4282CF63}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>yuvprocess.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>aacdec.dll</td><td>{278AB908-1054-45C1-95F9-7814FF5EB038}</td><td>DHNET</td><td>2</td><td/><td>aacdec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>aacdec.dll1</td><td>{4EF1788F-505E-46AC-B3F0-697D0F84A81F}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>aacdec.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>activemq_cpp.dll</td><td>{66FC9791-80E0-458B-AEFA-04674BED5123}</td><td>HIKPF</td><td>2</td><td/><td>activemq_cpp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>adpcmdec.dll</td><td>{9F95B9CD-ED49-4E44-9CD0-9E85A5850164}</td><td>DHNET</td><td>2</td><td/><td>adpcmdec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>adpcmdec.dll1</td><td>{87620225-5441-4B8D-B54F-E2105BAB4CB1}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>adpcmdec.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>amrdec.dll</td><td>{BC2002DF-CA74-4F13-A726-8322AAB49AB4}</td><td>DHNET</td><td>2</td><td/><td>amrdec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>amrdec.dll1</td><td>{494D5F37-0373-482C-B29A-105F5AB33C8A}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>amrdec.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>armenc32.dll</td><td>{FEF0F433-39AB-4E93-AFCB-F7068A48885B}</td><td>DHNET</td><td>2</td><td/><td>armenc32.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avcodec.dll</td><td>{65288BE3-51DE-4D8C-A4E0-50F6148039C4}</td><td>INFNET</td><td>2</td><td/><td>avcodec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avcodec_57.dll</td><td>{C4836D60-7C25-413C-8773-FA0D4329B6B8}</td><td>INFNET</td><td>2</td><td/><td>avcodec_57.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avformat.dll</td><td>{C2C5B519-4FB6-4046-BF1F-CD15B152B227}</td><td>INFNET</td><td>2</td><td/><td>avformat.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avformat_57.dll</td><td>{50BC80EC-3092-4ADB-914B-C548A919B57C}</td><td>INFNET</td><td>2</td><td/><td>avformat_57.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avnetsdk.dll</td><td>{47B1CB92-A627-434E-BFCF-12F471D737D1}</td><td>DHNET</td><td>2</td><td/><td>avnetsdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avnetsdk.dll1</td><td>{AA631161-C3C6-45EF-9A55-713DEE5365B6}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>avnetsdk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avutil.dll</td><td>{2B60FB72-5BCD-484E-9E25-DDE69AECA791}</td><td>INFNET</td><td>2</td><td/><td>avutil.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>avutil_55.dll</td><td>{3636556D-7F56-42E7-9FFF-B9861B6A4375}</td><td>INFNET</td><td>2</td><td/><td>avutil_55.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>bkpostproc.dll</td><td>{34533BDA-B2DC-433D-B35F-0FFCD7C693DD}</td><td>ZYRD</td><td>2</td><td/><td>bkpostproc.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>calib.dll</td><td>{242080D0-83EA-4846-8A86-B8D2BA3DB194}</td><td>HCNET</td><td>2</td><td/><td>calib.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>calib.dll1</td><td>{67F8569A-80F2-45F8-9400-4886719C6A1E}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>calib.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>client.dll</td><td>{83D66410-E5D0-47DF-A018-6510AB1F810F}</td><td>INFNET</td><td>2</td><td/><td>client.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>cv200.dll</td><td>{D5DD0638-2866-4799-82D5-45586BE601DB}</td><td>INFNET</td><td>2</td><td/><td>cv200.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>cxcore200.dll</td><td>{95D35F7E-740E-4924-8B70-C5D90E7946B4}</td><td>INFNET</td><td>2</td><td/><td>cxcore200.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dahua_plugin.dll</td><td>{92E8EDD2-0EC1-49C5-9C19-11C8D84CBE6D}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>dahua_plugin.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dbghelp.dll</td><td>{C43E0B72-5E1A-4ECA-9DEE-9F35C74E82E4}</td><td>HIKPF</td><td>2</td><td/><td>dbghelp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dbghelp.dll1</td><td>{634BA050-0B8B-43B3-BC3F-2AE5FADC6B38}</td><td>SHCF</td><td>2</td><td/><td>dbghelp.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dhconfigsdk.dll</td><td>{7BD24194-8741-480C-B11E-97B4B48C4F65}</td><td>DHNET</td><td>2</td><td/><td>dhconfigsdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dhconfigsdk.dll1</td><td>{DABEF33C-5850-4D59-836A-C748C0B734B2}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>dhconfigsdk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dhdvr.dll</td><td>{E5E9D8AA-D1CF-4729-92C3-37D8BEB3D892}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>dhdvr.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dhdvr.dll1</td><td>{C5EC7BA9-EBD6-4B7D-ADC3-4E53AB25B657}</td><td>INFNET</td><td>2</td><td/><td>dhdvr.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dhlog.dll</td><td>{0A4E4C17-DEE7-48DC-8DAA-0E2BFEEE6926}</td><td>DHNET</td><td>2</td><td/><td>dhlog.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dhlog.dll1</td><td>{EB19743D-5218-45ED-A5DF-F07986EB74C0}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>dhlog.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dhnetsdk.dll</td><td>{9AFF135D-FF47-4301-A217-2AB07E31074B}</td><td>DHNET</td><td>2</td><td/><td>dhnetsdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dhnetsdk.dll1</td><td>{8C17616D-7772-4423-91BD-207F16F0C0CC}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>dhnetsdk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dhnetsdk.dll2</td><td>{AA45AE15-F6D8-4D0E-998F-5C5C765ED10D}</td><td>INFNET</td><td>2</td><td/><td>dhnetsdk.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dhplay.dll</td><td>{55A6F5A6-A0CF-4CEE-808B-12E93172A98F}</td><td>DHNET</td><td>2</td><td/><td>dhplay.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dhplay.dll1</td><td>{FFFEAB47-B510-4A51-B12F-7158E72DE60E}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>dhplay.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dhplay.dll2</td><td>{3FAC080A-1195-421E-AB3C-42D92FD4B6C8}</td><td>INFNET</td><td>2</td><td/><td>dhplay.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dllh264.dll</td><td>{32EFE0D2-E0E4-4906-B92F-ED92A0BF1882}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>dllh264.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dllh264.dll1</td><td>{684A3EBE-4005-4574-9E79-4DF252A561A4}</td><td>XM</td><td>2</td><td/><td>dllh264.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>dllmpeg4.dll</td><td>{CB8627F9-6C10-4DFF-8EA0-B7DDF1194A1F}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>dllmpeg4.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ezviz_plugin.dll</td><td>{02768355-1624-41F4-A4DD-D70ACC5AF91E}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>ezviz_plugin.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ff_kernelDeint.dll</td><td>{6126F92B-D392-4160-9615-A624B7A19E10}</td><td>INFNET</td><td>2</td><td/><td>ff_kerneldeint.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>fisheye.dll</td><td>{5E637E66-8BEC-41BE-A974-CEFC1804651F}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>fisheye.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>g7221dec.dll</td><td>{EF23EF9F-B6C4-4762-9F50-EC72322F160D}</td><td>DHNET</td><td>2</td><td/><td>g7221dec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>g7221dec.dll1</td><td>{9A326FF2-9EA9-474C-A4D0-5130A9F732A4}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>g7221dec.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>gdiplus.dll</td><td>{FFCFB168-52A1-4ADC-98E0-EE360DCCAF72}</td><td>HCNET</td><td>2</td><td/><td>gdiplus.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>gdiplus.dll1</td><td>{EAA76CB9-E3A9-41FF-BAFC-F360FDA5514A}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>gdiplus.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>h264dec.dll</td><td>{5716D751-2E44-4CC2-A040-DFCFC6648C79}</td><td>DHNET</td><td>2</td><td/><td>h264dec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>h264dec.dll1</td><td>{E8DADBD6-59CC-4792-A0E8-D135E10FD1BC}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>h264dec.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>h26ldec.dll</td><td>{9F12D6EA-CC7B-4AC5-8C62-B1EFA03D30AC}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>h26ldec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hevcdec.dll</td><td>{3F057AC2-7F4D-449C-8ECC-F9F7FAE5E8EC}</td><td>DHNET</td><td>2</td><td/><td>hevcdec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hevcdec.dll1</td><td>{96A00C85-C1C7-4052-8A19-B4224B4D700B}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>hevcdec.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hi_h264dec.dll</td><td>{CEB41922-14D2-44B5-A16D-D8A8FF2AD58D}</td><td>INFNET</td><td>2</td><td/><td>hi_h264dec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hi_h264dec_v.dll</td><td>{4148CF11-F227-488D-829B-04AE3E5C65BE}</td><td>XM</td><td>2</td><td/><td>hi_h264dec_v.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hik_play_plugin.dll</td><td>{95F55CF7-ECB7-4910-8990-8A004F82C695}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>hik_play_plugin.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hik_plugin.dll</td><td>{6762608D-7D44-4ECA-A835-B12CC27B27A8}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>hik_plugin.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hlog.dll</td><td>{BA5377A2-A94D-4E3F-BD61-4ECE49DD5500}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>hlog.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hlog.dll1</td><td>{CEA4ECDF-110D-4DD8-9334-A8B2B9DF7D8D}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>hlog.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hlog.dll2</td><td>{C46EC2D7-4EE7-4C2B-B12D-0A348664F5FE}</td><td>HIKPF</td><td>2</td><td/><td>hlog.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hpp.dll</td><td>{05049E72-4B32-41A6-A4C2-94BBCD588129}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>hpp.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hpp.dll1</td><td>{4D43AF72-7604-41C8-9E9A-9617CBDA97A3}</td><td>HIKPF</td><td>2</td><td/><td>hpp.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hpr.dll</td><td>{3AE7E3D2-47E5-425D-874D-AC6E4FFAF911}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>hpr.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hpr.dll1</td><td>{F1A45F9D-46E9-454D-B9AE-7C86F3486B4D}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>hpr.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hpr.dll2</td><td>{B74AADDF-28A3-4C0D-98D6-34A5B4BE15FA}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>hpr.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hpr.dll3</td><td>{DE4A17F8-5701-4EAA-BA4F-2BAEBE652746}</td><td>HIKPF</td><td>2</td><td/><td>hpr.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hpr.dll4</td><td>{73FE2B07-1F53-4E1A-B4C6-9B507B7931D6}</td><td>HIK_PLAY_PLUGIN</td><td>2</td><td/><td>hpr.dll4</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>hsoap.dll</td><td>{09A70ABC-A2D5-4E84-950B-35C4A4FF14AC}</td><td>HIKPF</td><td>2</td><td/><td>hsoap.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>iconv.dll</td><td>{856CF135-0688-4BB9-A05A-CCA494C8D0CA}</td><td>HCNET</td><td>2</td><td/><td>iconv.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>iconv.dll1</td><td>{11A09305-8D08-4AD8-B7DE-A3C27BAC357D}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>iconv.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>icudt52.dll</td><td>{FF1664F8-6019-41FF-85FD-8C2E1CDE0D16}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>icudt52.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>icuin52.dll</td><td>{FFBA97C3-4C37-44E1-95E3-68CFAC992F6F}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>icuin52.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>icuuc52.dll</td><td>{00B4007D-63BF-45CB-B823-6BAEE4FB5484}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>icuuc52.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>json.dll</td><td>{705A79FF-4EAD-4215-BED7-2FAD25372867}</td><td>DHNET</td><td>2</td><td/><td>json.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>json.dll1</td><td>{39FCD154-4453-4797-B24D-01F5D28EFDB9}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>json.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libCASClient.dll</td><td>{170E1EFC-FAC8-4064-A8E8-71C2A1092A91}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>libcasclient.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libGetHDSign.dll</td><td>{9E46486A-778C-4C92-9A86-AB8A44286CE1}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>libgethdsign.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libPPVClient2.dll</td><td>{D389A9FF-4430-4039-8A6F-5C4EDD38E804}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>libppvclient2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libapr_1.dll</td><td>{D7E5BAFD-F8CD-4E48-B2D7-5D0D547E9DD1}</td><td>HIKPF</td><td>2</td><td/><td>libapr_1.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libapriconv_1.dll</td><td>{51A8846E-A0D8-43D5-92C5-4C93A86113CF}</td><td>HIKPF</td><td>2</td><td/><td>libapriconv_1.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libaprutil_1.dll</td><td>{DB031CA9-822C-4BDC-9135-03B220359F3D}</td><td>HIKPF</td><td>2</td><td/><td>libaprutil_1.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libavcodec.dll</td><td>{B5445FF0-AA7F-4925-AFF0-03C798A94D43}</td><td>ZYRD</td><td>2</td><td/><td>libavcodec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libcrypto_1_1.dll</td><td>{E5303125-C902-4308-9836-1CCD5AB58FD8}</td><td>HCNET</td><td>2</td><td/><td>libcrypto_1_1.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libcurl.dll</td><td>{60320FA3-DF15-457C-90C5-B6191A7B2455}</td><td>HCNET</td><td>2</td><td/><td>libcurl.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libcurl.dll1</td><td>{DDBEAC9A-3A51-44B6-8412-D28EF6FE49D3}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>libcurl.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libcurl.dll2</td><td>{8A53799B-6BBE-4063-9AC5-2C7D42F1571C}</td><td>HIKPF</td><td>2</td><td/><td>libcurl.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libeay32.dll</td><td>{090FCD70-C2C3-4495-A3CF-ABB953D3B670}</td><td>HCNET</td><td>2</td><td/><td>libeay32.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libeay32.dll1</td><td>{1B638C2B-4315-4A66-A4FA-60C4039D1A26}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>libeay32.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libeay32.dll2</td><td>{C13BEFA6-6108-40C2-A7F2-15D19B54177E}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>libeay32.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libeay32.dll3</td><td>{E8A260CE-A0A8-4187-A3D8-68CFE38A41B9}</td><td>HIKPF</td><td>2</td><td/><td>libeay32.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libfaac.dll</td><td>{F3AD754D-3943-4444-A734-F86C63FFD26E}</td><td>INFNET</td><td>2</td><td/><td>libfaac.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libgcc_s_dw2_1.dll</td><td>{6621CA28-50D8-4BFC-87BE-6ED0BDA54376}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>libgcc_s_dw2_1.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libhak.dll</td><td>{E122F6B1-EA1A-4D66-B9CF-A9EC0E7E4568}</td><td>HIKPF</td><td>2</td><td/><td>libhak.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libiconv2.dll</td><td>{6AEB9F04-F574-428A-BE81-A95BF9A770C8}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>libiconv2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libiconv2.dll1</td><td>{A53F6195-1D5E-4BBB-AEF8-AC59E4C6D73D}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>libiconv2.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libmp4v2.dll</td><td>{CC2D118D-F8E1-4F29-97CC-089402A7077F}</td><td>INFNET</td><td>2</td><td/><td>libmp4v2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libmplayer.dll</td><td>{1CE60B1A-9A1F-4433-B9F8-B4552F5B8A14}</td><td>INFNET</td><td>2</td><td/><td>libmplayer.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libssl_1_1.dll</td><td>{434F94A1-AF6F-4006-BBFB-2755B17D31EA}</td><td>HCNET</td><td>2</td><td/><td>libssl_1_1.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libstdc___6.dll</td><td>{CC108470-BA37-4990-B49B-C382DE12B553}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>libstdc___6.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libwinpthread_1.dll</td><td>{5B524D31-F293-48E7-BF51-1809A4C0D919}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>libwinpthread_1.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libxml2.dll</td><td>{6F71C25B-9448-441C-9982-63B98B5EA89F}</td><td>HCNET</td><td>2</td><td/><td>libxml2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>libxml2.dll1</td><td>{63CDF292-C8B7-4C83-8ACA-8198A567F8DC}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>libxml2.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>log4cplus_dll.dll</td><td>{68EC52D0-7400-4241-AC2A-176D213C43AA}</td><td>HIKPF</td><td>2</td><td/><td>log4cplus_dll.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>log4cxx.dll</td><td>{73941CCE-8B4B-41C8-AF98-078F45D67CD0}</td><td>HIKPF</td><td>2</td><td/><td>log4cxx.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>log4net.dll</td><td>{0230FC66-78DE-4BEF-9EDF-1B7C8CC4262F}</td><td>DEVICE_PLUGINS</td><td>2</td><td/><td>log4net.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>log4net.dll1</td><td>{FAAE8E83-D212-46B3-BBE9-97271DE95F23}</td><td>HIKPF</td><td>2</td><td/><td>log4net.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>media_client.dll</td><td>{55AA7B22-5452-4B2B-BF07-D9AEB2E44BAE}</td><td>HIKPF</td><td>2</td><td/><td>media_client.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mfc71.dll</td><td>{937A09C8-A858-43AB-B059-C0F48E8D2178}</td><td>INFNET</td><td>2</td><td/><td>mfc71.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mfc90.dll</td><td>{7BE0D0DF-347D-4F37-9A50-54EF7868E99C}</td><td>HIKPF</td><td>2</td><td/><td>mfc90.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mfc90u.dll</td><td>{CB862055-4A91-4E36-9649-A373780129D5}</td><td>HIKPF</td><td>2</td><td/><td>mfc90u.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mfcm90.dll</td><td>{4B96F49F-D4B5-4EED-96C6-FC9FCFF62232}</td><td>HIKPF</td><td>2</td><td/><td>mfcm90.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mfcm90u.dll</td><td>{21B2C3AF-F6FB-4CAA-B9EA-A37FF8B87B6D}</td><td>HIKPF</td><td>2</td><td/><td>mfcm90u.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mjpegdec.dll</td><td>{1F5612E5-8182-428E-9C25-622D38551A4E}</td><td>DHNET</td><td>2</td><td/><td>mjpegdec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mjpegdec.dll1</td><td>{008FA4C5-015F-476B-85A2-3D0A508E4FB5}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>mjpegdec.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mp2dec.dll</td><td>{21721534-9186-4FFD-90B1-87CD54474614}</td><td>DHNET</td><td>2</td><td/><td>mp2dec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mp2dec.dll1</td><td>{1D5F0E05-A6C5-41A8-8B26-35719DEF0A16}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>mp2dec.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mp3dec.dll</td><td>{93DEE59A-AFFC-43F3-A458-219EF9831D49}</td><td>DHNET</td><td>2</td><td/><td>mp3dec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mp3dec.dll1</td><td>{313EAFF3-28B8-45B6-A0EC-DC2E681F5CF4}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>mp3dec.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mpeg4dec.dll</td><td>{F4E5B71F-8B16-4DE4-A201-25EAF68CD298}</td><td>DHNET</td><td>2</td><td/><td>mpeg4dec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mpeg4dec.dll1</td><td>{F9CE0402-F138-4BBD-B378-0318619BAB3C}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>mpeg4dec.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mpeg4enc.dll</td><td>{BAE6B5AF-1D9A-4049-8F50-27C5F3D2D490}</td><td>DHNET</td><td>2</td><td/><td>mpeg4enc.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mpeg4enc.dll1</td><td>{46B0EB27-19ED-4239-9893-4729BC5DCF5F}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>mpeg4enc.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>mpglib.dll</td><td>{6DB49299-AAC7-4939-B097-E0B6D2CE5595}</td><td>INFNET</td><td>2</td><td/><td>mpglib.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcm90.dll</td><td>{E8DD113F-046B-46A5-A73E-4565E95FB7F0}</td><td>HIKPF</td><td>2</td><td/><td>msvcm90.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcp100.dll</td><td>{53DE8E5E-424F-4AF8-A628-307DC0B399DC}</td><td>HIKPF</td><td>2</td><td/><td>msvcp100.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcp71.dll</td><td>{CB14B45F-5A6D-410C-B101-59A010241DDC}</td><td>HIKPF</td><td>2</td><td/><td>msvcp71.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcp71.dll1</td><td>{748D74BE-B68D-4D66-AA7F-1F404B3F3515}</td><td>INFNET</td><td>2</td><td/><td>msvcp71.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcp90.dll</td><td>{F97D33A7-10BB-4351-818C-203716938FF3}</td><td>HIKPF</td><td>2</td><td/><td>msvcp90.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcp90.dll1</td><td>{C899ECE3-4612-4D5F-908C-843C67B843B3}</td><td>ZYRD</td><td>2</td><td/><td>msvcp90.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcr100.dll</td><td>{A88A8F72-FA25-42BA-BBD9-711359751362}</td><td>HIKPF</td><td>2</td><td/><td>msvcr100.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcr120.dll</td><td>{8E98E051-865E-4118-A51D-232AC167D6A4}</td><td>HCNET</td><td>2</td><td/><td>msvcr120.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcr71.dll</td><td>{57B2E0F4-F876-4DD8-8FE8-28F43AED797B}</td><td>HIKPF</td><td>2</td><td/><td>msvcr71.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcr71.dll1</td><td>{4243FC6F-9D69-44D9-83FA-2994F7B0BC0F}</td><td>INFNET</td><td>2</td><td/><td>msvcr71.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcr90.dll</td><td>{5FF37FF9-A769-4DE7-ACBC-1E5217D3603F}</td><td>HCNETSDKCOM</td><td>2</td><td/><td>msvcr90.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcr90.dll1</td><td>{6E0CE289-CA51-4BD3-9206-4C5959C407F7}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>msvcr90.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcr90.dll2</td><td>{556A50CE-1A6F-4CF1-9E85-238AC545E4B8}</td><td>HIKPF</td><td>2</td><td/><td>msvcr90.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcr90.dll3</td><td>{85CD49EC-3A71-4E35-AA0F-9461A5AE2DB9}</td><td>ZYRD</td><td>2</td><td/><td>msvcr90.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>msvcrt.dll</td><td>{0709CF4D-F75E-463E-BBD8-DEE048282FC7}</td><td>INFNET</td><td>2</td><td/><td>msvcrt.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>opensslwrap.dll</td><td>{51FEF819-BF1D-44B5-8184-9306BF907AAE}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>opensslwrap.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>paho_mqtt3c.dll</td><td>{BC713297-1219-4524-A1CC-AAAAD8DEEDD6}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>paho_mqtt3c.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>postproc.dll</td><td>{E8891930-195F-4768-A8E9-9D04A3A78A1F}</td><td>DHNET</td><td>2</td><td/><td>postproc.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>postproc.dll1</td><td>{0B46885A-EC98-41A2-AF7B-2AB6F0F191F4}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>postproc.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>pthreadVC2.dll</td><td>{ACC8459D-376E-4D9F-ABE5-EED02CBE3B46}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>pthreadvc2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qminimal.dll</td><td>{1B933B31-89AE-4425-B1D5-D532A3BE01D6}</td><td>PLATFORMS</td><td>2</td><td/><td>qminimal.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qoffscreen.dll</td><td>{6F80B5A7-B6B4-4591-AE1F-6850E0A2E28B}</td><td>PLATFORMS</td><td>2</td><td/><td>qoffscreen.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>qwindows.dll</td><td>{E2C9CC76-817C-4187-87E4-4B213BB83E3F}</td><td>PLATFORMS</td><td>2</td><td/><td>qwindows.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ssleay32.dll</td><td>{EF10E4DC-5D37-4F3A-8B18-54DD78F72159}</td><td>HCNET</td><td>2</td><td/><td>ssleay32.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ssleay32.dll1</td><td>{1EAF5810-A9EF-4B24-81CF-20DD3580560D}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>ssleay32.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ssleay32.dll2</td><td>{0AC0A315-B325-47A8-A9B9-33B7D2B50369}</td><td>HCNETSDKCOM1</td><td>2</td><td/><td>ssleay32.dll2</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ssleay32.dll3</td><td>{C5EAF436-E64A-4951-98BC-32641B60AEF7}</td><td>HIKPF</td><td>2</td><td/><td>ssleay32.dll3</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>store_sys_client.dll</td><td>{3D00BD67-2B12-4202-A507-EF90B4650148}</td><td>HIKPF</td><td>2</td><td/><td>store_sys_client.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>stream_client.dll</td><td>{F9C88093-A91E-4C34-948B-3ABA1BFC1D45}</td><td>HIKPF</td><td>2</td><td/><td>stream_client.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>streamclient_lib.dll</td><td>{4648A395-75F1-4A70-AD8C-F87FAA8A97EE}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>streamclient_lib.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>svac_dec.dll</td><td>{0E1BB0DF-1910-49A2-8591-17003402E267}</td><td>DHNET</td><td>2</td><td/><td>svac_dec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>svac_dec.dll1</td><td>{547C47D8-E6AF-4F00-92E9-3CDB6F914C52}</td><td>DAHUA_DEVICE_PLUGIN</td><td>2</td><td/><td>svac_dec.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>svacdec.dll</td><td>{401AB861-7A78-4C81-A98C-8CDAECF5CEB0}</td><td>INFNET</td><td>2</td><td/><td>svacdec.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>swresample_2.dll</td><td>{6D9761AD-98A5-4252-8882-EF8C953BB0F0}</td><td>INFNET</td><td>2</td><td/><td>swresample_2.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>swscale_4.dll</td><td>{4E37222A-0AC6-43E4-9FC5-EDB654E21176}</td><td>INFNET</td><td>2</td><td/><td>swscale_4.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>threadsdk.dll</td><td>{6023EB6E-8848-4D37-BF78-FC9125729277}</td><td>HIKPF</td><td>2</td><td/><td>threadsdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>tmControlClient.dll</td><td>{3D2D36E9-0AFE-48AD-BB99-6FDED8422A06}</td><td>ZYRD</td><td>2</td><td/><td>tmcontrolclient.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>trace.dll</td><td>{8A074C59-6593-4F55-B310-4E6317FB2B4D}</td><td>HIKPF</td><td>2</td><td/><td>trace.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>udt.dll</td><td>{4FA66AD6-9BAD-4D4A-93E7-304189E13EF5}</td><td>EZVIZ_DEVICE_PLUGIN</td><td>2</td><td/><td>udt.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>vag_client.dll</td><td>{838DA472-CADE-4699-8116-DC7B18529189}</td><td>HIKPF</td><td>2</td><td/><td>vag_client.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>vag_playctrl.dll</td><td>{DD235037-C6A7-4BB2-95FE-75FC43AE8FC3}</td><td>HIKPF</td><td>2</td><td/><td>vag_playctrl.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>vrbClientSDK.dll</td><td>{A7D305DD-F038-40FB-9C91-D3B8CCC4B589}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>vrbclientsdk.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>vrbClientSDK.dll1</td><td>{50FFA689-6433-4B4E-997D-5D3EA9652AF2}</td><td>HIKPF</td><td>2</td><td/><td>vrbclientsdk.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>xvidcore.dll</td><td>{95A52636-442F-469C-B0BF-9DC88A5A8E96}</td><td>INFNET</td><td>2</td><td/><td>xvidcore.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>zlib1.dll</td><td>{B40AC7C7-4FFB-4E13-9000-891094492B3C}</td><td>HCNET</td><td>2</td><td/><td>zlib1.dll</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>zlib1.dll1</td><td>{55C5D3B1-ED55-4095-AA5B-C25AAE081C4D}</td><td>HIK_DEVICE_PLUGIN</td><td>2</td><td/><td>zlib1.dll1</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
	</table>

	<table name="Condition">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="i2">Level</col>
		<col def="S255">Condition</col>
	</table>

	<table name="Control">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control</col>
		<col def="s20">Type</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="S72">Property</col>
		<col def="L0">Text</col>
		<col def="S50">Control_Next</col>
		<col def="L50">Help</col>
		<col def="I4">ISWindowStyle</col>
		<col def="I4">ISControlId</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="S72">Binary_</col>
		<row><td>AdminChangeFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>AdminChangeFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ComboText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Combo</td><td>DirectoryCombo</td><td>21</td><td>64</td><td>277</td><td>80</td><td>458755</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_4##</td><td>Up</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>ComboText</td><td>Text</td><td>21</td><td>50</td><td>99</td><td>14</td><td>3</td><td/><td>##IDS__IsAdminInstallBrowse_LookIn##</td><td>Combo</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallBrowse_BrowseDestination##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallBrowse_ChangeDestination##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>List</td><td>DirectoryList</td><td>21</td><td>90</td><td>332</td><td>97</td><td>7</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_8##</td><td>TailText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>NewFolder</td><td>PushButton</td><td>335</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>List</td><td>##IDS__IsAdminInstallBrowse_CreateFolder##</td><td>0</td><td/><td/><td>NewBinary2</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Tail</td><td>PathEdit</td><td>21</td><td>207</td><td>332</td><td>17</td><td>3</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_11##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>TailText</td><td>Text</td><td>21</td><td>193</td><td>99</td><td>13</td><td>3</td><td/><td>##IDS__IsAdminInstallBrowse_FolderName##</td><td>Tail</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Up</td><td>PushButton</td><td>310</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>NewFolder</td><td>##IDS__IsAdminInstallBrowse_UpOneLevel##</td><td>0</td><td/><td/><td>NewBinary3</td></row>
		<row><td>AdminNetworkLocation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>InstallNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>AdminNetworkLocation</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Browse</td><td>PushButton</td><td>286</td><td>124</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_Change##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>SetupPathEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallPoint_SpecifyNetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>40</td><td>131075</td><td/><td>##IDS__IsAdminInstallPoint_EnterNetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallPoint_NetworkLocationFormatted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_Install##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>LBBrowse</td><td>Text</td><td>21</td><td>90</td><td>100</td><td>10</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_NetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>SetupPathEdit</td><td>PathEdit</td><td>21</td><td>102</td><td>330</td><td>17</td><td>3</td><td>TARGETDIR</td><td/><td>Browse</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>AdminWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsAdminInstallPointWelcome_Wizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsAdminInstallPointWelcome_ServerImage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Icon</td><td>Icon</td><td>15</td><td>15</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary4</td></row>
		<row><td>CancelSetup</td><td>No</td><td>PushButton</td><td>135</td><td>57</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCancelDlg_No##</td><td>Yes</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Text</td><td>Text</td><td>48</td><td>15</td><td>194</td><td>30</td><td>131075</td><td/><td>##IDS__IsCancelDlg_ConfirmCancel##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Yes</td><td>PushButton</td><td>62</td><td>57</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCancelDlg_Yes##</td><td>No</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomSetup</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Tree</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>203</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Change##</td><td>Help</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Details</td><td>PushButton</td><td>93</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Space##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgDesc</td><td>Text</td><td>17</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsCustomSelectionDlg_SelectFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgText</td><td>Text</td><td>9</td><td>51</td><td>360</td><td>10</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_ClickFeatureIcon##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgTitle</td><td>Text</td><td>9</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsCustomSelectionDlg_CustomSetup##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>FeatureGroup</td><td>GroupBox</td><td>235</td><td>67</td><td>131</td><td>120</td><td>1</td><td/><td>##IDS__IsCustomSelectionDlg_FeatureDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Help</td><td>PushButton</td><td>22</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Help##</td><td>Details</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>InstallLabel</td><td>Text</td><td>8</td><td>190</td><td>360</td><td>10</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_InstallTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>ItemDescription</td><td>Text</td><td>241</td><td>80</td><td>120</td><td>50</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_MultilineDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Location</td><td>Text</td><td>8</td><td>203</td><td>291</td><td>20</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_FeaturePath##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Size</td><td>Text</td><td>241</td><td>133</td><td>120</td><td>50</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_FeatureSize##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Tree</td><td>SelectionTree</td><td>8</td><td>70</td><td>220</td><td>118</td><td>7</td><td>_BrowseProperty</td><td/><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomSetupTips</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS_SetupTips_CustomSetupDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS_SetupTips_CustomSetup##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DontInstall</td><td>Icon</td><td>21</td><td>155</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary14</td></row>
		<row><td>CustomSetupTips</td><td>DontInstallText</td><td>Text</td><td>60</td><td>155</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_WillNotBeInstalled##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>FirstInstallText</td><td>Text</td><td>60</td><td>180</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_Advertise##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Install</td><td>Icon</td><td>21</td><td>105</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary15</td></row>
		<row><td>CustomSetupTips</td><td>InstallFirstUse</td><td>Icon</td><td>21</td><td>180</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary16</td></row>
		<row><td>CustomSetupTips</td><td>InstallPartial</td><td>Icon</td><td>21</td><td>130</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary17</td></row>
		<row><td>CustomSetupTips</td><td>InstallStateMenu</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary18</td></row>
		<row><td>CustomSetupTips</td><td>InstallStateText</td><td>Text</td><td>21</td><td>91</td><td>300</td><td>10</td><td>3</td><td/><td>##IDS_SetupTips_InstallState##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>CustomSetupTips</td><td>InstallText</td><td>Text</td><td>60</td><td>105</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_AllInstalledLocal##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>MenuText</td><td>Text</td><td>50</td><td>52</td><td>300</td><td>36</td><td>3</td><td/><td>##IDS_SetupTips_IconInstallState##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>NetworkInstall</td><td>Icon</td><td>21</td><td>205</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary13</td></row>
		<row><td>CustomSetupTips</td><td>NetworkInstallText</td><td>Text</td><td>60</td><td>205</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_Network##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>OK</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_SetupTips_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>PartialText</td><td>Text</td><td>60</td><td>130</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_SubFeaturesInstalledLocal##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomerInformation</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>NameLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>CompanyEdit</td><td>Edit</td><td>21</td><td>100</td><td>237</td><td>17</td><td>3</td><td>COMPANYNAME</td><td>##IDS__IsRegisterUserDlg_Tahoma80##</td><td>SerialLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>CompanyLabel</td><td>Text</td><td>21</td><td>89</td><td>75</td><td>10</td><td>3</td><td/><td>##IDS__IsRegisterUserDlg_Organization##</td><td>CompanyEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsRegisterUserDlg_PleaseEnterInfo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Text</td><td>21</td><td>161</td><td>300</td><td>14</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_InstallFor##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsRegisterUserDlg_CustomerInformation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>NameEdit</td><td>Edit</td><td>21</td><td>63</td><td>237</td><td>17</td><td>3</td><td>USERNAME</td><td>##IDS__IsRegisterUserDlg_Tahoma50##</td><td>CompanyLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>NameLabel</td><td>Text</td><td>21</td><td>52</td><td>75</td><td>10</td><td>3</td><td/><td>##IDS__IsRegisterUserDlg_UserName##</td><td>NameEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>63</td><td>170</td><td>300</td><td>50</td><td>2</td><td>ApplicationUsers</td><td>##IDS__IsRegisterUserDlg_16##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>SerialLabel</td><td>Text</td><td>21</td><td>127</td><td>109</td><td>10</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_SerialNumber##</td><td>SerialNumber</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>SerialNumber</td><td>MaskedEdit</td><td>21</td><td>138</td><td>237</td><td>17</td><td>2</td><td>ISX_SERIALNUM</td><td/><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DatabaseFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>65</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CHANGE##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DatabaseFolder</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary12</td></row>
		<row><td>DatabaseFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DatabaseFolder_ChangeFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DatabaseFolder_DatabaseFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>LocLabel</td><td>Text</td><td>57</td><td>52</td><td>290</td><td>10</td><td>131075</td><td/><td>##IDS_DatabaseFolder_InstallDatabaseTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Location</td><td>Text</td><td>57</td><td>65</td><td>240</td><td>40</td><td>3</td><td>_BrowseProperty</td><td>##IDS__DatabaseFolder_DatabaseDir##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DestinationFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>65</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__DestinationFolder_Change##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DestFolder</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary12</td></row>
		<row><td>DestinationFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DestinationFolder_ChangeFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DestinationFolder_DestinationFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>LocLabel</td><td>Text</td><td>57</td><td>52</td><td>290</td><td>10</td><td>131075</td><td/><td>##IDS__DestinationFolder_InstallTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Location</td><td>Text</td><td>57</td><td>65</td><td>240</td><td>40</td><td>3</td><td>_BrowseProperty</td><td>##IDS_INSTALLDIR##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DiskSpaceRequirements</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgDesc</td><td>Text</td><td>17</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFeatureDetailsDlg_SpaceRequired##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgText</td><td>Text</td><td>10</td><td>185</td><td>358</td><td>41</td><td>3</td><td/><td>##IDS__IsFeatureDetailsDlg_VolumesTooSmall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgTitle</td><td>Text</td><td>9</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFeatureDetailsDlg_DiskSpaceRequirements##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>List</td><td>VolumeCostList</td><td>8</td><td>55</td><td>358</td><td>125</td><td>393223</td><td/><td>##IDS__IsFeatureDetailsDlg_Numbers##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>OK</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFeatureDetailsDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>FilesInUse</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUseMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>348</td><td>33</td><td>3</td><td/><td>##IDS__IsFilesInUse_ApplicationsUsingFiles##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUse##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Exit</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Exit##</td><td>List</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Ignore</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Ignore##</td><td>Exit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>List</td><td>ListBox</td><td>21</td><td>87</td><td>331</td><td>135</td><td>7</td><td>FileInUseProcess</td><td/><td>Retry</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Retry</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Retry##</td><td>Ignore</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>InstallChangeFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ComboText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Combo</td><td>DirectoryCombo</td><td>21</td><td>64</td><td>277</td><td>80</td><td>4128779</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_4##</td><td>Up</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>ComboText</td><td>Text</td><td>21</td><td>50</td><td>99</td><td>14</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_LookIn##</td><td>Combo</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsBrowseFolderDlg_BrowseDestFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsBrowseFolderDlg_ChangeCurrentFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>List</td><td>DirectoryList</td><td>21</td><td>90</td><td>332</td><td>97</td><td>15</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_8##</td><td>TailText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>NewFolder</td><td>PushButton</td><td>335</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>List</td><td>##IDS__IsBrowseFolderDlg_CreateFolder##</td><td>0</td><td/><td/><td>NewBinary2</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Tail</td><td>PathEdit</td><td>21</td><td>207</td><td>332</td><td>17</td><td>15</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_11##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>TailText</td><td>Text</td><td>21</td><td>193</td><td>99</td><td>13</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_FolderName##</td><td>Tail</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Up</td><td>PushButton</td><td>310</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>NewFolder</td><td>##IDS__IsBrowseFolderDlg_UpOneLevel##</td><td>0</td><td/><td/><td>NewBinary3</td></row>
		<row><td>InstallWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Copyright</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Text</td><td>135</td><td>144</td><td>228</td><td>73</td><td>65539</td><td/><td>##IDS__IsWelcomeDlg_WarningCopyright##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>InstallWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsWelcomeDlg_WelcomeProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsWelcomeDlg_InstallProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Agree</td><td>RadioButtonGroup</td><td>8</td><td>190</td><td>291</td><td>40</td><td>3</td><td>AgreeToLicense</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>LicenseAgreement</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ISPrintButton</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsLicenseDlg_ReadLicenseAgreement##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsLicenseDlg_LicenseAgreement##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>ISPrintButton</td><td>PushButton</td><td>301</td><td>188</td><td>65</td><td>17</td><td>3</td><td/><td>##IDS_PRINT_BUTTON##</td><td>Agree</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Memo</td><td>ScrollableText</td><td>8</td><td>55</td><td>358</td><td>130</td><td>7</td><td/><td/><td/><td/><td>0</td><td/><td>&lt;ISProductFolder&gt;\Redist\0409\Eula.rtf</td><td/></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>MaintenanceType</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsMaintenanceDlg_MaitenanceOptions##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsMaintenanceDlg_ProgramMaintenance##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Ico1</td><td>Icon</td><td>35</td><td>75</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary6</td></row>
		<row><td>MaintenanceType</td><td>Ico2</td><td>Icon</td><td>35</td><td>135</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary7</td></row>
		<row><td>MaintenanceType</td><td>Ico3</td><td>Icon</td><td>35</td><td>195</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary8</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>21</td><td>55</td><td>290</td><td>170</td><td>3</td><td>_IsMaintenance</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text1</td><td>Text</td><td>80</td><td>72</td><td>260</td><td>35</td><td>3</td><td/><td>##IDS__IsMaintenanceDlg_ChangeFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text2</td><td>Text</td><td>80</td><td>135</td><td>260</td><td>35</td><td>3</td><td/><td>##IDS__IsMaintenanceDlg_RepairMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text3</td><td>Text</td><td>80</td><td>192</td><td>260</td><td>35</td><td>131075</td><td/><td>##IDS__IsMaintenanceDlg_RemoveProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>MaintenanceWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsMaintenanceWelcome_WizardWelcome##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>50</td><td>196611</td><td/><td>##IDS__IsMaintenanceWelcome_MaintenanceOptionsDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>MsiRMFilesInUse</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Restart</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUseMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>348</td><td>14</td><td>3</td><td/><td>##IDS__IsMsiRMFilesInUse_ApplicationsUsingFiles##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUse##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>List</td><td>ListBox</td><td>21</td><td>66</td><td>331</td><td>130</td><td>3</td><td>FileInUseProcess</td><td/><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Restart</td><td>RadioButtonGroup</td><td>19</td><td>187</td><td>343</td><td>40</td><td>3</td><td>RestartManagerOption</td><td/><td>List</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>OutOfSpace</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsDiskSpaceDlg_DiskSpace##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>43</td><td>3</td><td/><td>##IDS__IsDiskSpaceDlg_HighlightedVolumes##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsDiskSpaceDlg_OutOfDiskSpace##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>List</td><td>VolumeCostList</td><td>21</td><td>95</td><td>332</td><td>120</td><td>393223</td><td/><td>##IDS__IsDiskSpaceDlg_Numbers##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsDiskSpaceDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsPatchDlg_Update##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsPatchDlg_WelcomePatchWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>54</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsPatchDlg_PatchClickUpdate##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>3</td><td/><td/><td>DlgTitle</td><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadmeInformation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS__IsReadmeDlg_Cancel##</td><td>Readme</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>232</td><td>16</td><td>65539</td><td/><td>##IDS__IsReadmeDlg_PleaseReadInfo##</td><td>Back</td><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>3</td><td/><td/><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>193</td><td>13</td><td>65539</td><td/><td>##IDS__IsReadmeDlg_ReadMeInfo##</td><td>DlgDesc</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Readme</td><td>ScrollableText</td><td>10</td><td>55</td><td>353</td><td>166</td><td>3</td><td/><td/><td>Banner</td><td/><td>0</td><td/><td>&lt;ISProductFolder&gt;\Redist\0409\Readme.rtf</td><td/></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>GroupBox1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadyToInstall</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>CompanyNameText</td><td>Text</td><td>38</td><td>198</td><td>211</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Company##</td><td>SerialNumberText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>CurrentSettingsText</td><td>Text</td><td>19</td><td>80</td><td>81</td><td>10</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_CurrentSettings##</td><td>InstallNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyReadyDlg_WizardReady##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgText1</td><td>Text</td><td>21</td><td>54</td><td>330</td><td>24</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_BackOrCancel##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Text</td><td>21</td><td>99</td><td>330</td><td>20</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_InstallFor##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ModifyReady##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle2</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ReadyRepair##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle3</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ReadyInstall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>GroupBox1</td><td>Text</td><td>19</td><td>92</td><td>330</td><td>133</td><td>65541</td><td/><td/><td>SetupTypeText1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>8388611</td><td/><td>##IDS__IsVerifyReadyDlg_Install##</td><td>InstallPerMachine</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>PushButton</td><td>63</td><td>123</td><td>248</td><td>17</td><td>8388610</td><td/><td>##IDS__IsRegisterUserDlg_Anyone##</td><td>InstallPerUser</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>PushButton</td><td>63</td><td>143</td><td>248</td><td>17</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_OnlyMe##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Text</td><td>38</td><td>211</td><td>306</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Serial##</td><td>CurrentSettingsText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText1</td><td>Text</td><td>23</td><td>97</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_SetupType##</td><td>SetupTypeText2</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText2</td><td>Text</td><td>37</td><td>114</td><td>306</td><td>14</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_SelectedSetupType##</td><td>TargetFolderText1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText1</td><td>Text</td><td>24</td><td>136</td><td>306</td><td>11</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_DestFolder##</td><td>TargetFolderText2</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText2</td><td>Text</td><td>37</td><td>151</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Installdir##</td><td>UserInformationText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>UserInformationText</td><td>Text</td><td>23</td><td>171</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_UserInfo##</td><td>UserNameText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>UserNameText</td><td>Text</td><td>38</td><td>184</td><td>306</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_UserName##</td><td>CompanyNameText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>RemoveNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadyToRemove</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ChoseRemoveProgram##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>24</td><td>131075</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ClickRemove##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText1</td><td>Text</td><td>21</td><td>79</td><td>330</td><td>23</td><td>3</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ClickBack##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText2</td><td>Text</td><td>21</td><td>102</td><td>330</td><td>24</td><td>3</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyRemoveAllDlg_RemoveProgram##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>8388611</td><td/><td>##IDS__IsVerifyRemoveAllDlg_Remove##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Finish</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>172</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFatalError_Finish##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsFatalError_NotModified##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsFatalError_ClickFinish##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsFatalError_KeepOrRestore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsFatalError_RestoreOrContinueLater##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>172</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsFatalError_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>25</td><td>196611</td><td/><td>##IDS__IsFatalError_WizardInterrupted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckBoxUpdates</td><td>CheckBox</td><td>135</td><td>164</td><td>10</td><td>9</td><td>2</td><td>ISCHECKFORPRODUCTUPDATES</td><td>CheckBox1</td><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckForUpdatesText</td><td>Text</td><td>152</td><td>162</td><td>190</td><td>30</td><td>65538</td><td/><td>##IDS__IsExitDialog_Update_YesCheckForUpdates##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchProgram</td><td>CheckBox</td><td>151</td><td>114</td><td>10</td><td>9</td><td>2</td><td>LAUNCHPROGRAM</td><td/><td>CheckLaunchReadme</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchReadme</td><td>CheckBox</td><td>151</td><td>148</td><td>10</td><td>9</td><td>2</td><td>LAUNCHREADME</td><td/><td>CheckBoxUpdates</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>182</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckLaunchProgram</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchProgramText</td><td>Text</td><td>164</td><td>112</td><td>98</td><td>15</td><td>65538</td><td/><td>##IDS__IsExitDialog_LaunchProgram##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchReadmeText</td><td>Text</td><td>164</td><td>148</td><td>120</td><td>13</td><td>65538</td><td/><td>##IDS__IsExitDialog_ShowReadMe##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsExitDialog_Finish##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>182</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsExitDialog_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_InstallSuccess##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine3</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_UninstallSuccess##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine1</td><td>Text</td><td>135</td><td>30</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_Update_SetupFinished##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine2</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_Update_PossibleUpdates##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine3</td><td>Text</td><td>135</td><td>120</td><td>228</td><td>45</td><td>65538</td><td/><td>##IDS__IsExitDialog_Update_InternetConnection##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>A</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Abort##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>C</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>ErrorIcon</td><td>Icon</td><td>15</td><td>15</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary4</td></row>
		<row><td>SetupError</td><td>ErrorText</td><td>Text</td><td>50</td><td>15</td><td>200</td><td>50</td><td>131075</td><td/><td>##IDS__IsErrorDlg_ErrorText##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>I</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Ignore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>N</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_NO##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>O</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>R</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Retry##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>Y</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Yes##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>ActionData</td><td>Text</td><td>135</td><td>125</td><td>228</td><td>12</td><td>65539</td><td/><td>##IDS__IsInitDlg_1##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>ActionText</td><td>Text</td><td>135</td><td>109</td><td>220</td><td>36</td><td>65539</td><td/><td>##IDS__IsInitDlg_2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupInitialization</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_NEXT##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsInitDlg_WelcomeWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>30</td><td>196611</td><td/><td>##IDS__IsInitDlg_PreparingWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Finish</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>172</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsUserExit_Finish##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsUserExit_NotModified##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsUserExit_ClickFinish##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsUserExit_KeepOrRestore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsUserExit_RestoreOrContinue##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>172</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsUserExit_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>25</td><td>196611</td><td/><td>##IDS__IsUserExit_WizardInterrupted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>ProgressBar</td><td>59</td><td>113</td><td>275</td><td>12</td><td>65537</td><td/><td>##IDS__IsProgressDlg_ProgressDone##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>ActionText</td><td>Text</td><td>59</td><td>100</td><td>275</td><td>12</td><td>3</td><td/><td>##IDS__IsProgressDlg_2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>SetupProgress</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsProgressDlg_UninstallingFeatures2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgDesc2</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsProgressDlg_UninstallingFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgText</td><td>Text</td><td>59</td><td>51</td><td>275</td><td>30</td><td>196610</td><td/><td>##IDS__IsProgressDlg_WaitUninstall2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgText2</td><td>Text</td><td>59</td><td>51</td><td>275</td><td>30</td><td>196610</td><td/><td>##IDS__IsProgressDlg_WaitUninstall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>196610</td><td/><td>##IDS__IsProgressDlg_InstallingProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgTitle2</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>196610</td><td/><td>##IDS__IsProgressDlg_Uninstalling##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>LbSec</td><td>Text</td><td>192</td><td>139</td><td>32</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_SecHidden##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>LbStatus</td><td>Text</td><td>59</td><td>85</td><td>70</td><td>12</td><td>3</td><td/><td>##IDS__IsProgressDlg_Status##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>SetupIcon</td><td>Icon</td><td>21</td><td>51</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary9</td></row>
		<row><td>SetupProgress</td><td>ShowTime</td><td>Text</td><td>170</td><td>139</td><td>17</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_Hidden##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>TextTime</td><td>Text</td><td>59</td><td>139</td><td>110</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_HiddenTimeRemaining##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupResume</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_WizardResume##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Text</td><td>135</td><td>46</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_ResumeSuspended##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_Resuming##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>SetupType</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CompText</td><td>Text</td><td>80</td><td>80</td><td>246</td><td>30</td><td>3</td><td/><td>##IDS__IsSetupTypeMinDlg_AllFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CompleteIco</td><td>Icon</td><td>34</td><td>80</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary10</td></row>
		<row><td>SetupType</td><td>CustText</td><td>Text</td><td>80</td><td>171</td><td>246</td><td>30</td><td>2</td><td/><td>##IDS__IsSetupTypeMinDlg_ChooseFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CustomIco</td><td>Icon</td><td>34</td><td>171</td><td>24</td><td>24</td><td>5242880</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary11</td></row>
		<row><td>SetupType</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsSetupTypeMinDlg_ChooseSetupType##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>DlgText</td><td>Text</td><td>22</td><td>49</td><td>326</td><td>10</td><td>3</td><td/><td>##IDS__IsSetupTypeMinDlg_SelectSetupType##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupType</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsSetupTypeMinDlg_SetupType##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>MinIco</td><td>Icon</td><td>34</td><td>125</td><td>24</td><td>24</td><td>5242880</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary11</td></row>
		<row><td>SetupType</td><td>MinText</td><td>Text</td><td>80</td><td>125</td><td>246</td><td>30</td><td>2</td><td/><td>##IDS__IsSetupTypeMinDlg_MinimumFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>20</td><td>59</td><td>264</td><td>139</td><td>1048579</td><td>_IsSetupTypeMin</td><td/><td>Back</td><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SplashBitmap</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Image</td><td>Bitmap</td><td>13</td><td>12</td><td>349</td><td>211</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SplashBitmap</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
	</table>

	<table name="ControlCondition">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Action</col>
		<col key="yes" def="s255">Condition</col>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomSetup</td><td>Details</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomSetup</td><td>InstallLabel</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>NOT Privileged</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>ProductState &gt; 0</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>Version9X</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>NOT Privileged</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>ProductState &gt; 0</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>Version9X</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>CustomerInformation</td><td>SerialLabel</td><td>Show</td><td>SERIALNUMSHOW</td></row>
		<row><td>CustomerInformation</td><td>SerialNumber</td><td>Show</td><td>SERIALNUMSHOW</td></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Hide</td><td>SHOWCOPYRIGHT="No"</td></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Show</td><td>SHOWCOPYRIGHT="Yes"</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>Disable</td><td>AgreeToLicense &lt;&gt; "Yes"</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>Enable</td><td>AgreeToLicense = "Yes"</td></row>
		<row><td>ReadyToInstall</td><td>CompanyNameText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>CurrentSettingsText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle</td><td>Show</td><td>ProgressType0="Modify"</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle2</td><td>Show</td><td>ProgressType0="Repair"</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle3</td><td>Show</td><td>ProgressType0="install"</td></row>
		<row><td>ReadyToInstall</td><td>GroupBox1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>Disable</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>Enable</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Hide</td><td>NOT SERIALNUMSHOW</td></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText2</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText2</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>UserInformationText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>UserNameText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Default</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>Default</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckBoxUpdates</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckForUpdatesText</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchProgram</td><td>Show</td><td>SHOWLAUNCHPROGRAM="-1" And PROGRAMFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchReadme</td><td>Show</td><td>SHOWLAUNCHREADME="-1"  And READMEFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchProgramText</td><td>Show</td><td>SHOWLAUNCHPROGRAM="-1" And PROGRAMFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchReadmeText</td><td>Show</td><td>SHOWLAUNCHREADME="-1"  And READMEFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine2</td><td>Show</td><td>ProgressType2="installed" And ((ACTION&lt;&gt;"INSTALL") OR (NOT ISENABLEDWUSFINISHDIALOG) OR (ISENABLEDWUSFINISHDIALOG And Installed))</td></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine3</td><td>Show</td><td>ProgressType2="uninstalled" And ((ACTION&lt;&gt;"INSTALL") OR (NOT ISENABLEDWUSFINISHDIALOG) OR (ISENABLEDWUSFINISHDIALOG And Installed))</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine1</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine2</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine3</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Default</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>Default</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupProgress</td><td>DlgDesc</td><td>Show</td><td>ProgressType2="installed"</td></row>
		<row><td>SetupProgress</td><td>DlgDesc2</td><td>Show</td><td>ProgressType2="uninstalled"</td></row>
		<row><td>SetupProgress</td><td>DlgText</td><td>Show</td><td>ProgressType3="installs"</td></row>
		<row><td>SetupProgress</td><td>DlgText2</td><td>Show</td><td>ProgressType3="uninstalls"</td></row>
		<row><td>SetupProgress</td><td>DlgTitle</td><td>Show</td><td>ProgressType1="Installing"</td></row>
		<row><td>SetupProgress</td><td>DlgTitle2</td><td>Show</td><td>ProgressType1="Uninstalling"</td></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Hide</td><td>RESUME</td></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Show</td><td>NOT RESUME</td></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Hide</td><td>NOT RESUME</td></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Show</td><td>RESUME</td></row>
	</table>

	<table name="ControlEvent">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Event</col>
		<col key="yes" def="s255">Argument</col>
		<col key="yes" def="S255">Condition</col>
		<col def="I2">Ordering</col>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>Reset</td><td>0</td><td>1</td><td>1</td></row>
		<row><td>AdminChangeFolder</td><td>NewFolder</td><td>DirectoryListNew</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>SetTargetPath</td><td>TARGETDIR</td><td>1</td><td>1</td></row>
		<row><td>AdminChangeFolder</td><td>Up</td><td>DirectoryListUp</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Back</td><td>NewDialog</td><td>AdminWelcome</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Browse</td><td>SpawnDialog</td><td>AdminChangeFolder</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>3</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>2</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>SetTargetPath</td><td>TARGETDIR</td><td>1</td><td>1</td></row>
		<row><td>AdminWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>AdminWelcome</td><td>Next</td><td>NewDialog</td><td>AdminNetworkLocation</td><td>1</td><td>0</td></row>
		<row><td>CancelSetup</td><td>No</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>CancelSetup</td><td>Yes</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>CancelSetup</td><td>Yes</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>CustomSetup</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>NOT Installed</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>Installed</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>SelectionBrowse</td><td>InstallChangeFolder</td><td>1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Details</td><td>SelectionBrowse</td><td>DiskSpaceRequirements</td><td>1</td><td>1</td></row>
		<row><td>CustomSetup</td><td>Help</td><td>SpawnDialog</td><td>CustomSetupTips</td><td>1</td><td>1</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>[_IsSetupTypeMin]</td><td>Custom</td><td>1</td><td>0</td></row>
		<row><td>CustomSetupTips</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>NOT Installed</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>EndDialog</td><td>Exit</td><td>(SERIALNUMVALRETRYLIMIT) And (SERIALNUMVALRETRYLIMIT&lt;0) And (SERIALNUMVALRETURN&lt;&gt;SERIALNUMVALSUCCESSRETVAL)</td><td>2</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>(Not SERIALNUMVALRETURN) OR (SERIALNUMVALRETURN=SERIALNUMVALSUCCESSRETVAL)</td><td>3</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>[ALLUSERS]</td><td>1</td><td>ApplicationUsers = "AllUsers" And Privileged</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>[ALLUSERS]</td><td>{}</td><td>ApplicationUsers = "OnlyCurrentUser" And Privileged</td><td>2</td></row>
		<row><td>DatabaseFolder</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>SpawnDialog</td><td>InstallChangeFolder</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>[_BrowseProperty]</td><td>DATABASEDIR</td><td>1</td><td>2</td></row>
		<row><td>DatabaseFolder</td><td>Next</td><td>NewDialog</td><td>SetupType</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>0</td></row>
		<row><td>DestinationFolder</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>SpawnDialog</td><td>InstallChangeFolder</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>[_BrowseProperty]</td><td>INSTALLDIR</td><td>1</td><td>2</td></row>
		<row><td>DestinationFolder</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>1</td><td>0</td></row>
		<row><td>DiskSpaceRequirements</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Exit</td><td>EndDialog</td><td>Exit</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Ignore</td><td>EndDialog</td><td>Ignore</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Retry</td><td>EndDialog</td><td>Retry</td><td>1</td><td>0</td></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>Reset</td><td>0</td><td>1</td><td>1</td></row>
		<row><td>InstallChangeFolder</td><td>NewFolder</td><td>DirectoryListNew</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>3</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>SetTargetPath</td><td>[_BrowseProperty]</td><td>1</td><td>2</td></row>
		<row><td>InstallChangeFolder</td><td>Up</td><td>DirectoryListUp</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Back</td><td>NewDialog</td><td>SplashBitmap</td><td>Display_IsBitmapDlg</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>ISPrintButton</td><td>DoAction</td><td>ISPrint</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>NewDialog</td><td>CustomerInformation</td><td>AgreeToLicense = "Yes"</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Back</td><td>NewDialog</td><td>MaintenanceWelcome</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>CustomSetup</td><td>_IsMaintenance = "Change"</td><td>12</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>_IsMaintenance = "Reinstall"</td><td>13</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>ReadyToRemove</td><td>_IsMaintenance = "Remove"</td><td>11</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>Reinstall</td><td>ALL</td><td>_IsMaintenance = "Reinstall"</td><td>10</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>ReinstallMode</td><td>[ReinstallModeText]</td><td>_IsMaintenance = "Reinstall"</td><td>9</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType0]</td><td>Modify</td><td>_IsMaintenance = "Change"</td><td>2</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType0]</td><td>Repair</td><td>_IsMaintenance = "Reinstall"</td><td>1</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType1]</td><td>Modifying</td><td>_IsMaintenance = "Change"</td><td>3</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType1]</td><td>Repairing</td><td>_IsMaintenance = "Reinstall"</td><td>4</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType2]</td><td>modified</td><td>_IsMaintenance = "Change"</td><td>6</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType2]</td><td>repairs</td><td>_IsMaintenance = "Reinstall"</td><td>5</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType3]</td><td>modifies</td><td>_IsMaintenance = "Change"</td><td>7</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType3]</td><td>repairs</td><td>_IsMaintenance = "Reinstall"</td><td>8</td></row>
		<row><td>MaintenanceWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceWelcome</td><td>Next</td><td>NewDialog</td><td>MaintenanceType</td><td>1</td><td>0</td></row>
		<row><td>MsiRMFilesInUse</td><td>Cancel</td><td>EndDialog</td><td>Exit</td><td>1</td><td>1</td></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>1</td></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>RMShutdownAndRestart</td><td>0</td><td>RestartManagerOption="CloseRestart"</td><td>2</td></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>NewDialog</td><td>AdminNetworkLocation</td><td>ACTION = "ADMIN"</td><td>0</td></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>NewDialog</td><td>DestinationFolder</td><td>ACTION &lt;&gt; "ADMIN"</td><td>0</td></row>
		<row><td>PatchWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>EndDialog</td><td>Return</td><td>1</td><td>3</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>Reinstall</td><td>ALL</td><td>PATCH And REINSTALL=""</td><td>1</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>ReinstallMode</td><td>omus</td><td>PATCH And REINSTALLMODE=""</td><td>2</td></row>
		<row><td>ReadmeInformation</td><td>Back</td><td>NewDialog</td><td>LicenseAgreement</td><td>1</td><td>1</td></row>
		<row><td>ReadmeInformation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>ReadmeInformation</td><td>Next</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>CustomSetup</td><td>Installed OR _IsSetupTypeMin = "Custom"</td><td>2</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>NOT Installed</td><td>1</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>Installed AND _IsMaintenance = "Reinstall"</td><td>3</td></row>
		<row><td>ReadyToInstall</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ALLUSERS]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[MSIINSTALLPERUSER]</td><td>{}</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ALLUSERS]</td><td>2</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[MSIINSTALLPERUSER]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>2</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>2</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>Remove</td><td>ALL</td><td>1</td><td>1</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType1]</td><td>Uninstalling</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType2]</td><td>uninstalled</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType3]</td><td>uninstalls</td><td>1</td><td>0</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>[Suspend]</td><td>{}</td><td>1</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>[Suspend]</td><td>1</td><td>1</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1")</td><td>3</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1") And NOT ISENABLEDWUSFINISHDIALOG</td><td>6</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupError</td><td>A</td><td>EndDialog</td><td>ErrorAbort</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>C</td><td>EndDialog</td><td>ErrorCancel</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>I</td><td>EndDialog</td><td>ErrorIgnore</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>N</td><td>EndDialog</td><td>ErrorNo</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>O</td><td>EndDialog</td><td>ErrorOk</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>R</td><td>EndDialog</td><td>ErrorRetry</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>Y</td><td>EndDialog</td><td>ErrorYes</td><td>1</td><td>0</td></row>
		<row><td>SetupInitialization</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>[Suspend]</td><td>{}</td><td>1</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>[Suspend]</td><td>1</td><td>1</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1")</td><td>3</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupProgress</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Next</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Next</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>SetupType</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>SetupType</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>NewDialog</td><td>CustomSetup</td><td>_IsSetupTypeMin = "Custom"</td><td>2</td></row>
		<row><td>SetupType</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>_IsSetupTypeMin &lt;&gt; "Custom"</td><td>1</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>100</td><td>_IsSetupTypeMin="Minimal"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>200</td><td>_IsSetupTypeMin="Typical"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>300</td><td>_IsSetupTypeMin="Custom"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[ISRUNSETUPTYPEADDLOCALEVENT]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameCustom]</td><td>_IsSetupTypeMin = "Custom"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameMinimal]</td><td>_IsSetupTypeMin = "Minimal"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameTypical]</td><td>_IsSetupTypeMin = "Typical"</td><td>0</td></row>
		<row><td>SplashBitmap</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SplashBitmap</td><td>Next</td><td>NewDialog</td><td>InstallWelcome</td><td>1</td><td>0</td></row>
	</table>

	<table name="CreateFolder">
		<col key="yes" def="s72">Directory_</col>
		<col key="yes" def="s72">Component_</col>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>DhDecode.dll</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>DllDeinterlace.dll</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>HWDec.dll</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>ISX_DEFAULTCOMPONENT7</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>Infra.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>IvsDrawer.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>MCL_FPTZ.dll</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>NetFramework.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>Stream.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>StreamSvr.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>aacdec.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>adpcmdec.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>amrdec.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>avnetsdk.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>dahua_plugin.dll</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>dhconfigsdk.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>dhdvr.dll</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>dhlog.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>dhnetsdk.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>dhplay.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>dllh264.dll</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>dllmpeg4.dll</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>fisheye.dll</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>g7221dec.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>h264dec.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>h26ldec.dll</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>hevcdec.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>hpr.dll</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>json.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>mjpegdec.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>mp2dec.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>mp3dec.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>mpeg4dec.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>mpeg4enc.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>postproc.dll1</td></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>svac_dec.dll1</td></row>
		<row><td>DEVICE_PLUGINS</td><td>ISX_DEFAULTCOMPONENT6</td></row>
		<row><td>DEVICE_PLUGINS</td><td>WPFComponent.dll</td></row>
		<row><td>DEVICE_PLUGINS</td><td>log4net.dll</td></row>
		<row><td>DHNET</td><td>ISX_DEFAULTCOMPONENT2</td></row>
		<row><td>DHNET</td><td>Infra.dll</td></row>
		<row><td>DHNET</td><td>IvsDrawer.dll</td></row>
		<row><td>DHNET</td><td>NetFramework.dll</td></row>
		<row><td>DHNET</td><td>Stream.dll</td></row>
		<row><td>DHNET</td><td>StreamSvr.dll</td></row>
		<row><td>DHNET</td><td>VTHStack.dll</td></row>
		<row><td>DHNET</td><td>aacdec.dll</td></row>
		<row><td>DHNET</td><td>adpcmdec.dll</td></row>
		<row><td>DHNET</td><td>amrdec.dll</td></row>
		<row><td>DHNET</td><td>armenc32.dll</td></row>
		<row><td>DHNET</td><td>avnetsdk.dll</td></row>
		<row><td>DHNET</td><td>dhconfigsdk.dll</td></row>
		<row><td>DHNET</td><td>dhlog.dll</td></row>
		<row><td>DHNET</td><td>dhnetsdk.dll</td></row>
		<row><td>DHNET</td><td>dhplay.dll</td></row>
		<row><td>DHNET</td><td>g7221dec.dll</td></row>
		<row><td>DHNET</td><td>h264dec.dll</td></row>
		<row><td>DHNET</td><td>hevcdec.dll</td></row>
		<row><td>DHNET</td><td>json.dll</td></row>
		<row><td>DHNET</td><td>mjpegdec.dll</td></row>
		<row><td>DHNET</td><td>mp2dec.dll</td></row>
		<row><td>DHNET</td><td>mp3dec.dll</td></row>
		<row><td>DHNET</td><td>mpeg4dec.dll</td></row>
		<row><td>DHNET</td><td>mpeg4enc.dll</td></row>
		<row><td>DHNET</td><td>postproc.dll</td></row>
		<row><td>DHNET</td><td>svac_dec.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>AnalyzeData.dll2</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>AudioIntercom.dll2</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>AudioRender.dll1</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>ISX_DEFAULTCOMPONENT8</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>MidPage.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>NetStream.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>OpenAL32.dll1</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>OpenAL32New.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>OpenNetStream.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>OpenSDK_Demo_Qt.exe</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>PlayCtrl.dll1</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>PushClient.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>Qt5Core.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>Qt5Gui.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>Qt5Widgets.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>RTPRTCP.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>RTSPClient.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>StreamClient_V30.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>StreamTransClient.dll1</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>StunClientLib.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>SuperRender.dll1</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>SystemTransform.dll1</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>TTSClient.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>ezviz_plugin.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>hlog.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>hpr.dll1</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>icudt52.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>icuin52.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>icuuc52.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>libCASClient.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>libGetHDSign.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>libPPVClient2.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>libcurl.dll1</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>libeay32.dll1</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>libgcc_s_dw2_1.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>libstdc___6.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>libwinpthread_1.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>opensslwrap.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>paho_mqtt3c.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>pthreadVC2.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>ssleay32.dll1</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>streamclient_lib.dll</td></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>udt.dll</td></row>
		<row><td>FUNI</td><td>ISX_DEFAULTCOMPONENT25</td></row>
		<row><td>HCNET</td><td>AudioRender.dll</td></row>
		<row><td>HCNET</td><td>EagleEyeRender.dll</td></row>
		<row><td>HCNET</td><td>HCCore.dll</td></row>
		<row><td>HCNET</td><td>HCNetSDK.dll</td></row>
		<row><td>HCNET</td><td>HWDecode.dll</td></row>
		<row><td>HCNET</td><td>ISX_DEFAULTCOMPONENT3</td></row>
		<row><td>HCNET</td><td>MP_Render.dll</td></row>
		<row><td>HCNET</td><td>MP_VIE.dll</td></row>
		<row><td>HCNET</td><td>PlayCtrl.dll</td></row>
		<row><td>HCNET</td><td>SuperRender.dll</td></row>
		<row><td>HCNET</td><td>YUVProcess.dll</td></row>
		<row><td>HCNET</td><td>calib.dll</td></row>
		<row><td>HCNET</td><td>gdiplus.dll</td></row>
		<row><td>HCNET</td><td>iconv.dll</td></row>
		<row><td>HCNET</td><td>libcrypto_1_1.dll</td></row>
		<row><td>HCNET</td><td>libcurl.dll</td></row>
		<row><td>HCNET</td><td>libeay32.dll</td></row>
		<row><td>HCNET</td><td>libssl_1_1.dll</td></row>
		<row><td>HCNET</td><td>libxml2.dll</td></row>
		<row><td>HCNET</td><td>msvcr120.dll</td></row>
		<row><td>HCNET</td><td>ssleay32.dll</td></row>
		<row><td>HCNET</td><td>zlib1.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>AnalyzeData.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>AudioIntercom.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>HCAlarm.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>HCCoreDevCfg.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>HCDisplay.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>HCGeneralCfgMgr.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>HCIndustry.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>HCPlayBack.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>HCPreview.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>HCVoiceTalk.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>ISX_DEFAULTCOMPONENT4</td></row>
		<row><td>HCNETSDKCOM</td><td>OpenAL32.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>StreamTransClient.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>SystemTransform.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>libiconv2.dll</td></row>
		<row><td>HCNETSDKCOM</td><td>msvcr90.dll</td></row>
		<row><td>HCNETSDKCOM1</td><td>AnalyzeData.dll4</td></row>
		<row><td>HCNETSDKCOM1</td><td>AudioIntercom.dll3</td></row>
		<row><td>HCNETSDKCOM1</td><td>DsSdk.dll</td></row>
		<row><td>HCNETSDKCOM1</td><td>HCAlarm.dll1</td></row>
		<row><td>HCNETSDKCOM1</td><td>HCCoreDevCfg.dll1</td></row>
		<row><td>HCNETSDKCOM1</td><td>HCDisplay.dll1</td></row>
		<row><td>HCNETSDKCOM1</td><td>HCGeneralCfgMgr.dll1</td></row>
		<row><td>HCNETSDKCOM1</td><td>HCIndustry.dll1</td></row>
		<row><td>HCNETSDKCOM1</td><td>HCPlayBack.dll1</td></row>
		<row><td>HCNETSDKCOM1</td><td>HCPreview.dll1</td></row>
		<row><td>HCNETSDKCOM1</td><td>HCVoiceTalk.dll1</td></row>
		<row><td>HCNETSDKCOM1</td><td>ISX_DEFAULTCOMPONENT12</td></row>
		<row><td>HCNETSDKCOM1</td><td>OpenAL32.dll2</td></row>
		<row><td>HCNETSDKCOM1</td><td>StreamTransClient.dll2</td></row>
		<row><td>HCNETSDKCOM1</td><td>SystemTransform.dll2</td></row>
		<row><td>HCNETSDKCOM1</td><td>libeay32.dll2</td></row>
		<row><td>HCNETSDKCOM1</td><td>libiconv2.dll1</td></row>
		<row><td>HCNETSDKCOM1</td><td>msvcr90.dll1</td></row>
		<row><td>HCNETSDKCOM1</td><td>ssleay32.dll2</td></row>
		<row><td>HIKPF</td><td>AnalyzeData.dll1</td></row>
		<row><td>HIKPF</td><td>AudioIntercom.dll1</td></row>
		<row><td>HIKPF</td><td>CRashAPI.dll</td></row>
		<row><td>HIKPF</td><td>CascadeClient.dll</td></row>
		<row><td>HIKPF</td><td>Cloud_API.dll</td></row>
		<row><td>HIKPF</td><td>HikStream.dll</td></row>
		<row><td>HIKPF</td><td>IASStream.dll</td></row>
		<row><td>HIKPF</td><td>ISMSSDK.dll</td></row>
		<row><td>HIKPF</td><td>ISX_DEFAULTCOMPONENT5</td></row>
		<row><td>HIKPF</td><td>KmsStream.dll</td></row>
		<row><td>HIKPF</td><td>MFCDemo.exe</td></row>
		<row><td>HIKPF</td><td>MQPlugins.dll</td></row>
		<row><td>HIKPF</td><td>OpenAL32.dll3</td></row>
		<row><td>HIKPF</td><td>PagStream.dll</td></row>
		<row><td>HIKPF</td><td>RTSPClientSync.dll1</td></row>
		<row><td>HIKPF</td><td>StreamClient.dll1</td></row>
		<row><td>HIKPF</td><td>StreamLayer.dll</td></row>
		<row><td>HIKPF</td><td>SystemTransform.dll5</td></row>
		<row><td>HIKPF</td><td>TransportEngine.dll1</td></row>
		<row><td>HIKPF</td><td>VAGOper.dll</td></row>
		<row><td>HIKPF</td><td>VSSSubSys.dll</td></row>
		<row><td>HIKPF</td><td>VSS_Talk.dll</td></row>
		<row><td>HIKPF</td><td>VtduStream.dll</td></row>
		<row><td>HIKPF</td><td>WPFComponent.dll1</td></row>
		<row><td>HIKPF</td><td>activemq_cpp.dll</td></row>
		<row><td>HIKPF</td><td>dbghelp.dll</td></row>
		<row><td>HIKPF</td><td>hlog.dll2</td></row>
		<row><td>HIKPF</td><td>hpp.dll1</td></row>
		<row><td>HIKPF</td><td>hpr.dll3</td></row>
		<row><td>HIKPF</td><td>hsoap.dll</td></row>
		<row><td>HIKPF</td><td>libapr_1.dll</td></row>
		<row><td>HIKPF</td><td>libapriconv_1.dll</td></row>
		<row><td>HIKPF</td><td>libaprutil_1.dll</td></row>
		<row><td>HIKPF</td><td>libcurl.dll2</td></row>
		<row><td>HIKPF</td><td>libeay32.dll3</td></row>
		<row><td>HIKPF</td><td>libhak.dll</td></row>
		<row><td>HIKPF</td><td>log4cplus_dll.dll</td></row>
		<row><td>HIKPF</td><td>log4cxx.dll</td></row>
		<row><td>HIKPF</td><td>log4net.dll1</td></row>
		<row><td>HIKPF</td><td>media_client.dll</td></row>
		<row><td>HIKPF</td><td>mfc90.dll</td></row>
		<row><td>HIKPF</td><td>mfc90u.dll</td></row>
		<row><td>HIKPF</td><td>mfcm90.dll</td></row>
		<row><td>HIKPF</td><td>mfcm90u.dll</td></row>
		<row><td>HIKPF</td><td>msvcm90.dll</td></row>
		<row><td>HIKPF</td><td>msvcp100.dll</td></row>
		<row><td>HIKPF</td><td>msvcp71.dll</td></row>
		<row><td>HIKPF</td><td>msvcp90.dll</td></row>
		<row><td>HIKPF</td><td>msvcr100.dll</td></row>
		<row><td>HIKPF</td><td>msvcr71.dll</td></row>
		<row><td>HIKPF</td><td>msvcr90.dll2</td></row>
		<row><td>HIKPF</td><td>ssleay32.dll3</td></row>
		<row><td>HIKPF</td><td>store_sys_client.dll</td></row>
		<row><td>HIKPF</td><td>stream_client.dll</td></row>
		<row><td>HIKPF</td><td>threadsdk.dll</td></row>
		<row><td>HIKPF</td><td>trace.dll</td></row>
		<row><td>HIKPF</td><td>vag_client.dll</td></row>
		<row><td>HIKPF</td><td>vag_playctrl.dll</td></row>
		<row><td>HIKPF</td><td>vrbClientSDK.dll1</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>AIVM.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>AnalyzeData.dll3</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>AudioRender.dll2</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>D3DX9_43.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>DycHikSingleThreadDecode.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>HCCore.dll1</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>HCNetSDK.dll1</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>HikDev.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>HikDevSearch.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>ISX_DEFAULTCOMPONENT11</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>MP3Decoder.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>MP_Render.dll1</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>MP_VIE.dll1</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>PdCssVodClient.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>PlayCtrl.dll2</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>QtCore4.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>QtGui4.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>QtXml4.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>RTSPClientSync.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>Sadp.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>StreamClient.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>StreamTransClient.dll3</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>SuperRender.dll2</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>SystemTransform.dll3</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>TransportEngine.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>VcaCfg.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>VcaDraw.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>VcaPlay.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>calib.dll1</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>gdiplus.dll1</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>hik_plugin.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>hlog.dll1</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>hpp.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>hpr.dll2</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>iconv.dll1</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>libxml2.dll1</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>vrbClientSDK.dll</td></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>zlib1.dll1</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>AudioRender.dll3</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>D3DCompiler_43.dll</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>D3DX9_43.dll1</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>DrawLib.dll</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>EagleEyeRender.dll1</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>HWDecode.dll1</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>ISX_DEFAULTCOMPONENT17</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>MP_Render.dll2</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>MP_VIE.dll2</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>OpenAL32.dll4</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>PlayCtrl.dll3</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>StreamTransClient.dll4</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>SuperRender.dll3</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>SystemTransform.dll4</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>YUVProcess.dll1</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>hik_play_plugin.dll</td></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>hpr.dll4</td></row>
		<row><td>INFNET</td><td>AmrDll.dll</td></row>
		<row><td>INFNET</td><td>CMSCommDll.dll</td></row>
		<row><td>INFNET</td><td>DllDeinterlace.dll1</td></row>
		<row><td>INFNET</td><td>EncryptH264Stream.dll</td></row>
		<row><td>INFNET</td><td>HCNetSDK.dll2</td></row>
		<row><td>INFNET</td><td>INFAudioDecoder.dll</td></row>
		<row><td>INFNET</td><td>INFH264.dll</td></row>
		<row><td>INFNET</td><td>INFNetSDK.dll</td></row>
		<row><td>INFNET</td><td>INFPlayCtrl.ocx</td></row>
		<row><td>INFNET</td><td>INFPlaySDK.dll</td></row>
		<row><td>INFNET</td><td>INFSVAC.dll</td></row>
		<row><td>INFNET</td><td>INFVideoDecoder.dll</td></row>
		<row><td>INFNET</td><td>ISX_DEFAULTCOMPONENT20</td></row>
		<row><td>INFNET</td><td>MJ2KSourceFilter.ax</td></row>
		<row><td>INFNET</td><td>MogranDecoderDll.dll</td></row>
		<row><td>INFNET</td><td>MorganExRenderFilter.ax</td></row>
		<row><td>INFNET</td><td>MorganRenderFilter.ax</td></row>
		<row><td>INFNET</td><td>MtdOverlayViewer.dll</td></row>
		<row><td>INFNET</td><td>NVRDll.dll</td></row>
		<row><td>INFNET</td><td>NullSource.ax</td></row>
		<row><td>INFNET</td><td>PlayCtrl.dll4</td></row>
		<row><td>INFNET</td><td>StreamAnalyzer.dll</td></row>
		<row><td>INFNET</td><td>V2216DLLDemo.exe</td></row>
		<row><td>INFNET</td><td>V2216Render.dll</td></row>
		<row><td>INFNET</td><td>avcodec.dll</td></row>
		<row><td>INFNET</td><td>avcodec_57.dll</td></row>
		<row><td>INFNET</td><td>avformat.dll</td></row>
		<row><td>INFNET</td><td>avformat_57.dll</td></row>
		<row><td>INFNET</td><td>avutil.dll</td></row>
		<row><td>INFNET</td><td>avutil_55.dll</td></row>
		<row><td>INFNET</td><td>client.dll</td></row>
		<row><td>INFNET</td><td>cv200.dll</td></row>
		<row><td>INFNET</td><td>cxcore200.dll</td></row>
		<row><td>INFNET</td><td>dhdvr.dll1</td></row>
		<row><td>INFNET</td><td>dhnetsdk.dll2</td></row>
		<row><td>INFNET</td><td>dhplay.dll2</td></row>
		<row><td>INFNET</td><td>ff_kernelDeint.dll</td></row>
		<row><td>INFNET</td><td>hi_h264dec.dll</td></row>
		<row><td>INFNET</td><td>libfaac.dll</td></row>
		<row><td>INFNET</td><td>libmp4v2.dll</td></row>
		<row><td>INFNET</td><td>libmplayer.dll</td></row>
		<row><td>INFNET</td><td>mfc71.dll</td></row>
		<row><td>INFNET</td><td>mpglib.dll</td></row>
		<row><td>INFNET</td><td>msvcp71.dll1</td></row>
		<row><td>INFNET</td><td>msvcr71.dll1</td></row>
		<row><td>INFNET</td><td>msvcrt.dll</td></row>
		<row><td>INFNET</td><td>svacdec.dll</td></row>
		<row><td>INFNET</td><td>swresample_2.dll</td></row>
		<row><td>INFNET</td><td>swscale_4.dll</td></row>
		<row><td>INFNET</td><td>xvidcore.dll</td></row>
		<row><td>INSTALLDIR</td><td>AIVM.dll</td></row>
		<row><td>INSTALLDIR</td><td>AmrDll.dll</td></row>
		<row><td>INSTALLDIR</td><td>AnalyzeData.dll</td></row>
		<row><td>INSTALLDIR</td><td>AnalyzeData.dll1</td></row>
		<row><td>INSTALLDIR</td><td>AnalyzeData.dll2</td></row>
		<row><td>INSTALLDIR</td><td>AnalyzeData.dll3</td></row>
		<row><td>INSTALLDIR</td><td>AnalyzeData.dll4</td></row>
		<row><td>INSTALLDIR</td><td>AudioIntercom.dll</td></row>
		<row><td>INSTALLDIR</td><td>AudioIntercom.dll1</td></row>
		<row><td>INSTALLDIR</td><td>AudioIntercom.dll2</td></row>
		<row><td>INSTALLDIR</td><td>AudioIntercom.dll3</td></row>
		<row><td>INSTALLDIR</td><td>AudioRender.dll</td></row>
		<row><td>INSTALLDIR</td><td>AudioRender.dll1</td></row>
		<row><td>INSTALLDIR</td><td>AudioRender.dll2</td></row>
		<row><td>INSTALLDIR</td><td>AudioRender.dll3</td></row>
		<row><td>INSTALLDIR</td><td>CMSCommDll.dll</td></row>
		<row><td>INSTALLDIR</td><td>CRashAPI.dll</td></row>
		<row><td>INSTALLDIR</td><td>CascadeClient.dll</td></row>
		<row><td>INSTALLDIR</td><td>Cloud_API.dll</td></row>
		<row><td>INSTALLDIR</td><td>Component</td></row>
		<row><td>INSTALLDIR</td><td>ConfigModule.dll</td></row>
		<row><td>INSTALLDIR</td><td>D3DCompiler_43.dll</td></row>
		<row><td>INSTALLDIR</td><td>D3DX9_43.dll</td></row>
		<row><td>INSTALLDIR</td><td>D3DX9_43.dll1</td></row>
		<row><td>INSTALLDIR</td><td>DVRSDK.dll</td></row>
		<row><td>INSTALLDIR</td><td>DVR_NET_SDK.dll</td></row>
		<row><td>INSTALLDIR</td><td>DVR_NET_SDK.dll1</td></row>
		<row><td>INSTALLDIR</td><td>DecoderSDK.dll</td></row>
		<row><td>INSTALLDIR</td><td>DhDecode.dll</td></row>
		<row><td>INSTALLDIR</td><td>DisplayLayoutSDK.dll</td></row>
		<row><td>INSTALLDIR</td><td>DisplayLayoutSDK.dll1</td></row>
		<row><td>INSTALLDIR</td><td>DllDeinterlace.dll</td></row>
		<row><td>INSTALLDIR</td><td>DllDeinterlace.dll1</td></row>
		<row><td>INSTALLDIR</td><td>DllDeinterlace.dll2</td></row>
		<row><td>INSTALLDIR</td><td>DrawLib.dll</td></row>
		<row><td>INSTALLDIR</td><td>DsSdk.dll</td></row>
		<row><td>INSTALLDIR</td><td>DycHikSingleThreadDecode.dll</td></row>
		<row><td>INSTALLDIR</td><td>EagleEyeRender.dll</td></row>
		<row><td>INSTALLDIR</td><td>EagleEyeRender.dll1</td></row>
		<row><td>INSTALLDIR</td><td>EncryptH264Stream.dll</td></row>
		<row><td>INSTALLDIR</td><td>H264Play.dll</td></row>
		<row><td>INSTALLDIR</td><td>HCAlarm.dll</td></row>
		<row><td>INSTALLDIR</td><td>HCAlarm.dll1</td></row>
		<row><td>INSTALLDIR</td><td>HCCore.dll</td></row>
		<row><td>INSTALLDIR</td><td>HCCore.dll1</td></row>
		<row><td>INSTALLDIR</td><td>HCCoreDevCfg.dll</td></row>
		<row><td>INSTALLDIR</td><td>HCCoreDevCfg.dll1</td></row>
		<row><td>INSTALLDIR</td><td>HCDisplay.dll</td></row>
		<row><td>INSTALLDIR</td><td>HCDisplay.dll1</td></row>
		<row><td>INSTALLDIR</td><td>HCGeneralCfgMgr.dll</td></row>
		<row><td>INSTALLDIR</td><td>HCGeneralCfgMgr.dll1</td></row>
		<row><td>INSTALLDIR</td><td>HCIndustry.dll</td></row>
		<row><td>INSTALLDIR</td><td>HCIndustry.dll1</td></row>
		<row><td>INSTALLDIR</td><td>HCNetSDK.dll</td></row>
		<row><td>INSTALLDIR</td><td>HCNetSDK.dll1</td></row>
		<row><td>INSTALLDIR</td><td>HCNetSDK.dll2</td></row>
		<row><td>INSTALLDIR</td><td>HCPlayBack.dll</td></row>
		<row><td>INSTALLDIR</td><td>HCPlayBack.dll1</td></row>
		<row><td>INSTALLDIR</td><td>HCPreview.dll</td></row>
		<row><td>INSTALLDIR</td><td>HCPreview.dll1</td></row>
		<row><td>INSTALLDIR</td><td>HCVoiceTalk.dll</td></row>
		<row><td>INSTALLDIR</td><td>HCVoiceTalk.dll1</td></row>
		<row><td>INSTALLDIR</td><td>HWDec.dll</td></row>
		<row><td>INSTALLDIR</td><td>HWDecode.dll</td></row>
		<row><td>INSTALLDIR</td><td>HWDecode.dll1</td></row>
		<row><td>INSTALLDIR</td><td>HW_H265dec_Win32D.dll</td></row>
		<row><td>INSTALLDIR</td><td>HikDev.dll</td></row>
		<row><td>INSTALLDIR</td><td>HikDevSearch.dll</td></row>
		<row><td>INSTALLDIR</td><td>HikStream.dll</td></row>
		<row><td>INSTALLDIR</td><td>IASStream.dll</td></row>
		<row><td>INSTALLDIR</td><td>INFAudioDecoder.dll</td></row>
		<row><td>INSTALLDIR</td><td>INFH264.dll</td></row>
		<row><td>INSTALLDIR</td><td>INFNetSDK.dll</td></row>
		<row><td>INSTALLDIR</td><td>INFPlayCtrl.ocx</td></row>
		<row><td>INSTALLDIR</td><td>INFPlaySDK.dll</td></row>
		<row><td>INSTALLDIR</td><td>INFSVAC.dll</td></row>
		<row><td>INSTALLDIR</td><td>INFVideoDecoder.dll</td></row>
		<row><td>INSTALLDIR</td><td>ISMSSDK.dll</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT1</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT10</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT11</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT12</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT13</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT14</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT15</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT16</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT17</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT18</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT19</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT2</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT20</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT21</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT22</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT23</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT24</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT25</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT3</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT4</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT5</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT6</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT7</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT8</td></row>
		<row><td>INSTALLDIR</td><td>ISX_DEFAULTCOMPONENT9</td></row>
		<row><td>INSTALLDIR</td><td>Infra.dll</td></row>
		<row><td>INSTALLDIR</td><td>Infra.dll1</td></row>
		<row><td>INSTALLDIR</td><td>IvsDrawer.dll</td></row>
		<row><td>INSTALLDIR</td><td>IvsDrawer.dll1</td></row>
		<row><td>INSTALLDIR</td><td>KmsStream.dll</td></row>
		<row><td>INSTALLDIR</td><td>MCL_FPTZ.dll</td></row>
		<row><td>INSTALLDIR</td><td>MFCDemo.exe</td></row>
		<row><td>INSTALLDIR</td><td>MJ2KSourceFilter.ax</td></row>
		<row><td>INSTALLDIR</td><td>MP3Decoder.dll</td></row>
		<row><td>INSTALLDIR</td><td>MP_Render.dll</td></row>
		<row><td>INSTALLDIR</td><td>MP_Render.dll1</td></row>
		<row><td>INSTALLDIR</td><td>MP_Render.dll2</td></row>
		<row><td>INSTALLDIR</td><td>MP_VIE.dll</td></row>
		<row><td>INSTALLDIR</td><td>MP_VIE.dll1</td></row>
		<row><td>INSTALLDIR</td><td>MP_VIE.dll2</td></row>
		<row><td>INSTALLDIR</td><td>MQPlugins.dll</td></row>
		<row><td>INSTALLDIR</td><td>MidPage.dll</td></row>
		<row><td>INSTALLDIR</td><td>MogranDecoderDll.dll</td></row>
		<row><td>INSTALLDIR</td><td>MorganExRenderFilter.ax</td></row>
		<row><td>INSTALLDIR</td><td>MorganRenderFilter.ax</td></row>
		<row><td>INSTALLDIR</td><td>MtdOverlayViewer.dll</td></row>
		<row><td>INSTALLDIR</td><td>NVRDll.dll</td></row>
		<row><td>INSTALLDIR</td><td>NetFramework.dll</td></row>
		<row><td>INSTALLDIR</td><td>NetFramework.dll1</td></row>
		<row><td>INSTALLDIR</td><td>NetSdk.dll</td></row>
		<row><td>INSTALLDIR</td><td>NetStream.dll</td></row>
		<row><td>INSTALLDIR</td><td>Newtonsoft.Json.dll</td></row>
		<row><td>INSTALLDIR</td><td>NullSource.ax</td></row>
		<row><td>INSTALLDIR</td><td>OpenAL32.dll</td></row>
		<row><td>INSTALLDIR</td><td>OpenAL32.dll1</td></row>
		<row><td>INSTALLDIR</td><td>OpenAL32.dll2</td></row>
		<row><td>INSTALLDIR</td><td>OpenAL32.dll3</td></row>
		<row><td>INSTALLDIR</td><td>OpenAL32.dll4</td></row>
		<row><td>INSTALLDIR</td><td>OpenAL32New.dll</td></row>
		<row><td>INSTALLDIR</td><td>OpenNetStream.dll</td></row>
		<row><td>INSTALLDIR</td><td>OpenSDK_Demo_Qt.exe</td></row>
		<row><td>INSTALLDIR</td><td>PagStream.dll</td></row>
		<row><td>INSTALLDIR</td><td>PdCssVodClient.dll</td></row>
		<row><td>INSTALLDIR</td><td>PlayCtrl.dll</td></row>
		<row><td>INSTALLDIR</td><td>PlayCtrl.dll1</td></row>
		<row><td>INSTALLDIR</td><td>PlayCtrl.dll2</td></row>
		<row><td>INSTALLDIR</td><td>PlayCtrl.dll3</td></row>
		<row><td>INSTALLDIR</td><td>PlayCtrl.dll4</td></row>
		<row><td>INSTALLDIR</td><td>Player.tlb</td></row>
		<row><td>INSTALLDIR</td><td>PushClient.dll</td></row>
		<row><td>INSTALLDIR</td><td>Qt5Core.dll</td></row>
		<row><td>INSTALLDIR</td><td>Qt5Gui.dll</td></row>
		<row><td>INSTALLDIR</td><td>Qt5Widgets.dll</td></row>
		<row><td>INSTALLDIR</td><td>QtCore4.dll</td></row>
		<row><td>INSTALLDIR</td><td>QtGui4.dll</td></row>
		<row><td>INSTALLDIR</td><td>QtXml4.dll</td></row>
		<row><td>INSTALLDIR</td><td>RTPRTCP.dll</td></row>
		<row><td>INSTALLDIR</td><td>RTSPClient.dll</td></row>
		<row><td>INSTALLDIR</td><td>RTSPClientSync.dll</td></row>
		<row><td>INSTALLDIR</td><td>RTSPClientSync.dll1</td></row>
		<row><td>INSTALLDIR</td><td>SDKLibrary.dll</td></row>
		<row><td>INSTALLDIR</td><td>Sadp.dll</td></row>
		<row><td>INSTALLDIR</td><td>Stream.dll</td></row>
		<row><td>INSTALLDIR</td><td>Stream.dll1</td></row>
		<row><td>INSTALLDIR</td><td>StreamAnalyzer.dll</td></row>
		<row><td>INSTALLDIR</td><td>StreamClient.dll</td></row>
		<row><td>INSTALLDIR</td><td>StreamClient.dll1</td></row>
		<row><td>INSTALLDIR</td><td>StreamClient_V30.dll</td></row>
		<row><td>INSTALLDIR</td><td>StreamLayer.dll</td></row>
		<row><td>INSTALLDIR</td><td>StreamReader.dll</td></row>
		<row><td>INSTALLDIR</td><td>StreamSvr.dll</td></row>
		<row><td>INSTALLDIR</td><td>StreamSvr.dll1</td></row>
		<row><td>INSTALLDIR</td><td>StreamTransClient.dll</td></row>
		<row><td>INSTALLDIR</td><td>StreamTransClient.dll1</td></row>
		<row><td>INSTALLDIR</td><td>StreamTransClient.dll2</td></row>
		<row><td>INSTALLDIR</td><td>StreamTransClient.dll3</td></row>
		<row><td>INSTALLDIR</td><td>StreamTransClient.dll4</td></row>
		<row><td>INSTALLDIR</td><td>StunClientLib.dll</td></row>
		<row><td>INSTALLDIR</td><td>SuperRender.dll</td></row>
		<row><td>INSTALLDIR</td><td>SuperRender.dll1</td></row>
		<row><td>INSTALLDIR</td><td>SuperRender.dll2</td></row>
		<row><td>INSTALLDIR</td><td>SuperRender.dll3</td></row>
		<row><td>INSTALLDIR</td><td>SystemTransform.dll</td></row>
		<row><td>INSTALLDIR</td><td>SystemTransform.dll1</td></row>
		<row><td>INSTALLDIR</td><td>SystemTransform.dll2</td></row>
		<row><td>INSTALLDIR</td><td>SystemTransform.dll3</td></row>
		<row><td>INSTALLDIR</td><td>SystemTransform.dll4</td></row>
		<row><td>INSTALLDIR</td><td>SystemTransform.dll5</td></row>
		<row><td>INSTALLDIR</td><td>TTSClient.dll</td></row>
		<row><td>INSTALLDIR</td><td>TransportEngine.dll</td></row>
		<row><td>INSTALLDIR</td><td>TransportEngine.dll1</td></row>
		<row><td>INSTALLDIR</td><td>V2216DLLDemo.exe</td></row>
		<row><td>INSTALLDIR</td><td>V2216Render.dll</td></row>
		<row><td>INSTALLDIR</td><td>VAGOper.dll</td></row>
		<row><td>INSTALLDIR</td><td>VSSSubSys.dll</td></row>
		<row><td>INSTALLDIR</td><td>VSS_Talk.dll</td></row>
		<row><td>INSTALLDIR</td><td>VTHStack.dll</td></row>
		<row><td>INSTALLDIR</td><td>VcaCfg.dll</td></row>
		<row><td>INSTALLDIR</td><td>VcaDraw.dll</td></row>
		<row><td>INSTALLDIR</td><td>VcaPlay.dll</td></row>
		<row><td>INSTALLDIR</td><td>VideoDecodeSDK.dll</td></row>
		<row><td>INSTALLDIR</td><td>VideoDecodeSDK.dll1</td></row>
		<row><td>INSTALLDIR</td><td>VideoDisplaySDK.dll</td></row>
		<row><td>INSTALLDIR</td><td>VideoDisplaySDK.dll1</td></row>
		<row><td>INSTALLDIR</td><td>VtduStream.dll</td></row>
		<row><td>INSTALLDIR</td><td>WPFComponent.dll</td></row>
		<row><td>INSTALLDIR</td><td>WPFComponent.dll1</td></row>
		<row><td>INSTALLDIR</td><td>YUVProcess.dll</td></row>
		<row><td>INSTALLDIR</td><td>YUVProcess.dll1</td></row>
		<row><td>INSTALLDIR</td><td>aacdec.dll</td></row>
		<row><td>INSTALLDIR</td><td>aacdec.dll1</td></row>
		<row><td>INSTALLDIR</td><td>activemq_cpp.dll</td></row>
		<row><td>INSTALLDIR</td><td>adpcmdec.dll</td></row>
		<row><td>INSTALLDIR</td><td>adpcmdec.dll1</td></row>
		<row><td>INSTALLDIR</td><td>amrdec.dll</td></row>
		<row><td>INSTALLDIR</td><td>amrdec.dll1</td></row>
		<row><td>INSTALLDIR</td><td>armenc32.dll</td></row>
		<row><td>INSTALLDIR</td><td>avcodec.dll</td></row>
		<row><td>INSTALLDIR</td><td>avcodec_57.dll</td></row>
		<row><td>INSTALLDIR</td><td>avformat.dll</td></row>
		<row><td>INSTALLDIR</td><td>avformat_57.dll</td></row>
		<row><td>INSTALLDIR</td><td>avnetsdk.dll</td></row>
		<row><td>INSTALLDIR</td><td>avnetsdk.dll1</td></row>
		<row><td>INSTALLDIR</td><td>avutil.dll</td></row>
		<row><td>INSTALLDIR</td><td>avutil_55.dll</td></row>
		<row><td>INSTALLDIR</td><td>bkpostproc.dll</td></row>
		<row><td>INSTALLDIR</td><td>calib.dll</td></row>
		<row><td>INSTALLDIR</td><td>calib.dll1</td></row>
		<row><td>INSTALLDIR</td><td>client.dll</td></row>
		<row><td>INSTALLDIR</td><td>cv200.dll</td></row>
		<row><td>INSTALLDIR</td><td>cxcore200.dll</td></row>
		<row><td>INSTALLDIR</td><td>dahua_plugin.dll</td></row>
		<row><td>INSTALLDIR</td><td>dbghelp.dll</td></row>
		<row><td>INSTALLDIR</td><td>dbghelp.dll1</td></row>
		<row><td>INSTALLDIR</td><td>dhconfigsdk.dll</td></row>
		<row><td>INSTALLDIR</td><td>dhconfigsdk.dll1</td></row>
		<row><td>INSTALLDIR</td><td>dhdvr.dll</td></row>
		<row><td>INSTALLDIR</td><td>dhdvr.dll1</td></row>
		<row><td>INSTALLDIR</td><td>dhlog.dll</td></row>
		<row><td>INSTALLDIR</td><td>dhlog.dll1</td></row>
		<row><td>INSTALLDIR</td><td>dhnetsdk.dll</td></row>
		<row><td>INSTALLDIR</td><td>dhnetsdk.dll1</td></row>
		<row><td>INSTALLDIR</td><td>dhnetsdk.dll2</td></row>
		<row><td>INSTALLDIR</td><td>dhplay.dll</td></row>
		<row><td>INSTALLDIR</td><td>dhplay.dll1</td></row>
		<row><td>INSTALLDIR</td><td>dhplay.dll2</td></row>
		<row><td>INSTALLDIR</td><td>dllh264.dll</td></row>
		<row><td>INSTALLDIR</td><td>dllh264.dll1</td></row>
		<row><td>INSTALLDIR</td><td>dllmpeg4.dll</td></row>
		<row><td>INSTALLDIR</td><td>ezviz_plugin.dll</td></row>
		<row><td>INSTALLDIR</td><td>ff_kernelDeint.dll</td></row>
		<row><td>INSTALLDIR</td><td>fisheye.dll</td></row>
		<row><td>INSTALLDIR</td><td>g7221dec.dll</td></row>
		<row><td>INSTALLDIR</td><td>g7221dec.dll1</td></row>
		<row><td>INSTALLDIR</td><td>gdiplus.dll</td></row>
		<row><td>INSTALLDIR</td><td>gdiplus.dll1</td></row>
		<row><td>INSTALLDIR</td><td>h264dec.dll</td></row>
		<row><td>INSTALLDIR</td><td>h264dec.dll1</td></row>
		<row><td>INSTALLDIR</td><td>h26ldec.dll</td></row>
		<row><td>INSTALLDIR</td><td>hevcdec.dll</td></row>
		<row><td>INSTALLDIR</td><td>hevcdec.dll1</td></row>
		<row><td>INSTALLDIR</td><td>hi_h264dec.dll</td></row>
		<row><td>INSTALLDIR</td><td>hi_h264dec_v.dll</td></row>
		<row><td>INSTALLDIR</td><td>hik_play_plugin.dll</td></row>
		<row><td>INSTALLDIR</td><td>hik_plugin.dll</td></row>
		<row><td>INSTALLDIR</td><td>hlog.dll</td></row>
		<row><td>INSTALLDIR</td><td>hlog.dll1</td></row>
		<row><td>INSTALLDIR</td><td>hlog.dll2</td></row>
		<row><td>INSTALLDIR</td><td>hpp.dll</td></row>
		<row><td>INSTALLDIR</td><td>hpp.dll1</td></row>
		<row><td>INSTALLDIR</td><td>hpr.dll</td></row>
		<row><td>INSTALLDIR</td><td>hpr.dll1</td></row>
		<row><td>INSTALLDIR</td><td>hpr.dll2</td></row>
		<row><td>INSTALLDIR</td><td>hpr.dll3</td></row>
		<row><td>INSTALLDIR</td><td>hpr.dll4</td></row>
		<row><td>INSTALLDIR</td><td>hsoap.dll</td></row>
		<row><td>INSTALLDIR</td><td>iconv.dll</td></row>
		<row><td>INSTALLDIR</td><td>iconv.dll1</td></row>
		<row><td>INSTALLDIR</td><td>icudt52.dll</td></row>
		<row><td>INSTALLDIR</td><td>icuin52.dll</td></row>
		<row><td>INSTALLDIR</td><td>icuuc52.dll</td></row>
		<row><td>INSTALLDIR</td><td>json.dll</td></row>
		<row><td>INSTALLDIR</td><td>json.dll1</td></row>
		<row><td>INSTALLDIR</td><td>libCASClient.dll</td></row>
		<row><td>INSTALLDIR</td><td>libGetHDSign.dll</td></row>
		<row><td>INSTALLDIR</td><td>libPPVClient2.dll</td></row>
		<row><td>INSTALLDIR</td><td>libapr_1.dll</td></row>
		<row><td>INSTALLDIR</td><td>libapriconv_1.dll</td></row>
		<row><td>INSTALLDIR</td><td>libaprutil_1.dll</td></row>
		<row><td>INSTALLDIR</td><td>libavcodec.dll</td></row>
		<row><td>INSTALLDIR</td><td>libcrypto_1_1.dll</td></row>
		<row><td>INSTALLDIR</td><td>libcurl.dll</td></row>
		<row><td>INSTALLDIR</td><td>libcurl.dll1</td></row>
		<row><td>INSTALLDIR</td><td>libcurl.dll2</td></row>
		<row><td>INSTALLDIR</td><td>libeay32.dll</td></row>
		<row><td>INSTALLDIR</td><td>libeay32.dll1</td></row>
		<row><td>INSTALLDIR</td><td>libeay32.dll2</td></row>
		<row><td>INSTALLDIR</td><td>libeay32.dll3</td></row>
		<row><td>INSTALLDIR</td><td>libfaac.dll</td></row>
		<row><td>INSTALLDIR</td><td>libgcc_s_dw2_1.dll</td></row>
		<row><td>INSTALLDIR</td><td>libhak.dll</td></row>
		<row><td>INSTALLDIR</td><td>libiconv2.dll</td></row>
		<row><td>INSTALLDIR</td><td>libiconv2.dll1</td></row>
		<row><td>INSTALLDIR</td><td>libmp4v2.dll</td></row>
		<row><td>INSTALLDIR</td><td>libmplayer.dll</td></row>
		<row><td>INSTALLDIR</td><td>libssl_1_1.dll</td></row>
		<row><td>INSTALLDIR</td><td>libstdc___6.dll</td></row>
		<row><td>INSTALLDIR</td><td>libwinpthread_1.dll</td></row>
		<row><td>INSTALLDIR</td><td>libxml2.dll</td></row>
		<row><td>INSTALLDIR</td><td>libxml2.dll1</td></row>
		<row><td>INSTALLDIR</td><td>log4cplus_dll.dll</td></row>
		<row><td>INSTALLDIR</td><td>log4cxx.dll</td></row>
		<row><td>INSTALLDIR</td><td>log4net.dll</td></row>
		<row><td>INSTALLDIR</td><td>log4net.dll1</td></row>
		<row><td>INSTALLDIR</td><td>media_client.dll</td></row>
		<row><td>INSTALLDIR</td><td>mfc71.dll</td></row>
		<row><td>INSTALLDIR</td><td>mfc90.dll</td></row>
		<row><td>INSTALLDIR</td><td>mfc90u.dll</td></row>
		<row><td>INSTALLDIR</td><td>mfcm90.dll</td></row>
		<row><td>INSTALLDIR</td><td>mfcm90u.dll</td></row>
		<row><td>INSTALLDIR</td><td>mjpegdec.dll</td></row>
		<row><td>INSTALLDIR</td><td>mjpegdec.dll1</td></row>
		<row><td>INSTALLDIR</td><td>mp2dec.dll</td></row>
		<row><td>INSTALLDIR</td><td>mp2dec.dll1</td></row>
		<row><td>INSTALLDIR</td><td>mp3dec.dll</td></row>
		<row><td>INSTALLDIR</td><td>mp3dec.dll1</td></row>
		<row><td>INSTALLDIR</td><td>mpeg4dec.dll</td></row>
		<row><td>INSTALLDIR</td><td>mpeg4dec.dll1</td></row>
		<row><td>INSTALLDIR</td><td>mpeg4enc.dll</td></row>
		<row><td>INSTALLDIR</td><td>mpeg4enc.dll1</td></row>
		<row><td>INSTALLDIR</td><td>mpglib.dll</td></row>
		<row><td>INSTALLDIR</td><td>msvcm90.dll</td></row>
		<row><td>INSTALLDIR</td><td>msvcp100.dll</td></row>
		<row><td>INSTALLDIR</td><td>msvcp71.dll</td></row>
		<row><td>INSTALLDIR</td><td>msvcp71.dll1</td></row>
		<row><td>INSTALLDIR</td><td>msvcp90.dll</td></row>
		<row><td>INSTALLDIR</td><td>msvcp90.dll1</td></row>
		<row><td>INSTALLDIR</td><td>msvcr100.dll</td></row>
		<row><td>INSTALLDIR</td><td>msvcr120.dll</td></row>
		<row><td>INSTALLDIR</td><td>msvcr71.dll</td></row>
		<row><td>INSTALLDIR</td><td>msvcr71.dll1</td></row>
		<row><td>INSTALLDIR</td><td>msvcr90.dll</td></row>
		<row><td>INSTALLDIR</td><td>msvcr90.dll1</td></row>
		<row><td>INSTALLDIR</td><td>msvcr90.dll2</td></row>
		<row><td>INSTALLDIR</td><td>msvcr90.dll3</td></row>
		<row><td>INSTALLDIR</td><td>msvcrt.dll</td></row>
		<row><td>INSTALLDIR</td><td>opensslwrap.dll</td></row>
		<row><td>INSTALLDIR</td><td>paho_mqtt3c.dll</td></row>
		<row><td>INSTALLDIR</td><td>postproc.dll</td></row>
		<row><td>INSTALLDIR</td><td>postproc.dll1</td></row>
		<row><td>INSTALLDIR</td><td>pthreadVC2.dll</td></row>
		<row><td>INSTALLDIR</td><td>qminimal.dll</td></row>
		<row><td>INSTALLDIR</td><td>qoffscreen.dll</td></row>
		<row><td>INSTALLDIR</td><td>qwindows.dll</td></row>
		<row><td>INSTALLDIR</td><td>ssleay32.dll</td></row>
		<row><td>INSTALLDIR</td><td>ssleay32.dll1</td></row>
		<row><td>INSTALLDIR</td><td>ssleay32.dll2</td></row>
		<row><td>INSTALLDIR</td><td>ssleay32.dll3</td></row>
		<row><td>INSTALLDIR</td><td>store_sys_client.dll</td></row>
		<row><td>INSTALLDIR</td><td>stream_client.dll</td></row>
		<row><td>INSTALLDIR</td><td>streamclient_lib.dll</td></row>
		<row><td>INSTALLDIR</td><td>svac_dec.dll</td></row>
		<row><td>INSTALLDIR</td><td>svac_dec.dll1</td></row>
		<row><td>INSTALLDIR</td><td>svacdec.dll</td></row>
		<row><td>INSTALLDIR</td><td>swresample_2.dll</td></row>
		<row><td>INSTALLDIR</td><td>swscale_4.dll</td></row>
		<row><td>INSTALLDIR</td><td>threadsdk.dll</td></row>
		<row><td>INSTALLDIR</td><td>tmControlClient.dll</td></row>
		<row><td>INSTALLDIR</td><td>trace.dll</td></row>
		<row><td>INSTALLDIR</td><td>udt.dll</td></row>
		<row><td>INSTALLDIR</td><td>vag_client.dll</td></row>
		<row><td>INSTALLDIR</td><td>vag_playctrl.dll</td></row>
		<row><td>INSTALLDIR</td><td>vrbClientSDK.dll</td></row>
		<row><td>INSTALLDIR</td><td>vrbClientSDK.dll1</td></row>
		<row><td>INSTALLDIR</td><td>xvidcore.dll</td></row>
		<row><td>INSTALLDIR</td><td>zlib1.dll</td></row>
		<row><td>INSTALLDIR</td><td>zlib1.dll1</td></row>
		<row><td>LANGUAGE</td><td>ISX_DEFAULTCOMPONENT13</td></row>
		<row><td>LOG</td><td>ISX_DEFAULTCOMPONENT14</td></row>
		<row><td>PLATFORMS</td><td>ISX_DEFAULTCOMPONENT10</td></row>
		<row><td>PLATFORMS</td><td>qminimal.dll</td></row>
		<row><td>PLATFORMS</td><td>qoffscreen.dll</td></row>
		<row><td>PLATFORMS</td><td>qwindows.dll</td></row>
		<row><td>PLAY_PLUGINS</td><td>ISX_DEFAULTCOMPONENT16</td></row>
		<row><td>PLUGINS</td><td>ISX_DEFAULTCOMPONENT9</td></row>
		<row><td>SDK</td><td>ISX_DEFAULTCOMPONENT1</td></row>
		<row><td>SDK_LOG</td><td>ISX_DEFAULTCOMPONENT18</td></row>
		<row><td>SHCF</td><td>DVR_NET_SDK.dll</td></row>
		<row><td>SHCF</td><td>DisplayLayoutSDK.dll</td></row>
		<row><td>SHCF</td><td>ISX_DEFAULTCOMPONENT21</td></row>
		<row><td>SHCF</td><td>VideoDecodeSDK.dll</td></row>
		<row><td>SHCF</td><td>VideoDisplaySDK.dll</td></row>
		<row><td>SHCF</td><td>dbghelp.dll1</td></row>
		<row><td>STREAMCLIENTLOG</td><td>ISX_DEFAULTCOMPONENT19</td></row>
		<row><td>VSSCLIENT</td><td>ISX_DEFAULTCOMPONENT15</td></row>
		<row><td>XM</td><td>ConfigModule.dll</td></row>
		<row><td>XM</td><td>DecoderSDK.dll</td></row>
		<row><td>XM</td><td>DllDeinterlace.dll2</td></row>
		<row><td>XM</td><td>H264Play.dll</td></row>
		<row><td>XM</td><td>HW_H265dec_Win32D.dll</td></row>
		<row><td>XM</td><td>ISX_DEFAULTCOMPONENT22</td></row>
		<row><td>XM</td><td>NetSdk.dll</td></row>
		<row><td>XM</td><td>StreamReader.dll</td></row>
		<row><td>XM</td><td>dllh264.dll1</td></row>
		<row><td>XM</td><td>hi_h264dec_v.dll</td></row>
		<row><td>XSJNET</td><td>DVR_NET_SDK.dll1</td></row>
		<row><td>XSJNET</td><td>DisplayLayoutSDK.dll1</td></row>
		<row><td>XSJNET</td><td>ISX_DEFAULTCOMPONENT23</td></row>
		<row><td>XSJNET</td><td>VideoDecodeSDK.dll1</td></row>
		<row><td>XSJNET</td><td>VideoDisplaySDK.dll1</td></row>
		<row><td>ZYRD</td><td>ISX_DEFAULTCOMPONENT24</td></row>
		<row><td>ZYRD</td><td>bkpostproc.dll</td></row>
		<row><td>ZYRD</td><td>libavcodec.dll</td></row>
		<row><td>ZYRD</td><td>msvcp90.dll1</td></row>
		<row><td>ZYRD</td><td>msvcr90.dll3</td></row>
		<row><td>ZYRD</td><td>tmControlClient.dll</td></row>
	</table>

	<table name="CustomAction">
		<col key="yes" def="s72">Action</col>
		<col def="i2">Type</col>
		<col def="S64">Source</col>
		<col def="S0">Target</col>
		<col def="I4">ExtendedType</col>
		<col def="S255">ISComments</col>
		<row><td>ISPreventDowngrade</td><td>19</td><td/><td>[IS_PREVENT_DOWNGRADE_EXIT]</td><td/><td>Exits install when a newer version of this product is found</td></row>
		<row><td>ISPrint</td><td>1</td><td>SetAllUsers.dll</td><td>PrintScrollableText</td><td/><td>Prints the contents of a ScrollableText control on a dialog.</td></row>
		<row><td>ISRunSetupTypeAddLocalEvent</td><td>1</td><td>ISExpHlp.dll</td><td>RunSetupTypeAddLocalEvent</td><td/><td>Run the AddLocal events associated with the Next button on the Setup Type dialog.</td></row>
		<row><td>ISSelfRegisterCosting</td><td>1</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterCosting</td><td/><td/></row>
		<row><td>ISSelfRegisterFiles</td><td>3073</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterFiles</td><td/><td/></row>
		<row><td>ISSelfRegisterFinalize</td><td>1</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterFinalize</td><td/><td/></row>
		<row><td>ISUnSelfRegisterFiles</td><td>3073</td><td>ISSELFREG.DLL</td><td>ISUnSelfRegisterFiles</td><td/><td/></row>
		<row><td>SetARPINSTALLLOCATION</td><td>51</td><td>ARPINSTALLLOCATION</td><td>[INSTALLDIR]</td><td/><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>51</td><td>ALLUSERSPROFILE</td><td>[%SystemRoot]\Profiles\All Users</td><td/><td/></row>
		<row><td>ShowMsiLog</td><td>226</td><td>SystemFolder</td><td>[SystemFolder]notepad.exe "[MsiLogFileLocation]"</td><td/><td>Shows Property-driven MSI Log</td></row>
		<row><td>setAllUsersProfile2K</td><td>51</td><td>ALLUSERSPROFILE</td><td>[%ALLUSERSPROFILE]</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>51</td><td>USERPROFILE</td><td>[%USERPROFILE]</td><td/><td/></row>
	</table>

	<table name="Dialog">
		<col key="yes" def="s72">Dialog</col>
		<col def="i2">HCentering</col>
		<col def="i2">VCentering</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="L128">Title</col>
		<col def="s50">Control_First</col>
		<col def="S50">Control_Default</col>
		<col def="S50">Control_Cancel</col>
		<col def="S255">ISComments</col>
		<col def="S72">TextStyle_</col>
		<col def="I4">ISWindowStyle</col>
		<col def="I4">ISResourceId</col>
		<row><td>AdminChangeFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tail</td><td>OK</td><td>Cancel</td><td>Install Point Browse</td><td/><td>0</td><td/></row>
		<row><td>AdminNetworkLocation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>InstallNow</td><td>InstallNow</td><td>Cancel</td><td>Network Location</td><td/><td>0</td><td/></row>
		<row><td>AdminWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Administration Welcome</td><td/><td>0</td><td/></row>
		<row><td>CancelSetup</td><td>50</td><td>50</td><td>260</td><td>85</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>No</td><td>No</td><td>No</td><td>Cancel</td><td/><td>0</td><td/></row>
		<row><td>CustomSetup</td><td>50</td><td>50</td><td>374</td><td>266</td><td>35</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tree</td><td>Next</td><td>Cancel</td><td>Custom Selection</td><td/><td>0</td><td/></row>
		<row><td>CustomSetupTips</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Custom Setup Tips</td><td/><td>0</td><td/></row>
		<row><td>CustomerInformation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>NameEdit</td><td>Next</td><td>Cancel</td><td>Identification</td><td/><td>0</td><td/></row>
		<row><td>DatabaseFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Database Folder</td><td/><td>0</td><td/></row>
		<row><td>DestinationFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Destination Folder</td><td/><td>0</td><td/></row>
		<row><td>DiskSpaceRequirements</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Feature Details</td><td/><td>0</td><td/></row>
		<row><td>FilesInUse</td><td>50</td><td>50</td><td>374</td><td>266</td><td>19</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Retry</td><td>Retry</td><td>Exit</td><td>Files in Use</td><td/><td>0</td><td/></row>
		<row><td>InstallChangeFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tail</td><td>OK</td><td>Cancel</td><td>Browse</td><td/><td>0</td><td/></row>
		<row><td>InstallWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Welcome Panel</td><td/><td>0</td><td/></row>
		<row><td>LicenseAgreement</td><td>50</td><td>50</td><td>374</td><td>266</td><td>2</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Agree</td><td>Next</td><td>Cancel</td><td>License Agreement</td><td/><td>0</td><td/></row>
		<row><td>MaintenanceType</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RadioGroup</td><td>Next</td><td>Cancel</td><td>Change, Reinstall, Remove</td><td/><td>0</td><td/></row>
		<row><td>MaintenanceWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Maintenance Welcome</td><td/><td>0</td><td/></row>
		<row><td>MsiRMFilesInUse</td><td>50</td><td>50</td><td>374</td><td>266</td><td>19</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>Cancel</td><td>RestartManager Files in Use</td><td/><td>0</td><td/></row>
		<row><td>OutOfSpace</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Resume</td><td>Resume</td><td>Resume</td><td>Out Of Disk Space</td><td/><td>0</td><td/></row>
		<row><td>PatchWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS__IsPatchDlg_PatchWizard##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Patch Panel</td><td/><td>0</td><td/></row>
		<row><td>ReadmeInformation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>7</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Readme Information</td><td/><td>0</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>50</td><td>50</td><td>374</td><td>266</td><td>35</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>InstallNow</td><td>InstallNow</td><td>Cancel</td><td>Ready to Install</td><td/><td>0</td><td/></row>
		<row><td>ReadyToRemove</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RemoveNow</td><td>RemoveNow</td><td>Cancel</td><td>Verify Remove</td><td/><td>0</td><td/></row>
		<row><td>SetupCompleteError</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Finish</td><td>Finish</td><td>Finish</td><td>Fatal Error</td><td/><td>0</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Exit</td><td/><td>0</td><td/></row>
		<row><td>SetupError</td><td>50</td><td>50</td><td>270</td><td>110</td><td>65543</td><td>##IDS__IsErrorDlg_InstallerInfo##</td><td>ErrorText</td><td>O</td><td>C</td><td>Error</td><td/><td>0</td><td/></row>
		<row><td>SetupInitialization</td><td>50</td><td>50</td><td>374</td><td>266</td><td>5</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Cancel</td><td>Cancel</td><td>Cancel</td><td>Setup Initialization</td><td/><td>0</td><td/></row>
		<row><td>SetupInterrupted</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Finish</td><td>Finish</td><td>Finish</td><td>User Exit</td><td/><td>0</td><td/></row>
		<row><td>SetupProgress</td><td>50</td><td>50</td><td>374</td><td>266</td><td>5</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Cancel</td><td>Cancel</td><td>Cancel</td><td>Progress</td><td/><td>0</td><td/></row>
		<row><td>SetupResume</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Resume</td><td/><td>0</td><td/></row>
		<row><td>SetupType</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RadioGroup</td><td>Next</td><td>Cancel</td><td>Setup Type</td><td/><td>0</td><td/></row>
		<row><td>SplashBitmap</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Welcome Bitmap</td><td/><td>0</td><td/></row>
	</table>

	<table name="Directory">
		<col key="yes" def="s72">Directory</col>
		<col def="S72">Directory_Parent</col>
		<col def="l255">DefaultDir</col>
		<col def="S255">ISDescription</col>
		<col def="I4">ISAttributes</col>
		<col def="S255">ISFolderName</col>
		<row><td>ALLUSERSPROFILE</td><td>TARGETDIR</td><td>.:ALLUSE~1|All Users</td><td/><td>0</td><td/></row>
		<row><td>AdminToolsFolder</td><td>TARGETDIR</td><td>.:Admint~1|AdminTools</td><td/><td>0</td><td/></row>
		<row><td>AppDataFolder</td><td>TARGETDIR</td><td>.:APPLIC~1|Application Data</td><td/><td>0</td><td/></row>
		<row><td>CommonAppDataFolder</td><td>TARGETDIR</td><td>.:Common~1|CommonAppData</td><td/><td>0</td><td/></row>
		<row><td>CommonFiles64Folder</td><td>TARGETDIR</td><td>.:Common64</td><td/><td>0</td><td/></row>
		<row><td>CommonFilesFolder</td><td>TARGETDIR</td><td>.:Common</td><td/><td>0</td><td/></row>
		<row><td>DAHUA_DEVICE_PLUGIN</td><td>DEVICE_PLUGINS</td><td>DAHUA_~1|dahua_device_plugin</td><td/><td>0</td><td/></row>
		<row><td>DATABASEDIR</td><td>ISYourDataBaseDir</td><td>.</td><td/><td>0</td><td/></row>
		<row><td>DEVICE_PLUGINS</td><td>HIKPF</td><td>DEVICE~1|device_plugins</td><td/><td>0</td><td/></row>
		<row><td>DHNET</td><td>SDK</td><td>DHNet</td><td/><td>0</td><td/></row>
		<row><td>DVRPLAYERCONTROL</td><td>FUNI</td><td>DVRPLA~1|DVRPlayerControl</td><td/><td>0</td><td/></row>
		<row><td>DesktopFolder</td><td>TARGETDIR</td><td>.:Desktop</td><td/><td>3</td><td/></row>
		<row><td>EZVIZ_DEVICE_PLUGIN</td><td>DEVICE_PLUGINS</td><td>EZVIZ_~1|ezviz_device_plugin</td><td/><td>0</td><td/></row>
		<row><td>FUNI</td><td>ProgramFilesFolder</td><td>Funi</td><td/><td>0</td><td/></row>
		<row><td>FavoritesFolder</td><td>TARGETDIR</td><td>.:FAVORI~1|Favorites</td><td/><td>0</td><td/></row>
		<row><td>FontsFolder</td><td>TARGETDIR</td><td>.:Fonts</td><td/><td>0</td><td/></row>
		<row><td>GlobalAssemblyCache</td><td>TARGETDIR</td><td>.:Global~1|GlobalAssemblyCache</td><td/><td>0</td><td/></row>
		<row><td>HCNET</td><td>SDK</td><td>HCNet</td><td/><td>0</td><td/></row>
		<row><td>HCNETSDKCOM</td><td>HCNET</td><td>HCNETS~1|HCNetSDKCom</td><td/><td>0</td><td/></row>
		<row><td>HCNETSDKCOM1</td><td>HIK_DEVICE_PLUGIN</td><td>HCNETS~1|HCNetSDKCom</td><td/><td>0</td><td/></row>
		<row><td>HIKPF</td><td>SDK</td><td>HIKPF</td><td/><td>0</td><td/></row>
		<row><td>HIK_DEVICE_PLUGIN</td><td>DEVICE_PLUGINS</td><td>HIK_DE~1|hik_device_plugin</td><td/><td>0</td><td/></row>
		<row><td>HIK_PLAY_PLUGIN</td><td>PLAY_PLUGINS</td><td>HIK_PL~1|hik_play_plugin</td><td/><td>0</td><td/></row>
		<row><td>INFNET</td><td>SDK</td><td>INFNet</td><td/><td>0</td><td/></row>
		<row><td>INSTALLDIR</td><td>DVRPLAYERCONTROL</td><td>.</td><td/><td>0</td><td/></row>
		<row><td>ISCommonFilesFolder</td><td>CommonFilesFolder</td><td>Instal~1|InstallShield</td><td/><td>0</td><td/></row>
		<row><td>ISMyCompanyDir</td><td>ProgramFilesFolder</td><td>MYCOMP~1|My Company Name</td><td/><td>0</td><td/></row>
		<row><td>ISMyProductDir</td><td>ISMyCompanyDir</td><td>MYPROD~1|My Product Name</td><td/><td>0</td><td/></row>
		<row><td>ISYourDataBaseDir</td><td>INSTALLDIR</td><td>Database</td><td/><td>0</td><td/></row>
		<row><td>LANGUAGE</td><td>HIKPF</td><td>Language</td><td/><td>0</td><td/></row>
		<row><td>LOG</td><td>HIKPF</td><td>log</td><td/><td>0</td><td/></row>
		<row><td>LocalAppDataFolder</td><td>TARGETDIR</td><td>.:LocalA~1|LocalAppData</td><td/><td>0</td><td/></row>
		<row><td>MICROSOFT</td><td>ProgramFilesFolder</td><td>MICROS~1|Microsoft</td><td/><td>0</td><td/></row>
		<row><td>MY_PRODUCT_NAME</td><td>MICROSOFT</td><td>MYPROD~1|My Product Name</td><td/><td>0</td><td/></row>
		<row><td>MyPicturesFolder</td><td>TARGETDIR</td><td>.:MyPict~1|MyPictures</td><td/><td>0</td><td/></row>
		<row><td>NetHoodFolder</td><td>TARGETDIR</td><td>.:NetHood</td><td/><td>0</td><td/></row>
		<row><td>PLATFORMS</td><td>PLUGINS</td><td>PLATFO~1|platforms</td><td/><td>0</td><td/></row>
		<row><td>PLAY_PLUGINS</td><td>HIKPF</td><td>PLAY_P~1|play_plugins</td><td/><td>0</td><td/></row>
		<row><td>PLUGINS</td><td>EZVIZ_DEVICE_PLUGIN</td><td>plugins</td><td/><td>0</td><td/></row>
		<row><td>PersonalFolder</td><td>TARGETDIR</td><td>.:Personal</td><td/><td>0</td><td/></row>
		<row><td>PrimaryVolumePath</td><td>TARGETDIR</td><td>.:Primar~1|PrimaryVolumePath</td><td/><td>0</td><td/></row>
		<row><td>PrintHoodFolder</td><td>TARGETDIR</td><td>.:PRINTH~1|PrintHood</td><td/><td>0</td><td/></row>
		<row><td>ProgramFiles64Folder</td><td>TARGETDIR</td><td>.:Prog64~1|Program Files 64</td><td/><td>0</td><td/></row>
		<row><td>ProgramFilesFolder</td><td>TARGETDIR</td><td>.:PROGRA~1|program files</td><td/><td>0</td><td/></row>
		<row><td>ProgramMenuFolder</td><td>TARGETDIR</td><td>.:Programs</td><td/><td>3</td><td/></row>
		<row><td>RecentFolder</td><td>TARGETDIR</td><td>.:Recent</td><td/><td>0</td><td/></row>
		<row><td>SDK</td><td>INSTALLDIR</td><td>sdk</td><td/><td>0</td><td/></row>
		<row><td>SDK_LOG</td><td>HIKPF</td><td>sdk_log</td><td/><td>0</td><td/></row>
		<row><td>SHCF</td><td>SDK</td><td>shcf</td><td/><td>0</td><td/></row>
		<row><td>STREAMCLIENTLOG</td><td>HIKPF</td><td>STREAM~1|StreamClientlog</td><td/><td>0</td><td/></row>
		<row><td>SendToFolder</td><td>TARGETDIR</td><td>.:SendTo</td><td/><td>3</td><td/></row>
		<row><td>StartMenuFolder</td><td>TARGETDIR</td><td>.:STARTM~1|Start Menu</td><td/><td>3</td><td/></row>
		<row><td>StartupFolder</td><td>TARGETDIR</td><td>.:StartUp</td><td/><td>3</td><td/></row>
		<row><td>System16Folder</td><td>TARGETDIR</td><td>.:System</td><td/><td>0</td><td/></row>
		<row><td>System64Folder</td><td>TARGETDIR</td><td>.:System64</td><td/><td>0</td><td/></row>
		<row><td>SystemFolder</td><td>TARGETDIR</td><td>.:System32</td><td/><td>0</td><td/></row>
		<row><td>TARGETDIR</td><td/><td>SourceDir</td><td/><td>0</td><td/></row>
		<row><td>TempFolder</td><td>TARGETDIR</td><td>.:Temp</td><td/><td>0</td><td/></row>
		<row><td>TemplateFolder</td><td>TARGETDIR</td><td>.:ShellNew</td><td/><td>0</td><td/></row>
		<row><td>USERPROFILE</td><td>TARGETDIR</td><td>.:USERPR~1|UserProfile</td><td/><td>0</td><td/></row>
		<row><td>VSSCLIENT</td><td>LOG</td><td>VSSCLI~1|VSSClient</td><td/><td>0</td><td/></row>
		<row><td>WindowsFolder</td><td>TARGETDIR</td><td>.:Windows</td><td/><td>0</td><td/></row>
		<row><td>WindowsVolume</td><td>TARGETDIR</td><td>.:WinRoot</td><td/><td>0</td><td/></row>
		<row><td>XM</td><td>SDK</td><td>xm</td><td/><td>0</td><td/></row>
		<row><td>XSJNET</td><td>SDK</td><td>XSJNet</td><td/><td>0</td><td/></row>
		<row><td>ZYRD</td><td>SDK</td><td>zyrd</td><td/><td>0</td><td/></row>
		<row><td>company_name</td><td>ProgramMenuFolder</td><td>公司名称</td><td/><td>1</td><td/></row>
		<row><td>setup1</td><td>company_name</td><td>Setup1</td><td/><td>1</td><td/></row>
	</table>

	<table name="DrLocator">
		<col key="yes" def="s72">Signature_</col>
		<col key="yes" def="S72">Parent</col>
		<col key="yes" def="S255">Path</col>
		<col def="I2">Depth</col>
	</table>

	<table name="DuplicateFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="s72">File_</col>
		<col def="L255">DestName</col>
		<col def="S72">DestFolder</col>
	</table>

	<table name="Environment">
		<col key="yes" def="s72">Environment</col>
		<col def="l255">Name</col>
		<col def="L255">Value</col>
		<col def="s72">Component_</col>
	</table>

	<table name="Error">
		<col key="yes" def="i2">Error</col>
		<col def="L255">Message</col>
		<row><td>0</td><td>##IDS_ERROR_0##</td></row>
		<row><td>1</td><td>##IDS_ERROR_1##</td></row>
		<row><td>10</td><td>##IDS_ERROR_8##</td></row>
		<row><td>11</td><td>##IDS_ERROR_9##</td></row>
		<row><td>1101</td><td>##IDS_ERROR_22##</td></row>
		<row><td>12</td><td>##IDS_ERROR_10##</td></row>
		<row><td>13</td><td>##IDS_ERROR_11##</td></row>
		<row><td>1301</td><td>##IDS_ERROR_23##</td></row>
		<row><td>1302</td><td>##IDS_ERROR_24##</td></row>
		<row><td>1303</td><td>##IDS_ERROR_25##</td></row>
		<row><td>1304</td><td>##IDS_ERROR_26##</td></row>
		<row><td>1305</td><td>##IDS_ERROR_27##</td></row>
		<row><td>1306</td><td>##IDS_ERROR_28##</td></row>
		<row><td>1307</td><td>##IDS_ERROR_29##</td></row>
		<row><td>1308</td><td>##IDS_ERROR_30##</td></row>
		<row><td>1309</td><td>##IDS_ERROR_31##</td></row>
		<row><td>1310</td><td>##IDS_ERROR_32##</td></row>
		<row><td>1311</td><td>##IDS_ERROR_33##</td></row>
		<row><td>1312</td><td>##IDS_ERROR_34##</td></row>
		<row><td>1313</td><td>##IDS_ERROR_35##</td></row>
		<row><td>1314</td><td>##IDS_ERROR_36##</td></row>
		<row><td>1315</td><td>##IDS_ERROR_37##</td></row>
		<row><td>1316</td><td>##IDS_ERROR_38##</td></row>
		<row><td>1317</td><td>##IDS_ERROR_39##</td></row>
		<row><td>1318</td><td>##IDS_ERROR_40##</td></row>
		<row><td>1319</td><td>##IDS_ERROR_41##</td></row>
		<row><td>1320</td><td>##IDS_ERROR_42##</td></row>
		<row><td>1321</td><td>##IDS_ERROR_43##</td></row>
		<row><td>1322</td><td>##IDS_ERROR_44##</td></row>
		<row><td>1323</td><td>##IDS_ERROR_45##</td></row>
		<row><td>1324</td><td>##IDS_ERROR_46##</td></row>
		<row><td>1325</td><td>##IDS_ERROR_47##</td></row>
		<row><td>1326</td><td>##IDS_ERROR_48##</td></row>
		<row><td>1327</td><td>##IDS_ERROR_49##</td></row>
		<row><td>1328</td><td>##IDS_ERROR_122##</td></row>
		<row><td>1329</td><td>##IDS_ERROR_1329##</td></row>
		<row><td>1330</td><td>##IDS_ERROR_1330##</td></row>
		<row><td>1331</td><td>##IDS_ERROR_1331##</td></row>
		<row><td>1332</td><td>##IDS_ERROR_1332##</td></row>
		<row><td>1333</td><td>##IDS_ERROR_1333##</td></row>
		<row><td>1334</td><td>##IDS_ERROR_1334##</td></row>
		<row><td>1335</td><td>##IDS_ERROR_1335##</td></row>
		<row><td>1336</td><td>##IDS_ERROR_1336##</td></row>
		<row><td>14</td><td>##IDS_ERROR_12##</td></row>
		<row><td>1401</td><td>##IDS_ERROR_50##</td></row>
		<row><td>1402</td><td>##IDS_ERROR_51##</td></row>
		<row><td>1403</td><td>##IDS_ERROR_52##</td></row>
		<row><td>1404</td><td>##IDS_ERROR_53##</td></row>
		<row><td>1405</td><td>##IDS_ERROR_54##</td></row>
		<row><td>1406</td><td>##IDS_ERROR_55##</td></row>
		<row><td>1407</td><td>##IDS_ERROR_56##</td></row>
		<row><td>1408</td><td>##IDS_ERROR_57##</td></row>
		<row><td>1409</td><td>##IDS_ERROR_58##</td></row>
		<row><td>1410</td><td>##IDS_ERROR_59##</td></row>
		<row><td>15</td><td>##IDS_ERROR_13##</td></row>
		<row><td>1500</td><td>##IDS_ERROR_60##</td></row>
		<row><td>1501</td><td>##IDS_ERROR_61##</td></row>
		<row><td>1502</td><td>##IDS_ERROR_62##</td></row>
		<row><td>1503</td><td>##IDS_ERROR_63##</td></row>
		<row><td>16</td><td>##IDS_ERROR_14##</td></row>
		<row><td>1601</td><td>##IDS_ERROR_64##</td></row>
		<row><td>1602</td><td>##IDS_ERROR_65##</td></row>
		<row><td>1603</td><td>##IDS_ERROR_66##</td></row>
		<row><td>1604</td><td>##IDS_ERROR_67##</td></row>
		<row><td>1605</td><td>##IDS_ERROR_68##</td></row>
		<row><td>1606</td><td>##IDS_ERROR_69##</td></row>
		<row><td>1607</td><td>##IDS_ERROR_70##</td></row>
		<row><td>1608</td><td>##IDS_ERROR_71##</td></row>
		<row><td>1609</td><td>##IDS_ERROR_1609##</td></row>
		<row><td>1651</td><td>##IDS_ERROR_1651##</td></row>
		<row><td>17</td><td>##IDS_ERROR_15##</td></row>
		<row><td>1701</td><td>##IDS_ERROR_72##</td></row>
		<row><td>1702</td><td>##IDS_ERROR_73##</td></row>
		<row><td>1703</td><td>##IDS_ERROR_74##</td></row>
		<row><td>1704</td><td>##IDS_ERROR_75##</td></row>
		<row><td>1705</td><td>##IDS_ERROR_76##</td></row>
		<row><td>1706</td><td>##IDS_ERROR_77##</td></row>
		<row><td>1707</td><td>##IDS_ERROR_78##</td></row>
		<row><td>1708</td><td>##IDS_ERROR_79##</td></row>
		<row><td>1709</td><td>##IDS_ERROR_80##</td></row>
		<row><td>1710</td><td>##IDS_ERROR_81##</td></row>
		<row><td>1711</td><td>##IDS_ERROR_82##</td></row>
		<row><td>1712</td><td>##IDS_ERROR_83##</td></row>
		<row><td>1713</td><td>##IDS_ERROR_123##</td></row>
		<row><td>1714</td><td>##IDS_ERROR_124##</td></row>
		<row><td>1715</td><td>##IDS_ERROR_1715##</td></row>
		<row><td>1716</td><td>##IDS_ERROR_1716##</td></row>
		<row><td>1717</td><td>##IDS_ERROR_1717##</td></row>
		<row><td>1718</td><td>##IDS_ERROR_1718##</td></row>
		<row><td>1719</td><td>##IDS_ERROR_1719##</td></row>
		<row><td>1720</td><td>##IDS_ERROR_1720##</td></row>
		<row><td>1721</td><td>##IDS_ERROR_1721##</td></row>
		<row><td>1722</td><td>##IDS_ERROR_1722##</td></row>
		<row><td>1723</td><td>##IDS_ERROR_1723##</td></row>
		<row><td>1724</td><td>##IDS_ERROR_1724##</td></row>
		<row><td>1725</td><td>##IDS_ERROR_1725##</td></row>
		<row><td>1726</td><td>##IDS_ERROR_1726##</td></row>
		<row><td>1727</td><td>##IDS_ERROR_1727##</td></row>
		<row><td>1728</td><td>##IDS_ERROR_1728##</td></row>
		<row><td>1729</td><td>##IDS_ERROR_1729##</td></row>
		<row><td>1730</td><td>##IDS_ERROR_1730##</td></row>
		<row><td>1731</td><td>##IDS_ERROR_1731##</td></row>
		<row><td>1732</td><td>##IDS_ERROR_1732##</td></row>
		<row><td>18</td><td>##IDS_ERROR_16##</td></row>
		<row><td>1801</td><td>##IDS_ERROR_84##</td></row>
		<row><td>1802</td><td>##IDS_ERROR_85##</td></row>
		<row><td>1803</td><td>##IDS_ERROR_86##</td></row>
		<row><td>1804</td><td>##IDS_ERROR_87##</td></row>
		<row><td>1805</td><td>##IDS_ERROR_88##</td></row>
		<row><td>1806</td><td>##IDS_ERROR_89##</td></row>
		<row><td>1807</td><td>##IDS_ERROR_90##</td></row>
		<row><td>19</td><td>##IDS_ERROR_17##</td></row>
		<row><td>1901</td><td>##IDS_ERROR_91##</td></row>
		<row><td>1902</td><td>##IDS_ERROR_92##</td></row>
		<row><td>1903</td><td>##IDS_ERROR_93##</td></row>
		<row><td>1904</td><td>##IDS_ERROR_94##</td></row>
		<row><td>1905</td><td>##IDS_ERROR_95##</td></row>
		<row><td>1906</td><td>##IDS_ERROR_96##</td></row>
		<row><td>1907</td><td>##IDS_ERROR_97##</td></row>
		<row><td>1908</td><td>##IDS_ERROR_98##</td></row>
		<row><td>1909</td><td>##IDS_ERROR_99##</td></row>
		<row><td>1910</td><td>##IDS_ERROR_100##</td></row>
		<row><td>1911</td><td>##IDS_ERROR_101##</td></row>
		<row><td>1912</td><td>##IDS_ERROR_102##</td></row>
		<row><td>1913</td><td>##IDS_ERROR_103##</td></row>
		<row><td>1914</td><td>##IDS_ERROR_104##</td></row>
		<row><td>1915</td><td>##IDS_ERROR_105##</td></row>
		<row><td>1916</td><td>##IDS_ERROR_106##</td></row>
		<row><td>1917</td><td>##IDS_ERROR_107##</td></row>
		<row><td>1918</td><td>##IDS_ERROR_108##</td></row>
		<row><td>1919</td><td>##IDS_ERROR_109##</td></row>
		<row><td>1920</td><td>##IDS_ERROR_110##</td></row>
		<row><td>1921</td><td>##IDS_ERROR_111##</td></row>
		<row><td>1922</td><td>##IDS_ERROR_112##</td></row>
		<row><td>1923</td><td>##IDS_ERROR_113##</td></row>
		<row><td>1924</td><td>##IDS_ERROR_114##</td></row>
		<row><td>1925</td><td>##IDS_ERROR_115##</td></row>
		<row><td>1926</td><td>##IDS_ERROR_116##</td></row>
		<row><td>1927</td><td>##IDS_ERROR_117##</td></row>
		<row><td>1928</td><td>##IDS_ERROR_118##</td></row>
		<row><td>1929</td><td>##IDS_ERROR_119##</td></row>
		<row><td>1930</td><td>##IDS_ERROR_125##</td></row>
		<row><td>1931</td><td>##IDS_ERROR_126##</td></row>
		<row><td>1932</td><td>##IDS_ERROR_127##</td></row>
		<row><td>1933</td><td>##IDS_ERROR_128##</td></row>
		<row><td>1934</td><td>##IDS_ERROR_129##</td></row>
		<row><td>1935</td><td>##IDS_ERROR_1935##</td></row>
		<row><td>1936</td><td>##IDS_ERROR_1936##</td></row>
		<row><td>1937</td><td>##IDS_ERROR_1937##</td></row>
		<row><td>1938</td><td>##IDS_ERROR_1938##</td></row>
		<row><td>2</td><td>##IDS_ERROR_2##</td></row>
		<row><td>20</td><td>##IDS_ERROR_18##</td></row>
		<row><td>21</td><td>##IDS_ERROR_19##</td></row>
		<row><td>2101</td><td>##IDS_ERROR_2101##</td></row>
		<row><td>2102</td><td>##IDS_ERROR_2102##</td></row>
		<row><td>2103</td><td>##IDS_ERROR_2103##</td></row>
		<row><td>2104</td><td>##IDS_ERROR_2104##</td></row>
		<row><td>2105</td><td>##IDS_ERROR_2105##</td></row>
		<row><td>2106</td><td>##IDS_ERROR_2106##</td></row>
		<row><td>2107</td><td>##IDS_ERROR_2107##</td></row>
		<row><td>2108</td><td>##IDS_ERROR_2108##</td></row>
		<row><td>2109</td><td>##IDS_ERROR_2109##</td></row>
		<row><td>2110</td><td>##IDS_ERROR_2110##</td></row>
		<row><td>2111</td><td>##IDS_ERROR_2111##</td></row>
		<row><td>2112</td><td>##IDS_ERROR_2112##</td></row>
		<row><td>2113</td><td>##IDS_ERROR_2113##</td></row>
		<row><td>22</td><td>##IDS_ERROR_120##</td></row>
		<row><td>2200</td><td>##IDS_ERROR_2200##</td></row>
		<row><td>2201</td><td>##IDS_ERROR_2201##</td></row>
		<row><td>2202</td><td>##IDS_ERROR_2202##</td></row>
		<row><td>2203</td><td>##IDS_ERROR_2203##</td></row>
		<row><td>2204</td><td>##IDS_ERROR_2204##</td></row>
		<row><td>2205</td><td>##IDS_ERROR_2205##</td></row>
		<row><td>2206</td><td>##IDS_ERROR_2206##</td></row>
		<row><td>2207</td><td>##IDS_ERROR_2207##</td></row>
		<row><td>2208</td><td>##IDS_ERROR_2208##</td></row>
		<row><td>2209</td><td>##IDS_ERROR_2209##</td></row>
		<row><td>2210</td><td>##IDS_ERROR_2210##</td></row>
		<row><td>2211</td><td>##IDS_ERROR_2211##</td></row>
		<row><td>2212</td><td>##IDS_ERROR_2212##</td></row>
		<row><td>2213</td><td>##IDS_ERROR_2213##</td></row>
		<row><td>2214</td><td>##IDS_ERROR_2214##</td></row>
		<row><td>2215</td><td>##IDS_ERROR_2215##</td></row>
		<row><td>2216</td><td>##IDS_ERROR_2216##</td></row>
		<row><td>2217</td><td>##IDS_ERROR_2217##</td></row>
		<row><td>2218</td><td>##IDS_ERROR_2218##</td></row>
		<row><td>2219</td><td>##IDS_ERROR_2219##</td></row>
		<row><td>2220</td><td>##IDS_ERROR_2220##</td></row>
		<row><td>2221</td><td>##IDS_ERROR_2221##</td></row>
		<row><td>2222</td><td>##IDS_ERROR_2222##</td></row>
		<row><td>2223</td><td>##IDS_ERROR_2223##</td></row>
		<row><td>2224</td><td>##IDS_ERROR_2224##</td></row>
		<row><td>2225</td><td>##IDS_ERROR_2225##</td></row>
		<row><td>2226</td><td>##IDS_ERROR_2226##</td></row>
		<row><td>2227</td><td>##IDS_ERROR_2227##</td></row>
		<row><td>2228</td><td>##IDS_ERROR_2228##</td></row>
		<row><td>2229</td><td>##IDS_ERROR_2229##</td></row>
		<row><td>2230</td><td>##IDS_ERROR_2230##</td></row>
		<row><td>2231</td><td>##IDS_ERROR_2231##</td></row>
		<row><td>2232</td><td>##IDS_ERROR_2232##</td></row>
		<row><td>2233</td><td>##IDS_ERROR_2233##</td></row>
		<row><td>2234</td><td>##IDS_ERROR_2234##</td></row>
		<row><td>2235</td><td>##IDS_ERROR_2235##</td></row>
		<row><td>2236</td><td>##IDS_ERROR_2236##</td></row>
		<row><td>2237</td><td>##IDS_ERROR_2237##</td></row>
		<row><td>2238</td><td>##IDS_ERROR_2238##</td></row>
		<row><td>2239</td><td>##IDS_ERROR_2239##</td></row>
		<row><td>2240</td><td>##IDS_ERROR_2240##</td></row>
		<row><td>2241</td><td>##IDS_ERROR_2241##</td></row>
		<row><td>2242</td><td>##IDS_ERROR_2242##</td></row>
		<row><td>2243</td><td>##IDS_ERROR_2243##</td></row>
		<row><td>2244</td><td>##IDS_ERROR_2244##</td></row>
		<row><td>2245</td><td>##IDS_ERROR_2245##</td></row>
		<row><td>2246</td><td>##IDS_ERROR_2246##</td></row>
		<row><td>2247</td><td>##IDS_ERROR_2247##</td></row>
		<row><td>2248</td><td>##IDS_ERROR_2248##</td></row>
		<row><td>2249</td><td>##IDS_ERROR_2249##</td></row>
		<row><td>2250</td><td>##IDS_ERROR_2250##</td></row>
		<row><td>2251</td><td>##IDS_ERROR_2251##</td></row>
		<row><td>2252</td><td>##IDS_ERROR_2252##</td></row>
		<row><td>2253</td><td>##IDS_ERROR_2253##</td></row>
		<row><td>2254</td><td>##IDS_ERROR_2254##</td></row>
		<row><td>2255</td><td>##IDS_ERROR_2255##</td></row>
		<row><td>2256</td><td>##IDS_ERROR_2256##</td></row>
		<row><td>2257</td><td>##IDS_ERROR_2257##</td></row>
		<row><td>2258</td><td>##IDS_ERROR_2258##</td></row>
		<row><td>2259</td><td>##IDS_ERROR_2259##</td></row>
		<row><td>2260</td><td>##IDS_ERROR_2260##</td></row>
		<row><td>2261</td><td>##IDS_ERROR_2261##</td></row>
		<row><td>2262</td><td>##IDS_ERROR_2262##</td></row>
		<row><td>2263</td><td>##IDS_ERROR_2263##</td></row>
		<row><td>2264</td><td>##IDS_ERROR_2264##</td></row>
		<row><td>2265</td><td>##IDS_ERROR_2265##</td></row>
		<row><td>2266</td><td>##IDS_ERROR_2266##</td></row>
		<row><td>2267</td><td>##IDS_ERROR_2267##</td></row>
		<row><td>2268</td><td>##IDS_ERROR_2268##</td></row>
		<row><td>2269</td><td>##IDS_ERROR_2269##</td></row>
		<row><td>2270</td><td>##IDS_ERROR_2270##</td></row>
		<row><td>2271</td><td>##IDS_ERROR_2271##</td></row>
		<row><td>2272</td><td>##IDS_ERROR_2272##</td></row>
		<row><td>2273</td><td>##IDS_ERROR_2273##</td></row>
		<row><td>2274</td><td>##IDS_ERROR_2274##</td></row>
		<row><td>2275</td><td>##IDS_ERROR_2275##</td></row>
		<row><td>2276</td><td>##IDS_ERROR_2276##</td></row>
		<row><td>2277</td><td>##IDS_ERROR_2277##</td></row>
		<row><td>2278</td><td>##IDS_ERROR_2278##</td></row>
		<row><td>2279</td><td>##IDS_ERROR_2279##</td></row>
		<row><td>2280</td><td>##IDS_ERROR_2280##</td></row>
		<row><td>2281</td><td>##IDS_ERROR_2281##</td></row>
		<row><td>2282</td><td>##IDS_ERROR_2282##</td></row>
		<row><td>23</td><td>##IDS_ERROR_121##</td></row>
		<row><td>2302</td><td>##IDS_ERROR_2302##</td></row>
		<row><td>2303</td><td>##IDS_ERROR_2303##</td></row>
		<row><td>2304</td><td>##IDS_ERROR_2304##</td></row>
		<row><td>2305</td><td>##IDS_ERROR_2305##</td></row>
		<row><td>2306</td><td>##IDS_ERROR_2306##</td></row>
		<row><td>2307</td><td>##IDS_ERROR_2307##</td></row>
		<row><td>2308</td><td>##IDS_ERROR_2308##</td></row>
		<row><td>2309</td><td>##IDS_ERROR_2309##</td></row>
		<row><td>2310</td><td>##IDS_ERROR_2310##</td></row>
		<row><td>2315</td><td>##IDS_ERROR_2315##</td></row>
		<row><td>2318</td><td>##IDS_ERROR_2318##</td></row>
		<row><td>2319</td><td>##IDS_ERROR_2319##</td></row>
		<row><td>2320</td><td>##IDS_ERROR_2320##</td></row>
		<row><td>2321</td><td>##IDS_ERROR_2321##</td></row>
		<row><td>2322</td><td>##IDS_ERROR_2322##</td></row>
		<row><td>2323</td><td>##IDS_ERROR_2323##</td></row>
		<row><td>2324</td><td>##IDS_ERROR_2324##</td></row>
		<row><td>2325</td><td>##IDS_ERROR_2325##</td></row>
		<row><td>2326</td><td>##IDS_ERROR_2326##</td></row>
		<row><td>2327</td><td>##IDS_ERROR_2327##</td></row>
		<row><td>2328</td><td>##IDS_ERROR_2328##</td></row>
		<row><td>2329</td><td>##IDS_ERROR_2329##</td></row>
		<row><td>2330</td><td>##IDS_ERROR_2330##</td></row>
		<row><td>2331</td><td>##IDS_ERROR_2331##</td></row>
		<row><td>2332</td><td>##IDS_ERROR_2332##</td></row>
		<row><td>2333</td><td>##IDS_ERROR_2333##</td></row>
		<row><td>2334</td><td>##IDS_ERROR_2334##</td></row>
		<row><td>2335</td><td>##IDS_ERROR_2335##</td></row>
		<row><td>2336</td><td>##IDS_ERROR_2336##</td></row>
		<row><td>2337</td><td>##IDS_ERROR_2337##</td></row>
		<row><td>2338</td><td>##IDS_ERROR_2338##</td></row>
		<row><td>2339</td><td>##IDS_ERROR_2339##</td></row>
		<row><td>2340</td><td>##IDS_ERROR_2340##</td></row>
		<row><td>2341</td><td>##IDS_ERROR_2341##</td></row>
		<row><td>2342</td><td>##IDS_ERROR_2342##</td></row>
		<row><td>2343</td><td>##IDS_ERROR_2343##</td></row>
		<row><td>2344</td><td>##IDS_ERROR_2344##</td></row>
		<row><td>2345</td><td>##IDS_ERROR_2345##</td></row>
		<row><td>2347</td><td>##IDS_ERROR_2347##</td></row>
		<row><td>2348</td><td>##IDS_ERROR_2348##</td></row>
		<row><td>2349</td><td>##IDS_ERROR_2349##</td></row>
		<row><td>2350</td><td>##IDS_ERROR_2350##</td></row>
		<row><td>2351</td><td>##IDS_ERROR_2351##</td></row>
		<row><td>2352</td><td>##IDS_ERROR_2352##</td></row>
		<row><td>2353</td><td>##IDS_ERROR_2353##</td></row>
		<row><td>2354</td><td>##IDS_ERROR_2354##</td></row>
		<row><td>2355</td><td>##IDS_ERROR_2355##</td></row>
		<row><td>2356</td><td>##IDS_ERROR_2356##</td></row>
		<row><td>2357</td><td>##IDS_ERROR_2357##</td></row>
		<row><td>2358</td><td>##IDS_ERROR_2358##</td></row>
		<row><td>2359</td><td>##IDS_ERROR_2359##</td></row>
		<row><td>2360</td><td>##IDS_ERROR_2360##</td></row>
		<row><td>2361</td><td>##IDS_ERROR_2361##</td></row>
		<row><td>2362</td><td>##IDS_ERROR_2362##</td></row>
		<row><td>2363</td><td>##IDS_ERROR_2363##</td></row>
		<row><td>2364</td><td>##IDS_ERROR_2364##</td></row>
		<row><td>2365</td><td>##IDS_ERROR_2365##</td></row>
		<row><td>2366</td><td>##IDS_ERROR_2366##</td></row>
		<row><td>2367</td><td>##IDS_ERROR_2367##</td></row>
		<row><td>2368</td><td>##IDS_ERROR_2368##</td></row>
		<row><td>2370</td><td>##IDS_ERROR_2370##</td></row>
		<row><td>2371</td><td>##IDS_ERROR_2371##</td></row>
		<row><td>2372</td><td>##IDS_ERROR_2372##</td></row>
		<row><td>2373</td><td>##IDS_ERROR_2373##</td></row>
		<row><td>2374</td><td>##IDS_ERROR_2374##</td></row>
		<row><td>2375</td><td>##IDS_ERROR_2375##</td></row>
		<row><td>2376</td><td>##IDS_ERROR_2376##</td></row>
		<row><td>2379</td><td>##IDS_ERROR_2379##</td></row>
		<row><td>2380</td><td>##IDS_ERROR_2380##</td></row>
		<row><td>2381</td><td>##IDS_ERROR_2381##</td></row>
		<row><td>2382</td><td>##IDS_ERROR_2382##</td></row>
		<row><td>2401</td><td>##IDS_ERROR_2401##</td></row>
		<row><td>2402</td><td>##IDS_ERROR_2402##</td></row>
		<row><td>2501</td><td>##IDS_ERROR_2501##</td></row>
		<row><td>2502</td><td>##IDS_ERROR_2502##</td></row>
		<row><td>2503</td><td>##IDS_ERROR_2503##</td></row>
		<row><td>2601</td><td>##IDS_ERROR_2601##</td></row>
		<row><td>2602</td><td>##IDS_ERROR_2602##</td></row>
		<row><td>2603</td><td>##IDS_ERROR_2603##</td></row>
		<row><td>2604</td><td>##IDS_ERROR_2604##</td></row>
		<row><td>2605</td><td>##IDS_ERROR_2605##</td></row>
		<row><td>2606</td><td>##IDS_ERROR_2606##</td></row>
		<row><td>2607</td><td>##IDS_ERROR_2607##</td></row>
		<row><td>2608</td><td>##IDS_ERROR_2608##</td></row>
		<row><td>2609</td><td>##IDS_ERROR_2609##</td></row>
		<row><td>2611</td><td>##IDS_ERROR_2611##</td></row>
		<row><td>2612</td><td>##IDS_ERROR_2612##</td></row>
		<row><td>2613</td><td>##IDS_ERROR_2613##</td></row>
		<row><td>2614</td><td>##IDS_ERROR_2614##</td></row>
		<row><td>2615</td><td>##IDS_ERROR_2615##</td></row>
		<row><td>2616</td><td>##IDS_ERROR_2616##</td></row>
		<row><td>2617</td><td>##IDS_ERROR_2617##</td></row>
		<row><td>2618</td><td>##IDS_ERROR_2618##</td></row>
		<row><td>2619</td><td>##IDS_ERROR_2619##</td></row>
		<row><td>2620</td><td>##IDS_ERROR_2620##</td></row>
		<row><td>2621</td><td>##IDS_ERROR_2621##</td></row>
		<row><td>2701</td><td>##IDS_ERROR_2701##</td></row>
		<row><td>2702</td><td>##IDS_ERROR_2702##</td></row>
		<row><td>2703</td><td>##IDS_ERROR_2703##</td></row>
		<row><td>2704</td><td>##IDS_ERROR_2704##</td></row>
		<row><td>2705</td><td>##IDS_ERROR_2705##</td></row>
		<row><td>2706</td><td>##IDS_ERROR_2706##</td></row>
		<row><td>2707</td><td>##IDS_ERROR_2707##</td></row>
		<row><td>2708</td><td>##IDS_ERROR_2708##</td></row>
		<row><td>2709</td><td>##IDS_ERROR_2709##</td></row>
		<row><td>2710</td><td>##IDS_ERROR_2710##</td></row>
		<row><td>2711</td><td>##IDS_ERROR_2711##</td></row>
		<row><td>2712</td><td>##IDS_ERROR_2712##</td></row>
		<row><td>2713</td><td>##IDS_ERROR_2713##</td></row>
		<row><td>2714</td><td>##IDS_ERROR_2714##</td></row>
		<row><td>2715</td><td>##IDS_ERROR_2715##</td></row>
		<row><td>2716</td><td>##IDS_ERROR_2716##</td></row>
		<row><td>2717</td><td>##IDS_ERROR_2717##</td></row>
		<row><td>2718</td><td>##IDS_ERROR_2718##</td></row>
		<row><td>2719</td><td>##IDS_ERROR_2719##</td></row>
		<row><td>2720</td><td>##IDS_ERROR_2720##</td></row>
		<row><td>2721</td><td>##IDS_ERROR_2721##</td></row>
		<row><td>2722</td><td>##IDS_ERROR_2722##</td></row>
		<row><td>2723</td><td>##IDS_ERROR_2723##</td></row>
		<row><td>2724</td><td>##IDS_ERROR_2724##</td></row>
		<row><td>2725</td><td>##IDS_ERROR_2725##</td></row>
		<row><td>2726</td><td>##IDS_ERROR_2726##</td></row>
		<row><td>2727</td><td>##IDS_ERROR_2727##</td></row>
		<row><td>2728</td><td>##IDS_ERROR_2728##</td></row>
		<row><td>2729</td><td>##IDS_ERROR_2729##</td></row>
		<row><td>2730</td><td>##IDS_ERROR_2730##</td></row>
		<row><td>2731</td><td>##IDS_ERROR_2731##</td></row>
		<row><td>2732</td><td>##IDS_ERROR_2732##</td></row>
		<row><td>2733</td><td>##IDS_ERROR_2733##</td></row>
		<row><td>2734</td><td>##IDS_ERROR_2734##</td></row>
		<row><td>2735</td><td>##IDS_ERROR_2735##</td></row>
		<row><td>2736</td><td>##IDS_ERROR_2736##</td></row>
		<row><td>2737</td><td>##IDS_ERROR_2737##</td></row>
		<row><td>2738</td><td>##IDS_ERROR_2738##</td></row>
		<row><td>2739</td><td>##IDS_ERROR_2739##</td></row>
		<row><td>2740</td><td>##IDS_ERROR_2740##</td></row>
		<row><td>2741</td><td>##IDS_ERROR_2741##</td></row>
		<row><td>2742</td><td>##IDS_ERROR_2742##</td></row>
		<row><td>2743</td><td>##IDS_ERROR_2743##</td></row>
		<row><td>2744</td><td>##IDS_ERROR_2744##</td></row>
		<row><td>2745</td><td>##IDS_ERROR_2745##</td></row>
		<row><td>2746</td><td>##IDS_ERROR_2746##</td></row>
		<row><td>2747</td><td>##IDS_ERROR_2747##</td></row>
		<row><td>2748</td><td>##IDS_ERROR_2748##</td></row>
		<row><td>2749</td><td>##IDS_ERROR_2749##</td></row>
		<row><td>2750</td><td>##IDS_ERROR_2750##</td></row>
		<row><td>27500</td><td>##IDS_ERROR_130##</td></row>
		<row><td>27501</td><td>##IDS_ERROR_131##</td></row>
		<row><td>27502</td><td>##IDS_ERROR_27502##</td></row>
		<row><td>27503</td><td>##IDS_ERROR_27503##</td></row>
		<row><td>27504</td><td>##IDS_ERROR_27504##</td></row>
		<row><td>27505</td><td>##IDS_ERROR_27505##</td></row>
		<row><td>27506</td><td>##IDS_ERROR_27506##</td></row>
		<row><td>27507</td><td>##IDS_ERROR_27507##</td></row>
		<row><td>27508</td><td>##IDS_ERROR_27508##</td></row>
		<row><td>27509</td><td>##IDS_ERROR_27509##</td></row>
		<row><td>2751</td><td>##IDS_ERROR_2751##</td></row>
		<row><td>27510</td><td>##IDS_ERROR_27510##</td></row>
		<row><td>27511</td><td>##IDS_ERROR_27511##</td></row>
		<row><td>27512</td><td>##IDS_ERROR_27512##</td></row>
		<row><td>27513</td><td>##IDS_ERROR_27513##</td></row>
		<row><td>27514</td><td>##IDS_ERROR_27514##</td></row>
		<row><td>27515</td><td>##IDS_ERROR_27515##</td></row>
		<row><td>27516</td><td>##IDS_ERROR_27516##</td></row>
		<row><td>27517</td><td>##IDS_ERROR_27517##</td></row>
		<row><td>27518</td><td>##IDS_ERROR_27518##</td></row>
		<row><td>27519</td><td>##IDS_ERROR_27519##</td></row>
		<row><td>2752</td><td>##IDS_ERROR_2752##</td></row>
		<row><td>27520</td><td>##IDS_ERROR_27520##</td></row>
		<row><td>27521</td><td>##IDS_ERROR_27521##</td></row>
		<row><td>27522</td><td>##IDS_ERROR_27522##</td></row>
		<row><td>27523</td><td>##IDS_ERROR_27523##</td></row>
		<row><td>27524</td><td>##IDS_ERROR_27524##</td></row>
		<row><td>27525</td><td>##IDS_ERROR_27525##</td></row>
		<row><td>27526</td><td>##IDS_ERROR_27526##</td></row>
		<row><td>27527</td><td>##IDS_ERROR_27527##</td></row>
		<row><td>27528</td><td>##IDS_ERROR_27528##</td></row>
		<row><td>27529</td><td>##IDS_ERROR_27529##</td></row>
		<row><td>2753</td><td>##IDS_ERROR_2753##</td></row>
		<row><td>27530</td><td>##IDS_ERROR_27530##</td></row>
		<row><td>27531</td><td>##IDS_ERROR_27531##</td></row>
		<row><td>27532</td><td>##IDS_ERROR_27532##</td></row>
		<row><td>27533</td><td>##IDS_ERROR_27533##</td></row>
		<row><td>27534</td><td>##IDS_ERROR_27534##</td></row>
		<row><td>27535</td><td>##IDS_ERROR_27535##</td></row>
		<row><td>27536</td><td>##IDS_ERROR_27536##</td></row>
		<row><td>27537</td><td>##IDS_ERROR_27537##</td></row>
		<row><td>27538</td><td>##IDS_ERROR_27538##</td></row>
		<row><td>27539</td><td>##IDS_ERROR_27539##</td></row>
		<row><td>2754</td><td>##IDS_ERROR_2754##</td></row>
		<row><td>27540</td><td>##IDS_ERROR_27540##</td></row>
		<row><td>27541</td><td>##IDS_ERROR_27541##</td></row>
		<row><td>27542</td><td>##IDS_ERROR_27542##</td></row>
		<row><td>27543</td><td>##IDS_ERROR_27543##</td></row>
		<row><td>27544</td><td>##IDS_ERROR_27544##</td></row>
		<row><td>27545</td><td>##IDS_ERROR_27545##</td></row>
		<row><td>27546</td><td>##IDS_ERROR_27546##</td></row>
		<row><td>27547</td><td>##IDS_ERROR_27547##</td></row>
		<row><td>27548</td><td>##IDS_ERROR_27548##</td></row>
		<row><td>27549</td><td>##IDS_ERROR_27549##</td></row>
		<row><td>2755</td><td>##IDS_ERROR_2755##</td></row>
		<row><td>27550</td><td>##IDS_ERROR_27550##</td></row>
		<row><td>27551</td><td>##IDS_ERROR_27551##</td></row>
		<row><td>27552</td><td>##IDS_ERROR_27552##</td></row>
		<row><td>27553</td><td>##IDS_ERROR_27553##</td></row>
		<row><td>27554</td><td>##IDS_ERROR_27554##</td></row>
		<row><td>27555</td><td>##IDS_ERROR_27555##</td></row>
		<row><td>2756</td><td>##IDS_ERROR_2756##</td></row>
		<row><td>2757</td><td>##IDS_ERROR_2757##</td></row>
		<row><td>2758</td><td>##IDS_ERROR_2758##</td></row>
		<row><td>2759</td><td>##IDS_ERROR_2759##</td></row>
		<row><td>2760</td><td>##IDS_ERROR_2760##</td></row>
		<row><td>2761</td><td>##IDS_ERROR_2761##</td></row>
		<row><td>2762</td><td>##IDS_ERROR_2762##</td></row>
		<row><td>2763</td><td>##IDS_ERROR_2763##</td></row>
		<row><td>2765</td><td>##IDS_ERROR_2765##</td></row>
		<row><td>2766</td><td>##IDS_ERROR_2766##</td></row>
		<row><td>2767</td><td>##IDS_ERROR_2767##</td></row>
		<row><td>2768</td><td>##IDS_ERROR_2768##</td></row>
		<row><td>2769</td><td>##IDS_ERROR_2769##</td></row>
		<row><td>2770</td><td>##IDS_ERROR_2770##</td></row>
		<row><td>2771</td><td>##IDS_ERROR_2771##</td></row>
		<row><td>2772</td><td>##IDS_ERROR_2772##</td></row>
		<row><td>2801</td><td>##IDS_ERROR_2801##</td></row>
		<row><td>2802</td><td>##IDS_ERROR_2802##</td></row>
		<row><td>2803</td><td>##IDS_ERROR_2803##</td></row>
		<row><td>2804</td><td>##IDS_ERROR_2804##</td></row>
		<row><td>2806</td><td>##IDS_ERROR_2806##</td></row>
		<row><td>2807</td><td>##IDS_ERROR_2807##</td></row>
		<row><td>2808</td><td>##IDS_ERROR_2808##</td></row>
		<row><td>2809</td><td>##IDS_ERROR_2809##</td></row>
		<row><td>2810</td><td>##IDS_ERROR_2810##</td></row>
		<row><td>2811</td><td>##IDS_ERROR_2811##</td></row>
		<row><td>2812</td><td>##IDS_ERROR_2812##</td></row>
		<row><td>2813</td><td>##IDS_ERROR_2813##</td></row>
		<row><td>2814</td><td>##IDS_ERROR_2814##</td></row>
		<row><td>2815</td><td>##IDS_ERROR_2815##</td></row>
		<row><td>2816</td><td>##IDS_ERROR_2816##</td></row>
		<row><td>2817</td><td>##IDS_ERROR_2817##</td></row>
		<row><td>2818</td><td>##IDS_ERROR_2818##</td></row>
		<row><td>2819</td><td>##IDS_ERROR_2819##</td></row>
		<row><td>2820</td><td>##IDS_ERROR_2820##</td></row>
		<row><td>2821</td><td>##IDS_ERROR_2821##</td></row>
		<row><td>2822</td><td>##IDS_ERROR_2822##</td></row>
		<row><td>2823</td><td>##IDS_ERROR_2823##</td></row>
		<row><td>2824</td><td>##IDS_ERROR_2824##</td></row>
		<row><td>2825</td><td>##IDS_ERROR_2825##</td></row>
		<row><td>2826</td><td>##IDS_ERROR_2826##</td></row>
		<row><td>2827</td><td>##IDS_ERROR_2827##</td></row>
		<row><td>2828</td><td>##IDS_ERROR_2828##</td></row>
		<row><td>2829</td><td>##IDS_ERROR_2829##</td></row>
		<row><td>2830</td><td>##IDS_ERROR_2830##</td></row>
		<row><td>2831</td><td>##IDS_ERROR_2831##</td></row>
		<row><td>2832</td><td>##IDS_ERROR_2832##</td></row>
		<row><td>2833</td><td>##IDS_ERROR_2833##</td></row>
		<row><td>2834</td><td>##IDS_ERROR_2834##</td></row>
		<row><td>2835</td><td>##IDS_ERROR_2835##</td></row>
		<row><td>2836</td><td>##IDS_ERROR_2836##</td></row>
		<row><td>2837</td><td>##IDS_ERROR_2837##</td></row>
		<row><td>2838</td><td>##IDS_ERROR_2838##</td></row>
		<row><td>2839</td><td>##IDS_ERROR_2839##</td></row>
		<row><td>2840</td><td>##IDS_ERROR_2840##</td></row>
		<row><td>2841</td><td>##IDS_ERROR_2841##</td></row>
		<row><td>2842</td><td>##IDS_ERROR_2842##</td></row>
		<row><td>2843</td><td>##IDS_ERROR_2843##</td></row>
		<row><td>2844</td><td>##IDS_ERROR_2844##</td></row>
		<row><td>2845</td><td>##IDS_ERROR_2845##</td></row>
		<row><td>2846</td><td>##IDS_ERROR_2846##</td></row>
		<row><td>2847</td><td>##IDS_ERROR_2847##</td></row>
		<row><td>2848</td><td>##IDS_ERROR_2848##</td></row>
		<row><td>2849</td><td>##IDS_ERROR_2849##</td></row>
		<row><td>2850</td><td>##IDS_ERROR_2850##</td></row>
		<row><td>2851</td><td>##IDS_ERROR_2851##</td></row>
		<row><td>2852</td><td>##IDS_ERROR_2852##</td></row>
		<row><td>2853</td><td>##IDS_ERROR_2853##</td></row>
		<row><td>2854</td><td>##IDS_ERROR_2854##</td></row>
		<row><td>2855</td><td>##IDS_ERROR_2855##</td></row>
		<row><td>2856</td><td>##IDS_ERROR_2856##</td></row>
		<row><td>2857</td><td>##IDS_ERROR_2857##</td></row>
		<row><td>2858</td><td>##IDS_ERROR_2858##</td></row>
		<row><td>2859</td><td>##IDS_ERROR_2859##</td></row>
		<row><td>2860</td><td>##IDS_ERROR_2860##</td></row>
		<row><td>2861</td><td>##IDS_ERROR_2861##</td></row>
		<row><td>2862</td><td>##IDS_ERROR_2862##</td></row>
		<row><td>2863</td><td>##IDS_ERROR_2863##</td></row>
		<row><td>2864</td><td>##IDS_ERROR_2864##</td></row>
		<row><td>2865</td><td>##IDS_ERROR_2865##</td></row>
		<row><td>2866</td><td>##IDS_ERROR_2866##</td></row>
		<row><td>2867</td><td>##IDS_ERROR_2867##</td></row>
		<row><td>2868</td><td>##IDS_ERROR_2868##</td></row>
		<row><td>2869</td><td>##IDS_ERROR_2869##</td></row>
		<row><td>2870</td><td>##IDS_ERROR_2870##</td></row>
		<row><td>2871</td><td>##IDS_ERROR_2871##</td></row>
		<row><td>2872</td><td>##IDS_ERROR_2872##</td></row>
		<row><td>2873</td><td>##IDS_ERROR_2873##</td></row>
		<row><td>2874</td><td>##IDS_ERROR_2874##</td></row>
		<row><td>2875</td><td>##IDS_ERROR_2875##</td></row>
		<row><td>2876</td><td>##IDS_ERROR_2876##</td></row>
		<row><td>2877</td><td>##IDS_ERROR_2877##</td></row>
		<row><td>2878</td><td>##IDS_ERROR_2878##</td></row>
		<row><td>2879</td><td>##IDS_ERROR_2879##</td></row>
		<row><td>2880</td><td>##IDS_ERROR_2880##</td></row>
		<row><td>2881</td><td>##IDS_ERROR_2881##</td></row>
		<row><td>2882</td><td>##IDS_ERROR_2882##</td></row>
		<row><td>2883</td><td>##IDS_ERROR_2883##</td></row>
		<row><td>2884</td><td>##IDS_ERROR_2884##</td></row>
		<row><td>2885</td><td>##IDS_ERROR_2885##</td></row>
		<row><td>2886</td><td>##IDS_ERROR_2886##</td></row>
		<row><td>2887</td><td>##IDS_ERROR_2887##</td></row>
		<row><td>2888</td><td>##IDS_ERROR_2888##</td></row>
		<row><td>2889</td><td>##IDS_ERROR_2889##</td></row>
		<row><td>2890</td><td>##IDS_ERROR_2890##</td></row>
		<row><td>2891</td><td>##IDS_ERROR_2891##</td></row>
		<row><td>2892</td><td>##IDS_ERROR_2892##</td></row>
		<row><td>2893</td><td>##IDS_ERROR_2893##</td></row>
		<row><td>2894</td><td>##IDS_ERROR_2894##</td></row>
		<row><td>2895</td><td>##IDS_ERROR_2895##</td></row>
		<row><td>2896</td><td>##IDS_ERROR_2896##</td></row>
		<row><td>2897</td><td>##IDS_ERROR_2897##</td></row>
		<row><td>2898</td><td>##IDS_ERROR_2898##</td></row>
		<row><td>2899</td><td>##IDS_ERROR_2899##</td></row>
		<row><td>2901</td><td>##IDS_ERROR_2901##</td></row>
		<row><td>2902</td><td>##IDS_ERROR_2902##</td></row>
		<row><td>2903</td><td>##IDS_ERROR_2903##</td></row>
		<row><td>2904</td><td>##IDS_ERROR_2904##</td></row>
		<row><td>2905</td><td>##IDS_ERROR_2905##</td></row>
		<row><td>2906</td><td>##IDS_ERROR_2906##</td></row>
		<row><td>2907</td><td>##IDS_ERROR_2907##</td></row>
		<row><td>2908</td><td>##IDS_ERROR_2908##</td></row>
		<row><td>2909</td><td>##IDS_ERROR_2909##</td></row>
		<row><td>2910</td><td>##IDS_ERROR_2910##</td></row>
		<row><td>2911</td><td>##IDS_ERROR_2911##</td></row>
		<row><td>2912</td><td>##IDS_ERROR_2912##</td></row>
		<row><td>2919</td><td>##IDS_ERROR_2919##</td></row>
		<row><td>2920</td><td>##IDS_ERROR_2920##</td></row>
		<row><td>2924</td><td>##IDS_ERROR_2924##</td></row>
		<row><td>2927</td><td>##IDS_ERROR_2927##</td></row>
		<row><td>2928</td><td>##IDS_ERROR_2928##</td></row>
		<row><td>2929</td><td>##IDS_ERROR_2929##</td></row>
		<row><td>2932</td><td>##IDS_ERROR_2932##</td></row>
		<row><td>2933</td><td>##IDS_ERROR_2933##</td></row>
		<row><td>2934</td><td>##IDS_ERROR_2934##</td></row>
		<row><td>2935</td><td>##IDS_ERROR_2935##</td></row>
		<row><td>2936</td><td>##IDS_ERROR_2936##</td></row>
		<row><td>2937</td><td>##IDS_ERROR_2937##</td></row>
		<row><td>2938</td><td>##IDS_ERROR_2938##</td></row>
		<row><td>2939</td><td>##IDS_ERROR_2939##</td></row>
		<row><td>2940</td><td>##IDS_ERROR_2940##</td></row>
		<row><td>2941</td><td>##IDS_ERROR_2941##</td></row>
		<row><td>2942</td><td>##IDS_ERROR_2942##</td></row>
		<row><td>2943</td><td>##IDS_ERROR_2943##</td></row>
		<row><td>2944</td><td>##IDS_ERROR_2944##</td></row>
		<row><td>2945</td><td>##IDS_ERROR_2945##</td></row>
		<row><td>3001</td><td>##IDS_ERROR_3001##</td></row>
		<row><td>3002</td><td>##IDS_ERROR_3002##</td></row>
		<row><td>32</td><td>##IDS_ERROR_20##</td></row>
		<row><td>33</td><td>##IDS_ERROR_21##</td></row>
		<row><td>4</td><td>##IDS_ERROR_3##</td></row>
		<row><td>5</td><td>##IDS_ERROR_4##</td></row>
		<row><td>7</td><td>##IDS_ERROR_5##</td></row>
		<row><td>8</td><td>##IDS_ERROR_6##</td></row>
		<row><td>9</td><td>##IDS_ERROR_7##</td></row>
	</table>

	<table name="EventMapping">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Event</col>
		<col def="s50">Attribute</col>
		<row><td>CustomSetup</td><td>ItemDescription</td><td>SelectionDescription</td><td>Text</td></row>
		<row><td>CustomSetup</td><td>Location</td><td>SelectionPath</td><td>Text</td></row>
		<row><td>CustomSetup</td><td>Size</td><td>SelectionSize</td><td>Text</td></row>
		<row><td>SetupInitialization</td><td>ActionData</td><td>ActionData</td><td>Text</td></row>
		<row><td>SetupInitialization</td><td>ActionText</td><td>ActionText</td><td>Text</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>AdminInstallFinalize</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>InstallFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>MoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>RemoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>RemoveRegistryValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>SetProgress</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>UnmoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>WriteIniValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>WriteRegistryValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionText</td><td>ActionText</td><td>Text</td></row>
	</table>

	<table name="Extension">
		<col key="yes" def="s255">Extension</col>
		<col key="yes" def="s72">Component_</col>
		<col def="S255">ProgId_</col>
		<col def="S64">MIME_</col>
		<col def="s38">Feature_</col>
	</table>

	<table name="Feature">
		<col key="yes" def="s38">Feature</col>
		<col def="S38">Feature_Parent</col>
		<col def="L64">Title</col>
		<col def="L255">Description</col>
		<col def="I2">Display</col>
		<col def="i2">Level</col>
		<col def="S72">Directory_</col>
		<col def="i2">Attributes</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISFeatureCabName</col>
		<col def="S255">ISProFeatureName</col>
		<row><td>AlwaysInstall</td><td/><td>##DN_AlwaysInstall##</td><td>Enter the description for this feature here.</td><td>0</td><td>1</td><td>INSTALLDIR</td><td>16</td><td/><td>Enter comments regarding this feature here.</td><td/><td/></row>
	</table>

	<table name="FeatureComponents">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">Component_</col>
		<row><td>AlwaysInstall</td><td>AIVM.dll</td></row>
		<row><td>AlwaysInstall</td><td>AmrDll.dll</td></row>
		<row><td>AlwaysInstall</td><td>AnalyzeData.dll</td></row>
		<row><td>AlwaysInstall</td><td>AnalyzeData.dll1</td></row>
		<row><td>AlwaysInstall</td><td>AnalyzeData.dll2</td></row>
		<row><td>AlwaysInstall</td><td>AnalyzeData.dll3</td></row>
		<row><td>AlwaysInstall</td><td>AnalyzeData.dll4</td></row>
		<row><td>AlwaysInstall</td><td>AudioIntercom.dll</td></row>
		<row><td>AlwaysInstall</td><td>AudioIntercom.dll1</td></row>
		<row><td>AlwaysInstall</td><td>AudioIntercom.dll2</td></row>
		<row><td>AlwaysInstall</td><td>AudioIntercom.dll3</td></row>
		<row><td>AlwaysInstall</td><td>AudioRender.dll</td></row>
		<row><td>AlwaysInstall</td><td>AudioRender.dll1</td></row>
		<row><td>AlwaysInstall</td><td>AudioRender.dll2</td></row>
		<row><td>AlwaysInstall</td><td>AudioRender.dll3</td></row>
		<row><td>AlwaysInstall</td><td>CMSCommDll.dll</td></row>
		<row><td>AlwaysInstall</td><td>CRashAPI.dll</td></row>
		<row><td>AlwaysInstall</td><td>CascadeClient.dll</td></row>
		<row><td>AlwaysInstall</td><td>Cloud_API.dll</td></row>
		<row><td>AlwaysInstall</td><td>Component</td></row>
		<row><td>AlwaysInstall</td><td>ConfigModule.dll</td></row>
		<row><td>AlwaysInstall</td><td>D3DCompiler_43.dll</td></row>
		<row><td>AlwaysInstall</td><td>D3DX9_43.dll</td></row>
		<row><td>AlwaysInstall</td><td>D3DX9_43.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DVRSDK.dll</td></row>
		<row><td>AlwaysInstall</td><td>DVR_NET_SDK.dll</td></row>
		<row><td>AlwaysInstall</td><td>DVR_NET_SDK.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DecoderSDK.dll</td></row>
		<row><td>AlwaysInstall</td><td>DhDecode.dll</td></row>
		<row><td>AlwaysInstall</td><td>DisplayLayoutSDK.dll</td></row>
		<row><td>AlwaysInstall</td><td>DisplayLayoutSDK.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DllDeinterlace.dll</td></row>
		<row><td>AlwaysInstall</td><td>DllDeinterlace.dll1</td></row>
		<row><td>AlwaysInstall</td><td>DllDeinterlace.dll2</td></row>
		<row><td>AlwaysInstall</td><td>DrawLib.dll</td></row>
		<row><td>AlwaysInstall</td><td>DsSdk.dll</td></row>
		<row><td>AlwaysInstall</td><td>DycHikSingleThreadDecode.dll</td></row>
		<row><td>AlwaysInstall</td><td>EagleEyeRender.dll</td></row>
		<row><td>AlwaysInstall</td><td>EagleEyeRender.dll1</td></row>
		<row><td>AlwaysInstall</td><td>EncryptH264Stream.dll</td></row>
		<row><td>AlwaysInstall</td><td>H264Play.dll</td></row>
		<row><td>AlwaysInstall</td><td>HCAlarm.dll</td></row>
		<row><td>AlwaysInstall</td><td>HCAlarm.dll1</td></row>
		<row><td>AlwaysInstall</td><td>HCCore.dll</td></row>
		<row><td>AlwaysInstall</td><td>HCCore.dll1</td></row>
		<row><td>AlwaysInstall</td><td>HCCoreDevCfg.dll</td></row>
		<row><td>AlwaysInstall</td><td>HCCoreDevCfg.dll1</td></row>
		<row><td>AlwaysInstall</td><td>HCDisplay.dll</td></row>
		<row><td>AlwaysInstall</td><td>HCDisplay.dll1</td></row>
		<row><td>AlwaysInstall</td><td>HCGeneralCfgMgr.dll</td></row>
		<row><td>AlwaysInstall</td><td>HCGeneralCfgMgr.dll1</td></row>
		<row><td>AlwaysInstall</td><td>HCIndustry.dll</td></row>
		<row><td>AlwaysInstall</td><td>HCIndustry.dll1</td></row>
		<row><td>AlwaysInstall</td><td>HCNetSDK.dll</td></row>
		<row><td>AlwaysInstall</td><td>HCNetSDK.dll1</td></row>
		<row><td>AlwaysInstall</td><td>HCNetSDK.dll2</td></row>
		<row><td>AlwaysInstall</td><td>HCPlayBack.dll</td></row>
		<row><td>AlwaysInstall</td><td>HCPlayBack.dll1</td></row>
		<row><td>AlwaysInstall</td><td>HCPreview.dll</td></row>
		<row><td>AlwaysInstall</td><td>HCPreview.dll1</td></row>
		<row><td>AlwaysInstall</td><td>HCVoiceTalk.dll</td></row>
		<row><td>AlwaysInstall</td><td>HCVoiceTalk.dll1</td></row>
		<row><td>AlwaysInstall</td><td>HWDec.dll</td></row>
		<row><td>AlwaysInstall</td><td>HWDecode.dll</td></row>
		<row><td>AlwaysInstall</td><td>HWDecode.dll1</td></row>
		<row><td>AlwaysInstall</td><td>HW_H265dec_Win32D.dll</td></row>
		<row><td>AlwaysInstall</td><td>HikDev.dll</td></row>
		<row><td>AlwaysInstall</td><td>HikDevSearch.dll</td></row>
		<row><td>AlwaysInstall</td><td>HikStream.dll</td></row>
		<row><td>AlwaysInstall</td><td>IASStream.dll</td></row>
		<row><td>AlwaysInstall</td><td>INFAudioDecoder.dll</td></row>
		<row><td>AlwaysInstall</td><td>INFH264.dll</td></row>
		<row><td>AlwaysInstall</td><td>INFNetSDK.dll</td></row>
		<row><td>AlwaysInstall</td><td>INFPlayCtrl.ocx</td></row>
		<row><td>AlwaysInstall</td><td>INFPlaySDK.dll</td></row>
		<row><td>AlwaysInstall</td><td>INFSVAC.dll</td></row>
		<row><td>AlwaysInstall</td><td>INFVideoDecoder.dll</td></row>
		<row><td>AlwaysInstall</td><td>ISMSSDK.dll</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT1</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT10</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT11</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT12</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT13</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT14</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT15</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT16</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT17</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT18</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT19</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT2</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT20</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT21</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT22</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT23</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT24</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT25</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT3</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT4</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT5</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT6</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT7</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT8</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT9</td></row>
		<row><td>AlwaysInstall</td><td>Infra.dll</td></row>
		<row><td>AlwaysInstall</td><td>Infra.dll1</td></row>
		<row><td>AlwaysInstall</td><td>IvsDrawer.dll</td></row>
		<row><td>AlwaysInstall</td><td>IvsDrawer.dll1</td></row>
		<row><td>AlwaysInstall</td><td>KmsStream.dll</td></row>
		<row><td>AlwaysInstall</td><td>MCL_FPTZ.dll</td></row>
		<row><td>AlwaysInstall</td><td>MFCDemo.exe</td></row>
		<row><td>AlwaysInstall</td><td>MJ2KSourceFilter.ax</td></row>
		<row><td>AlwaysInstall</td><td>MP3Decoder.dll</td></row>
		<row><td>AlwaysInstall</td><td>MP_Render.dll</td></row>
		<row><td>AlwaysInstall</td><td>MP_Render.dll1</td></row>
		<row><td>AlwaysInstall</td><td>MP_Render.dll2</td></row>
		<row><td>AlwaysInstall</td><td>MP_VIE.dll</td></row>
		<row><td>AlwaysInstall</td><td>MP_VIE.dll1</td></row>
		<row><td>AlwaysInstall</td><td>MP_VIE.dll2</td></row>
		<row><td>AlwaysInstall</td><td>MQPlugins.dll</td></row>
		<row><td>AlwaysInstall</td><td>MidPage.dll</td></row>
		<row><td>AlwaysInstall</td><td>MogranDecoderDll.dll</td></row>
		<row><td>AlwaysInstall</td><td>MorganExRenderFilter.ax</td></row>
		<row><td>AlwaysInstall</td><td>MorganRenderFilter.ax</td></row>
		<row><td>AlwaysInstall</td><td>MtdOverlayViewer.dll</td></row>
		<row><td>AlwaysInstall</td><td>NVRDll.dll</td></row>
		<row><td>AlwaysInstall</td><td>NetFramework.dll</td></row>
		<row><td>AlwaysInstall</td><td>NetFramework.dll1</td></row>
		<row><td>AlwaysInstall</td><td>NetSdk.dll</td></row>
		<row><td>AlwaysInstall</td><td>NetStream.dll</td></row>
		<row><td>AlwaysInstall</td><td>Newtonsoft.Json.dll</td></row>
		<row><td>AlwaysInstall</td><td>NullSource.ax</td></row>
		<row><td>AlwaysInstall</td><td>OpenAL32.dll</td></row>
		<row><td>AlwaysInstall</td><td>OpenAL32.dll1</td></row>
		<row><td>AlwaysInstall</td><td>OpenAL32.dll2</td></row>
		<row><td>AlwaysInstall</td><td>OpenAL32.dll3</td></row>
		<row><td>AlwaysInstall</td><td>OpenAL32.dll4</td></row>
		<row><td>AlwaysInstall</td><td>OpenAL32New.dll</td></row>
		<row><td>AlwaysInstall</td><td>OpenNetStream.dll</td></row>
		<row><td>AlwaysInstall</td><td>OpenSDK_Demo_Qt.exe</td></row>
		<row><td>AlwaysInstall</td><td>PagStream.dll</td></row>
		<row><td>AlwaysInstall</td><td>PdCssVodClient.dll</td></row>
		<row><td>AlwaysInstall</td><td>PlayCtrl.dll</td></row>
		<row><td>AlwaysInstall</td><td>PlayCtrl.dll1</td></row>
		<row><td>AlwaysInstall</td><td>PlayCtrl.dll2</td></row>
		<row><td>AlwaysInstall</td><td>PlayCtrl.dll3</td></row>
		<row><td>AlwaysInstall</td><td>PlayCtrl.dll4</td></row>
		<row><td>AlwaysInstall</td><td>Player.tlb</td></row>
		<row><td>AlwaysInstall</td><td>PushClient.dll</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Core.dll</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Gui.dll</td></row>
		<row><td>AlwaysInstall</td><td>Qt5Widgets.dll</td></row>
		<row><td>AlwaysInstall</td><td>QtCore4.dll</td></row>
		<row><td>AlwaysInstall</td><td>QtGui4.dll</td></row>
		<row><td>AlwaysInstall</td><td>QtXml4.dll</td></row>
		<row><td>AlwaysInstall</td><td>RTPRTCP.dll</td></row>
		<row><td>AlwaysInstall</td><td>RTSPClient.dll</td></row>
		<row><td>AlwaysInstall</td><td>RTSPClientSync.dll</td></row>
		<row><td>AlwaysInstall</td><td>RTSPClientSync.dll1</td></row>
		<row><td>AlwaysInstall</td><td>SDKLibrary.dll</td></row>
		<row><td>AlwaysInstall</td><td>Sadp.dll</td></row>
		<row><td>AlwaysInstall</td><td>Stream.dll</td></row>
		<row><td>AlwaysInstall</td><td>Stream.dll1</td></row>
		<row><td>AlwaysInstall</td><td>StreamAnalyzer.dll</td></row>
		<row><td>AlwaysInstall</td><td>StreamClient.dll</td></row>
		<row><td>AlwaysInstall</td><td>StreamClient.dll1</td></row>
		<row><td>AlwaysInstall</td><td>StreamClient_V30.dll</td></row>
		<row><td>AlwaysInstall</td><td>StreamLayer.dll</td></row>
		<row><td>AlwaysInstall</td><td>StreamReader.dll</td></row>
		<row><td>AlwaysInstall</td><td>StreamSvr.dll</td></row>
		<row><td>AlwaysInstall</td><td>StreamSvr.dll1</td></row>
		<row><td>AlwaysInstall</td><td>StreamTransClient.dll</td></row>
		<row><td>AlwaysInstall</td><td>StreamTransClient.dll1</td></row>
		<row><td>AlwaysInstall</td><td>StreamTransClient.dll2</td></row>
		<row><td>AlwaysInstall</td><td>StreamTransClient.dll3</td></row>
		<row><td>AlwaysInstall</td><td>StreamTransClient.dll4</td></row>
		<row><td>AlwaysInstall</td><td>StunClientLib.dll</td></row>
		<row><td>AlwaysInstall</td><td>SuperRender.dll</td></row>
		<row><td>AlwaysInstall</td><td>SuperRender.dll1</td></row>
		<row><td>AlwaysInstall</td><td>SuperRender.dll2</td></row>
		<row><td>AlwaysInstall</td><td>SuperRender.dll3</td></row>
		<row><td>AlwaysInstall</td><td>SystemTransform.dll</td></row>
		<row><td>AlwaysInstall</td><td>SystemTransform.dll1</td></row>
		<row><td>AlwaysInstall</td><td>SystemTransform.dll2</td></row>
		<row><td>AlwaysInstall</td><td>SystemTransform.dll3</td></row>
		<row><td>AlwaysInstall</td><td>SystemTransform.dll4</td></row>
		<row><td>AlwaysInstall</td><td>SystemTransform.dll5</td></row>
		<row><td>AlwaysInstall</td><td>TTSClient.dll</td></row>
		<row><td>AlwaysInstall</td><td>TransportEngine.dll</td></row>
		<row><td>AlwaysInstall</td><td>TransportEngine.dll1</td></row>
		<row><td>AlwaysInstall</td><td>V2216DLLDemo.exe</td></row>
		<row><td>AlwaysInstall</td><td>V2216Render.dll</td></row>
		<row><td>AlwaysInstall</td><td>VAGOper.dll</td></row>
		<row><td>AlwaysInstall</td><td>VSSSubSys.dll</td></row>
		<row><td>AlwaysInstall</td><td>VSS_Talk.dll</td></row>
		<row><td>AlwaysInstall</td><td>VTHStack.dll</td></row>
		<row><td>AlwaysInstall</td><td>VcaCfg.dll</td></row>
		<row><td>AlwaysInstall</td><td>VcaDraw.dll</td></row>
		<row><td>AlwaysInstall</td><td>VcaPlay.dll</td></row>
		<row><td>AlwaysInstall</td><td>VideoDecodeSDK.dll</td></row>
		<row><td>AlwaysInstall</td><td>VideoDecodeSDK.dll1</td></row>
		<row><td>AlwaysInstall</td><td>VideoDisplaySDK.dll</td></row>
		<row><td>AlwaysInstall</td><td>VideoDisplaySDK.dll1</td></row>
		<row><td>AlwaysInstall</td><td>VtduStream.dll</td></row>
		<row><td>AlwaysInstall</td><td>WPFComponent.dll</td></row>
		<row><td>AlwaysInstall</td><td>WPFComponent.dll1</td></row>
		<row><td>AlwaysInstall</td><td>YUVProcess.dll</td></row>
		<row><td>AlwaysInstall</td><td>YUVProcess.dll1</td></row>
		<row><td>AlwaysInstall</td><td>aacdec.dll</td></row>
		<row><td>AlwaysInstall</td><td>aacdec.dll1</td></row>
		<row><td>AlwaysInstall</td><td>activemq_cpp.dll</td></row>
		<row><td>AlwaysInstall</td><td>adpcmdec.dll</td></row>
		<row><td>AlwaysInstall</td><td>adpcmdec.dll1</td></row>
		<row><td>AlwaysInstall</td><td>amrdec.dll</td></row>
		<row><td>AlwaysInstall</td><td>amrdec.dll1</td></row>
		<row><td>AlwaysInstall</td><td>armenc32.dll</td></row>
		<row><td>AlwaysInstall</td><td>avcodec.dll</td></row>
		<row><td>AlwaysInstall</td><td>avcodec_57.dll</td></row>
		<row><td>AlwaysInstall</td><td>avformat.dll</td></row>
		<row><td>AlwaysInstall</td><td>avformat_57.dll</td></row>
		<row><td>AlwaysInstall</td><td>avnetsdk.dll</td></row>
		<row><td>AlwaysInstall</td><td>avnetsdk.dll1</td></row>
		<row><td>AlwaysInstall</td><td>avutil.dll</td></row>
		<row><td>AlwaysInstall</td><td>avutil_55.dll</td></row>
		<row><td>AlwaysInstall</td><td>bkpostproc.dll</td></row>
		<row><td>AlwaysInstall</td><td>calib.dll</td></row>
		<row><td>AlwaysInstall</td><td>calib.dll1</td></row>
		<row><td>AlwaysInstall</td><td>client.dll</td></row>
		<row><td>AlwaysInstall</td><td>cv200.dll</td></row>
		<row><td>AlwaysInstall</td><td>cxcore200.dll</td></row>
		<row><td>AlwaysInstall</td><td>dahua_plugin.dll</td></row>
		<row><td>AlwaysInstall</td><td>dbghelp.dll</td></row>
		<row><td>AlwaysInstall</td><td>dbghelp.dll1</td></row>
		<row><td>AlwaysInstall</td><td>dhconfigsdk.dll</td></row>
		<row><td>AlwaysInstall</td><td>dhconfigsdk.dll1</td></row>
		<row><td>AlwaysInstall</td><td>dhdvr.dll</td></row>
		<row><td>AlwaysInstall</td><td>dhdvr.dll1</td></row>
		<row><td>AlwaysInstall</td><td>dhlog.dll</td></row>
		<row><td>AlwaysInstall</td><td>dhlog.dll1</td></row>
		<row><td>AlwaysInstall</td><td>dhnetsdk.dll</td></row>
		<row><td>AlwaysInstall</td><td>dhnetsdk.dll1</td></row>
		<row><td>AlwaysInstall</td><td>dhnetsdk.dll2</td></row>
		<row><td>AlwaysInstall</td><td>dhplay.dll</td></row>
		<row><td>AlwaysInstall</td><td>dhplay.dll1</td></row>
		<row><td>AlwaysInstall</td><td>dhplay.dll2</td></row>
		<row><td>AlwaysInstall</td><td>dllh264.dll</td></row>
		<row><td>AlwaysInstall</td><td>dllh264.dll1</td></row>
		<row><td>AlwaysInstall</td><td>dllmpeg4.dll</td></row>
		<row><td>AlwaysInstall</td><td>ezviz_plugin.dll</td></row>
		<row><td>AlwaysInstall</td><td>ff_kernelDeint.dll</td></row>
		<row><td>AlwaysInstall</td><td>fisheye.dll</td></row>
		<row><td>AlwaysInstall</td><td>g7221dec.dll</td></row>
		<row><td>AlwaysInstall</td><td>g7221dec.dll1</td></row>
		<row><td>AlwaysInstall</td><td>gdiplus.dll</td></row>
		<row><td>AlwaysInstall</td><td>gdiplus.dll1</td></row>
		<row><td>AlwaysInstall</td><td>h264dec.dll</td></row>
		<row><td>AlwaysInstall</td><td>h264dec.dll1</td></row>
		<row><td>AlwaysInstall</td><td>h26ldec.dll</td></row>
		<row><td>AlwaysInstall</td><td>hevcdec.dll</td></row>
		<row><td>AlwaysInstall</td><td>hevcdec.dll1</td></row>
		<row><td>AlwaysInstall</td><td>hi_h264dec.dll</td></row>
		<row><td>AlwaysInstall</td><td>hi_h264dec_v.dll</td></row>
		<row><td>AlwaysInstall</td><td>hik_play_plugin.dll</td></row>
		<row><td>AlwaysInstall</td><td>hik_plugin.dll</td></row>
		<row><td>AlwaysInstall</td><td>hlog.dll</td></row>
		<row><td>AlwaysInstall</td><td>hlog.dll1</td></row>
		<row><td>AlwaysInstall</td><td>hlog.dll2</td></row>
		<row><td>AlwaysInstall</td><td>hpp.dll</td></row>
		<row><td>AlwaysInstall</td><td>hpp.dll1</td></row>
		<row><td>AlwaysInstall</td><td>hpr.dll</td></row>
		<row><td>AlwaysInstall</td><td>hpr.dll1</td></row>
		<row><td>AlwaysInstall</td><td>hpr.dll2</td></row>
		<row><td>AlwaysInstall</td><td>hpr.dll3</td></row>
		<row><td>AlwaysInstall</td><td>hpr.dll4</td></row>
		<row><td>AlwaysInstall</td><td>hsoap.dll</td></row>
		<row><td>AlwaysInstall</td><td>iconv.dll</td></row>
		<row><td>AlwaysInstall</td><td>iconv.dll1</td></row>
		<row><td>AlwaysInstall</td><td>icudt52.dll</td></row>
		<row><td>AlwaysInstall</td><td>icuin52.dll</td></row>
		<row><td>AlwaysInstall</td><td>icuuc52.dll</td></row>
		<row><td>AlwaysInstall</td><td>json.dll</td></row>
		<row><td>AlwaysInstall</td><td>json.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libCASClient.dll</td></row>
		<row><td>AlwaysInstall</td><td>libGetHDSign.dll</td></row>
		<row><td>AlwaysInstall</td><td>libPPVClient2.dll</td></row>
		<row><td>AlwaysInstall</td><td>libapr_1.dll</td></row>
		<row><td>AlwaysInstall</td><td>libapriconv_1.dll</td></row>
		<row><td>AlwaysInstall</td><td>libaprutil_1.dll</td></row>
		<row><td>AlwaysInstall</td><td>libavcodec.dll</td></row>
		<row><td>AlwaysInstall</td><td>libcrypto_1_1.dll</td></row>
		<row><td>AlwaysInstall</td><td>libcurl.dll</td></row>
		<row><td>AlwaysInstall</td><td>libcurl.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libcurl.dll2</td></row>
		<row><td>AlwaysInstall</td><td>libeay32.dll</td></row>
		<row><td>AlwaysInstall</td><td>libeay32.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libeay32.dll2</td></row>
		<row><td>AlwaysInstall</td><td>libeay32.dll3</td></row>
		<row><td>AlwaysInstall</td><td>libfaac.dll</td></row>
		<row><td>AlwaysInstall</td><td>libgcc_s_dw2_1.dll</td></row>
		<row><td>AlwaysInstall</td><td>libhak.dll</td></row>
		<row><td>AlwaysInstall</td><td>libiconv2.dll</td></row>
		<row><td>AlwaysInstall</td><td>libiconv2.dll1</td></row>
		<row><td>AlwaysInstall</td><td>libmp4v2.dll</td></row>
		<row><td>AlwaysInstall</td><td>libmplayer.dll</td></row>
		<row><td>AlwaysInstall</td><td>libssl_1_1.dll</td></row>
		<row><td>AlwaysInstall</td><td>libstdc___6.dll</td></row>
		<row><td>AlwaysInstall</td><td>libwinpthread_1.dll</td></row>
		<row><td>AlwaysInstall</td><td>libxml2.dll</td></row>
		<row><td>AlwaysInstall</td><td>libxml2.dll1</td></row>
		<row><td>AlwaysInstall</td><td>log4cplus_dll.dll</td></row>
		<row><td>AlwaysInstall</td><td>log4cxx.dll</td></row>
		<row><td>AlwaysInstall</td><td>log4net.dll</td></row>
		<row><td>AlwaysInstall</td><td>log4net.dll1</td></row>
		<row><td>AlwaysInstall</td><td>media_client.dll</td></row>
		<row><td>AlwaysInstall</td><td>mfc71.dll</td></row>
		<row><td>AlwaysInstall</td><td>mfc90.dll</td></row>
		<row><td>AlwaysInstall</td><td>mfc90u.dll</td></row>
		<row><td>AlwaysInstall</td><td>mfcm90.dll</td></row>
		<row><td>AlwaysInstall</td><td>mfcm90u.dll</td></row>
		<row><td>AlwaysInstall</td><td>mjpegdec.dll</td></row>
		<row><td>AlwaysInstall</td><td>mjpegdec.dll1</td></row>
		<row><td>AlwaysInstall</td><td>mp2dec.dll</td></row>
		<row><td>AlwaysInstall</td><td>mp2dec.dll1</td></row>
		<row><td>AlwaysInstall</td><td>mp3dec.dll</td></row>
		<row><td>AlwaysInstall</td><td>mp3dec.dll1</td></row>
		<row><td>AlwaysInstall</td><td>mpeg4dec.dll</td></row>
		<row><td>AlwaysInstall</td><td>mpeg4dec.dll1</td></row>
		<row><td>AlwaysInstall</td><td>mpeg4enc.dll</td></row>
		<row><td>AlwaysInstall</td><td>mpeg4enc.dll1</td></row>
		<row><td>AlwaysInstall</td><td>mpglib.dll</td></row>
		<row><td>AlwaysInstall</td><td>msvcm90.dll</td></row>
		<row><td>AlwaysInstall</td><td>msvcp100.dll</td></row>
		<row><td>AlwaysInstall</td><td>msvcp71.dll</td></row>
		<row><td>AlwaysInstall</td><td>msvcp71.dll1</td></row>
		<row><td>AlwaysInstall</td><td>msvcp90.dll</td></row>
		<row><td>AlwaysInstall</td><td>msvcp90.dll1</td></row>
		<row><td>AlwaysInstall</td><td>msvcr100.dll</td></row>
		<row><td>AlwaysInstall</td><td>msvcr120.dll</td></row>
		<row><td>AlwaysInstall</td><td>msvcr71.dll</td></row>
		<row><td>AlwaysInstall</td><td>msvcr71.dll1</td></row>
		<row><td>AlwaysInstall</td><td>msvcr90.dll</td></row>
		<row><td>AlwaysInstall</td><td>msvcr90.dll1</td></row>
		<row><td>AlwaysInstall</td><td>msvcr90.dll2</td></row>
		<row><td>AlwaysInstall</td><td>msvcr90.dll3</td></row>
		<row><td>AlwaysInstall</td><td>msvcrt.dll</td></row>
		<row><td>AlwaysInstall</td><td>opensslwrap.dll</td></row>
		<row><td>AlwaysInstall</td><td>paho_mqtt3c.dll</td></row>
		<row><td>AlwaysInstall</td><td>postproc.dll</td></row>
		<row><td>AlwaysInstall</td><td>postproc.dll1</td></row>
		<row><td>AlwaysInstall</td><td>pthreadVC2.dll</td></row>
		<row><td>AlwaysInstall</td><td>qminimal.dll</td></row>
		<row><td>AlwaysInstall</td><td>qoffscreen.dll</td></row>
		<row><td>AlwaysInstall</td><td>qwindows.dll</td></row>
		<row><td>AlwaysInstall</td><td>ssleay32.dll</td></row>
		<row><td>AlwaysInstall</td><td>ssleay32.dll1</td></row>
		<row><td>AlwaysInstall</td><td>ssleay32.dll2</td></row>
		<row><td>AlwaysInstall</td><td>ssleay32.dll3</td></row>
		<row><td>AlwaysInstall</td><td>store_sys_client.dll</td></row>
		<row><td>AlwaysInstall</td><td>stream_client.dll</td></row>
		<row><td>AlwaysInstall</td><td>streamclient_lib.dll</td></row>
		<row><td>AlwaysInstall</td><td>svac_dec.dll</td></row>
		<row><td>AlwaysInstall</td><td>svac_dec.dll1</td></row>
		<row><td>AlwaysInstall</td><td>svacdec.dll</td></row>
		<row><td>AlwaysInstall</td><td>swresample_2.dll</td></row>
		<row><td>AlwaysInstall</td><td>swscale_4.dll</td></row>
		<row><td>AlwaysInstall</td><td>threadsdk.dll</td></row>
		<row><td>AlwaysInstall</td><td>tmControlClient.dll</td></row>
		<row><td>AlwaysInstall</td><td>trace.dll</td></row>
		<row><td>AlwaysInstall</td><td>udt.dll</td></row>
		<row><td>AlwaysInstall</td><td>vag_client.dll</td></row>
		<row><td>AlwaysInstall</td><td>vag_playctrl.dll</td></row>
		<row><td>AlwaysInstall</td><td>vrbClientSDK.dll</td></row>
		<row><td>AlwaysInstall</td><td>vrbClientSDK.dll1</td></row>
		<row><td>AlwaysInstall</td><td>xvidcore.dll</td></row>
		<row><td>AlwaysInstall</td><td>zlib1.dll</td></row>
		<row><td>AlwaysInstall</td><td>zlib1.dll1</td></row>
	</table>

	<table name="File">
		<col key="yes" def="s72">File</col>
		<col def="s72">Component_</col>
		<col def="s255">FileName</col>
		<col def="i4">FileSize</col>
		<col def="S72">Version</col>
		<col def="S20">Language</col>
		<col def="I2">Attributes</col>
		<col def="i2">Sequence</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I4">ISAttributes</col>
		<col def="S72">ISComponentSubFolder_</col>
		<row><td>File</td><td>Component</td><td>Player.主输出</td><td>0</td><td/><td/><td>0</td><td>1</td><td>&lt;Player&gt;|Built</td><td>3</td><td/></row>
		<row><td>aacdec.dll</td><td>aacdec.dll</td><td>aacdec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\aacdec.dll</td><td>1</td><td/></row>
		<row><td>aacdec.dll1</td><td>aacdec.dll1</td><td>aacdec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\aacdec.dll</td><td>1</td><td/></row>
		<row><td>activemq_cpp.dll</td><td>activemq_cpp.dll</td><td>ACTIVE~1.DLL|activemq-cpp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\activemq-cpp.dll</td><td>1</td><td/></row>
		<row><td>adpcmdec.dll</td><td>adpcmdec.dll</td><td>adpcmdec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\adpcmdec.dll</td><td>1</td><td/></row>
		<row><td>adpcmdec.dll1</td><td>adpcmdec.dll1</td><td>adpcmdec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\adpcmdec.dll</td><td>1</td><td/></row>
		<row><td>aivm.dll</td><td>AIVM.dll</td><td>AIVM.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\AIVM.dll</td><td>1</td><td/></row>
		<row><td>amrdec.dll</td><td>amrdec.dll</td><td>amrdec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\amrdec.dll</td><td>1</td><td/></row>
		<row><td>amrdec.dll1</td><td>amrdec.dll1</td><td>amrdec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\amrdec.dll</td><td>1</td><td/></row>
		<row><td>amrdll.dll</td><td>AmrDll.dll</td><td>AmrDll.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\AmrDll.dll</td><td>1</td><td/></row>
		<row><td>analyzedata.dll</td><td>AnalyzeData.dll</td><td>ANALYZ~1.DLL|AnalyzeData.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\AnalyzeData.dll</td><td>1</td><td/></row>
		<row><td>analyzedata.dll1</td><td>AnalyzeData.dll1</td><td>ANALYZ~1.DLL|AnalyzeData.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\AnalyzeData.dll</td><td>1</td><td/></row>
		<row><td>analyzedata.dll2</td><td>AnalyzeData.dll2</td><td>ANALYZ~1.DLL|AnalyzeData.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\AnalyzeData.dll</td><td>1</td><td/></row>
		<row><td>analyzedata.dll3</td><td>AnalyzeData.dll3</td><td>ANALYZ~1.DLL|AnalyzeData.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\AnalyzeData.dll</td><td>1</td><td/></row>
		<row><td>analyzedata.dll4</td><td>AnalyzeData.dll4</td><td>ANALYZ~1.DLL|AnalyzeData.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\AnalyzeData.dll</td><td>1</td><td/></row>
		<row><td>armenc32.dll</td><td>armenc32.dll</td><td>armenc32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\armenc32.dll</td><td>1</td><td/></row>
		<row><td>audiointercom.dll</td><td>AudioIntercom.dll</td><td>AUDIOI~1.DLL|AudioIntercom.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\AudioIntercom.dll</td><td>1</td><td/></row>
		<row><td>audiointercom.dll1</td><td>AudioIntercom.dll1</td><td>AUDIOI~1.DLL|AudioIntercom.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\AudioIntercom.dll</td><td>1</td><td/></row>
		<row><td>audiointercom.dll2</td><td>AudioIntercom.dll2</td><td>AUDIOI~1.DLL|AudioIntercom.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\AudioIntercom.dll</td><td>1</td><td/></row>
		<row><td>audiointercom.dll3</td><td>AudioIntercom.dll3</td><td>AUDIOI~1.DLL|AudioIntercom.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\AudioIntercom.dll</td><td>1</td><td/></row>
		<row><td>audiorender.dll</td><td>AudioRender.dll</td><td>AUDIOR~1.DLL|AudioRender.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\AudioRender.dll</td><td>1</td><td/></row>
		<row><td>audiorender.dll1</td><td>AudioRender.dll1</td><td>AUDIOR~1.DLL|AudioRender.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\AudioRender.dll</td><td>1</td><td/></row>
		<row><td>audiorender.dll2</td><td>AudioRender.dll2</td><td>AUDIOR~1.DLL|AudioRender.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\AudioRender.dll</td><td>1</td><td/></row>
		<row><td>audiorender.dll3</td><td>AudioRender.dll3</td><td>AUDIOR~1.DLL|AudioRender.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\AudioRender.dll</td><td>1</td><td/></row>
		<row><td>avcodec.dll</td><td>avcodec.dll</td><td>avcodec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\avcodec.dll</td><td>1</td><td/></row>
		<row><td>avcodec_57.dll</td><td>avcodec_57.dll</td><td>AVCODE~1.DLL|avcodec-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\avcodec-57.dll</td><td>1</td><td/></row>
		<row><td>avformat.dll</td><td>avformat.dll</td><td>avformat.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\avformat.dll</td><td>1</td><td/></row>
		<row><td>avformat_57.dll</td><td>avformat_57.dll</td><td>AVFORM~1.DLL|avformat-57.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\avformat-57.dll</td><td>1</td><td/></row>
		<row><td>avnetsdk.dll</td><td>avnetsdk.dll</td><td>avnetsdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\avnetsdk.dll</td><td>1</td><td/></row>
		<row><td>avnetsdk.dll1</td><td>avnetsdk.dll1</td><td>avnetsdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\avnetsdk.dll</td><td>1</td><td/></row>
		<row><td>avutil.dll</td><td>avutil.dll</td><td>avutil.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\avutil.dll</td><td>1</td><td/></row>
		<row><td>avutil_55.dll</td><td>avutil_55.dll</td><td>AVUTIL~1.DLL|avutil-55.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\avutil-55.dll</td><td>1</td><td/></row>
		<row><td>bkpostproc.dll</td><td>bkpostproc.dll</td><td>BKPOST~1.DLL|bkpostproc.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\zyrd\bkpostproc.dll</td><td>1</td><td/></row>
		<row><td>calib.dll</td><td>calib.dll</td><td>calib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\calib.dll</td><td>1</td><td/></row>
		<row><td>calib.dll1</td><td>calib.dll1</td><td>calib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\calib.dll</td><td>1</td><td/></row>
		<row><td>cascadeclient.dll</td><td>CascadeClient.dll</td><td>CASCAD~1.DLL|CascadeClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\CascadeClient.dll</td><td>1</td><td/></row>
		<row><td>client.dll</td><td>client.dll</td><td>client.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\client.dll</td><td>1</td><td/></row>
		<row><td>cloud_api.dll</td><td>Cloud_API.dll</td><td>CLOUD_~1.DLL|Cloud_API.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\Cloud_API.dll</td><td>1</td><td/></row>
		<row><td>cmscommdll.dll</td><td>CMSCommDll.dll</td><td>CMSCOM~1.DLL|CMSCommDll.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\CMSCommDll.dll</td><td>1</td><td/></row>
		<row><td>configmodule.dll</td><td>ConfigModule.dll</td><td>CONFIG~1.DLL|ConfigModule.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\xm\ConfigModule.dll</td><td>1</td><td/></row>
		<row><td>crashapi.dll</td><td>CRashAPI.dll</td><td>CRashAPI.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\CRashAPI.dll</td><td>1</td><td/></row>
		<row><td>cv200.dll</td><td>cv200.dll</td><td>cv200.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\cv200.dll</td><td>1</td><td/></row>
		<row><td>cxcore200.dll</td><td>cxcore200.dll</td><td>CXCORE~1.DLL|cxcore200.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\cxcore200.dll</td><td>1</td><td/></row>
		<row><td>d3dcompiler_43.dll</td><td>D3DCompiler_43.dll</td><td>D3DCOM~1.DLL|D3DCompiler_43.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\D3DCompiler_43.dll</td><td>1</td><td/></row>
		<row><td>d3dx9_43.dll</td><td>D3DX9_43.dll</td><td>D3DX9_43.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\D3DX9_43.dll</td><td>1</td><td/></row>
		<row><td>d3dx9_43.dll1</td><td>D3DX9_43.dll1</td><td>D3DX9_43.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\D3DX9_43.dll</td><td>1</td><td/></row>
		<row><td>dahua_plugin.dll</td><td>dahua_plugin.dll</td><td>DAHUA_~1.DLL|dahua_plugin.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\dahua_plugin.dll</td><td>1</td><td/></row>
		<row><td>dahua_plugin_config.xml</td><td>ISX_DEFAULTCOMPONENT7</td><td>DAHUA_~1.XML|dahua_plugin_config.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\dahua_plugin_config.xml</td><td>1</td><td/></row>
		<row><td>dbghelp.dll</td><td>dbghelp.dll</td><td>dbghelp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\dbghelp.dll</td><td>1</td><td/></row>
		<row><td>dbghelp.dll1</td><td>dbghelp.dll1</td><td>dbghelp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\shcf\dbghelp.dll</td><td>1</td><td/></row>
		<row><td>decodersdk.dll</td><td>DecoderSDK.dll</td><td>DECODE~1.DLL|DecoderSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\xm\DecoderSDK.dll</td><td>1</td><td/></row>
		<row><td>default.log</td><td>ISX_DEFAULTCOMPONENT14</td><td>default.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log\default.log</td><td>1</td><td/></row>
		<row><td>demo.log</td><td>ISX_DEFAULTCOMPONENT14</td><td>Demo.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log\Demo.log</td><td>1</td><td/></row>
		<row><td>device_plugins_config.xml</td><td>ISX_DEFAULTCOMPONENT5</td><td>DEVICE~1.XML|device_plugins_config.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins_config.xml</td><td>1</td><td/></row>
		<row><td>devtype.ini</td><td>ISX_DEFAULTCOMPONENT20</td><td>DevType.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\DevType.ini</td><td>1</td><td/></row>
		<row><td>dhconfigsdk.dll</td><td>dhconfigsdk.dll</td><td>DHCONF~1.DLL|dhconfigsdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\dhconfigsdk.dll</td><td>1</td><td/></row>
		<row><td>dhconfigsdk.dll1</td><td>dhconfigsdk.dll1</td><td>DHCONF~1.DLL|dhconfigsdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\dhconfigsdk.dll</td><td>1</td><td/></row>
		<row><td>dhdecode.dll</td><td>DhDecode.dll</td><td>DhDecode.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\DhDecode.dll</td><td>1</td><td/></row>
		<row><td>dhdvr.dll</td><td>dhdvr.dll</td><td>dhdvr.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\dhdvr.dll</td><td>1</td><td/></row>
		<row><td>dhdvr.dll1</td><td>dhdvr.dll1</td><td>dhdvr.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\dhdvr.dll</td><td>1</td><td/></row>
		<row><td>dhlog.dll</td><td>dhlog.dll</td><td>dhlog.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\dhlog.dll</td><td>1</td><td/></row>
		<row><td>dhlog.dll1</td><td>dhlog.dll1</td><td>dhlog.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\dhlog.dll</td><td>1</td><td/></row>
		<row><td>dhnetsdk.dll</td><td>dhnetsdk.dll</td><td>dhnetsdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\dhnetsdk.dll</td><td>1</td><td/></row>
		<row><td>dhnetsdk.dll1</td><td>dhnetsdk.dll1</td><td>dhnetsdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\dhnetsdk.dll</td><td>1</td><td/></row>
		<row><td>dhnetsdk.dll2</td><td>dhnetsdk.dll2</td><td>dhnetsdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\dhnetsdk.dll</td><td>1</td><td/></row>
		<row><td>dhplay.dll</td><td>dhplay.dll</td><td>dhplay.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\dhplay.dll</td><td>1</td><td/></row>
		<row><td>dhplay.dll1</td><td>dhplay.dll1</td><td>dhplay.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\dhplay.dll</td><td>1</td><td/></row>
		<row><td>dhplay.dll2</td><td>dhplay.dll2</td><td>dhplay.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\dhplay.dll</td><td>1</td><td/></row>
		<row><td>displaylayoutsdk.dll</td><td>DisplayLayoutSDK.dll</td><td>DISPLA~1.DLL|DisplayLayoutSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\shcf\DisplayLayoutSDK.dll</td><td>1</td><td/></row>
		<row><td>displaylayoutsdk.dll1</td><td>DisplayLayoutSDK.dll1</td><td>DISPLA~1.DLL|DisplayLayoutSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\XSJNet\DisplayLayoutSDK.dll</td><td>1</td><td/></row>
		<row><td>dlldeinterlace.dll</td><td>DllDeinterlace.dll</td><td>DLLDEI~1.DLL|DllDeinterlace.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\DllDeinterlace.dll</td><td>1</td><td/></row>
		<row><td>dlldeinterlace.dll1</td><td>DllDeinterlace.dll1</td><td>DLLDEI~1.DLL|DllDeinterlace.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\DllDeinterlace.dll</td><td>1</td><td/></row>
		<row><td>dlldeinterlace.dll2</td><td>DllDeinterlace.dll2</td><td>DLLDEI~1.DLL|DllDeinterlace.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\xm\DllDeinterlace.dll</td><td>1</td><td/></row>
		<row><td>dllh264.dll</td><td>dllh264.dll</td><td>dllh264.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\dllh264.dll</td><td>1</td><td/></row>
		<row><td>dllh264.dll1</td><td>dllh264.dll1</td><td>dllh264.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\xm\dllh264.dll</td><td>1</td><td/></row>
		<row><td>dllmpeg4.dll</td><td>dllmpeg4.dll</td><td>dllmpeg4.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\dllmpeg4.dll</td><td>1</td><td/></row>
		<row><td>drawlib.dll</td><td>DrawLib.dll</td><td>DrawLib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\DrawLib.dll</td><td>1</td><td/></row>
		<row><td>dssdk.dll</td><td>DsSdk.dll</td><td>DsSdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\DsSdk.dll</td><td>1</td><td/></row>
		<row><td>dvr_net_sdk.dll</td><td>DVR_NET_SDK.dll</td><td>DVR_NE~1.DLL|DVR_NET_SDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\shcf\DVR_NET_SDK.dll</td><td>1</td><td/></row>
		<row><td>dvr_net_sdk.dll1</td><td>DVR_NET_SDK.dll1</td><td>DVR_NE~1.DLL|DVR_NET_SDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\XSJNet\DVR_NET_SDK.dll</td><td>1</td><td/></row>
		<row><td>dvrsdk.dll</td><td>DVRSDK.dll</td><td>DVRSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\DVRSDK.dll</td><td>1</td><td/></row>
		<row><td>dvrsdk.pdb</td><td>ISX_DEFAULTCOMPONENT</td><td>DVRSDK.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\DVRSDK.pdb</td><td>1</td><td/></row>
		<row><td>dychiksinglethreaddecode.dll</td><td>DycHikSingleThreadDecode.dll</td><td>DYCHIK~1.DLL|DycHikSingleThreadDecode.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\DycHikSingleThreadDecode.dll</td><td>1</td><td/></row>
		<row><td>eagleeyerender.dll</td><td>EagleEyeRender.dll</td><td>EAGLEE~1.DLL|EagleEyeRender.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\EagleEyeRender.dll</td><td>1</td><td/></row>
		<row><td>eagleeyerender.dll1</td><td>EagleEyeRender.dll1</td><td>EAGLEE~1.DLL|EagleEyeRender.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\EagleEyeRender.dll</td><td>1</td><td/></row>
		<row><td>encrypth264stream.dll</td><td>EncryptH264Stream.dll</td><td>ENCRYP~1.DLL|EncryptH264Stream.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\EncryptH264Stream.dll</td><td>1</td><td/></row>
		<row><td>eventconvertor.xml</td><td>ISX_DEFAULTCOMPONENT8</td><td>EVENTC~1.XML|eventconvertor.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\eventconvertor.xml</td><td>1</td><td/></row>
		<row><td>ezviz_plugin.dll</td><td>ezviz_plugin.dll</td><td>EZVIZ_~1.DLL|ezviz_plugin.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\ezviz_plugin.dll</td><td>1</td><td/></row>
		<row><td>ezvizpluginconfig.xml</td><td>ISX_DEFAULTCOMPONENT8</td><td>EZVIZP~1.XML|EzvizPluginConfig.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\EzvizPluginConfig.xml</td><td>1</td><td/></row>
		<row><td>ff_kerneldeint.dll</td><td>ff_kernelDeint.dll</td><td>FF_KER~1.DLL|ff_kernelDeint.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\ff_kernelDeint.dll</td><td>1</td><td/></row>
		<row><td>fisheye.dll</td><td>fisheye.dll</td><td>fisheye.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\fisheye.dll</td><td>1</td><td/></row>
		<row><td>g7221dec.dll</td><td>g7221dec.dll</td><td>g7221dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\g7221dec.dll</td><td>1</td><td/></row>
		<row><td>g7221dec.dll1</td><td>g7221dec.dll1</td><td>g7221dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\g7221dec.dll</td><td>1</td><td/></row>
		<row><td>gdiplus.dll</td><td>gdiplus.dll</td><td>gdiplus.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\gdiplus.dll</td><td>1</td><td/></row>
		<row><td>gdiplus.dll1</td><td>gdiplus.dll1</td><td>gdiplus.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\gdiplus.dll</td><td>1</td><td/></row>
		<row><td>h264dec.dll</td><td>h264dec.dll</td><td>h264dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\h264dec.dll</td><td>1</td><td/></row>
		<row><td>h264dec.dll1</td><td>h264dec.dll1</td><td>h264dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\h264dec.dll</td><td>1</td><td/></row>
		<row><td>h264play.dll</td><td>H264Play.dll</td><td>H264Play.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\xm\H264Play.dll</td><td>1</td><td/></row>
		<row><td>h26ldec.dll</td><td>h26ldec.dll</td><td>h26ldec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\h26ldec.dll</td><td>1</td><td/></row>
		<row><td>hcalarm.dll</td><td>HCAlarm.dll</td><td>HCAlarm.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\HCAlarm.dll</td><td>1</td><td/></row>
		<row><td>hcalarm.dll1</td><td>HCAlarm.dll1</td><td>HCAlarm.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\HCAlarm.dll</td><td>1</td><td/></row>
		<row><td>hcalarm.lib</td><td>ISX_DEFAULTCOMPONENT4</td><td>HCAlarm.lib</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\HCAlarm.lib</td><td>1</td><td/></row>
		<row><td>hccore.dll</td><td>HCCore.dll</td><td>HCCore.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCCore.dll</td><td>1</td><td/></row>
		<row><td>hccore.dll1</td><td>HCCore.dll1</td><td>HCCore.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCCore.dll</td><td>1</td><td/></row>
		<row><td>hccoredevcfg.dll</td><td>HCCoreDevCfg.dll</td><td>HCCORE~1.DLL|HCCoreDevCfg.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\HCCoreDevCfg.dll</td><td>1</td><td/></row>
		<row><td>hccoredevcfg.dll1</td><td>HCCoreDevCfg.dll1</td><td>HCCORE~1.DLL|HCCoreDevCfg.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\HCCoreDevCfg.dll</td><td>1</td><td/></row>
		<row><td>hcdisplay.dll</td><td>HCDisplay.dll</td><td>HCDISP~1.DLL|HCDisplay.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\HCDisplay.dll</td><td>1</td><td/></row>
		<row><td>hcdisplay.dll1</td><td>HCDisplay.dll1</td><td>HCDISP~1.DLL|HCDisplay.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\HCDisplay.dll</td><td>1</td><td/></row>
		<row><td>hcgeneralcfgmgr.dll</td><td>HCGeneralCfgMgr.dll</td><td>HCGENE~1.DLL|HCGeneralCfgMgr.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\HCGeneralCfgMgr.dll</td><td>1</td><td/></row>
		<row><td>hcgeneralcfgmgr.dll1</td><td>HCGeneralCfgMgr.dll1</td><td>HCGENE~1.DLL|HCGeneralCfgMgr.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\HCGeneralCfgMgr.dll</td><td>1</td><td/></row>
		<row><td>hcgeneralcfgmgr.lib</td><td>ISX_DEFAULTCOMPONENT4</td><td>HCGENE~1.LIB|HCGeneralCfgMgr.lib</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\HCGeneralCfgMgr.lib</td><td>1</td><td/></row>
		<row><td>hcindustry.dll</td><td>HCIndustry.dll</td><td>HCINDU~1.DLL|HCIndustry.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\HCIndustry.dll</td><td>1</td><td/></row>
		<row><td>hcindustry.dll1</td><td>HCIndustry.dll1</td><td>HCINDU~1.DLL|HCIndustry.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\HCIndustry.dll</td><td>1</td><td/></row>
		<row><td>hcnetsdk.dll</td><td>HCNetSDK.dll</td><td>HCNetSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDK.dll</td><td>1</td><td/></row>
		<row><td>hcnetsdk.dll1</td><td>HCNetSDK.dll1</td><td>HCNetSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDK.dll</td><td>1</td><td/></row>
		<row><td>hcnetsdk.dll2</td><td>HCNetSDK.dll2</td><td>HCNetSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\HCNetSDK.dll</td><td>1</td><td/></row>
		<row><td>hcplayback.dll</td><td>HCPlayBack.dll</td><td>HCPLAY~1.DLL|HCPlayBack.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\HCPlayBack.dll</td><td>1</td><td/></row>
		<row><td>hcplayback.dll1</td><td>HCPlayBack.dll1</td><td>HCPLAY~1.DLL|HCPlayBack.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\HCPlayBack.dll</td><td>1</td><td/></row>
		<row><td>hcpreview.dll</td><td>HCPreview.dll</td><td>HCPREV~1.DLL|HCPreview.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\HCPreview.dll</td><td>1</td><td/></row>
		<row><td>hcpreview.dll1</td><td>HCPreview.dll1</td><td>HCPREV~1.DLL|HCPreview.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\HCPreview.dll</td><td>1</td><td/></row>
		<row><td>hcpreview.lib</td><td>ISX_DEFAULTCOMPONENT4</td><td>HCPREV~1.LIB|HCPreview.lib</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\HCPreview.lib</td><td>1</td><td/></row>
		<row><td>hcvoicetalk.dll</td><td>HCVoiceTalk.dll</td><td>HCVOIC~1.DLL|HCVoiceTalk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\HCVoiceTalk.dll</td><td>1</td><td/></row>
		<row><td>hcvoicetalk.dll1</td><td>HCVoiceTalk.dll1</td><td>HCVOIC~1.DLL|HCVoiceTalk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\HCVoiceTalk.dll</td><td>1</td><td/></row>
		<row><td>hevcdec.dll</td><td>hevcdec.dll</td><td>hevcdec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\hevcdec.dll</td><td>1</td><td/></row>
		<row><td>hevcdec.dll1</td><td>hevcdec.dll1</td><td>hevcdec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\hevcdec.dll</td><td>1</td><td/></row>
		<row><td>hi_h264dec.dll</td><td>hi_h264dec.dll</td><td>HI_H26~1.DLL|hi_h264dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\hi_h264dec.dll</td><td>1</td><td/></row>
		<row><td>hi_h264dec_v.dll</td><td>hi_h264dec_v.dll</td><td>HI_H26~1.DLL|hi_h264dec_v.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\xm\hi_h264dec_v.dll</td><td>1</td><td/></row>
		<row><td>hik_play_plugin.dll</td><td>hik_play_plugin.dll</td><td>HIK_PL~1.DLL|hik_play_plugin.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\hik_play_plugin.dll</td><td>1</td><td/></row>
		<row><td>hik_plugin.dll</td><td>hik_plugin.dll</td><td>HIK_PL~1.DLL|hik_plugin.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\hik_plugin.dll</td><td>1</td><td/></row>
		<row><td>hikdev.dll</td><td>HikDev.dll</td><td>HikDev.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HikDev.dll</td><td>1</td><td/></row>
		<row><td>hikdevsearch.dll</td><td>HikDevSearch.dll</td><td>HIKDEV~1.DLL|HikDevSearch.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HikDevSearch.dll</td><td>1</td><td/></row>
		<row><td>hikerror.log</td><td>ISX_DEFAULTCOMPONENT14</td><td>hikerror.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log\hikerror.log</td><td>1</td><td/></row>
		<row><td>hikstream.dll</td><td>HikStream.dll</td><td>HIKSTR~1.DLL|HikStream.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\HikStream.dll</td><td>1</td><td/></row>
		<row><td>hlog.dll</td><td>hlog.dll</td><td>hlog.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\hlog.dll</td><td>1</td><td/></row>
		<row><td>hlog.dll1</td><td>hlog.dll1</td><td>hlog.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\hlog.dll</td><td>1</td><td/></row>
		<row><td>hlog.dll2</td><td>hlog.dll2</td><td>hlog.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\hlog.dll</td><td>1</td><td/></row>
		<row><td>hpp.dll</td><td>hpp.dll</td><td>hpp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\hpp.dll</td><td>1</td><td/></row>
		<row><td>hpp.dll1</td><td>hpp.dll1</td><td>hpp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\hpp.dll</td><td>1</td><td/></row>
		<row><td>hpr.dll</td><td>hpr.dll</td><td>hpr.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\hpr.dll</td><td>1</td><td/></row>
		<row><td>hpr.dll1</td><td>hpr.dll1</td><td>hpr.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\hpr.dll</td><td>1</td><td/></row>
		<row><td>hpr.dll2</td><td>hpr.dll2</td><td>hpr.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\hpr.dll</td><td>1</td><td/></row>
		<row><td>hpr.dll3</td><td>hpr.dll3</td><td>hpr.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\hpr.dll</td><td>1</td><td/></row>
		<row><td>hpr.dll4</td><td>hpr.dll4</td><td>hpr.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\hpr.dll</td><td>1</td><td/></row>
		<row><td>hsoap.dll</td><td>hsoap.dll</td><td>hsoap.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\hsoap.dll</td><td>1</td><td/></row>
		<row><td>hw_h265dec_win32d.dll</td><td>HW_H265dec_Win32D.dll</td><td>HW_H26~1.DLL|HW_H265dec_Win32D.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\xm\HW_H265dec_Win32D.dll</td><td>1</td><td/></row>
		<row><td>hwdec.dll</td><td>HWDec.dll</td><td>HWDec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\HWDec.dll</td><td>1</td><td/></row>
		<row><td>hwdecode.dll</td><td>HWDecode.dll</td><td>HWDecode.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HWDecode.dll</td><td>1</td><td/></row>
		<row><td>hwdecode.dll1</td><td>HWDecode.dll1</td><td>HWDecode.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\HWDecode.dll</td><td>1</td><td/></row>
		<row><td>iasstream.dll</td><td>IASStream.dll</td><td>IASSTR~1.DLL|IASStream.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\IASStream.dll</td><td>1</td><td/></row>
		<row><td>iconv.dll</td><td>iconv.dll</td><td>iconv.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\iconv.dll</td><td>1</td><td/></row>
		<row><td>iconv.dll1</td><td>iconv.dll1</td><td>iconv.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\iconv.dll</td><td>1</td><td/></row>
		<row><td>icudt52.dll</td><td>icudt52.dll</td><td>icudt52.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\icudt52.dll</td><td>1</td><td/></row>
		<row><td>icuin52.dll</td><td>icuin52.dll</td><td>icuin52.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\icuin52.dll</td><td>1</td><td/></row>
		<row><td>icuuc52.dll</td><td>icuuc52.dll</td><td>icuuc52.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\icuuc52.dll</td><td>1</td><td/></row>
		<row><td>infaudiodecoder.dll</td><td>INFAudioDecoder.dll</td><td>INFAUD~1.DLL|INFAudioDecoder.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\INFAudioDecoder.dll</td><td>1</td><td/></row>
		<row><td>infh264.dll</td><td>INFH264.dll</td><td>INFH264.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\INFH264.dll</td><td>1</td><td/></row>
		<row><td>infnetsdk.dll</td><td>INFNetSDK.dll</td><td>INFNET~1.DLL|INFNetSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\INFNetSDK.dll</td><td>1</td><td/></row>
		<row><td>infplayctrl.ocx</td><td>INFPlayCtrl.ocx</td><td>INFPLA~1.OCX|INFPlayCtrl.ocx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\INFPlayCtrl.ocx</td><td>1</td><td/></row>
		<row><td>infplaysdk.dll</td><td>INFPlaySDK.dll</td><td>INFPLA~1.DLL|INFPlaySDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\INFPlaySDK.dll</td><td>1</td><td/></row>
		<row><td>infra.dll</td><td>Infra.dll</td><td>Infra.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\Infra.dll</td><td>1</td><td/></row>
		<row><td>infra.dll1</td><td>Infra.dll1</td><td>Infra.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\Infra.dll</td><td>1</td><td/></row>
		<row><td>infsvac.dll</td><td>INFSVAC.dll</td><td>INFSVAC.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\INFSVAC.dll</td><td>1</td><td/></row>
		<row><td>infvideodecoder.dll</td><td>INFVideoDecoder.dll</td><td>INFVID~1.DLL|INFVideoDecoder.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\INFVideoDecoder.dll</td><td>1</td><td/></row>
		<row><td>infvideodecoder.ini</td><td>ISX_DEFAULTCOMPONENT20</td><td>INFVID~1.INI|INFVideoDecoder.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\INFVideoDecoder.ini</td><td>1</td><td/></row>
		<row><td>ismssdk.dll</td><td>ISMSSDK.dll</td><td>ISMSSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\ISMSSDK.dll</td><td>1</td><td/></row>
		<row><td>ismssdk.log</td><td>ISX_DEFAULTCOMPONENT14</td><td>ISMSSDK.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log\ISMSSDK.log</td><td>1</td><td/></row>
		<row><td>ivsdrawer.dll</td><td>IvsDrawer.dll</td><td>IVSDRA~1.DLL|IvsDrawer.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\IvsDrawer.dll</td><td>1</td><td/></row>
		<row><td>ivsdrawer.dll1</td><td>IvsDrawer.dll1</td><td>IVSDRA~1.DLL|IvsDrawer.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\IvsDrawer.dll</td><td>1</td><td/></row>
		<row><td>json.dll</td><td>json.dll</td><td>json.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\json.dll</td><td>1</td><td/></row>
		<row><td>json.dll1</td><td>json.dll1</td><td>json.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\json.dll</td><td>1</td><td/></row>
		<row><td>kmsstream.dll</td><td>KmsStream.dll</td><td>KMSSTR~1.DLL|KmsStream.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\KmsStream.dll</td><td>1</td><td/></row>
		<row><td>language.xml</td><td>ISX_DEFAULTCOMPONENT13</td><td>Language.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\Language\Language.xml</td><td>1</td><td/></row>
		<row><td>languageconfig.xml</td><td>ISX_DEFAULTCOMPONENT13</td><td>LANGUA~1.XML|languageConfig.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\Language\languageConfig.xml</td><td>1</td><td/></row>
		<row><td>libapr_1.dll</td><td>libapr_1.dll</td><td>libapr-1.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\libapr-1.dll</td><td>1</td><td/></row>
		<row><td>libapriconv_1.dll</td><td>libapriconv_1.dll</td><td>LIBAPR~1.DLL|libapriconv-1.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\libapriconv-1.dll</td><td>1</td><td/></row>
		<row><td>libaprutil_1.dll</td><td>libaprutil_1.dll</td><td>LIBAPR~1.DLL|libaprutil-1.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\libaprutil-1.dll</td><td>1</td><td/></row>
		<row><td>libavcodec.dll</td><td>libavcodec.dll</td><td>LIBAVC~1.DLL|libavcodec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\zyrd\libavcodec.dll</td><td>1</td><td/></row>
		<row><td>libcasclient.dll</td><td>libCASClient.dll</td><td>LIBCAS~1.DLL|libCASClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\libCASClient.dll</td><td>1</td><td/></row>
		<row><td>libcrypto_1_1.dll</td><td>libcrypto_1_1.dll</td><td>LIBCRY~1.DLL|libcrypto-1_1.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\libcrypto-1_1.dll</td><td>1</td><td/></row>
		<row><td>libcurl.dll</td><td>libcurl.dll</td><td>libcurl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\libcurl.dll</td><td>1</td><td/></row>
		<row><td>libcurl.dll1</td><td>libcurl.dll1</td><td>libcurl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\libcurl.dll</td><td>1</td><td/></row>
		<row><td>libcurl.dll2</td><td>libcurl.dll2</td><td>libcurl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\libcurl.dll</td><td>1</td><td/></row>
		<row><td>libeay32.dll</td><td>libeay32.dll</td><td>libeay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\libeay32.dll</td><td>1</td><td/></row>
		<row><td>libeay32.dll1</td><td>libeay32.dll1</td><td>libeay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\libeay32.dll</td><td>1</td><td/></row>
		<row><td>libeay32.dll2</td><td>libeay32.dll2</td><td>libeay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\libeay32.dll</td><td>1</td><td/></row>
		<row><td>libeay32.dll3</td><td>libeay32.dll3</td><td>libeay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\libeay32.dll</td><td>1</td><td/></row>
		<row><td>libfaac.dll</td><td>libfaac.dll</td><td>libfaac.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\libfaac.dll</td><td>1</td><td/></row>
		<row><td>libgcc_s_dw2_1.dll</td><td>libgcc_s_dw2_1.dll</td><td>LIBGCC~1.DLL|libgcc_s_dw2-1.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\libgcc_s_dw2-1.dll</td><td>1</td><td/></row>
		<row><td>libgethdsign.dll</td><td>libGetHDSign.dll</td><td>LIBGET~1.DLL|libGetHDSign.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\libGetHDSign.dll</td><td>1</td><td/></row>
		<row><td>libhak.dll</td><td>libhak.dll</td><td>libhak.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\libhak.dll</td><td>1</td><td/></row>
		<row><td>libiconv2.dll</td><td>libiconv2.dll</td><td>LIBICO~1.DLL|libiconv2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\libiconv2.dll</td><td>1</td><td/></row>
		<row><td>libiconv2.dll1</td><td>libiconv2.dll1</td><td>LIBICO~1.DLL|libiconv2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\libiconv2.dll</td><td>1</td><td/></row>
		<row><td>libmp4v2.dll</td><td>libmp4v2.dll</td><td>libmp4v2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\libmp4v2.dll</td><td>1</td><td/></row>
		<row><td>libmplayer.dll</td><td>libmplayer.dll</td><td>LIBMPL~1.DLL|libmplayer.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\libmplayer.dll</td><td>1</td><td/></row>
		<row><td>libppvclient2.dll</td><td>libPPVClient2.dll</td><td>LIBPPV~1.DLL|libPPVClient2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\libPPVClient2.dll</td><td>1</td><td/></row>
		<row><td>libssl_1_1.dll</td><td>libssl_1_1.dll</td><td>LIBSSL~1.DLL|libssl-1_1.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\libssl-1_1.dll</td><td>1</td><td/></row>
		<row><td>libstdc___6.dll</td><td>libstdc___6.dll</td><td>LIBSTD~1.DLL|libstdc++-6.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\libstdc++-6.dll</td><td>1</td><td/></row>
		<row><td>libwinpthread_1.dll</td><td>libwinpthread_1.dll</td><td>LIBWIN~1.DLL|libwinpthread-1.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\libwinpthread-1.dll</td><td>1</td><td/></row>
		<row><td>libxml2.dll</td><td>libxml2.dll</td><td>libxml2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\libxml2.dll</td><td>1</td><td/></row>
		<row><td>libxml2.dll1</td><td>libxml2.dll1</td><td>libxml2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\libxml2.dll</td><td>1</td><td/></row>
		<row><td>localxml.zip</td><td>ISX_DEFAULTCOMPONENT11</td><td>LocalXml.zip</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\LocalXml.zip</td><td>1</td><td/></row>
		<row><td>log4cplus.properties</td><td>ISX_DEFAULTCOMPONENT7</td><td>LOG4CP~1.PRO|log4cplus.properties</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\log4cplus.properties</td><td>1</td><td/></row>
		<row><td>log4cplus_dll.dll</td><td>log4cplus_dll.dll</td><td>LOG4CP~1.DLL|log4cplus_dll.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log4cplus_dll.dll</td><td>1</td><td/></row>
		<row><td>log4cxx.dll</td><td>log4cxx.dll</td><td>log4cxx.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log4cxx.dll</td><td>1</td><td/></row>
		<row><td>log4cxx.properties</td><td>ISX_DEFAULTCOMPONENT8</td><td>LOG4CX~1.PRO|log4cxx.properties</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\log4cxx.properties</td><td>1</td><td/></row>
		<row><td>log4cxx.properties1</td><td>ISX_DEFAULTCOMPONENT5</td><td>LOG4CX~1.PRO|log4cxx.properties</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log4cxx.properties</td><td>1</td><td/></row>
		<row><td>log4net.config</td><td>ISX_DEFAULTCOMPONENT5</td><td>LOG4NE~1.CON|log4net.config</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log4net.config</td><td>1</td><td/></row>
		<row><td>log4net.dll</td><td>log4net.dll</td><td>log4net.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\log4net.dll</td><td>1</td><td/></row>
		<row><td>log4net.dll1</td><td>log4net.dll1</td><td>log4net.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log4net.dll</td><td>1</td><td/></row>
		<row><td>log4net.xml</td><td>ISX_DEFAULTCOMPONENT6</td><td>log4net.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\log4net.xml</td><td>1</td><td/></row>
		<row><td>log4net.xml1</td><td>ISX_DEFAULTCOMPONENT5</td><td>log4net.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log4net.xml</td><td>1</td><td/></row>
		<row><td>log_config.xml</td><td>ISX_DEFAULTCOMPONENT5</td><td>LOG_CO~1.XML|log_config.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log_config.xml</td><td>1</td><td/></row>
		<row><td>logintypedef.cfg</td><td>ISX_DEFAULTCOMPONENT5</td><td>LOGINT~1.CFG|loginTypeDef.cfg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\loginTypeDef.cfg</td><td>1</td><td/></row>
		<row><td>mcl_fptz.dll</td><td>MCL_FPTZ.dll</td><td>MCL_FPTZ.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\MCL_FPTZ.dll</td><td>1</td><td/></row>
		<row><td>media_client.dll</td><td>media_client.dll</td><td>MEDIA_~1.DLL|media_client.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\media_client.dll</td><td>1</td><td/></row>
		<row><td>mediatest.html</td><td>ISX_DEFAULTCOMPONENT20</td><td>MEDIAT~1.HTM|mediatest.html</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\mediatest.html</td><td>1</td><td/></row>
		<row><td>mfc71.dll</td><td>mfc71.dll</td><td>mfc71.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\mfc71.dll</td><td>1</td><td/></row>
		<row><td>mfc90.dll</td><td>mfc90.dll</td><td>mfc90.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\mfc90.dll</td><td>1</td><td/></row>
		<row><td>mfc90u.dll</td><td>mfc90u.dll</td><td>mfc90u.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\mfc90u.dll</td><td>1</td><td/></row>
		<row><td>mfcdemo.exe</td><td>MFCDemo.exe</td><td>MFCDemo.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\MFCDemo.exe</td><td>1</td><td/></row>
		<row><td>mfcm90.dll</td><td>mfcm90.dll</td><td>mfcm90.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\mfcm90.dll</td><td>1</td><td/></row>
		<row><td>mfcm90u.dll</td><td>mfcm90u.dll</td><td>mfcm90u.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\mfcm90u.dll</td><td>1</td><td/></row>
		<row><td>microsoft.dtfw.dhl.manifest</td><td>ISX_DEFAULTCOMPONENT5</td><td>MICROS~1.MAN|Microsoft.DTfW.DHL.manifest</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\Microsoft.DTfW.DHL.manifest</td><td>1</td><td/></row>
		<row><td>microsoft.vc90.crt.manifest</td><td>ISX_DEFAULTCOMPONENT7</td><td>MICROS~1.MAN|Microsoft.VC90.CRT.manifest</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\Microsoft.VC90.CRT.manifest</td><td>1</td><td/></row>
		<row><td>microsoft.vc90.crt.manifest1</td><td>ISX_DEFAULTCOMPONENT8</td><td>MICROS~1.MAN|Microsoft.VC90.CRT.manifest</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\Microsoft.VC90.CRT.manifest</td><td>1</td><td/></row>
		<row><td>microsoft.vc90.crt.manifest2</td><td>ISX_DEFAULTCOMPONENT11</td><td>MICROS~1.MAN|Microsoft.VC90.CRT.manifest</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\Microsoft.VC90.CRT.manifest</td><td>1</td><td/></row>
		<row><td>microsoft.vc90.crt.manifest3</td><td>ISX_DEFAULTCOMPONENT5</td><td>MICROS~1.MAN|Microsoft.VC90.CRT.manifest</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\Microsoft.VC90.CRT.manifest</td><td>1</td><td/></row>
		<row><td>microsoft.vc90.crt.manifest4</td><td>ISX_DEFAULTCOMPONENT17</td><td>MICROS~1.MAN|Microsoft.VC90.CRT.manifest</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\Microsoft.VC90.CRT.manifest</td><td>1</td><td/></row>
		<row><td>microsoft.vc90.mfc.manifest</td><td>ISX_DEFAULTCOMPONENT8</td><td>MICROS~1.MAN|Microsoft.VC90.MFC.manifest</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\Microsoft.VC90.MFC.manifest</td><td>1</td><td/></row>
		<row><td>midpage.dll</td><td>MidPage.dll</td><td>MidPage.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\MidPage.dll</td><td>1</td><td/></row>
		<row><td>mj2ksourcefilter.ax</td><td>MJ2KSourceFilter.ax</td><td>MJ2KSO~1.AX|MJ2KSourceFilter.ax</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\MJ2KSourceFilter.ax</td><td>1</td><td/></row>
		<row><td>mjpegdec.dll</td><td>mjpegdec.dll</td><td>mjpegdec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\mjpegdec.dll</td><td>1</td><td/></row>
		<row><td>mjpegdec.dll1</td><td>mjpegdec.dll1</td><td>mjpegdec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\mjpegdec.dll</td><td>1</td><td/></row>
		<row><td>moduleplugcfg.xml</td><td>ISX_DEFAULTCOMPONENT5</td><td>MODULE~1.XML|ModulePlugCfg.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\ModulePlugCfg.xml</td><td>1</td><td/></row>
		<row><td>mograndecoderdll.dll</td><td>MogranDecoderDll.dll</td><td>MOGRAN~1.DLL|MogranDecoderDll.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\MogranDecoderDll.dll</td><td>1</td><td/></row>
		<row><td>morganexrenderfilter.ax</td><td>MorganExRenderFilter.ax</td><td>MORGAN~1.AX|MorganExRenderFilter.ax</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\MorganExRenderFilter.ax</td><td>1</td><td/></row>
		<row><td>morganrenderfilter.ax</td><td>MorganRenderFilter.ax</td><td>MORGAN~1.AX|MorganRenderFilter.ax</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\MorganRenderFilter.ax</td><td>1</td><td/></row>
		<row><td>mp2dec.dll</td><td>mp2dec.dll</td><td>mp2dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\mp2dec.dll</td><td>1</td><td/></row>
		<row><td>mp2dec.dll1</td><td>mp2dec.dll1</td><td>mp2dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\mp2dec.dll</td><td>1</td><td/></row>
		<row><td>mp3dec.dll</td><td>mp3dec.dll</td><td>mp3dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\mp3dec.dll</td><td>1</td><td/></row>
		<row><td>mp3dec.dll1</td><td>mp3dec.dll1</td><td>mp3dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\mp3dec.dll</td><td>1</td><td/></row>
		<row><td>mp3decoder.dll</td><td>MP3Decoder.dll</td><td>MP3DEC~1.DLL|MP3Decoder.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\MP3Decoder.dll</td><td>1</td><td/></row>
		<row><td>mp_render.dll</td><td>MP_Render.dll</td><td>MP_REN~1.DLL|MP_Render.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\MP_Render.dll</td><td>1</td><td/></row>
		<row><td>mp_render.dll1</td><td>MP_Render.dll1</td><td>MP_REN~1.DLL|MP_Render.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\MP_Render.dll</td><td>1</td><td/></row>
		<row><td>mp_render.dll2</td><td>MP_Render.dll2</td><td>MP_REN~1.DLL|MP_Render.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\MP_Render.dll</td><td>1</td><td/></row>
		<row><td>mp_vie.dll</td><td>MP_VIE.dll</td><td>MP_VIE.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\MP_VIE.dll</td><td>1</td><td/></row>
		<row><td>mp_vie.dll1</td><td>MP_VIE.dll1</td><td>MP_VIE.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\MP_VIE.dll</td><td>1</td><td/></row>
		<row><td>mp_vie.dll2</td><td>MP_VIE.dll2</td><td>MP_VIE.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\MP_VIE.dll</td><td>1</td><td/></row>
		<row><td>mpeg4dec.dll</td><td>mpeg4dec.dll</td><td>mpeg4dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\mpeg4dec.dll</td><td>1</td><td/></row>
		<row><td>mpeg4dec.dll1</td><td>mpeg4dec.dll1</td><td>mpeg4dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\mpeg4dec.dll</td><td>1</td><td/></row>
		<row><td>mpeg4enc.dll</td><td>mpeg4enc.dll</td><td>mpeg4enc.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\mpeg4enc.dll</td><td>1</td><td/></row>
		<row><td>mpeg4enc.dll1</td><td>mpeg4enc.dll1</td><td>mpeg4enc.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\mpeg4enc.dll</td><td>1</td><td/></row>
		<row><td>mpglib.dll</td><td>mpglib.dll</td><td>mpglib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\mpglib.dll</td><td>1</td><td/></row>
		<row><td>mq.log</td><td>ISX_DEFAULTCOMPONENT14</td><td>MQ.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log\MQ.log</td><td>1</td><td/></row>
		<row><td>mqplugins.dll</td><td>MQPlugins.dll</td><td>MQPLUG~1.DLL|MQPlugins.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\MQPlugins.dll</td><td>1</td><td/></row>
		<row><td>msvcm90.dll</td><td>msvcm90.dll</td><td>msvcm90.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\msvcm90.dll</td><td>1</td><td/></row>
		<row><td>msvcp100.dll</td><td>msvcp100.dll</td><td>msvcp100.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\msvcp100.dll</td><td>1</td><td/></row>
		<row><td>msvcp71.dll</td><td>msvcp71.dll</td><td>msvcp71.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\msvcp71.dll</td><td>1</td><td/></row>
		<row><td>msvcp71.dll1</td><td>msvcp71.dll1</td><td>msvcp71.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\msvcp71.dll</td><td>1</td><td/></row>
		<row><td>msvcp90.dll</td><td>msvcp90.dll</td><td>msvcp90.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\msvcp90.dll</td><td>1</td><td/></row>
		<row><td>msvcp90.dll1</td><td>msvcp90.dll1</td><td>msvcp90.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\zyrd\msvcp90.dll</td><td>1</td><td/></row>
		<row><td>msvcr100.dll</td><td>msvcr100.dll</td><td>msvcr100.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\msvcr100.dll</td><td>1</td><td/></row>
		<row><td>msvcr120.dll</td><td>msvcr120.dll</td><td>msvcr120.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\msvcr120.dll</td><td>1</td><td/></row>
		<row><td>msvcr71.dll</td><td>msvcr71.dll</td><td>msvcr71.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\msvcr71.dll</td><td>1</td><td/></row>
		<row><td>msvcr71.dll1</td><td>msvcr71.dll1</td><td>msvcr71.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\msvcr71.dll</td><td>1</td><td/></row>
		<row><td>msvcr90.dll</td><td>msvcr90.dll</td><td>msvcr90.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\msvcr90.dll</td><td>1</td><td/></row>
		<row><td>msvcr90.dll1</td><td>msvcr90.dll1</td><td>msvcr90.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\msvcr90.dll</td><td>1</td><td/></row>
		<row><td>msvcr90.dll2</td><td>msvcr90.dll2</td><td>msvcr90.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\msvcr90.dll</td><td>1</td><td/></row>
		<row><td>msvcr90.dll3</td><td>msvcr90.dll3</td><td>msvcr90.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\zyrd\msvcr90.dll</td><td>1</td><td/></row>
		<row><td>msvcrt.dll</td><td>msvcrt.dll</td><td>msvcrt.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\msvcrt.dll</td><td>1</td><td/></row>
		<row><td>mtdoverlayviewer.dll</td><td>MtdOverlayViewer.dll</td><td>MTDOVE~1.DLL|MtdOverlayViewer.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\MtdOverlayViewer.dll</td><td>1</td><td/></row>
		<row><td>muitlyplayer.cs</td><td>ISX_DEFAULTCOMPONENT</td><td>MUITLY~1.CS|MuitlyPlayer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\MuitlyPlayer.cs</td><td>1</td><td/></row>
		<row><td>muitlyplayer.designer.cs</td><td>ISX_DEFAULTCOMPONENT</td><td>MUITLY~1.CS|MuitlyPlayer.Designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\MuitlyPlayer.Designer.cs</td><td>1</td><td/></row>
		<row><td>muitlyplayer.resx</td><td>ISX_DEFAULTCOMPONENT</td><td>MUITLY~1.RES|MuitlyPlayer.resx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\MuitlyPlayer.resx</td><td>1</td><td/></row>
		<row><td>multilandefine_en.xml</td><td>ISX_DEFAULTCOMPONENT13</td><td>MULTIL~1.XML|MultiLanDefine_En.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\Language\MultiLanDefine_En.xml</td><td>1</td><td/></row>
		<row><td>multilandefine_zh.xml</td><td>ISX_DEFAULTCOMPONENT13</td><td>MULTIL~1.XML|MultiLanDefine_Zh.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\Language\MultiLanDefine_Zh.xml</td><td>1</td><td/></row>
		<row><td>netframework.dll</td><td>NetFramework.dll</td><td>NETFRA~1.DLL|NetFramework.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\NetFramework.dll</td><td>1</td><td/></row>
		<row><td>netframework.dll1</td><td>NetFramework.dll1</td><td>NETFRA~1.DLL|NetFramework.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\NetFramework.dll</td><td>1</td><td/></row>
		<row><td>netsdk.dll</td><td>NetSdk.dll</td><td>NetSdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\xm\NetSdk.dll</td><td>1</td><td/></row>
		<row><td>netstream.dll</td><td>NetStream.dll</td><td>NETSTR~1.DLL|NetStream.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\NetStream.dll</td><td>1</td><td/></row>
		<row><td>newtonsoft.json.dll</td><td>Newtonsoft.Json.dll</td><td>NEWTON~1.DLL|Newtonsoft.Json.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\Newtonsoft.Json.dll</td><td>1</td><td/></row>
		<row><td>newtonsoft.json.pdb</td><td>ISX_DEFAULTCOMPONENT</td><td>NEWTON~1.PDB|Newtonsoft.Json.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\Newtonsoft.Json.pdb</td><td>1</td><td/></row>
		<row><td>newtonsoft.json.xml</td><td>ISX_DEFAULTCOMPONENT</td><td>NEWTON~1.XML|Newtonsoft.Json.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\Newtonsoft.Json.xml</td><td>1</td><td/></row>
		<row><td>npf.sys</td><td>ISX_DEFAULTCOMPONENT11</td><td>npf.sys</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\npf.sys</td><td>1</td><td/></row>
		<row><td>npf64.sys</td><td>ISX_DEFAULTCOMPONENT11</td><td>npf64.sys</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\npf64.sys</td><td>1</td><td/></row>
		<row><td>nullsource.ax</td><td>NullSource.ax</td><td>NULLSO~1.AX|NullSource.ax</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\NullSource.ax</td><td>1</td><td/></row>
		<row><td>nvrdll.dll</td><td>NVRDll.dll</td><td>NVRDll.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\NVRDll.dll</td><td>1</td><td/></row>
		<row><td>openal32.dll</td><td>OpenAL32.dll</td><td>OpenAL32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\OpenAL32.dll</td><td>1</td><td/></row>
		<row><td>openal32.dll1</td><td>OpenAL32.dll1</td><td>OpenAL32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\OpenAL32.dll</td><td>1</td><td/></row>
		<row><td>openal32.dll2</td><td>OpenAL32.dll2</td><td>OpenAL32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\OpenAL32.dll</td><td>1</td><td/></row>
		<row><td>openal32.dll3</td><td>OpenAL32.dll3</td><td>OpenAL32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\OpenAL32.dll</td><td>1</td><td/></row>
		<row><td>openal32.dll4</td><td>OpenAL32.dll4</td><td>OpenAL32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\OpenAL32.dll</td><td>1</td><td/></row>
		<row><td>openal32new.dll</td><td>OpenAL32New.dll</td><td>OPENAL~1.DLL|OpenAL32New.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\OpenAL32New.dll</td><td>1</td><td/></row>
		<row><td>opennetstream.dll</td><td>OpenNetStream.dll</td><td>OPENNE~1.DLL|OpenNetStream.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\OpenNetStream.dll</td><td>1</td><td/></row>
		<row><td>opensdk_demo_qt.exe</td><td>OpenSDK_Demo_Qt.exe</td><td>OPENSD~1.EXE|OpenSDK_Demo_Qt.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\OpenSDK_Demo_Qt.exe</td><td>1</td><td/></row>
		<row><td>opensdk_demo_qt.ini</td><td>ISX_DEFAULTCOMPONENT8</td><td>OPENSD~1.INI|OpenSDK_Demo_Qt.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\OpenSDK_Demo_Qt.ini</td><td>1</td><td/></row>
		<row><td>opensslwrap.dll</td><td>opensslwrap.dll</td><td>OPENSS~1.DLL|opensslwrap.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\opensslwrap.dll</td><td>1</td><td/></row>
		<row><td>pagstream.dll</td><td>PagStream.dll</td><td>PAGSTR~1.DLL|PagStream.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\PagStream.dll</td><td>1</td><td/></row>
		<row><td>paho_mqtt3c.dll</td><td>paho_mqtt3c.dll</td><td>PAHO-M~1.DLL|paho-mqtt3c.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\paho-mqtt3c.dll</td><td>1</td><td/></row>
		<row><td>pdcssvodclient.dll</td><td>PdCssVodClient.dll</td><td>PDCSSV~1.DLL|PdCssVodClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\PdCssVodClient.dll</td><td>1</td><td/></row>
		<row><td>play_ctrl_config.xml</td><td>ISX_DEFAULTCOMPONENT5</td><td>PLAY_C~1.XML|play_ctrl_config.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_ctrl_config.xml</td><td>1</td><td/></row>
		<row><td>playctrl.dll</td><td>PlayCtrl.dll</td><td>PlayCtrl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\PlayCtrl.dll</td><td>1</td><td/></row>
		<row><td>playctrl.dll1</td><td>PlayCtrl.dll1</td><td>PlayCtrl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\PlayCtrl.dll</td><td>1</td><td/></row>
		<row><td>playctrl.dll2</td><td>PlayCtrl.dll2</td><td>PlayCtrl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\PlayCtrl.dll</td><td>1</td><td/></row>
		<row><td>playctrl.dll3</td><td>PlayCtrl.dll3</td><td>PlayCtrl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\PlayCtrl.dll</td><td>1</td><td/></row>
		<row><td>playctrl.dll4</td><td>PlayCtrl.dll4</td><td>PlayCtrl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\PlayCtrl.dll</td><td>1</td><td/></row>
		<row><td>player.pdb</td><td>ISX_DEFAULTCOMPONENT</td><td>Player.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\Player.pdb</td><td>1</td><td/></row>
		<row><td>player.reg</td><td>ISX_DEFAULTCOMPONENT</td><td>Player.reg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\Player.reg</td><td>1</td><td/></row>
		<row><td>player.tlb</td><td>Player.tlb</td><td>Player.tlb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\Player.tlb</td><td>1</td><td/></row>
		<row><td>plugin_config.xml</td><td>ISX_DEFAULTCOMPONENT11</td><td>PLUGIN~1.XML|plugin_config.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\plugin_config.xml</td><td>1</td><td/></row>
		<row><td>postproc.dll</td><td>postproc.dll</td><td>postproc.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\postproc.dll</td><td>1</td><td/></row>
		<row><td>postproc.dll1</td><td>postproc.dll1</td><td>postproc.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\postproc.dll</td><td>1</td><td/></row>
		<row><td>pthreadvc2.dll</td><td>pthreadVC2.dll</td><td>PTHREA~1.DLL|pthreadVC2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\pthreadVC2.dll</td><td>1</td><td/></row>
		<row><td>pushclient.dll</td><td>PushClient.dll</td><td>PUSHCL~1.DLL|PushClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\PushClient.dll</td><td>1</td><td/></row>
		<row><td>qminimal.dll</td><td>qminimal.dll</td><td>qminimal.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\plugins\platforms\qminimal.dll</td><td>1</td><td/></row>
		<row><td>qoffscreen.dll</td><td>qoffscreen.dll</td><td>QOFFSC~1.DLL|qoffscreen.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\plugins\platforms\qoffscreen.dll</td><td>1</td><td/></row>
		<row><td>qt.conf</td><td>ISX_DEFAULTCOMPONENT8</td><td>QTB897~1.CON|qt.conf</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\qt.conf</td><td>1</td><td/></row>
		<row><td>qt5core.dll</td><td>Qt5Core.dll</td><td>Qt5Core.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\Qt5Core.dll</td><td>1</td><td/></row>
		<row><td>qt5gui.dll</td><td>Qt5Gui.dll</td><td>Qt5Gui.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\Qt5Gui.dll</td><td>1</td><td/></row>
		<row><td>qt5widgets.dll</td><td>Qt5Widgets.dll</td><td>QT5WID~1.DLL|Qt5Widgets.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\Qt5Widgets.dll</td><td>1</td><td/></row>
		<row><td>qtcore4.dll</td><td>QtCore4.dll</td><td>QtCore4.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\QtCore4.dll</td><td>1</td><td/></row>
		<row><td>qtgui4.dll</td><td>QtGui4.dll</td><td>QtGui4.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\QtGui4.dll</td><td>1</td><td/></row>
		<row><td>qtxml4.dll</td><td>QtXml4.dll</td><td>QtXml4.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\QtXml4.dll</td><td>1</td><td/></row>
		<row><td>qwindows.dll</td><td>qwindows.dll</td><td>qwindows.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\plugins\platforms\qwindows.dll</td><td>1</td><td/></row>
		<row><td>reg_infplayctrl_ocx.bat</td><td>ISX_DEFAULTCOMPONENT20</td><td>REG_IN~1.BAT|Reg_INFPlayCtrl_ocx.bat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\Reg_INFPlayCtrl_ocx.bat</td><td>1</td><td/></row>
		<row><td>reg_nullsource_ax.bat</td><td>ISX_DEFAULTCOMPONENT20</td><td>REG_NU~1.BAT|Reg_NullSource_ax.bat</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\Reg_NullSource_ax.bat</td><td>1</td><td/></row>
		<row><td>rtprtcp.dll</td><td>RTPRTCP.dll</td><td>RTPRTCP.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\RTPRTCP.dll</td><td>1</td><td/></row>
		<row><td>rtspclient.dll</td><td>RTSPClient.dll</td><td>RTSPCL~1.DLL|RTSPClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\RTSPClient.dll</td><td>1</td><td/></row>
		<row><td>rtspclientsync.dll</td><td>RTSPClientSync.dll</td><td>RTSPCL~1.DLL|RTSPClientSync.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\RTSPClientSync.dll</td><td>1</td><td/></row>
		<row><td>rtspclientsync.dll1</td><td>RTSPClientSync.dll1</td><td>RTSPCL~1.DLL|RTSPClientSync.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\RTSPClientSync.dll</td><td>1</td><td/></row>
		<row><td>sadp.dll</td><td>Sadp.dll</td><td>Sadp.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\Sadp.dll</td><td>1</td><td/></row>
		<row><td>sadp_npf.sys</td><td>ISX_DEFAULTCOMPONENT11</td><td>sadp_npf.sys</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\sadp_npf.sys</td><td>1</td><td/></row>
		<row><td>sdk_ability.xml</td><td>ISX_DEFAULTCOMPONENT11</td><td>SDK_AB~1.XML|SDK_ABILITY.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\SDK_ABILITY.xml</td><td>1</td><td/></row>
		<row><td>sdk_ability.xml1</td><td>ISX_DEFAULTCOMPONENT5</td><td>SDK_AB~1.XML|SDK_ABILITY.xml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\SDK_ABILITY.xml</td><td>1</td><td/></row>
		<row><td>sdklibrary.dll</td><td>SDKLibrary.dll</td><td>SDKLIB~1.DLL|SDKLibrary.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\SDKLibrary.dll</td><td>1</td><td/></row>
		<row><td>sdklibrary.pdb</td><td>ISX_DEFAULTCOMPONENT</td><td>SDKLIB~1.PDB|SDKLibrary.pdb</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\SDKLibrary.pdb</td><td>1</td><td/></row>
		<row><td>sdktest.ini</td><td>ISX_DEFAULTCOMPONENT20</td><td>SDKTest.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\SDKTest.ini</td><td>1</td><td/></row>
		<row><td>searchdefault.log</td><td>ISX_DEFAULTCOMPONENT14</td><td>SEARCH~1.LOG|searchdefault.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log\searchdefault.log</td><td>1</td><td/></row>
		<row><td>searchrecord.log</td><td>ISX_DEFAULTCOMPONENT14</td><td>SEARCH~1.LOG|SEARCHRECORD.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log\SEARCHRECORD.log</td><td>1</td><td/></row>
		<row><td>setting.ini</td><td>ISX_DEFAULTCOMPONENT20</td><td>Setting.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\Setting.ini</td><td>1</td><td/></row>
		<row><td>singleplayer.cs</td><td>ISX_DEFAULTCOMPONENT</td><td>SINGLE~1.CS|SinglePlayer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\SinglePlayer.cs</td><td>1</td><td/></row>
		<row><td>singleplayer.designer.cs</td><td>ISX_DEFAULTCOMPONENT</td><td>SINGLE~1.CS|SinglePlayer.Designer.cs</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\SinglePlayer.Designer.cs</td><td>1</td><td/></row>
		<row><td>singleplayer.resx</td><td>ISX_DEFAULTCOMPONENT</td><td>SINGLE~1.RES|SinglePlayer.resx</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\123\Player\bin\Release\SinglePlayer.resx</td><td>1</td><td/></row>
		<row><td>ssleay32.dll</td><td>ssleay32.dll</td><td>ssleay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\ssleay32.dll</td><td>1</td><td/></row>
		<row><td>ssleay32.dll1</td><td>ssleay32.dll1</td><td>ssleay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\ssleay32.dll</td><td>1</td><td/></row>
		<row><td>ssleay32.dll2</td><td>ssleay32.dll2</td><td>ssleay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\ssleay32.dll</td><td>1</td><td/></row>
		<row><td>ssleay32.dll3</td><td>ssleay32.dll3</td><td>ssleay32.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\ssleay32.dll</td><td>1</td><td/></row>
		<row><td>store_sys_client.dll</td><td>store_sys_client.dll</td><td>STORE_~1.DLL|store_sys_client.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\store_sys_client.dll</td><td>1</td><td/></row>
		<row><td>stream.dll</td><td>Stream.dll</td><td>Stream.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\Stream.dll</td><td>1</td><td/></row>
		<row><td>stream.dll1</td><td>Stream.dll1</td><td>Stream.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\Stream.dll</td><td>1</td><td/></row>
		<row><td>stream_client.dll</td><td>stream_client.dll</td><td>STREAM~1.DLL|stream_client.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\stream_client.dll</td><td>1</td><td/></row>
		<row><td>stream_layer.log</td><td>ISX_DEFAULTCOMPONENT14</td><td>STREAM~1.LOG|STREAM_LAYER.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log\STREAM_LAYER.log</td><td>1</td><td/></row>
		<row><td>streamanalyzer.dll</td><td>StreamAnalyzer.dll</td><td>STREAM~1.DLL|StreamAnalyzer.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\StreamAnalyzer.dll</td><td>1</td><td/></row>
		<row><td>streamclient.dll</td><td>StreamClient.dll</td><td>STREAM~1.DLL|StreamClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\StreamClient.dll</td><td>1</td><td/></row>
		<row><td>streamclient.dll1</td><td>StreamClient.dll1</td><td>STREAM~1.DLL|StreamClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\StreamClient.dll</td><td>1</td><td/></row>
		<row><td>streamclient_lib.dll</td><td>streamclient_lib.dll</td><td>STREAM~1.DLL|streamclient_lib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\streamclient_lib.dll</td><td>1</td><td/></row>
		<row><td>streamclient_v30.dll</td><td>StreamClient_V30.dll</td><td>STREAM~1.DLL|StreamClient_V30.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\StreamClient_V30.dll</td><td>1</td><td/></row>
		<row><td>streamclientdebugsync.log</td><td>ISX_DEFAULTCOMPONENT19</td><td>STREAM~1.LOG|StreamClientDebugSync.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\StreamClientlog\StreamClientDebugSync.log</td><td>1</td><td/></row>
		<row><td>streamclienterrorsync.log</td><td>ISX_DEFAULTCOMPONENT19</td><td>STREAM~1.LOG|StreamClientErrorSync.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\StreamClientlog\StreamClientErrorSync.log</td><td>1</td><td/></row>
		<row><td>streamclientfatalsync.log</td><td>ISX_DEFAULTCOMPONENT19</td><td>STREAM~1.LOG|StreamClientFatalSync.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\StreamClientlog\StreamClientFatalSync.log</td><td>1</td><td/></row>
		<row><td>streamclienttracesync.log</td><td>ISX_DEFAULTCOMPONENT19</td><td>STREAM~1.LOG|StreamClientTraceSync.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\StreamClientlog\StreamClientTraceSync.log</td><td>1</td><td/></row>
		<row><td>streamclientwarnsync.log</td><td>ISX_DEFAULTCOMPONENT19</td><td>STREAM~1.LOG|StreamClientWarnSync.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\StreamClientlog\StreamClientWarnSync.log</td><td>1</td><td/></row>
		<row><td>streamlayer.dll</td><td>StreamLayer.dll</td><td>STREAM~1.DLL|StreamLayer.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\StreamLayer.dll</td><td>1</td><td/></row>
		<row><td>streamreader.dll</td><td>StreamReader.dll</td><td>STREAM~1.DLL|StreamReader.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\xm\StreamReader.dll</td><td>1</td><td/></row>
		<row><td>streamsvr.dll</td><td>StreamSvr.dll</td><td>STREAM~1.DLL|StreamSvr.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\StreamSvr.dll</td><td>1</td><td/></row>
		<row><td>streamsvr.dll1</td><td>StreamSvr.dll1</td><td>STREAM~1.DLL|StreamSvr.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\StreamSvr.dll</td><td>1</td><td/></row>
		<row><td>streamtransclient.dll</td><td>StreamTransClient.dll</td><td>STREAM~1.DLL|StreamTransClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\StreamTransClient.dll</td><td>1</td><td/></row>
		<row><td>streamtransclient.dll1</td><td>StreamTransClient.dll1</td><td>STREAM~1.DLL|StreamTransClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\StreamTransClient.dll</td><td>1</td><td/></row>
		<row><td>streamtransclient.dll2</td><td>StreamTransClient.dll2</td><td>STREAM~1.DLL|StreamTransClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\StreamTransClient.dll</td><td>1</td><td/></row>
		<row><td>streamtransclient.dll3</td><td>StreamTransClient.dll3</td><td>STREAM~1.DLL|StreamTransClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\StreamTransClient.dll</td><td>1</td><td/></row>
		<row><td>streamtransclient.dll4</td><td>StreamTransClient.dll4</td><td>STREAM~1.DLL|StreamTransClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\StreamTransClient.dll</td><td>1</td><td/></row>
		<row><td>stringresource.en_us.xaml</td><td>ISX_DEFAULTCOMPONENT13</td><td>STRING~1.XAM|StringResource.en-US.xaml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\Language\StringResource.en-US.xaml</td><td>1</td><td/></row>
		<row><td>stringresource.zh_cn.xaml</td><td>ISX_DEFAULTCOMPONENT13</td><td>STRING~1.XAM|StringResource.zh-CN.xaml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\Language\StringResource.zh-CN.xaml</td><td>1</td><td/></row>
		<row><td>stunclientlib.dll</td><td>StunClientLib.dll</td><td>STUNCL~1.DLL|StunClientLib.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\StunClientLib.dll</td><td>1</td><td/></row>
		<row><td>superrender.dll</td><td>SuperRender.dll</td><td>SUPERR~1.DLL|SuperRender.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\SuperRender.dll</td><td>1</td><td/></row>
		<row><td>superrender.dll1</td><td>SuperRender.dll1</td><td>SUPERR~1.DLL|SuperRender.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\SuperRender.dll</td><td>1</td><td/></row>
		<row><td>superrender.dll2</td><td>SuperRender.dll2</td><td>SUPERR~1.DLL|SuperRender.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\SuperRender.dll</td><td>1</td><td/></row>
		<row><td>superrender.dll3</td><td>SuperRender.dll3</td><td>SUPERR~1.DLL|SuperRender.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\SuperRender.dll</td><td>1</td><td/></row>
		<row><td>svac_dec.dll</td><td>svac_dec.dll</td><td>svac_dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\svac_dec.dll</td><td>1</td><td/></row>
		<row><td>svac_dec.dll1</td><td>svac_dec.dll1</td><td>svac_dec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\dahua_device_plugin\svac_dec.dll</td><td>1</td><td/></row>
		<row><td>svacdec.dll</td><td>svacdec.dll</td><td>svacdec.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\svacdec.dll</td><td>1</td><td/></row>
		<row><td>swresample_2.dll</td><td>swresample_2.dll</td><td>SWRESA~1.DLL|swresample-2.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\swresample-2.dll</td><td>1</td><td/></row>
		<row><td>swscale_4.dll</td><td>swscale_4.dll</td><td>SWSCAL~1.DLL|swscale-4.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\swscale-4.dll</td><td>1</td><td/></row>
		<row><td>systemtransform.dll</td><td>SystemTransform.dll</td><td>SYSTEM~1.DLL|SystemTransform.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\HCNetSDKCom\SystemTransform.dll</td><td>1</td><td/></row>
		<row><td>systemtransform.dll1</td><td>SystemTransform.dll1</td><td>SYSTEM~1.DLL|SystemTransform.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\SystemTransform.dll</td><td>1</td><td/></row>
		<row><td>systemtransform.dll2</td><td>SystemTransform.dll2</td><td>SYSTEM~1.DLL|SystemTransform.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\HCNetSDKCom\SystemTransform.dll</td><td>1</td><td/></row>
		<row><td>systemtransform.dll3</td><td>SystemTransform.dll3</td><td>SYSTEM~1.DLL|SystemTransform.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\SystemTransform.dll</td><td>1</td><td/></row>
		<row><td>systemtransform.dll4</td><td>SystemTransform.dll4</td><td>SYSTEM~1.DLL|SystemTransform.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\SystemTransform.dll</td><td>1</td><td/></row>
		<row><td>systemtransform.dll5</td><td>SystemTransform.dll5</td><td>SYSTEM~1.DLL|SystemTransform.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\SystemTransform.dll</td><td>1</td><td/></row>
		<row><td>talk.log</td><td>ISX_DEFAULTCOMPONENT15</td><td>Talk.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log\VSSClient\Talk.log</td><td>1</td><td/></row>
		<row><td>test.htm</td><td>ISX_DEFAULTCOMPONENT20</td><td>test.htm</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\test.htm</td><td>1</td><td/></row>
		<row><td>themes.xaml</td><td>ISX_DEFAULTCOMPONENT5</td><td>THEMES~1.XAM|Themes.xaml</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\Themes.xaml</td><td>1</td><td/></row>
		<row><td>threadsdk.dll</td><td>threadsdk.dll</td><td>THREAD~1.DLL|threadsdk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\threadsdk.dll</td><td>1</td><td/></row>
		<row><td>tmcontrolclient.dll</td><td>tmControlClient.dll</td><td>TMCONT~1.DLL|tmControlClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\zyrd\tmControlClient.dll</td><td>1</td><td/></row>
		<row><td>tmcontrolclient.ini</td><td>ISX_DEFAULTCOMPONENT24</td><td>TMCONT~1.INI|tmControlClient.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\zyrd\tmControlClient.ini</td><td>1</td><td/></row>
		<row><td>trace.dll</td><td>trace.dll</td><td>trace.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\trace.dll</td><td>1</td><td/></row>
		<row><td>trace_streamclientdemo.log</td><td>ISX_DEFAULTCOMPONENT14</td><td>TRACE_~1.LOG|TRACE_StreamClientDemo.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log\TRACE_StreamClientDemo.log</td><td>1</td><td/></row>
		<row><td>transportengine.dll</td><td>TransportEngine.dll</td><td>TRANSP~1.DLL|TransportEngine.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\TransportEngine.dll</td><td>1</td><td/></row>
		<row><td>transportengine.dll1</td><td>TransportEngine.dll1</td><td>TRANSP~1.DLL|TransportEngine.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\TransportEngine.dll</td><td>1</td><td/></row>
		<row><td>ttsclient.dll</td><td>TTSClient.dll</td><td>TTSCLI~1.DLL|TTSClient.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\TTSClient.dll</td><td>1</td><td/></row>
		<row><td>udt.dll</td><td>udt.dll</td><td>udt.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\ezviz_device_plugin\udt.dll</td><td>1</td><td/></row>
		<row><td>v2216dlldemo.exe</td><td>V2216DLLDemo.exe</td><td>V2216D~1.EXE|V2216DLLDemo.exe</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\V2216DLLDemo.exe</td><td>1</td><td/></row>
		<row><td>v2216render.dll</td><td>V2216Render.dll</td><td>V2216R~1.DLL|V2216Render.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\V2216Render.dll</td><td>1</td><td/></row>
		<row><td>v2216render.ini</td><td>ISX_DEFAULTCOMPONENT20</td><td>V2216R~1.INI|V2216Render.ini</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\V2216Render.ini</td><td>1</td><td/></row>
		<row><td>vag_client.dll</td><td>vag_client.dll</td><td>VAG_CL~1.DLL|vag_client.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\vag_client.dll</td><td>1</td><td/></row>
		<row><td>vag_playctrl.dll</td><td>vag_playctrl.dll</td><td>VAG_PL~1.DLL|vag_playctrl.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\vag_playctrl.dll</td><td>1</td><td/></row>
		<row><td>vag_playctrl_log.log</td><td>ISX_DEFAULTCOMPONENT5</td><td>VAG_PL~1.LOG|vag_playctrl_log.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\vag_playctrl_log.log</td><td>1</td><td/></row>
		<row><td>vagoper.dll</td><td>VAGOper.dll</td><td>VAGOper.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\VAGOper.dll</td><td>1</td><td/></row>
		<row><td>vcacfg.dll</td><td>VcaCfg.dll</td><td>VcaCfg.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\VcaCfg.dll</td><td>1</td><td/></row>
		<row><td>vcadraw.dll</td><td>VcaDraw.dll</td><td>VcaDraw.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\VcaDraw.dll</td><td>1</td><td/></row>
		<row><td>vcaplay.dll</td><td>VcaPlay.dll</td><td>VcaPlay.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\VcaPlay.dll</td><td>1</td><td/></row>
		<row><td>videodecodesdk.dll</td><td>VideoDecodeSDK.dll</td><td>VIDEOD~1.DLL|VideoDecodeSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\shcf\VideoDecodeSDK.dll</td><td>1</td><td/></row>
		<row><td>videodecodesdk.dll1</td><td>VideoDecodeSDK.dll1</td><td>VIDEOD~1.DLL|VideoDecodeSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\XSJNet\VideoDecodeSDK.dll</td><td>1</td><td/></row>
		<row><td>videodisplaysdk.dll</td><td>VideoDisplaySDK.dll</td><td>VIDEOD~1.DLL|VideoDisplaySDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\shcf\VideoDisplaySDK.dll</td><td>1</td><td/></row>
		<row><td>videodisplaysdk.dll1</td><td>VideoDisplaySDK.dll1</td><td>VIDEOD~1.DLL|VideoDisplaySDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\XSJNet\VideoDisplaySDK.dll</td><td>1</td><td/></row>
		<row><td>vrbclientsdk.dll</td><td>vrbClientSDK.dll</td><td>VRBCLI~1.DLL|vrbClientSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\vrbClientSDK.dll</td><td>1</td><td/></row>
		<row><td>vrbclientsdk.dll1</td><td>vrbClientSDK.dll1</td><td>VRBCLI~1.DLL|vrbClientSDK.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\vrbClientSDK.dll</td><td>1</td><td/></row>
		<row><td>vss_talk.dll</td><td>VSS_Talk.dll</td><td>VSS_Talk.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\VSS_Talk.dll</td><td>1</td><td/></row>
		<row><td>vsscfg.cfg</td><td>ISX_DEFAULTCOMPONENT5</td><td>vssCfg.cfg</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\vssCfg.cfg</td><td>1</td><td/></row>
		<row><td>vsssubsys.dll</td><td>VSSSubSys.dll</td><td>VSSSUB~1.DLL|VSSSubSys.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\VSSSubSys.dll</td><td>1</td><td/></row>
		<row><td>vsssubsys.log</td><td>ISX_DEFAULTCOMPONENT14</td><td>VSSSUB~1.LOG|VSSSubSys.log</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\log\VSSSubSys.log</td><td>1</td><td/></row>
		<row><td>vtdustream.dll</td><td>VtduStream.dll</td><td>VTDUST~1.DLL|VtduStream.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\VtduStream.dll</td><td>1</td><td/></row>
		<row><td>vthstack.dll</td><td>VTHStack.dll</td><td>VTHStack.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\DHNet\VTHStack.dll</td><td>1</td><td/></row>
		<row><td>wpfcomponent.dll</td><td>WPFComponent.dll</td><td>WPFCOM~1.DLL|WPFComponent.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\WPFComponent.dll</td><td>1</td><td/></row>
		<row><td>wpfcomponent.dll1</td><td>WPFComponent.dll1</td><td>WPFCOM~1.DLL|WPFComponent.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\WPFComponent.dll</td><td>1</td><td/></row>
		<row><td>xvidcore.dll</td><td>xvidcore.dll</td><td>xvidcore.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\INFNet\xvidcore.dll</td><td>1</td><td/></row>
		<row><td>yuvprocess.dll</td><td>YUVProcess.dll</td><td>YUVPRO~1.DLL|YUVProcess.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\YUVProcess.dll</td><td>1</td><td/></row>
		<row><td>yuvprocess.dll1</td><td>YUVProcess.dll1</td><td>YUVPRO~1.DLL|YUVProcess.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\play_plugins\hik_play_plugin\YUVProcess.dll</td><td>1</td><td/></row>
		<row><td>zlib1.dll</td><td>zlib1.dll</td><td>zlib1.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HCNet\zlib1.dll</td><td>1</td><td/></row>
		<row><td>zlib1.dll1</td><td>zlib1.dll1</td><td>zlib1.dll</td><td>0</td><td/><td/><td/><td>1</td><td>C:\Users\YL\Desktop\sdk\HIKPF\device_plugins\hik_device_plugin\zlib1.dll</td><td>1</td><td/></row>
	</table>

	<table name="FileSFPCatalog">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s255">SFPCatalog_</col>
	</table>

	<table name="Font">
		<col key="yes" def="s72">File_</col>
		<col def="S128">FontTitle</col>
	</table>

	<table name="ISAssistantTag">
		<col key="yes" def="s72">Tag</col>
		<col def="S255">Data</col>
	</table>

	<table name="ISBillBoard">
		<col key="yes" def="s72">ISBillboard</col>
		<col def="i2">Duration</col>
		<col def="i2">Origin</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Effect</col>
		<col def="i2">Sequence</col>
		<col def="i2">Target</col>
		<col def="S72">Color</col>
		<col def="S72">Style</col>
		<col def="S72">Font</col>
		<col def="L72">Title</col>
		<col def="S72">DisplayName</col>
	</table>

	<table name="ISChainPackage">
		<col key="yes" def="s72">Package</col>
		<col def="S255">SourcePath</col>
		<col def="S72">ProductCode</col>
		<col def="i2">Order</col>
		<col def="i4">Options</col>
		<col def="S255">InstallCondition</col>
		<col def="S255">RemoveCondition</col>
		<col def="S0">InstallProperties</col>
		<col def="S0">RemoveProperties</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="S72">DisplayName</col>
	</table>

	<table name="ISChainPackageData">
		<col key="yes" def="s72">Package_</col>
		<col key="yes" def="s72">File</col>
		<col def="s50">FilePath</col>
		<col def="I4">Options</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="ISClrWrap">
		<col key="yes" def="s72">Action_</col>
		<col key="yes" def="s72">Name</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISComCatalogAttribute">
		<col key="yes" def="s72">ISComCatalogObject_</col>
		<col key="yes" def="s255">ItemName</col>
		<col def="S0">ItemValue</col>
	</table>

	<table name="ISComCatalogCollection">
		<col key="yes" def="s72">ISComCatalogCollection</col>
		<col def="s72">ISComCatalogObject_</col>
		<col def="s255">CollectionName</col>
	</table>

	<table name="ISComCatalogCollectionObjects">
		<col key="yes" def="s72">ISComCatalogCollection_</col>
		<col key="yes" def="s72">ISComCatalogObject_</col>
	</table>

	<table name="ISComCatalogObject">
		<col key="yes" def="s72">ISComCatalogObject</col>
		<col def="s255">DisplayName</col>
	</table>

	<table name="ISComPlusApplication">
		<col key="yes" def="s72">ISComCatalogObject_</col>
		<col def="S255">ComputerName</col>
		<col def="s72">Component_</col>
		<col def="I2">ISAttributes</col>
		<col def="S0">DepFiles</col>
	</table>

	<table name="ISComPlusApplicationDLL">
		<col key="yes" def="s72">ISComPlusApplicationDLL</col>
		<col def="s72">ISComPlusApplication_</col>
		<col def="s72">ISComCatalogObject_</col>
		<col def="s0">CLSID</col>
		<col def="S0">ProgId</col>
		<col def="S0">DLL</col>
		<col def="S0">AlterDLL</col>
	</table>

	<table name="ISComPlusProxy">
		<col key="yes" def="s72">ISComPlusProxy</col>
		<col def="s72">ISComPlusApplication_</col>
		<col def="S72">Component_</col>
		<col def="I2">ISAttributes</col>
		<col def="S0">DepFiles</col>
	</table>

	<table name="ISComPlusProxyDepFile">
		<col key="yes" def="s72">ISComPlusApplication_</col>
		<col key="yes" def="s72">File_</col>
		<col def="S0">ISPath</col>
	</table>

	<table name="ISComPlusProxyFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">ISComPlusApplicationDLL_</col>
	</table>

	<table name="ISComPlusServerDepFile">
		<col key="yes" def="s72">ISComPlusApplication_</col>
		<col key="yes" def="s72">File_</col>
		<col def="S0">ISPath</col>
	</table>

	<table name="ISComPlusServerFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">ISComPlusApplicationDLL_</col>
	</table>

	<table name="ISComponentExtended">
		<col key="yes" def="s72">Component_</col>
		<col def="I4">OS</col>
		<col def="S0">Language</col>
		<col def="s72">FilterProperty</col>
		<col def="I4">Platforms</col>
		<col def="S0">FTPLocation</col>
		<col def="S0">HTTPLocation</col>
		<col def="S0">Miscellaneous</col>
		<row><td>AIVM.dll</td><td/><td/><td>_E2109692_631A_4256_A3D6_3DFE05A8DFCC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AmrDll.dll</td><td/><td/><td>_E300C560_1DE8_44DC_80E1_71E95E404B7A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AnalyzeData.dll</td><td/><td/><td>_267BB021_7E7E_4FB4_AD7A_C81B983804E6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AnalyzeData.dll1</td><td/><td/><td>_DAE12E3D_3322_4CC8_B3D4_6DEBCEFBA4F4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AnalyzeData.dll2</td><td/><td/><td>_C951EA01_235B_4509_BD69_4B4DDDF6145B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AnalyzeData.dll3</td><td/><td/><td>_85F1669B_44FA_4C3C_998C_F57D7E7CB61B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AnalyzeData.dll4</td><td/><td/><td>_2A4FDC74_70B8_4B9A_B9B4_3332FBBE7901_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AudioIntercom.dll</td><td/><td/><td>_10124062_0A9C_4577_8D20_AAFDC8D7C17C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AudioIntercom.dll1</td><td/><td/><td>_7B12FFB6_7EE2_4B0E_8888_494CB18122C7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AudioIntercom.dll2</td><td/><td/><td>_59175B22_D67B_4C2C_BEEC_EEFF528A491C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AudioIntercom.dll3</td><td/><td/><td>_1D220CF3_D3CE_4F1E_90B1_692553DAA4C8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AudioRender.dll</td><td/><td/><td>_FDEE2367_E0B4_45FB_9402_EA0930745A69_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AudioRender.dll1</td><td/><td/><td>_AA9E0280_6D06_4EB6_8123_4034ABAEA1C4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AudioRender.dll2</td><td/><td/><td>_7B9CD955_A98B_47B8_BDEF_C0694ADD7353_FILTER</td><td/><td/><td/><td/></row>
		<row><td>AudioRender.dll3</td><td/><td/><td>_A809A21C_A3DE_4F99_974A_1155E358BB00_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CMSCommDll.dll</td><td/><td/><td>_2C0CB803_42B2_46A5_AE07_BCF56F34083F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CRashAPI.dll</td><td/><td/><td>_E2CCAE9A_6D38_41CE_8697_86F220167FCB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>CascadeClient.dll</td><td/><td/><td>_B04532B5_4F61_4F5F_A0D7_5320B08E7653_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Cloud_API.dll</td><td/><td/><td>_772EE3C7_62BB_4F7F_AE1E_01DE2D00133C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Component</td><td/><td/><td>_198690E5_68C8_40BD_A8C1_1EE43BA61AC9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ConfigModule.dll</td><td/><td/><td>_A55770BD_C88E_402A_A499_F83AAB99EFD9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>D3DCompiler_43.dll</td><td/><td/><td>_97BC4B40_04DA_49E5_B4B0_F7CF12E40E95_FILTER</td><td/><td/><td/><td/></row>
		<row><td>D3DX9_43.dll</td><td/><td/><td>_70E6E5F3_4157_4984_95AD_3121F5443435_FILTER</td><td/><td/><td/><td/></row>
		<row><td>D3DX9_43.dll1</td><td/><td/><td>_CF1D179B_D8F9_49BC_9473_8AB929162F6E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DVRSDK.dll</td><td/><td/><td>_F8D6BD7E_6BF4_4AD3_B344_1D887707EA15_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DVR_NET_SDK.dll</td><td/><td/><td>_5DD73CEA_77CB_4E63_B1C2_44D26D3D53A2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DVR_NET_SDK.dll1</td><td/><td/><td>_8B1F96CD_B78D_4A5D_AF53_2A2C19D42712_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DecoderSDK.dll</td><td/><td/><td>_A43525CB_71CF_4B7E_9A35_2742F7F3B4A9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DhDecode.dll</td><td/><td/><td>_6F915457_96C8_4B19_9682_9C136303E843_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DisplayLayoutSDK.dll</td><td/><td/><td>_16BE468C_E593_43CB_8E2D_0FA7F7F60FF4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DisplayLayoutSDK.dll1</td><td/><td/><td>_1610FA34_8978_417D_BE7B_1C9B3CB1B300_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DllDeinterlace.dll</td><td/><td/><td>_1BC80F86_02E0_4CB1_A8F7_06885DAEEF1B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DllDeinterlace.dll1</td><td/><td/><td>_9F9AD261_D92B_4BAE_8F18_B0A930112B4B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DllDeinterlace.dll2</td><td/><td/><td>_8EED2045_2F0F_406F_9746_96EC57FF9367_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DrawLib.dll</td><td/><td/><td>_E24B6ED9_E38D_49FB_86C8_4977905E7F1A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DsSdk.dll</td><td/><td/><td>_19C0918B_4F03_4007_AE84_0E266384CDD3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>DycHikSingleThreadDecode.dll</td><td/><td/><td>_9DC6413D_9AC6_456C_820E_BB8DA25FEBB4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EagleEyeRender.dll</td><td/><td/><td>_3289D469_5506_4801_8537_826C984E2B22_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EagleEyeRender.dll1</td><td/><td/><td>_B617413C_B336_4BE7_9B40_AA84CDDB8D4A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>EncryptH264Stream.dll</td><td/><td/><td>_B5D63FFE_9D64_4588_A2EC_5495505A8337_FILTER</td><td/><td/><td/><td/></row>
		<row><td>H264Play.dll</td><td/><td/><td>_CCB46382_C9B2_4F45_B457_93CEB22F2F77_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCAlarm.dll</td><td/><td/><td>_5B42B027_CEBB_494C_BE4E_265C52C799DC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCAlarm.dll1</td><td/><td/><td>_6503F2CB_BA93_41A7_BCEC_25FE09B7D7AD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCCore.dll</td><td/><td/><td>_FFED6394_7A92_4B0F_8684_E03A00AEBE3F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCCore.dll1</td><td/><td/><td>_D854BBB6_0BB9_4B01_8C81_534ECCE00D7E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCCoreDevCfg.dll</td><td/><td/><td>_ACD2BC12_483C_42EF_ACA7_8251E6D8BB3C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCCoreDevCfg.dll1</td><td/><td/><td>_4FAB8C2A_6E66_450E_832F_278D671ED25A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCDisplay.dll</td><td/><td/><td>_37820182_5659_4872_B814_BA7A2661A8DF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCDisplay.dll1</td><td/><td/><td>_3EDCC209_59F7_49FD_B4DE_4BD8C7338742_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCGeneralCfgMgr.dll</td><td/><td/><td>_F201E72F_B0F3_46E7_8CC2_93C6164CA962_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCGeneralCfgMgr.dll1</td><td/><td/><td>_7657EE59_F240_49E7_8AA0_10DC6AFE4382_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCIndustry.dll</td><td/><td/><td>_192E975F_77F3_4C73_BF92_9193E896B8B4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCIndustry.dll1</td><td/><td/><td>_BE9BC117_296C_4F91_8C81_015362DF7992_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCNetSDK.dll</td><td/><td/><td>_D6C22A06_575C_4139_ADB6_3F0F7F351F83_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCNetSDK.dll1</td><td/><td/><td>_C571D076_792F_4DEF_A033_146ED569386C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCNetSDK.dll2</td><td/><td/><td>_56FAA1C7_CC51_4A6B_8339_D5DE8D3DF8C5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCPlayBack.dll</td><td/><td/><td>_9E1B1E94_9324_43B6_B7C4_93E8DB4689C6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCPlayBack.dll1</td><td/><td/><td>_369118C4_5052_4B1D_BA21_62245BA52FDF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCPreview.dll</td><td/><td/><td>_F3EACC4D_9C68_4E11_A1BD_93B0FFB2A274_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCPreview.dll1</td><td/><td/><td>_123E201C_BC37_485A_8C77_F886D3DF9766_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCVoiceTalk.dll</td><td/><td/><td>_5A5EF445_A258_42C3_8807_277994E971EF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HCVoiceTalk.dll1</td><td/><td/><td>_5DB3589B_6D88_4C3D_B285_32E95981F46A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HWDec.dll</td><td/><td/><td>_4F6682E8_CC99_4F42_A712_D99B61527374_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HWDecode.dll</td><td/><td/><td>_DA4470DE_30F6_4183_86FB_80BF74174882_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HWDecode.dll1</td><td/><td/><td>_C8AF142F_9618_43A9_849C_E0B2239BF9C7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HW_H265dec_Win32D.dll</td><td/><td/><td>_4C00FCD8_4229_439B_915D_0C079DA3308E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HikDev.dll</td><td/><td/><td>_3AE64D2D_B68D_47A8_9D13_4F93E74D6A7F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HikDevSearch.dll</td><td/><td/><td>_C1D3CB11_80D2_4C02_894F_A517FF453C9C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>HikStream.dll</td><td/><td/><td>_A1EAAE8A_A926_41C6_9F65_7900C75F6D8A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IASStream.dll</td><td/><td/><td>_1CF7358A_C43A_48BE_B20B_A37E0FEED965_FILTER</td><td/><td/><td/><td/></row>
		<row><td>INFAudioDecoder.dll</td><td/><td/><td>_1C36AC7E_F241_4AD2_B53C_23C18B9519F5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>INFH264.dll</td><td/><td/><td>_57A7D6FB_2670_4D18_BDE8_1EF4DC931730_FILTER</td><td/><td/><td/><td/></row>
		<row><td>INFNetSDK.dll</td><td/><td/><td>_555AAF4C_BFC5_4B3B_B397_429FBD9FD29E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>INFPlayCtrl.ocx</td><td/><td/><td>_05D4C9FF_C801_45DC_8CC7_FF7FE1EADF5A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>INFPlaySDK.dll</td><td/><td/><td>_B92A2A3D_6B47_4168_8B85_16C2A0A028FA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>INFSVAC.dll</td><td/><td/><td>_E58D90A7_C9EE_4690_BDED_B2858832358D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>INFVideoDecoder.dll</td><td/><td/><td>_5872E263_7359_471F_93E4_A6AE8623A1DE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISMSSDK.dll</td><td/><td/><td>_157321E4_3281_4D0D_91C3_F03806557B51_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT</td><td/><td/><td>_6CEEA78E_394F_44E9_A370_5355821B8578_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT1</td><td/><td/><td>_297E6FA8_B6A5_4BC8_962E_43DA482103D9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT10</td><td/><td/><td>_ABFDB244_6ED0_4514_873D_847A432A1606_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT11</td><td/><td/><td>_1FDB1627_171D_4E38_9AE8_1DB710C7CEF1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT12</td><td/><td/><td>_F6AD3382_14F0_4FAB_B494_030F138E4701_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT13</td><td/><td/><td>_2A1C2AFB_0C25_420F_8831_87ABDF3D44EE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT14</td><td/><td/><td>_5D9B3F92_1B42_4087_8D42_062A99074EFC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT15</td><td/><td/><td>_B8DA3EBF_D777_4ED0_8B33_A989087A27EC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT16</td><td/><td/><td>_2F5AC690_FCED_4580_9C68_4F338CC89EED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT17</td><td/><td/><td>_2E25DB26_BB9D_45B4_9C34_5C139214A8A7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT18</td><td/><td/><td>_0FD568F6_0A16_44D8_9E96_6C0B2FD133A3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT19</td><td/><td/><td>_D7A1EB05_D64A_4972_9BF6_0D04395656D4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT2</td><td/><td/><td>_1E9B17E0_7C3D_4AA3_9048_E1C191AD6009_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT20</td><td/><td/><td>_56F52352_36C9_4EE5_B754_829934E0A3F9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT21</td><td/><td/><td>_0A2E0762_E8E8_43EF_85C1_B775CF274070_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT22</td><td/><td/><td>_AF09FE6F_2A28_46F2_A2F6_EB92D9F4BBA7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT23</td><td/><td/><td>_17885C13_30EE_46BC_95E3_8DBB3B201975_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT24</td><td/><td/><td>_B3A2D99A_D09F_42AE_B5D8_B1D4C3DD4F30_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT25</td><td/><td/><td>_0B668864_B377_458B_99B8_E9AAF758BE2F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT3</td><td/><td/><td>_75C97B27_CD1E_4B26_BF5F_415ED1EFCA14_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT4</td><td/><td/><td>_E11D2B2B_5ED4_468E_954C_399193311E84_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT5</td><td/><td/><td>_80760217_D44F_4251_910D_DEEB8E29ABF9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT6</td><td/><td/><td>_A14D4629_C4F2_48EE_B6E8_1326F892EA0C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT7</td><td/><td/><td>_66AFF132_6FFC_4BE8_AA06_00257CC1DDD4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT8</td><td/><td/><td>_E6E4792B_38E3_4BDC_8D9A_05BE1562F31E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT9</td><td/><td/><td>_0845E8CE_DE43_49B8_BC37_934375FA15E2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Infra.dll</td><td/><td/><td>_B006966A_8239_4FF4_9054_6E5D1DE471E7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Infra.dll1</td><td/><td/><td>_6512D4C0_234F_495A_999F_D3180FE58E03_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IvsDrawer.dll</td><td/><td/><td>_734D570B_344F_44E8_84D4_89AC08CDE342_FILTER</td><td/><td/><td/><td/></row>
		<row><td>IvsDrawer.dll1</td><td/><td/><td>_83BBD3CC_061B_41D3_9571_10940E4DB1B2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>KmsStream.dll</td><td/><td/><td>_86536675_4054_44F4_AE41_ABCF7DDD3E5A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MCL_FPTZ.dll</td><td/><td/><td>_7C3D9D45_85D1_4E7C_AAA1_AF10E506EB46_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MFCDemo.exe</td><td/><td/><td>_9400DCC8_A297_4839_9108_64D5CB7EBE68_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MJ2KSourceFilter.ax</td><td/><td/><td>_4F506772_2109_431E_B76B_45B34647DBE6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MP3Decoder.dll</td><td/><td/><td>_20C83D54_7BBC_448B_B956_D32A3BB60347_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MP_Render.dll</td><td/><td/><td>_4C3DD1EB_9751_4DA7_997A_B4A244D45FF7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MP_Render.dll1</td><td/><td/><td>_EFCE1864_CB3B_49A2_858E_4A3E02B828ED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MP_Render.dll2</td><td/><td/><td>_E5E5FFE1_0FE7_41C3_8C95_9DF2E63791E9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MP_VIE.dll</td><td/><td/><td>_C98C6286_575B_457E_85F1_0CA677B4EA95_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MP_VIE.dll1</td><td/><td/><td>_C64209D6_3634_479D_AF8D_5264D742E097_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MP_VIE.dll2</td><td/><td/><td>_6998174F_3BC4_45ED_9DE8_8D8B13F8B557_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MQPlugins.dll</td><td/><td/><td>_7A28AAA9_29DA_4BA3_BA78_F3F0BDFA3897_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MidPage.dll</td><td/><td/><td>_6D6E37C3_6B21_4B77_A636_16582F3FB0A0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MogranDecoderDll.dll</td><td/><td/><td>_1704FE4E_6DBC_4ECF_9393_6235222E7CAF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MorganExRenderFilter.ax</td><td/><td/><td>_9BD4E8A3_F720_4995_AD10_6FD28F11BD56_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MorganRenderFilter.ax</td><td/><td/><td>_1F7B10CC_A537_468B_A5D1_FF553AA88BCC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>MtdOverlayViewer.dll</td><td/><td/><td>_9E14DC00_D427_4275_9F2C_1FE811B8043E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NVRDll.dll</td><td/><td/><td>_CDF842B8_E07F_4C79_82B7_A9E297F6FF6A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NetFramework.dll</td><td/><td/><td>_394A779B_71B0_4965_9078_3C9A01FEA43F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NetFramework.dll1</td><td/><td/><td>_E61833CF_524B_4F32_B7C6_CD1B37B6245A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NetSdk.dll</td><td/><td/><td>_E769DBB9_77BE_4A2F_A603_A86DB44697C4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NetStream.dll</td><td/><td/><td>_C4C9A2A9_1868_449C_B8B3_B94AA716CFD8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Newtonsoft.Json.dll</td><td/><td/><td>_85521E68_D5F8_4C07_A33F_0EE104117834_FILTER</td><td/><td/><td/><td/></row>
		<row><td>NullSource.ax</td><td/><td/><td>_63C6B6C3_68F6_4BB0_8CA6_CE437B1CF6E2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>OpenAL32.dll</td><td/><td/><td>_05982220_E4B2_4063_B392_E7507BCB909B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>OpenAL32.dll1</td><td/><td/><td>_B16C81C1_0920_431F_AB86_E6F4F61109A6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>OpenAL32.dll2</td><td/><td/><td>_48EACD75_174A_4A67_BE16_EC80AC091646_FILTER</td><td/><td/><td/><td/></row>
		<row><td>OpenAL32.dll3</td><td/><td/><td>_E18D91C8_B561_4163_A9AD_E08E80A92E82_FILTER</td><td/><td/><td/><td/></row>
		<row><td>OpenAL32.dll4</td><td/><td/><td>_20CE2A4D_A190_4E64_AD02_E9A6B12C1578_FILTER</td><td/><td/><td/><td/></row>
		<row><td>OpenAL32New.dll</td><td/><td/><td>_01C06D82_5D10_4DC8_983A_F54032185160_FILTER</td><td/><td/><td/><td/></row>
		<row><td>OpenNetStream.dll</td><td/><td/><td>_671A4AA8_9CB9_4813_9242_1D80C5653D6B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>OpenSDK_Demo_Qt.exe</td><td/><td/><td>_AC9E84C4_C74A_45CF_BFC6_A4BC20341904_FILTER</td><td/><td/><td/><td/></row>
		<row><td>PagStream.dll</td><td/><td/><td>_2ACD8D4C_6A55_449C_95F7_8570AD3A9DD0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>PdCssVodClient.dll</td><td/><td/><td>_47ED8EB9_2722_4828_874F_ECD1800D023A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>PlayCtrl.dll</td><td/><td/><td>_DBDA314A_2964_45CC_A785_7F6338F82042_FILTER</td><td/><td/><td/><td/></row>
		<row><td>PlayCtrl.dll1</td><td/><td/><td>_7652A829_6E9E_49DC_AEB2_9AEEBDE76F02_FILTER</td><td/><td/><td/><td/></row>
		<row><td>PlayCtrl.dll2</td><td/><td/><td>_7CBA2387_7BBB_4297_88C7_6A94F6044916_FILTER</td><td/><td/><td/><td/></row>
		<row><td>PlayCtrl.dll3</td><td/><td/><td>_AC0DBB97_7EB8_417C_9084_EE3145B145AA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>PlayCtrl.dll4</td><td/><td/><td>_BA80000C_DF53_4BC9_94EE_0715BBE706C1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Player.tlb</td><td/><td/><td>_A3D74FC1_E6E7_4EBB_ACA1_A060B05633AA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>PushClient.dll</td><td/><td/><td>_82A7C613_E8EE_40BD_8205_D99AE3BC9F6B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Core.dll</td><td/><td/><td>_E987C57B_5FD7_43A5_A97E_B9909538970D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Gui.dll</td><td/><td/><td>_04358612_DBC0_4BD5_B58E_7364E0006E1A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Qt5Widgets.dll</td><td/><td/><td>_DAA8CD53_720D_47AF_9DE4_DB3D2947CD9E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>QtCore4.dll</td><td/><td/><td>_1BE06D74_A4FF_4BE9_86E3_0E68647BC320_FILTER</td><td/><td/><td/><td/></row>
		<row><td>QtGui4.dll</td><td/><td/><td>_0EF0EE09_84D3_4D51_9297_80D112B2CA37_FILTER</td><td/><td/><td/><td/></row>
		<row><td>QtXml4.dll</td><td/><td/><td>_AD060109_067A_4BFD_ADDB_D2F5B3A4B10B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>RTPRTCP.dll</td><td/><td/><td>_04F9F14C_8604_4524_A3C0_06B4054386ED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>RTSPClient.dll</td><td/><td/><td>_28A28EF5_DBA0_44F6_A535_BFDBF5B47792_FILTER</td><td/><td/><td/><td/></row>
		<row><td>RTSPClientSync.dll</td><td/><td/><td>_C124B146_49D2_42AA_BB43_62729B218E58_FILTER</td><td/><td/><td/><td/></row>
		<row><td>RTSPClientSync.dll1</td><td/><td/><td>_DE45EB0C_5D1B_4339_AE7D_7FEB226F2DE8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SDKLibrary.dll</td><td/><td/><td>_21265A0D_4F97_4CD9_8E3A_70A12367488B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Sadp.dll</td><td/><td/><td>_1D7B4582_0048_4D7A_8CE2_1419ECCCE358_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Stream.dll</td><td/><td/><td>_F884D280_4621_4281_BF0F_5C83641FF53F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>Stream.dll1</td><td/><td/><td>_4D151B7C_79FA_4FF6_B9CF_6548C59A2BF6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamAnalyzer.dll</td><td/><td/><td>_76FCBF92_B599_4EDD_AE51_AE8D083E5A97_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamClient.dll</td><td/><td/><td>_35A787FD_3BEB_43DA_983D_4CE2FD3880AA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamClient.dll1</td><td/><td/><td>_095E13DE_1607_415F_B5FA_EE7483F5E8CB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamClient_V30.dll</td><td/><td/><td>_B2079DC6_AD69_4BC9_81AF_165AB93BFCEC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamLayer.dll</td><td/><td/><td>_035A4158_4762_4FC6_9094_456DD8A83FBC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamReader.dll</td><td/><td/><td>_86AE84CE_5C33_4DD7_AC44_5C8E0E1B62EA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamSvr.dll</td><td/><td/><td>_147A7F52_5D53_4C07_83C0_95A8E0C7C061_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamSvr.dll1</td><td/><td/><td>_8FD0F413_447A_4712_AC4B_B878297F5784_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamTransClient.dll</td><td/><td/><td>_30FB6557_4097_4DFA_9CC0_667A5DBC5EF0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamTransClient.dll1</td><td/><td/><td>_DE936466_4404_452E_ACA8_7A19D2C53DFE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamTransClient.dll2</td><td/><td/><td>_6F1AF034_2CFE_4B6A_B53D_C4F58392463D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamTransClient.dll3</td><td/><td/><td>_491A87B5_E098_4803_A58F_57A9707A969C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StreamTransClient.dll4</td><td/><td/><td>_EEB7DB23_5373_4852_8BB2_BF7C35E9CB78_FILTER</td><td/><td/><td/><td/></row>
		<row><td>StunClientLib.dll</td><td/><td/><td>_C85881D1_FD1F_4DBE_8E67_57098E7C0DF5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SuperRender.dll</td><td/><td/><td>_59C18E54_DAB7_4123_A3EC_8508D28093FA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SuperRender.dll1</td><td/><td/><td>_6345CACF_4E07_4DFD_A1D0_AE5EEEDC4EEB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SuperRender.dll2</td><td/><td/><td>_07D4B20B_7047_4A84_B888_5A9A57DC8F57_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SuperRender.dll3</td><td/><td/><td>_65E5F3DC_66EF_407D_AE68_1653CFF0A074_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SystemTransform.dll</td><td/><td/><td>_379CE986_E136_45B6_A440_3B3A842E74AF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SystemTransform.dll1</td><td/><td/><td>_39F3CCD7_FBFE_4A56_8B49_A3833BBB7A3C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SystemTransform.dll2</td><td/><td/><td>_54FAB334_7591_410F_9AE8_319AAA730A96_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SystemTransform.dll3</td><td/><td/><td>_5B873CCA_84A2_429F_B83E_70F5E77C6C68_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SystemTransform.dll4</td><td/><td/><td>_901F7584_FDB1_4813_9690_7ADC767530E7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>SystemTransform.dll5</td><td/><td/><td>_CB460831_6BC0_4D9F_830D_A5FD8E76F0C7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>TTSClient.dll</td><td/><td/><td>_65403303_2F4B_4C4B_8238_9FD8F12C4CD9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>TransportEngine.dll</td><td/><td/><td>_7E944BC1_B129_426D_9AF8_AF109F273035_FILTER</td><td/><td/><td/><td/></row>
		<row><td>TransportEngine.dll1</td><td/><td/><td>_69E3D0E6_4BE9_47BF_930B_26ACC24472F7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>V2216DLLDemo.exe</td><td/><td/><td>_6045C853_027D_46D4_9D16_DC02AC1B1A9B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>V2216Render.dll</td><td/><td/><td>_657B0A4E_33E9_4E1F_9261_D0E5B7925F8A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>VAGOper.dll</td><td/><td/><td>_FA0A14FB_A12E_48B6_9669_BFAA11A89E64_FILTER</td><td/><td/><td/><td/></row>
		<row><td>VSSSubSys.dll</td><td/><td/><td>_98EFA9DF_A7CF_4321_A0CF_62A4E9668A41_FILTER</td><td/><td/><td/><td/></row>
		<row><td>VSS_Talk.dll</td><td/><td/><td>_94399450_6531_46FE_8F9D_265CA49F6ACA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>VTHStack.dll</td><td/><td/><td>_97AD0670_7BFA_4DF4_BB36_9536D9852271_FILTER</td><td/><td/><td/><td/></row>
		<row><td>VcaCfg.dll</td><td/><td/><td>_0353E976_61D6_4313_BB6B_CB148D7F2A30_FILTER</td><td/><td/><td/><td/></row>
		<row><td>VcaDraw.dll</td><td/><td/><td>_E67017E4_1018_4F28_9903_656AB304537B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>VcaPlay.dll</td><td/><td/><td>_509753BB_92BC_4203_9657_6A05A646B75D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>VideoDecodeSDK.dll</td><td/><td/><td>_5D83AF0D_6D3C_4E76_BC36_C4A8A64706C5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>VideoDecodeSDK.dll1</td><td/><td/><td>_A5E0606B_AFB6_4883_B875_3E4DA7578F8D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>VideoDisplaySDK.dll</td><td/><td/><td>_022950C3_75B9_430F_BD5D_5053105DC172_FILTER</td><td/><td/><td/><td/></row>
		<row><td>VideoDisplaySDK.dll1</td><td/><td/><td>_15CAF10E_C04F_4003_85EF_BFC711D96740_FILTER</td><td/><td/><td/><td/></row>
		<row><td>VtduStream.dll</td><td/><td/><td>_B99E764F_1BB3_4B2F_8F10_856499594ACD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>WPFComponent.dll</td><td/><td/><td>_06194BA2_E630_44BB_86DD_F7C64B3F1594_FILTER</td><td/><td/><td/><td/></row>
		<row><td>WPFComponent.dll1</td><td/><td/><td>_E3D01AF8_E89F_474E_9701_5203506A76DC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>YUVProcess.dll</td><td/><td/><td>_E508EE7A_D53E_4866_8679_93DC2E24AB18_FILTER</td><td/><td/><td/><td/></row>
		<row><td>YUVProcess.dll1</td><td/><td/><td>_4AB19D30_6A45_40A2_A6D8_2DB5ADEBDC9D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>aacdec.dll</td><td/><td/><td>_A1AAB55F_3421_4792_9B14_1BF398D1557C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>aacdec.dll1</td><td/><td/><td>_D544B703_FF1F_4203_B673_B66777117B88_FILTER</td><td/><td/><td/><td/></row>
		<row><td>activemq_cpp.dll</td><td/><td/><td>_944E7653_F1DE_4476_9E75_52BC77622394_FILTER</td><td/><td/><td/><td/></row>
		<row><td>adpcmdec.dll</td><td/><td/><td>_4D0FAFE7_30BE_4D34_B0DC_C12CC8B6031F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>adpcmdec.dll1</td><td/><td/><td>_A37FAE3D_EB9F_47E1_AB07_E2371B9E1A4F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>amrdec.dll</td><td/><td/><td>_CC745EEF_0C25_4057_B0C4_41A5B05DA984_FILTER</td><td/><td/><td/><td/></row>
		<row><td>amrdec.dll1</td><td/><td/><td>_FC314DDB_F395_4D56_94DA_16C9F0ECC4B3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>armenc32.dll</td><td/><td/><td>_E525CA6A_A538_4E8D_B7A7_99780FFCA392_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avcodec.dll</td><td/><td/><td>_7F8FCE47_C19A_42C9_ABA5_B80E76EFFA69_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avcodec_57.dll</td><td/><td/><td>_37FB196C_3F34_41FF_85DC_617AA56EBACE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avformat.dll</td><td/><td/><td>_F1934019_B41B_4D0C_ACA8_79F0ABD5A8C8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avformat_57.dll</td><td/><td/><td>_1D0A5F6A_2F7F_46B7_B82B_6BF053587F9C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avnetsdk.dll</td><td/><td/><td>_8D27694C_F87F_438C_98CF_6D64041C6C9F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avnetsdk.dll1</td><td/><td/><td>_33EA73D4_C1BB_4F88_8313_74CA6611F3D4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avutil.dll</td><td/><td/><td>_97DDD7AF_D5BC_4C19_B7E2_48B400821CB3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>avutil_55.dll</td><td/><td/><td>_2934DC96_77C7_4402_855F_68710A8A6732_FILTER</td><td/><td/><td/><td/></row>
		<row><td>bkpostproc.dll</td><td/><td/><td>_5BA17435_C3EE_4BDE_AD1E_D7A9B97075A8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>calib.dll</td><td/><td/><td>_B821233E_1931_48D1_B436_F44F3F8A4E16_FILTER</td><td/><td/><td/><td/></row>
		<row><td>calib.dll1</td><td/><td/><td>_C5C8D289_97BC_487F_AB39_736A52ED5E40_FILTER</td><td/><td/><td/><td/></row>
		<row><td>client.dll</td><td/><td/><td>_6B9AF22D_5031_4E51_8818_C0FB4BB13639_FILTER</td><td/><td/><td/><td/></row>
		<row><td>cv200.dll</td><td/><td/><td>_67FA785B_1CBD_421A_B3B2_0E280574D399_FILTER</td><td/><td/><td/><td/></row>
		<row><td>cxcore200.dll</td><td/><td/><td>_4C9BD8F8_35E9_4E31_9E31_297F05AC1DAB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dahua_plugin.dll</td><td/><td/><td>_436AEC8E_63F4_480C_849D_8080764AFF4E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dbghelp.dll</td><td/><td/><td>_56EFCB3D_C4C6_4872_BEC0_9CBF83C1EE6B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dbghelp.dll1</td><td/><td/><td>_A2703942_F058_477D_8799_79A82632B103_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dhconfigsdk.dll</td><td/><td/><td>_CAA36B59_5F8C_4673_8461_D37F81B85C9C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dhconfigsdk.dll1</td><td/><td/><td>_C029F12A_DC9D_45DE_B424_13F4C0D7759B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dhdvr.dll</td><td/><td/><td>_6F2AE5B0_20F9_4935_9BCF_15C96EFF8DB6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dhdvr.dll1</td><td/><td/><td>_19E67DF8_242A_4BEB_8835_FF282A86118C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dhlog.dll</td><td/><td/><td>_FB4CD68D_AE59_401C_8EB7_06EDAD5E7B76_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dhlog.dll1</td><td/><td/><td>_CCC16489_9B29_43B1_85E4_5ADB55FC7F70_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dhnetsdk.dll</td><td/><td/><td>_CE9F4492_1155_41CB_B79A_B1D065A39DDB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dhnetsdk.dll1</td><td/><td/><td>_26345BFD_04F8_44DD_96C7_AC5E8C04297F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dhnetsdk.dll2</td><td/><td/><td>_E7C174A0_0FF3_472C_882E_3DD66D647435_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dhplay.dll</td><td/><td/><td>_FA67FA02_CA8A_4815_AE96_62B388D9EE2C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dhplay.dll1</td><td/><td/><td>_22C6F91E_F5E3_4E05_AEB2_5A5697A4B461_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dhplay.dll2</td><td/><td/><td>_8106B772_1EF8_4CD6_B92C_9559978768D4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dllh264.dll</td><td/><td/><td>_E413D06D_99EC_4111_A6E4_D8A1CE2BE8AD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dllh264.dll1</td><td/><td/><td>_C57E8572_47FA_47FB_9DA2_BC6C0AE9A650_FILTER</td><td/><td/><td/><td/></row>
		<row><td>dllmpeg4.dll</td><td/><td/><td>_E5B21A8E_240E_4E52_8CD7_8D2DE4570D0D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ezviz_plugin.dll</td><td/><td/><td>_3D7437D5_7A65_4A1C_B0A0_797DA3C2E411_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ff_kernelDeint.dll</td><td/><td/><td>_94B9FBB5_EE40_4F9C_A322_0CE47D9D2C20_FILTER</td><td/><td/><td/><td/></row>
		<row><td>fisheye.dll</td><td/><td/><td>_D0906312_4427_4A85_9E34_2C2C585D710C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>g7221dec.dll</td><td/><td/><td>_9D1DDA22_74BB_4E1C_A59B_382F2CF2F1DB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>g7221dec.dll1</td><td/><td/><td>_FD48CB74_38B5_49C6_9C9C_FBDC014CD39A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>gdiplus.dll</td><td/><td/><td>_FD5D55E6_35FC_44FF_A8D9_78FCB8033A02_FILTER</td><td/><td/><td/><td/></row>
		<row><td>gdiplus.dll1</td><td/><td/><td>_AA712DF9_2EC1_4DC0_8F8C_F98EAEC13292_FILTER</td><td/><td/><td/><td/></row>
		<row><td>h264dec.dll</td><td/><td/><td>_B9A151CC_FBB3_4839_A04C_31BB54E55475_FILTER</td><td/><td/><td/><td/></row>
		<row><td>h264dec.dll1</td><td/><td/><td>_5CB7B558_1303_4DFA_827E_7C351417D52C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>h26ldec.dll</td><td/><td/><td>_9719A462_415F_46EB_B834_CC5529DBF0B8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hevcdec.dll</td><td/><td/><td>_7F92F62D_4214_41FD_9085_2C5D9594E94E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hevcdec.dll1</td><td/><td/><td>_E6742AE3_0868_4007_B9D5_73FE36E914AF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hi_h264dec.dll</td><td/><td/><td>_67EDF7FF_67D7_40D5_A4B5_A54A0F9BA47F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hi_h264dec_v.dll</td><td/><td/><td>_02298008_E7A2_4F86_BDE2_ABB36AD56091_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hik_play_plugin.dll</td><td/><td/><td>_07BEC0B9_F1A6_4E7A_931D_64EF909BD070_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hik_plugin.dll</td><td/><td/><td>_78BB6F80_BEC4_4F5E_9AE2_29BE71E59FDD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hlog.dll</td><td/><td/><td>_130B936D_B78F_4AB5_894B_D60344F7C1EE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hlog.dll1</td><td/><td/><td>_352F196A_7D76_41DE_AC3F_359292A01D31_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hlog.dll2</td><td/><td/><td>_CC567BB5_52A1_4E25_BB61_859B22841582_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hpp.dll</td><td/><td/><td>_B5D71057_B51F_44CB_A92D_4ED0C02B9B19_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hpp.dll1</td><td/><td/><td>_B519F2AB_EF26_4671_ADDF_7E40B6CBDB88_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hpr.dll</td><td/><td/><td>_E6CE7557_7CA8_4DC7_B6F5_EECBD3018F12_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hpr.dll1</td><td/><td/><td>_2C6A9F8F_A0B3_491E_B223_2C4895EE5C1B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hpr.dll2</td><td/><td/><td>_98EC2974_D672_4C00_BBF8_BD291D405F53_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hpr.dll3</td><td/><td/><td>_B5902EE3_4C6E_461C_BF09_176EF7810E52_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hpr.dll4</td><td/><td/><td>_E7B11926_66B2_476C_9E8A_F6674B9DD88F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>hsoap.dll</td><td/><td/><td>_DCD8AC2F_A723_4A37_9FDB_7F13328AF36C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>iconv.dll</td><td/><td/><td>_88C0A1AD_BA25_424D_91B2_2D1895E7DBEE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>iconv.dll1</td><td/><td/><td>_10643692_ECC3_4E3E_8737_2A45E263AD55_FILTER</td><td/><td/><td/><td/></row>
		<row><td>icudt52.dll</td><td/><td/><td>_B579A1DA_DFA5_4CA4_8268_B97A24D8364C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>icuin52.dll</td><td/><td/><td>_BECF7A33_E6EF_425D_91B1_ACB7CCBBB9D6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>icuuc52.dll</td><td/><td/><td>_258C9D4A_417C_4A3F_B1F8_F6BC6BF69901_FILTER</td><td/><td/><td/><td/></row>
		<row><td>json.dll</td><td/><td/><td>_37A6DB2B_7146_4616_AE95_048CFCEC3818_FILTER</td><td/><td/><td/><td/></row>
		<row><td>json.dll1</td><td/><td/><td>_85ABA2A8_9D4A_4011_970E_03429F89EC25_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libCASClient.dll</td><td/><td/><td>_1F5D414C_A99F_45FB_9999_3C0918048275_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libGetHDSign.dll</td><td/><td/><td>_ED916B4C_4116_4A43_BAA1_0EDBCC9D8FCA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libPPVClient2.dll</td><td/><td/><td>_60A0AC44_41FD_41F3_97F5_94692D9E2C94_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libapr_1.dll</td><td/><td/><td>_A66C8044_715C_4302_B276_73492BCAE85E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libapriconv_1.dll</td><td/><td/><td>_4F1116EA_5E4E_415B_A151_4AAD22426DF9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libaprutil_1.dll</td><td/><td/><td>_0247ACAC_5991_4A43_B70E_E833857F814F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libavcodec.dll</td><td/><td/><td>_7470D009_5981_46ED_88ED_2325BFA16CA9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libcrypto_1_1.dll</td><td/><td/><td>_D816B9DB_020E_40F7_A884_8391A3AAF068_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libcurl.dll</td><td/><td/><td>_75FC6150_2467_48A3_9837_79A779825D21_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libcurl.dll1</td><td/><td/><td>_06069484_727F_4C4C_A181_0CCF1FE2EC58_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libcurl.dll2</td><td/><td/><td>_E751D032_A27C_4FEA_A1B2_8EED6F861477_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libeay32.dll</td><td/><td/><td>_A2BDA282_628B_405E_BC18_C978D810FD3D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libeay32.dll1</td><td/><td/><td>_2F460123_238F_457E_8971_9FAFCD76A6F2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libeay32.dll2</td><td/><td/><td>_D6FD0493_BBAB_448A_8D16_2E58F614E5F9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libeay32.dll3</td><td/><td/><td>_CE4C2B9E_4C8D_4F3B_923A_270D13F64C9C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libfaac.dll</td><td/><td/><td>_27B74616_4D99_4359_A369_A51B36EC1CF5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libgcc_s_dw2_1.dll</td><td/><td/><td>_D164F73C_D582_430E_BBC6_FA27D75B0CFA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libhak.dll</td><td/><td/><td>_911FA7EF_48E8_4809_94A1_440E8FA8C397_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libiconv2.dll</td><td/><td/><td>_6487A6A6_3A9B_40EB_9D3A_A56CFEA28D37_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libiconv2.dll1</td><td/><td/><td>_8D8C13D2_772C_4B69_AB5A_EF01A736DA1B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libmp4v2.dll</td><td/><td/><td>_D10CB55A_FD7A_495A_AF9E_7B835AAD230E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libmplayer.dll</td><td/><td/><td>_F8830056_E41C_48E0_B0D3_4CE01B4FE86B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libssl_1_1.dll</td><td/><td/><td>_D80548A5_9249_48ED_89DC_E6F04C311312_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libstdc___6.dll</td><td/><td/><td>_205EE5A7_8A7E_4CD3_B37D_E6DDB345424F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libwinpthread_1.dll</td><td/><td/><td>_AFA05F31_03B2_4FFD_A8B0_64BD3152DBDF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libxml2.dll</td><td/><td/><td>_FB16BB25_0210_47FB_8A6D_835AC2A487EE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>libxml2.dll1</td><td/><td/><td>_E75BD79B_012C_4C87_9F9A_60C87BC5A945_FILTER</td><td/><td/><td/><td/></row>
		<row><td>log4cplus_dll.dll</td><td/><td/><td>_F2F1F446_8532_4941_9D6A_A5E6A65DCEC3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>log4cxx.dll</td><td/><td/><td>_205F57B5_3534_485D_BF44_9153949836C4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>log4net.dll</td><td/><td/><td>_551FA07C_50D1_45CC_8503_3D5124273DE1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>log4net.dll1</td><td/><td/><td>_55AC484A_A28F_4C9B_A7BF_D90DE045FC41_FILTER</td><td/><td/><td/><td/></row>
		<row><td>media_client.dll</td><td/><td/><td>_A18AE4DC_90C8_4271_BE7D_89B5CC030A5A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mfc71.dll</td><td/><td/><td>_7C277820_0780_4637_8287_C102C0024B53_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mfc90.dll</td><td/><td/><td>_2BD6B041_68A9_4238_803E_C6E3FA45195F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mfc90u.dll</td><td/><td/><td>_25B18B24_7C8F_46BA_A419_25D8B3B884C6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mfcm90.dll</td><td/><td/><td>_C0621BC8_5FAA_41D5_B9FA_563F1F865730_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mfcm90u.dll</td><td/><td/><td>_AA3925FA_7B16_40FE_A256_AEFA0CE6F45F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mjpegdec.dll</td><td/><td/><td>_EE787279_D8ED_4166_95C8_365CA7793EEA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mjpegdec.dll1</td><td/><td/><td>_3D40BCD8_8945_41B9_83CF_10DC02E0F1B2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mp2dec.dll</td><td/><td/><td>_47F08ED2_F43B_4E6D_9BF4_F3F3611306A9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mp2dec.dll1</td><td/><td/><td>_D5A17216_5F93_4770_95F7_125218ECD57B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mp3dec.dll</td><td/><td/><td>_0BF8E795_15D3_45D0_AA25_A4DF8B93DE40_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mp3dec.dll1</td><td/><td/><td>_6F5F806E_F7AA_4600_8DF6_18023299E96D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mpeg4dec.dll</td><td/><td/><td>_3A290586_804E_47F3_99CA_D4A8EBDE29BD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mpeg4dec.dll1</td><td/><td/><td>_279C0060_5BB1_4F8A_BF80_043121DD2D7C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mpeg4enc.dll</td><td/><td/><td>_1C509256_ADA3_4F67_984D_00AB09F614DA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mpeg4enc.dll1</td><td/><td/><td>_49B99057_7EE4_4A39_A5FF_6BAD9668DA24_FILTER</td><td/><td/><td/><td/></row>
		<row><td>mpglib.dll</td><td/><td/><td>_3E814055_D829_4B29_8456_18DC3D21F855_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcm90.dll</td><td/><td/><td>_D9E7218D_47B4_4C75_9E00_2B5615F3368C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcp100.dll</td><td/><td/><td>_56DF16F1_621E_4F7C_B39D_9BCC8097B00B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcp71.dll</td><td/><td/><td>_14126599_91B9_45A7_BCF5_2D6A211664CB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcp71.dll1</td><td/><td/><td>_CECF9BA5_1015_46E3_8593_2C225B62DBD0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcp90.dll</td><td/><td/><td>_D88EF43A_1438_45DB_8042_FB73831B6690_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcp90.dll1</td><td/><td/><td>_C055CB41_F5B2_4F5E_BDC4_B42C2DC03F7E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcr100.dll</td><td/><td/><td>_2CF838AF_EC4D_4549_A760_9CC3C43140A8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcr120.dll</td><td/><td/><td>_D71BED92_FDAE_4B4B_88BE_1EDA7E55DDB1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcr71.dll</td><td/><td/><td>_A03C9D80_4076_4D8C_A22D_97386552271A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcr71.dll1</td><td/><td/><td>_187B34D7_167A_409A_970A_C555AF85D026_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcr90.dll</td><td/><td/><td>_D14F7004_9C6D_4422_936F_323ACA81EA1B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcr90.dll1</td><td/><td/><td>_2B2E1E9F_F101_46F8_98B4_3393AE93310D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcr90.dll2</td><td/><td/><td>_E613CF50_41AD_4C9E_A4E8_B478F7561502_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcr90.dll3</td><td/><td/><td>_D667CBFA_9981_4678_992A_D957D155D20E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>msvcrt.dll</td><td/><td/><td>_A893E2FE_0E54_4D7F_A458_9F621B7DD3A1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>opensslwrap.dll</td><td/><td/><td>_FF9FBB6C_732C_40C6_AE1D_1501CC114629_FILTER</td><td/><td/><td/><td/></row>
		<row><td>paho_mqtt3c.dll</td><td/><td/><td>_1D0F48F3_48F6_4B8C_B0CE_679C03D3FBCA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>postproc.dll</td><td/><td/><td>_84057016_F7C8_46C1_A211_3DB9FEEC1696_FILTER</td><td/><td/><td/><td/></row>
		<row><td>postproc.dll1</td><td/><td/><td>_62B2B358_7F26_4B51_AE02_ABDAF6F47FF5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>pthreadVC2.dll</td><td/><td/><td>_B9AE6B63_A47A_48FA_8BA1_82231996FA0E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qminimal.dll</td><td/><td/><td>_115CF982_9E6B_4DCD_932C_7E73A800F460_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qoffscreen.dll</td><td/><td/><td>_64C58A70_48D1_4914_8CB2_E2C9FC6FA69F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>qwindows.dll</td><td/><td/><td>_CA4F30A1_5320_4B8C_A382_A34078E3E8CE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ssleay32.dll</td><td/><td/><td>_A0575E5B_D5FA_4CC9_BCB2_5FD3DE35372C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ssleay32.dll1</td><td/><td/><td>_5902A748_B1F8_4163_849A_9E8FFE9039AE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ssleay32.dll2</td><td/><td/><td>_8230BC80_1169_4130_A611_6E48726AC235_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ssleay32.dll3</td><td/><td/><td>_2C337B6B_B311_45C5_8F8D_FCB8DFAF0FE5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>store_sys_client.dll</td><td/><td/><td>_7691E645_2EEE_42FC_BA20_57F21BD3169D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>stream_client.dll</td><td/><td/><td>_73F30974_CF06_4C44_9FA7_D5E13A814C2C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>streamclient_lib.dll</td><td/><td/><td>_D4594EE4_854E_4FDA_900C_1B5C3F620A75_FILTER</td><td/><td/><td/><td/></row>
		<row><td>svac_dec.dll</td><td/><td/><td>_D021580A_51C3_47A6_B9E7_51503E80FFCE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>svac_dec.dll1</td><td/><td/><td>_FEECD1D1_E6FF_4326_8C02_2F64D95C94F3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>svacdec.dll</td><td/><td/><td>_F33767EC_69A2_4ADF_8A00_2CD299326D9B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>swresample_2.dll</td><td/><td/><td>_E2F40D6D_4E62_4DF8_AEA4_2424AB75F22D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>swscale_4.dll</td><td/><td/><td>_E7428129_DC2B_4306_9C2F_493833834214_FILTER</td><td/><td/><td/><td/></row>
		<row><td>threadsdk.dll</td><td/><td/><td>_5AD4DE59_9FD7_415E_9C81_D55BF5BCEC32_FILTER</td><td/><td/><td/><td/></row>
		<row><td>tmControlClient.dll</td><td/><td/><td>_D996F27C_B29C_493D_9634_E8E63CD96FDC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>trace.dll</td><td/><td/><td>_3F653A3B_ED89_4B00_9B3C_FC160BBB4900_FILTER</td><td/><td/><td/><td/></row>
		<row><td>udt.dll</td><td/><td/><td>_66E06F17_97E1_40F5_ABF8_F32B9A8BF891_FILTER</td><td/><td/><td/><td/></row>
		<row><td>vag_client.dll</td><td/><td/><td>_62086F96_E50A_45E9_8751_9C97FBFC03C6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>vag_playctrl.dll</td><td/><td/><td>_088B2871_A556_4599_9924_E3C53343AE43_FILTER</td><td/><td/><td/><td/></row>
		<row><td>vrbClientSDK.dll</td><td/><td/><td>_1F238F18_7079_43E3_9B5A_08219C4435F3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>vrbClientSDK.dll1</td><td/><td/><td>_1D38A12F_3E41_4A89_AA3F_C2F64E4DED40_FILTER</td><td/><td/><td/><td/></row>
		<row><td>xvidcore.dll</td><td/><td/><td>_7F0F0960_495D_4741_B19C_601A7ADB6995_FILTER</td><td/><td/><td/><td/></row>
		<row><td>zlib1.dll</td><td/><td/><td>_3941AA40_A634_4AE9_9BCA_476F2FAB1D68_FILTER</td><td/><td/><td/><td/></row>
		<row><td>zlib1.dll1</td><td/><td/><td>_EB03E2A8_512A_478E_8A06_DE4AED920A2F_FILTER</td><td/><td/><td/><td/></row>
	</table>

	<table name="ISCustomActionReference">
		<col key="yes" def="s72">Action_</col>
		<col def="S0">Description</col>
		<col def="S255">FileType</col>
		<col def="S255">ISCAReferenceFilePath</col>
	</table>

	<table name="ISDIMDependency">
		<col key="yes" def="s72">ISDIMReference_</col>
		<col def="s255">RequiredUUID</col>
		<col def="S255">RequiredMajorVersion</col>
		<col def="S255">RequiredMinorVersion</col>
		<col def="S255">RequiredBuildVersion</col>
		<col def="S255">RequiredRevisionVersion</col>
	</table>

	<table name="ISDIMReference">
		<col key="yes" def="s72">ISDIMReference</col>
		<col def="S0">ISBuildSourcePath</col>
	</table>

	<table name="ISDIMReferenceDependencies">
		<col key="yes" def="s72">ISDIMReference_Parent</col>
		<col key="yes" def="s72">ISDIMDependency_</col>
	</table>

	<table name="ISDIMVariable">
		<col key="yes" def="s72">ISDIMVariable</col>
		<col def="s72">ISDIMReference_</col>
		<col def="s0">Name</col>
		<col def="S0">NewValue</col>
		<col def="I4">Type</col>
	</table>

	<table name="ISDLLWrapper">
		<col key="yes" def="s72">EntryPoint</col>
		<col def="I4">Type</col>
		<col def="s0">Source</col>
		<col def="s255">Target</col>
	</table>

	<table name="ISDependency">
		<col key="yes" def="S50">ISDependency</col>
		<col def="I2">Exclude</col>
	</table>

	<table name="ISDisk1File">
		<col key="yes" def="s72">ISDisk1File</col>
		<col def="s255">ISBuildSourcePath</col>
		<col def="I4">Disk</col>
	</table>

	<table name="ISDynamicFile">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="s255">SourceFolder</col>
		<col def="I2">IncludeFlags</col>
		<col def="S0">IncludeFiles</col>
		<col def="S0">ExcludeFiles</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISFeatureDIMReferences">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">ISDIMReference_</col>
	</table>

	<table name="ISFeatureMergeModuleExcludes">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s255">ModuleID</col>
		<col key="yes" def="i2">Language</col>
	</table>

	<table name="ISFeatureMergeModules">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s255">ISMergeModule_</col>
		<col key="yes" def="i2">Language_</col>
	</table>

	<table name="ISFeatureSetupPrerequisites">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">ISSetupPrerequisites_</col>
	</table>

	<table name="ISFileManifests">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">Manifest_</col>
	</table>

	<table name="ISIISItem">
		<col key="yes" def="s72">ISIISItem</col>
		<col def="S72">ISIISItem_Parent</col>
		<col def="L255">DisplayName</col>
		<col def="i4">Type</col>
		<col def="S72">Component_</col>
	</table>

	<table name="ISIISProperty">
		<col key="yes" def="s72">ISIISProperty</col>
		<col key="yes" def="s72">ISIISItem_</col>
		<col def="S0">Schema</col>
		<col def="S255">FriendlyName</col>
		<col def="I4">MetaDataProp</col>
		<col def="I4">MetaDataType</col>
		<col def="I4">MetaDataUserType</col>
		<col def="I4">MetaDataAttributes</col>
		<col def="L0">MetaDataValue</col>
		<col def="I4">Order</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISInstallScriptAction">
		<col key="yes" def="s72">EntryPoint</col>
		<col def="I4">Type</col>
		<col def="s72">Source</col>
		<col def="S255">Target</col>
	</table>

	<table name="ISLanguage">
		<col key="yes" def="s50">ISLanguage</col>
		<col def="I2">Included</col>
		<row><td>1033</td><td>0</td></row>
		<row><td>2052</td><td>1</td></row>
	</table>

	<table name="ISLinkerLibrary">
		<col key="yes" def="s72">ISLinkerLibrary</col>
		<col def="s255">Library</col>
		<col def="i4">Order</col>
		<row><td>isrt.obl</td><td>isrt.obl</td><td>2</td></row>
		<row><td>iswi.obl</td><td>iswi.obl</td><td>1</td></row>
	</table>

	<table name="ISLocalControl">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="I4">Attributes</col>
		<col def="I2">X</col>
		<col def="I2">Y</col>
		<col def="I2">Width</col>
		<col def="I2">Height</col>
		<col def="S72">Binary_</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="ISLocalDialog">
		<col key="yes" def="S50">Dialog_</col>
		<col key="yes" def="S50">ISLanguage_</col>
		<col def="I4">Attributes</col>
		<col def="S72">TextStyle_</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
	</table>

	<table name="ISLocalRadioButton">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
	</table>

	<table name="ISLockPermissions">
		<col key="yes" def="s72">LockObject</col>
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="S255">Domain</col>
		<col key="yes" def="s255">User</col>
		<col def="I4">Permission</col>
		<col def="I4">Attributes</col>
	</table>

	<table name="ISLogicalDisk">
		<col key="yes" def="i2">DiskId</col>
		<col key="yes" def="s255">ISProductConfiguration_</col>
		<col key="yes" def="s255">ISRelease_</col>
		<col def="i2">LastSequence</col>
		<col def="L64">DiskPrompt</col>
		<col def="S255">Cabinet</col>
		<col def="S32">VolumeLabel</col>
		<col def="S32">Source</col>
	</table>

	<table name="ISLogicalDiskFeatures">
		<col key="yes" def="i2">ISLogicalDisk_</col>
		<col key="yes" def="s255">ISProductConfiguration_</col>
		<col key="yes" def="s255">ISRelease_</col>
		<col key="yes" def="S38">Feature_</col>
		<col def="i2">Sequence</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISMergeModule">
		<col key="yes" def="s255">ISMergeModule</col>
		<col key="yes" def="i2">Language</col>
		<col def="s255">Name</col>
		<col def="S255">Destination</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISMergeModuleCfgValues">
		<col key="yes" def="s255">ISMergeModule_</col>
		<col key="yes" def="i2">Language_</col>
		<col key="yes" def="s72">ModuleConfiguration_</col>
		<col def="L0">Value</col>
		<col def="i2">Format</col>
		<col def="L255">Type</col>
		<col def="L255">ContextData</col>
		<col def="L255">DefaultValue</col>
		<col def="I2">Attributes</col>
		<col def="L255">DisplayName</col>
		<col def="L255">Description</col>
		<col def="L255">HelpLocation</col>
		<col def="L255">HelpKeyword</col>
	</table>

	<table name="ISObject">
		<col key="yes" def="s50">ObjectName</col>
		<col def="s15">Language</col>
	</table>

	<table name="ISObjectProperty">
		<col key="yes" def="S50">ObjectName</col>
		<col key="yes" def="S50">Property</col>
		<col def="S0">Value</col>
		<col def="I2">IncludeInBuild</col>
	</table>

	<table name="ISPatchConfigImage">
		<col key="yes" def="S72">PatchConfiguration_</col>
		<col key="yes" def="s72">UpgradedImage_</col>
	</table>

	<table name="ISPatchConfiguration">
		<col key="yes" def="s72">Name</col>
		<col def="i2">CanPCDiffer</col>
		<col def="i2">CanPVDiffer</col>
		<col def="i2">IncludeWholeFiles</col>
		<col def="i2">LeaveDecompressed</col>
		<col def="i2">OptimizeForSize</col>
		<col def="i2">EnablePatchCache</col>
		<col def="S0">PatchCacheDir</col>
		<col def="i4">Flags</col>
		<col def="S0">PatchGuidsToReplace</col>
		<col def="s0">TargetProductCodes</col>
		<col def="s50">PatchGuid</col>
		<col def="s0">OutputPath</col>
		<col def="i2">MinMsiVersion</col>
		<col def="I4">Attributes</col>
	</table>

	<table name="ISPatchConfigurationProperty">
		<col key="yes" def="S72">ISPatchConfiguration_</col>
		<col key="yes" def="S50">Property</col>
		<col def="S50">Value</col>
	</table>

	<table name="ISPatchExternalFile">
		<col key="yes" def="s50">Name</col>
		<col key="yes" def="s13">ISUpgradedImage_</col>
		<col def="s72">FileKey</col>
		<col def="s255">FilePath</col>
	</table>

	<table name="ISPatchWholeFile">
		<col key="yes" def="s50">UpgradedImage</col>
		<col key="yes" def="s72">FileKey</col>
		<col def="S72">Component</col>
	</table>

	<table name="ISPathVariable">
		<col key="yes" def="s72">ISPathVariable</col>
		<col def="S255">Value</col>
		<col def="S255">TestValue</col>
		<col def="i4">Type</col>
		<row><td>CommonFilesFolder</td><td/><td/><td>1</td></row>
		<row><td>DVRSDK</td><td>DVRSDK\DVRSDK.csproj</td><td/><td>2</td></row>
		<row><td>ISPROJECTDIR</td><td/><td/><td>1</td></row>
		<row><td>ISProductFolder</td><td/><td/><td>1</td></row>
		<row><td>ISProjectDataFolder</td><td/><td/><td>1</td></row>
		<row><td>ISProjectFolder</td><td/><td/><td>1</td></row>
		<row><td>Player</td><td>Player\Player.csproj</td><td/><td>2</td></row>
		<row><td>ProgramFilesFolder</td><td/><td/><td>1</td></row>
		<row><td>SDKLibrary</td><td>SDKLibrary\SDKLibrary.csproj</td><td/><td>2</td></row>
		<row><td>SystemFolder</td><td/><td/><td>1</td></row>
		<row><td>WindowsFolder</td><td/><td/><td>1</td></row>
	</table>

	<table name="ISProductConfiguration">
		<col key="yes" def="s72">ISProductConfiguration</col>
		<col def="S255">ProductConfigurationFlags</col>
		<col def="I4">GeneratePackageCode</col>
		<row><td>Express</td><td/><td>1</td></row>
	</table>

	<table name="ISProductConfigurationInstance">
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="i2">InstanceId</col>
		<col key="yes" def="s72">Property</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISProductConfigurationProperty">
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s72">Property</col>
		<col def="L255">Value</col>
	</table>

	<table name="ISRelease">
		<col key="yes" def="s72">ISRelease</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="s255">BuildLocation</col>
		<col def="s255">PackageName</col>
		<col def="i4">Type</col>
		<col def="s0">SupportedLanguagesUI</col>
		<col def="i4">MsiSourceType</col>
		<col def="i4">ReleaseType</col>
		<col def="s72">Platforms</col>
		<col def="S0">SupportedLanguagesData</col>
		<col def="s6">DefaultLanguage</col>
		<col def="i4">SupportedOSs</col>
		<col def="s50">DiskSize</col>
		<col def="i4">DiskSizeUnit</col>
		<col def="i4">DiskClusterSize</col>
		<col def="S0">ReleaseFlags</col>
		<col def="i4">DiskSpanning</col>
		<col def="S255">SynchMsi</col>
		<col def="s255">MediaLocation</col>
		<col def="S255">URLLocation</col>
		<col def="S255">DigitalURL</col>
		<col def="S255">DigitalPVK</col>
		<col def="S255">DigitalSPC</col>
		<col def="S255">Password</col>
		<col def="S255">VersionCopyright</col>
		<col def="i4">Attributes</col>
		<col def="S255">CDBrowser</col>
		<col def="S255">DotNetBuildConfiguration</col>
		<col def="S255">MsiCommandLine</col>
		<col def="I4">ISSetupPrerequisiteLocation</col>
		<row><td>CD_ROM</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>0</td><td>2052</td><td>0</td><td>2</td><td>Intel</td><td/><td>2052</td><td>0</td><td>650</td><td>0</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>Custom</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>2</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>100</td><td>0</td><td>1024</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-10</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>8.75</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-18</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>15.83</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-5</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>2052</td><td>0</td><td>2</td><td>Intel</td><td/><td>2052</td><td>0</td><td>4.38</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-9</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>7.95</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>SingleImage</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>PackageName</td><td>1</td><td>2052</td><td>0</td><td>1</td><td>Intel</td><td/><td>2052</td><td>0</td><td>0</td><td>0</td><td>0</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>108573</td><td/><td/><td/><td>3</td></row>
		<row><td>WebDeployment</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>PackageName</td><td>4</td><td>1033</td><td>2</td><td>1</td><td>Intel</td><td/><td>1033</td><td>0</td><td>0</td><td>0</td><td>0</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>124941</td><td/><td/><td/><td>3</td></row>
	</table>

	<table name="ISReleaseASPublishInfo">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="S0">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISReleaseExtended">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="I4">WebType</col>
		<col def="S255">WebURL</col>
		<col def="I4">WebCabSize</col>
		<col def="S255">OneClickCabName</col>
		<col def="S255">OneClickHtmlName</col>
		<col def="S255">WebLocalCachePath</col>
		<col def="I4">EngineLocation</col>
		<col def="S255">Win9xMsiUrl</col>
		<col def="S255">WinNTMsiUrl</col>
		<col def="I4">ISEngineLocation</col>
		<col def="S255">ISEngineURL</col>
		<col def="I4">OneClickTargetBrowser</col>
		<col def="S255">DigitalCertificateIdNS</col>
		<col def="S255">DigitalCertificateDBaseNS</col>
		<col def="S255">DigitalCertificatePasswordNS</col>
		<col def="I4">DotNetRedistLocation</col>
		<col def="S255">DotNetRedistURL</col>
		<col def="I4">DotNetVersion</col>
		<col def="S255">DotNetBaseLanguage</col>
		<col def="S0">DotNetLangaugePacks</col>
		<col def="S255">DotNetFxCmdLine</col>
		<col def="S255">DotNetLangPackCmdLine</col>
		<col def="S50">JSharpCmdLine</col>
		<col def="I4">Attributes</col>
		<col def="I4">JSharpRedistLocation</col>
		<col def="I4">MsiEngineVersion</col>
		<col def="S255">WinMsi30Url</col>
		<col def="S255">CertPassword</col>
		<row><td>CD_ROM</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>Custom</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-10</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-18</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-5</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-9</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>SingleImage</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>1</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>WebDeployment</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>setup</td><td>Default</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>2</td><td>http://www.Installengine.com/Msiengine20</td><td>http://www.Installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
	</table>

	<table name="ISReleaseProperty">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s0">Value</col>
	</table>

	<table name="ISReleasePublishInfo">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="S255">Repository</col>
		<col def="S255">DisplayName</col>
		<col def="S255">Publisher</col>
		<col def="S255">Description</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISSQLConnection">
		<col key="yes" def="s72">ISSQLConnection</col>
		<col def="s255">Server</col>
		<col def="s255">Database</col>
		<col def="s255">UserName</col>
		<col def="s255">Password</col>
		<col def="s255">Authentication</col>
		<col def="i2">Attributes</col>
		<col def="i2">Order</col>
		<col def="S0">Comments</col>
		<col def="I4">CmdTimeout</col>
		<col def="S0">BatchSeparator</col>
		<col def="S0">ScriptVersion_Table</col>
		<col def="S0">ScriptVersion_Column</col>
	</table>

	<table name="ISSQLConnectionDBServer">
		<col key="yes" def="s72">ISSQLConnectionDBServer</col>
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col key="yes" def="s72">ISSQLDBMetaData_</col>
		<col def="i2">Order</col>
	</table>

	<table name="ISSQLConnectionScript">
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="i2">Order</col>
	</table>

	<table name="ISSQLDBMetaData">
		<col key="yes" def="s72">ISSQLDBMetaData</col>
		<col def="S0">DisplayName</col>
		<col def="S0">AdoDriverName</col>
		<col def="S0">AdoCxnDriver</col>
		<col def="S0">AdoCxnServer</col>
		<col def="S0">AdoCxnDatabase</col>
		<col def="S0">AdoCxnUserID</col>
		<col def="S0">AdoCxnPassword</col>
		<col def="S0">AdoCxnWindowsSecurity</col>
		<col def="S0">AdoCxnNetLibrary</col>
		<col def="S0">TestDatabaseCmd</col>
		<col def="S0">TestTableCmd</col>
		<col def="S0">VersionInfoCmd</col>
		<col def="S0">VersionBeginToken</col>
		<col def="S0">VersionEndToken</col>
		<col def="S0">LocalInstanceNames</col>
		<col def="S0">CreateDbCmd</col>
		<col def="S0">SwitchDbCmd</col>
		<col def="I4">ISAttributes</col>
		<col def="S0">TestTableCmd2</col>
		<col def="S0">WinAuthentUserId</col>
		<col def="S0">DsnODBCName</col>
		<col def="S0">AdoCxnPort</col>
		<col def="S0">AdoCxnAdditional</col>
		<col def="S0">QueryDatabasesCmd</col>
		<col def="S0">CreateTableCmd</col>
		<col def="S0">InsertRecordCmd</col>
		<col def="S0">SelectTableCmd</col>
		<col def="S0">ScriptVersion_Table</col>
		<col def="S0">ScriptVersion_Column</col>
		<col def="S0">ScriptVersion_ColumnType</col>
	</table>

	<table name="ISSQLRequirement">
		<col key="yes" def="s72">ISSQLRequirement</col>
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col def="S15">MajorVersion</col>
		<col def="S25">ServicePackLevel</col>
		<col def="i4">Attributes</col>
		<col def="S72">ISSQLConnectionDBServer_</col>
	</table>

	<table name="ISSQLScriptError">
		<col key="yes" def="i4">ErrNumber</col>
		<col key="yes" def="S72">ISSQLScriptFile_</col>
		<col def="i2">ErrHandling</col>
		<col def="L255">Message</col>
		<col def="i2">Attributes</col>
	</table>

	<table name="ISSQLScriptFile">
		<col key="yes" def="s72">ISSQLScriptFile</col>
		<col def="s72">Component_</col>
		<col def="i2">Scheduling</col>
		<col def="L255">InstallText</col>
		<col def="L255">UninstallText</col>
		<col def="S0">ISBuildSourcePath</col>
		<col def="S0">Comments</col>
		<col def="i2">ErrorHandling</col>
		<col def="i2">Attributes</col>
		<col def="S255">Version</col>
		<col def="S255">Condition</col>
		<col def="S0">DisplayName</col>
	</table>

	<table name="ISSQLScriptImport">
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="S255">Server</col>
		<col def="S255">Database</col>
		<col def="S255">UserName</col>
		<col def="S255">Password</col>
		<col def="i4">Authentication</col>
		<col def="S0">IncludeTables</col>
		<col def="S0">ExcludeTables</col>
		<col def="i4">Attributes</col>
	</table>

	<table name="ISSQLScriptReplace">
		<col key="yes" def="s72">ISSQLScriptReplace</col>
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="S0">Search</col>
		<col def="S0">Replace</col>
		<col def="i4">Attributes</col>
	</table>

	<table name="ISScriptFile">
		<col key="yes" def="s255">ISScriptFile</col>
	</table>

	<table name="ISSelfReg">
		<col key="yes" def="s72">FileKey</col>
		<col def="I2">Cost</col>
		<col def="I2">Order</col>
		<col def="S50">CmdLine</col>
	</table>

	<table name="ISSetupFile">
		<col key="yes" def="s72">ISSetupFile</col>
		<col def="S255">FileName</col>
		<col def="V0">Stream</col>
		<col def="S50">Language</col>
		<col def="I2">Splash</col>
		<col def="S0">Path</col>
	</table>

	<table name="ISSetupPrerequisites">
		<col key="yes" def="s72">ISSetupPrerequisites</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I2">Order</col>
		<col def="I2">ISSetupLocation</col>
		<col def="S255">ISReleaseFlags</col>
	</table>

	<table name="ISSetupType">
		<col key="yes" def="s38">ISSetupType</col>
		<col def="L255">Description</col>
		<col def="L255">Display_Name</col>
		<col def="i2">Display</col>
		<col def="S255">Comments</col>
		<row><td>Custom</td><td>##IDS__IsSetupTypeMinDlg_ChooseFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Custom##</td><td>3</td><td/></row>
		<row><td>Minimal</td><td>##IDS__IsSetupTypeMinDlg_MinimumFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Minimal##</td><td>2</td><td/></row>
		<row><td>Typical</td><td>##IDS__IsSetupTypeMinDlg_AllFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Typical##</td><td>1</td><td/></row>
	</table>

	<table name="ISSetupTypeFeatures">
		<col key="yes" def="s38">ISSetupType_</col>
		<col key="yes" def="s38">Feature_</col>
		<row><td>Custom</td><td>AlwaysInstall</td></row>
		<row><td>Minimal</td><td>AlwaysInstall</td></row>
		<row><td>Typical</td><td>AlwaysInstall</td></row>
	</table>

	<table name="ISStorages">
		<col key="yes" def="s72">Name</col>
		<col def="S0">ISBuildSourcePath</col>
	</table>

	<table name="ISString">
		<col key="yes" def="s255">ISString</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="S0">Value</col>
		<col def="I2">Encoded</col>
		<col def="S0">Comment</col>
		<col def="I4">TimeStamp</col>
		<row><td>COMPANY_NAME</td><td>2052</td><td>公司名称</td><td>0</td><td/><td>-324569395</td></row>
		<row><td>DN_AlwaysInstall</td><td>2052</td><td>始终安装</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_COLOR</td><td>2052</td><td>系统颜色设置不足以运行 [ProductName]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_OS</td><td>2052</td><td>操作系统不足以运行 [ProductName]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_PROCESSOR</td><td>2052</td><td>处理器不足以运行 [ProductName]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_RAM</td><td>2052</td><td>RAM 量不足以运行 [ProductName]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_SCREEN</td><td>2052</td><td>屏幕分辨率不足以运行 [ProductName] 。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT</td><td>2052</td><td>压缩</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT_DESC</td><td>2052</td><td>压缩说明</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE</td><td>2052</td><td>完整安装</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE_DESC</td><td>2052</td><td>完整安装</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM</td><td>2052</td><td>自定义</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC</td><td>2052</td><td>自定义说明</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC_PRO</td><td>2052</td><td>自定义</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL</td><td>2052</td><td>典型</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL_DESC</td><td>2052</td><td>典型说明</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_1</td><td>2052</td><td>[1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_1b</td><td>2052</td><td>[1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_1c</td><td>2052</td><td>[1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_1d</td><td>2052</td><td>[1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Advertising</td><td>2052</td><td>通知应用程序</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_AllocatingRegistry</td><td>2052</td><td>正在分配注册表空间</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_AppCommandLine</td><td>2052</td><td>应用程序: [1]，命令行: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_AppId</td><td>2052</td><td>AppId: [1]{{, AppType: [2]}}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_AppIdAppTypeRSN</td><td>2052</td><td>AppId: [1]{{, AppType: [2], Users: [3], RSN: [4]}}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Application</td><td>2052</td><td>应用程序: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_BindingExes</td><td>2052</td><td>绑定可执行文件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ClassId</td><td>2052</td><td>Class Id: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ClsID</td><td>2052</td><td>Class Id: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIDQualifier</td><td>2052</td><td>组件 ID: [1]，资格认证者: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIdQualifier2</td><td>2052</td><td>组件 ID: [1]，资格认证者: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace</td><td>2052</td><td>正在计算空间需求</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace2</td><td>2052</td><td>正在计算空间需求</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace3</td><td>2052</td><td>正在计算空间需求</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension</td><td>2052</td><td>MIME 内容类型: [1]，扩展: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension2</td><td>2052</td><td>MIME 内容类型: [1]，扩展: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNetworkFiles</td><td>2052</td><td>正在复制网络安装文件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNewFiles</td><td>2052</td><td>正在复制新文件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingDuplicate</td><td>2052</td><td>正在创建重复文件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingFolders</td><td>2052</td><td>正在创建文件夹</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingIISRoots</td><td>2052</td><td>正在创建 IIS 虚拟根目录...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingShortcuts</td><td>2052</td><td>正在创建快捷方式</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_DeletingServices</td><td>2052</td><td>正在删除服务</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_EnvironmentStrings</td><td>2052</td><td>正在更新环境字符串</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_EvaluateLaunchConditions</td><td>2052</td><td>正在评估启动条件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Extension</td><td>2052</td><td>扩展: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Extension2</td><td>2052</td><td>扩展: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Feature</td><td>2052</td><td>功能: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FeatureColon</td><td>2052</td><td>功能: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_File</td><td>2052</td><td>文件: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_File2</td><td>2052</td><td>文件: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileDependencies</td><td>2052</td><td>文件：[1],  依存： [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir</td><td>2052</td><td>文件: [1]，目录: [9]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir2</td><td>2052</td><td>File: [1], Directory: [9]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir3</td><td>2052</td><td>文件: [1]，目录: [9]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize</td><td>2052</td><td>文件: [1]，目录: [9]，大小: [6]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize2</td><td>2052</td><td>File: [1],  Directory: [9],  Size: [6]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize3</td><td>2052</td><td>文件: [1]，目录: [9]，大小: [6]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize4</td><td>2052</td><td>文件: [1]，目录: [2]，大小: [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirectorySize</td><td>2052</td><td>文件: [1]，目录: [9]，大小: [6]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder</td><td>2052</td><td>文件: [1]，文件夹: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder2</td><td>2052</td><td>文件: [1]，文件夹: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue</td><td>2052</td><td>文件: [1]，节: [2]，键: [3]，数值: [4]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue2</td><td>2052</td><td>文件: [1]，节: [2]，键: [3]，数值: [4]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Folder</td><td>2052</td><td>文件夹: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Folder1</td><td>2052</td><td>文件夹: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Font</td><td>2052</td><td>字体: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Font2</td><td>2052</td><td>字体: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FoundApp</td><td>2052</td><td>找到应用程序: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_FreeSpace</td><td>2052</td><td>自由空间: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_GeneratingScript</td><td>2052</td><td>正在生成脚本操作，用于：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsCost</td><td>2052</td><td>正在搜集对象的许可信息...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsInstall</td><td>2052</td><td>正在应用对象的许可信息...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_InitializeODBCDirs</td><td>2052</td><td>正在初始化 ODBC 目录</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_InstallODBC</td><td>2052</td><td>正在安装 ODBC 组件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_InstallServices</td><td>2052</td><td>正在安装新服务</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_InstallingSystemCatalog</td><td>2052</td><td>安装系统目录</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_KeyName</td><td>2052</td><td>键值: [1]，名称: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_KeyNameValue</td><td>2052</td><td>键: [1]，名称: [2]，数值: [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_LibId</td><td>2052</td><td>LibID: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Libid2</td><td>2052</td><td>LibID: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_MigratingFeatureStates</td><td>2052</td><td>正在从相关应用程序迁移功能</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_MovingFiles</td><td>2052</td><td>正在移动文件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction</td><td>2052</td><td>名称: [1]，数值: [2]，动作 [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction2</td><td>2052</td><td>名称: [1]，数值: [2]，动作 [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_PatchingFiles</td><td>2052</td><td>正在修补文件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID</td><td>2052</td><td>ProgId: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID2</td><td>2052</td><td>ProgId: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_PropertySignature</td><td>2052</td><td>属性: [1]，签名: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductFeatures</td><td>2052</td><td>正在发布产品功能</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductInfo</td><td>2052</td><td>正在发布产品信息</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_PublishingQualifiedComponents</td><td>2052</td><td>正在发布合格的组件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RegUser</td><td>2052</td><td>正在注册用户</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterClassServer</td><td>2052</td><td>正在注册类服务器</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterExtensionServers</td><td>2052</td><td>正在注册扩展服务器</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterFonts</td><td>2052</td><td>正在注册字体</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterMimeInfo</td><td>2052</td><td>正在注册 MIME 信息</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterTypeLibs</td><td>2052</td><td>正在注册类型库</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringComPlus</td><td>2052</td><td>正在注册 COM+ 应用程序和组件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringModules</td><td>2052</td><td>正在注册模块</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProduct</td><td>2052</td><td>正在注册产品</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProgIdentifiers</td><td>2052</td><td>正在撤消程序标识符的注册</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RemoveApps</td><td>2052</td><td>正在删除应用程序</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingBackup</td><td>2052</td><td>正在删除备份文件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingDuplicates</td><td>2052</td><td>正在删除重复的文件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFiles</td><td>2052</td><td>正在删除文件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFolders</td><td>2052</td><td>正在删除文件夹</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIISRoots</td><td>2052</td><td>正在删除 IIS 虚拟根目录...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIni</td><td>2052</td><td>正在删除 INI 文件条目</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingMoved</td><td>2052</td><td>正在删除移动过的文件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingODBC</td><td>2052</td><td>正在删除 ODBC 组件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingRegistry</td><td>2052</td><td>正在删除系统注册表值</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingShortcuts</td><td>2052</td><td>正在删除快捷方式</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_RollingBack</td><td>2052</td><td>回滚操作: </td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_SearchForRelated</td><td>2052</td><td>正在搜索相关产品</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_SearchInstalled</td><td>2052</td><td>正在搜索已安装的应用程序</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts</td><td>2052</td><td>正在搜索符合资格的产品</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts2</td><td>2052</td><td>正在搜索符合资格的产品</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Service</td><td>2052</td><td>服务: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Service2</td><td>2052</td><td>服务: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Service3</td><td>2052</td><td>服务: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Service4</td><td>2052</td><td>服务: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut</td><td>2052</td><td>快捷方式: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut1</td><td>2052</td><td>快捷方式: [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_StartingServices</td><td>2052</td><td>正在启动服务</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_StoppingServices</td><td>2052</td><td>正在停止服务</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishProductFeatures</td><td>2052</td><td>正在取消产品功能的发布</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishQualified</td><td>2052</td><td>正在取消合格组件的发布</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishingProductInfo</td><td>2052</td><td>正在取消产品信息的发布</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UnregTypeLibs</td><td>2052</td><td>正在撤消类型库的注册</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterClassServers</td><td>2052</td><td>正在撤消类服务器的注册</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterExtensionServers</td><td>2052</td><td>正在撤消扩展服务器的注册</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterModules</td><td>2052</td><td>正在撤消模块的注册</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringComPlus</td><td>2052</td><td>正在撤消 COM+ 应用程序和组件的注册</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringFonts</td><td>2052</td><td>正在撤消字体的注册</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringMimeInfo</td><td>2052</td><td>正在撤消 MIME 信息的注册</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringProgramIds</td><td>2052</td><td>正在撤消程序标识符的注册</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateComponentRegistration</td><td>2052</td><td>正在更新组件注册表</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateEnvironmentStrings</td><td>2052</td><td>正在更新环境字符串</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_Validating</td><td>2052</td><td>正在验证安装</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_WritingINI</td><td>2052</td><td>正在写入 INI 文件数值</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ACTIONTEXT_WritingRegistry</td><td>2052</td><td>正在写入系统注册表值</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_BACK</td><td>2052</td><td>&lt; 上一步(&amp;B)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_CANCEL</td><td>2052</td><td>取消</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_CANCEL2</td><td>2052</td><td>{&amp;Tahoma8}取消(&amp;C)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_CHANGE</td><td>2052</td><td>更改(&amp;C)...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_COST</td><td>2052</td><td>正在计算 COM+ 应用程序成本： [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_INSTALL</td><td>2052</td><td>正在安装 COM+ 应用程序： [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_UNINSTALL</td><td>2052</td><td>正在卸载 COM+ 应用程序： [1]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_DIALOG_TEXT2_DESCRIPTION</td><td>2052</td><td>对话框一般描述</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_EXTERIOR</td><td>2052</td><td>{&amp;TahomaBold10}对话框粗体标题</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_INTERIOR</td><td>2052</td><td>{&amp;MSSansBold8}对话框粗体标题</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_DIFX_AMD64</td><td>2052</td><td>[ProductName] 需要 X64 处理器。单击确定以退出向导。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_DIFX_IA64</td><td>2052</td><td>[ProductName] 需要 IA64 处理器。单击确定以退出向导。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_DIFX_X86</td><td>2052</td><td>[ProductName] 需要 X86 处理器。单击确定以退出向导。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_DatabaseFolder_InstallDatabaseTo</td><td>2052</td><td>将 [ProductName] 数据库安装到：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_0</td><td>2052</td><td>{{致命错误: }}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1</td><td>2052</td><td>错误 [1]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_10</td><td>2052</td><td>=== 记录开始: [Date]  [Time] ===</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_100</td><td>2052</td><td>无法删除快捷方式 [2]。请确认该快捷方式文件存在，并且您可以访问该文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_101</td><td>2052</td><td>无法将文件 [2] 注册到类型库中。请与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_102</td><td>2052</td><td>无法撤消文件 [2] 在类型库中的注册。请与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_103</td><td>2052</td><td>无法更新 INI 文件 [2][3]。请确认该文件存在并且您可以访问它。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_104</td><td>2052</td><td>无法安排在重新启动时用文件 [2] 替换文件 [3]。请确认您拥有对文件 [3] 的写权限。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_105</td><td>2052</td><td>删除 ODBC 驱动程序管理器时发生错误，ODBC 错误 [2]: [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_106</td><td>2052</td><td>安装 ODBC 驱动程序管理器时发生错误，ODBC 错误 [2]: [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_107</td><td>2052</td><td>删除 ODBC 驱动程序 [4] 时发生错误，ODBC 错误 [2]: [3]。请确认您有足够的权限删除 ODBC 驱动程序。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_108</td><td>2052</td><td>安装 ODBC 驱动程序 [4] 时发生错误，ODBC 错误 [2]: [3]。请确认文件 [4] 存在，并且您可以访问该文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_109</td><td>2052</td><td>配置 ODBC 数据源 [4] 时发生错误，ODBC 错误 [2]: [3]。请确认文件 [4] 存在，并且您可以访问该文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_11</td><td>2052</td><td>=== 记录停止: [Date]  [Time] ===</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_110</td><td>2052</td><td>服务 [2]（[3]）的启动失败。请确认您有足够的权限启动系统服务。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_111</td><td>2052</td><td>无法终止服务 [2]（[3]）。请确认您有足够的权限终止系统服务。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_112</td><td>2052</td><td>无法删除服务 [2]（[3]）。请确认您有足够的权限删除系统服务。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_113</td><td>2052</td><td>无法安装服务 [2]（[3]）。请确认您有足够的权限安装系统服务。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_114</td><td>2052</td><td>无法更新环境变量 [2]。请确认您有足够的权限修改环境变量。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_115</td><td>2052</td><td>您没有足够的权限为该计算机所有用户完成此安装。请以管理员的身份登录，然后重新尝试进行此安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_116</td><td>2052</td><td>无法对文件 [3] 的安全权限进行设置。错误: [2]。请确认您有足够的权限修改此文件的安全权限。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_117</td><td>2052</td><td>此计算机上未安装 Component Services (COM+ 1.0)。要成功完成安装需要 Component Services。Component Services 在 Windows 2000 上有效。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_118</td><td>2052</td><td>注册 COM+ 应用程序时出错。详细信息，请与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_119</td><td>2052</td><td>撤消注册 COM+ 应用程序时出错。详细信息，请与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_12</td><td>2052</td><td>操作开始 [Time]: [1]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_120</td><td>2052</td><td>正在删除此应用程序旧的版本...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_121</td><td>2052</td><td>正在准备删除此应用程序旧的版本...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_122</td><td>2052</td><td>对文件 [2] 应用修补程序时出错。该文件可能被更新过，所以本修补程序不能修改它。详细信息，请与您的修补程序供应商联系。 {{系统错误: [3]}}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_123</td><td>2052</td><td>[2] 不能安装某一所需产品。请与您的技术支持人员联系。 {{系统错误: [3]。}}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_124</td><td>2052</td><td>不能删除旧版本的 [2]。请与您的技术支持人员联系。 {{系统错误: [3]。}}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_125</td><td>2052</td><td>服务 [2] ([3]) 的描述不能更改。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_126</td><td>2052</td><td>Windows Installer 服务不能更新系统文件 [2]，因为该文件被 Windows 保护。为使该程序正确工作，您可能需要更新操作系统。{{程序包版本: [3]，操作系统保护版本: [4]}}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_127</td><td>2052</td><td>Windows Installer 服务不能更新被保护的 Windows 文件 [2]。{{程序包版本: [3]，操作系统保护版本: [4]，SFP 错误: [5]}}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_128</td><td>2052</td><td>Windows Installer 服务无法更新一个或多个受保护的 Windows 文件。SFP 错误：[2]. 受保护文件列表：[3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_129</td><td>2052</td><td>计算机上的策略禁止用户安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_13</td><td>2052</td><td>操作结束 [Time]: [1]。返回值 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_130</td><td>2052</td><td>安装须使用互联网信息服务器，用以配置 IIS Virtual Roots。请检查是否已安装 IIS。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_131</td><td>2052</td><td>此安装程序要求管理员权限，才能配置 IIS 虚拟根目录。IDS_ERROR_13</td><td>0</td><td>操作结束 [Time]: [1]。返回值 [2]。	</td><td>-324583891</td></row>
		<row><td>IDS_ERROR_1329</td><td>2052</td><td>无法安装需要的文件，因为 CAB 文件 [2] 未经过数字签名。可能表明 CAB 文件已损坏。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1330</td><td>2052</td><td>无法安装需要的文件，因为 CAB 文件 [2] 的数字签名无效。可能表明 CAB 文件已损坏。{WinVerifyTrust 返回了错误 [3]。}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1331</td><td>2052</td><td>无法正确地复制 [2] 文件:CRC 错误。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1332</td><td>2052</td><td>无法正确地修补 [2] 文件:CRC 错误。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1333</td><td>2052</td><td>无法正确地修补 [2] 文件:CRC 错误。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1334</td><td>2052</td><td>无法安装文件 '[2]'，因为无法在 CAB 文件 '[3]' 中找到此文件。可能表明网络错误、读 CD-ROM 错误或此软件包有错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1335</td><td>2052</td><td>此安装所需的 CAB 文件 '[2]' 已损坏，且无法使用。可能表明网络错误、读 CD-ROM 错误或此软件包有错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1336</td><td>2052</td><td>创建完成此安装所需的临时文件时出错。文件夹:[3]。系统错误代码: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_14</td><td>2052</td><td>剩余时间: {[1] 分 }{[2] 秒}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_15</td><td>2052</td><td>内存不足。请先关闭其他应用程序，然后再重试。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_16</td><td>2052</td><td>安装程序已不再反应。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1609</td><td>2052</td><td>应用安全设置时出错。[2] 不是有效的用户或组。可能是软件包存在问题，或者连接到网络上的域控制器时出现问题。检查网络连接，然后单击重试或取消以结束安装。无法定位用户的 SID，系统错误 [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1651</td><td>2052</td><td>管理用户无法对每用户管理的或每机器的处于广告状态的应用程序应用修补程序。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_17</td><td>2052</td><td>安装程序过早停止。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1715</td><td>2052</td><td>已安装 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1716</td><td>2052</td><td>已配置 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1717</td><td>2052</td><td>删除 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1718</td><td>2052</td><td>文件 [2] 被数字签名策略拒绝。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1719</td><td>2052</td><td>无法访问 Windows Installer 服务。请与支持人员联系，验证该服务是否已正确注册并启用。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1720</td><td>2052</td><td>Windows Installer 软件包存在问题。无法运行完成此安装所需的脚本。请与您的支持人员或软件包供应商联系。自定义操作 [2] 脚本错误 [3]，[4]:[5] 第 [6] 行，第 [7] 列，[8]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1721</td><td>2052</td><td>Windows Installer 软件包存在问题。无法运行完成此安装所需的程序。请与您的支持人员或软件包供应商联系。操作:[2]，位置:[3]，命令: [4]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1722</td><td>2052</td><td>Windows Installer 软件包存在问题。作为安装一部分的程序没有按预期完成。请与您的支持人员或软件包供应商联系。操作 [2]，位置:[3]，命令: [4]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1723</td><td>2052</td><td>Windows Installer 软件包存在问题。无法运行完成此安装所需的 DLL。请与您的支持人员或软件包供应商联系。操作 [2]，条目:[3]，库: [4]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1724</td><td>2052</td><td>成功地完成了删除。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1725</td><td>2052</td><td>删除失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1726</td><td>2052</td><td>成功地完成了广告。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1727</td><td>2052</td><td>广告失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1728</td><td>2052</td><td>成功地完成了配置。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1729</td><td>2052</td><td>配置失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1730</td><td>2052</td><td>只有管理员才可以删除该应用程序。要删除此应用程序，您可用管理员身份登录，或与您的技术支持小组联系以获得帮助。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1731</td><td>2052</td><td>产品 [2] 的源安装包与客户包不同步。使用安装包 '[3]' 的有效副本尝试重新安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1732</td><td>2052</td><td>为完成 [2] 的安装，必须重新启动计算机。当前有其他用户已登录到该计算机，因此重新启动可能使他们失去其工作。是否立即重新启动？</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_18</td><td>2052</td><td>Windows 正在配置 [ProductName]，请稍等。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_19</td><td>2052</td><td>正在收集所需信息...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1935</td><td>2052</td><td>安装程序集组件 [2] 时出错。HRESULT:[3]。{{程序集界面:[4], 函数:[5]。{{程序集名称: [6]}}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1936</td><td>2052</td><td>安装程序集 '[6]' 时出错。此程序集没有命名不够安全或密钥长度未达到最低限制。HRESULT:[3]。{{程序集界面:[4], 函数:[5], 组件: [2]}}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1937</td><td>2052</td><td>安装程序集 '[6]' 时出错。无法验证签名或编录，或签名或编录无效。HRESULT:[3]。{{程序集界面:[4], 函数:[5], 组件: [2]}}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_1938</td><td>2052</td><td>安装程序集 '[6]' 时出错。无法找到程序集的一个或多个模块。HRESULT:[3]。{{程序集界面:[4], 函数:[5], 组件: [2]}}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2</td><td>2052</td><td>警告 [1]。 </td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_20</td><td>2052</td><td>{[ProductName] }的安装已成功完成。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_21</td><td>2052</td><td>{[ProductName] }安装失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2101</td><td>2052</td><td>操作系统不支持快捷方式。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2102</td><td>2052</td><td>无效的 .ini 操作: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2103</td><td>2052</td><td>无法解析 shell 文件夹 [2] 的路径。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2104</td><td>2052</td><td>写入 ini 文件:[3]: 系统错误: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2105</td><td>2052</td><td>创建快捷方式 [3] 失败。系统错误: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2106</td><td>2052</td><td>删除快捷方式 [3] 失败。系统错误: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2107</td><td>2052</td><td>错误 [3] 注册类型库 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2108</td><td>2052</td><td>错误 [3] 未注册类型库 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2109</td><td>2052</td><td>.ini 操作缺少区段。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2110</td><td>2052</td><td>.ini 操作缺少关键字。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2111</td><td>2052</td><td>检测运行的应用程序失败，无法获取性能数据。返回注册操作: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2112</td><td>2052</td><td>检测运行的应用程序失败，无法获取性能指数。返回注册操作: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2113</td><td>2052</td><td>检测运行的应用程序失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_22</td><td>2052</td><td>读取文件 [2] 时出错。{{ 系统错误 [3]。}}  请确认该文件的确存在并且您可以对其进行访问。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2200</td><td>2052</td><td>数据库:[2]。创建数据库对象失败，模式 = [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2201</td><td>2052</td><td>数据库:[2]。初始化失败，内存不足。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2202</td><td>2052</td><td>数据库:[2]。数据访问失败，内存不足。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2203</td><td>2052</td><td>数据库:[2]。无法打开数据库文件。系统错误 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2204</td><td>2052</td><td>数据库:[2]。表已存在: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2205</td><td>2052</td><td>数据库:[2]。表不存在: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2206</td><td>2052</td><td>数据库:[2]。不能丢弃表: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2207</td><td>2052</td><td>数据库:[2]。意向冲突。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2208</td><td>2052</td><td>数据库:[2]。执行所需参数不足。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2209</td><td>2052</td><td>数据库:[2]。光标处于无效状态。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2210</td><td>2052</td><td>数据库:[2]。列 [3] 中的无效更新数据类型。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2211</td><td>2052</td><td>数据库:[2]。无法创建数据库表 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2212</td><td>2052</td><td>数据库:[2]。数据库不在可写入状态。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2213</td><td>2052</td><td>数据库:[2]。保存数据库表时出错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2214</td><td>2052</td><td>数据库:[2]。写入导出文件时出错: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2215</td><td>2052</td><td>数据库:[2]。无法打开导入文件: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2216</td><td>2052</td><td>数据库:[2]。导入文件格式错误:[3]，第 [4] 行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2217</td><td>2052</td><td>数据库:[2]。到 CreateOutputDatabase [3] 的错误状态。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2218</td><td>2052</td><td>数据库:[2]。未提供表名称。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2219</td><td>2052</td><td>数据库:[2]。无效的 Installer 数据库格式。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2220</td><td>2052</td><td>数据库:[2]。无效行/字段数据。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2221</td><td>2052</td><td>数据库:[2]。导入文件中的代码页冲突: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2222</td><td>2052</td><td>数据库:[2]。转换或合并代码页 [3] 与数据库代码页 [4] 不同。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2223</td><td>2052</td><td>数据库:[2]。数据库均相同。未生成转换。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2224</td><td>2052</td><td>数据库:[2]。GenerateTransform:数据库已损坏。表: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2225</td><td>2052</td><td>数据库:[2]。转换:无法转换临时表。表: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2226</td><td>2052</td><td>数据库:[2]。转换失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2227</td><td>2052</td><td>数据库:[2]。SQL 查询中的无效标识符 '[3]': [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2228</td><td>2052</td><td>数据库:[2]。SQL 查询中的未知表 '[3]': [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2229</td><td>2052</td><td>数据库:[2]。无法在 SQL 查询中加载表 '[3]': [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2230</td><td>2052</td><td>数据库:[2]。SQL 查询中的重复表 '[3]': [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2231</td><td>2052</td><td>数据库:[2]。SQL 查询中缺少 ')': [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2232</td><td>2052</td><td>数据库:[2]。SQL 查询中的意外标记 '[3]': [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2233</td><td>2052</td><td>数据库:[2]。SQL 查询的 SELECT 子句中没有列: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2234</td><td>2052</td><td>数据库:[2]。SQL 查询的 ORDER BY 子句中没有列: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2235</td><td>2052</td><td>数据库:[2]。SQL 查询中列 '[3]' 不存在或不明确: [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2236</td><td>2052</td><td>数据库:[2]。SQL 查询中的无效操作符 '[3]': [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2237</td><td>2052</td><td>数据库:[2]。无效或缺少查询字符串: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2238</td><td>2052</td><td>数据库:[2]。SQL 查询中缺少 FROM 子句: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2239</td><td>2052</td><td>数据库:[2]。INSERT SQL 语句中值不足。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2240</td><td>2052</td><td>数据库:[2]。UPDATE SQL 语句中缺少更新列。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2241</td><td>2052</td><td>数据库:[2]。INSERT SQL 语句中缺少插入列。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2242</td><td>2052</td><td>数据库:[2]。列 '[3]' 重复。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2243</td><td>2052</td><td>数据库:[2]。未定义主列以创建表。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2244</td><td>2052</td><td>数据库:[2]。SQL 查询 [4] 中的无效类型说明符 '[3]'。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2245</td><td>2052</td><td>IStorage::Stat 失败，错误 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2246</td><td>2052</td><td>数据库:[2]。无效的 Installer 转换格式。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2247</td><td>2052</td><td>数据库:[2] 变换流读取/写入失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2248</td><td>2052</td><td>数据库:[2] GenerateTransform/Merge:基表中的列类型与引用表不匹配。表:[3] 列: [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2249</td><td>2052</td><td>数据库:[2] GenerateTransform:基表中的列比引用表中的列多。表: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2250</td><td>2052</td><td>数据库:[2] 转换:无法添加现有行。表: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2251</td><td>2052</td><td>数据库:[2] 转换:无法删除不存在的行。表: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2252</td><td>2052</td><td>数据库:[2] 转换:无法添加现有表。表: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2253</td><td>2052</td><td>数据库:[2] 转换:无法删除不存在的表。表: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2254</td><td>2052</td><td>数据库:[2] 转换:无法更新不存在的行。表: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2255</td><td>2052</td><td>数据库:[2] 转换:已存在具有该名称的列。表:[3] 列: [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2256</td><td>2052</td><td>数据库:[2] GenerateTransform/Merge:基表中的主键数与引用表不匹配。表: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2257</td><td>2052</td><td>数据库:[2]。试图修改只读表: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2258</td><td>2052</td><td>数据库:[2]。参数类型不匹配: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2259</td><td>2052</td><td>数据库:[2] 表更新失败</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2260</td><td>2052</td><td>存储 CopyTo 失败。系统错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2261</td><td>2052</td><td>无法删除流 [2]。系统错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2262</td><td>2052</td><td>流不存在:[2]。系统错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2263</td><td>2052</td><td>无法打开流 [2]。系统错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2264</td><td>2052</td><td>无法删除流 [2]。系统错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2265</td><td>2052</td><td>无法提交存储。系统错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2266</td><td>2052</td><td>无法回滚存储。系统错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2267</td><td>2052</td><td>无法删除存储 [2]。系统错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2268</td><td>2052</td><td>数据库:[2]。Merge:在 [3] 个表中报告存在合并冲突。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2269</td><td>2052</td><td>数据库:[2]。Merge:两个数据库的 '[3]' 表中的列计数不同。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2270</td><td>2052</td><td>数据库:[2]。GenerateTransform/Merge:基表中的列名称与引用表不匹配。表:[3] 列: [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2271</td><td>2052</td><td>转换的 SummaryInformation 写入失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2272</td><td>2052</td><td>数据库:[2]。MergeDatabase 将不会写入任何更改，因为数据库是以只读方式打开的。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2273</td><td>2052</td><td>数据库:[2]。MergeDatabase:将对基数据库的引用作为引用数据库传递。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2274</td><td>2052</td><td>数据库:[2]。MergeDatabase:无法将错误写入错误表。可能是预定义的错误表中某个不可为空的列造成的。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2275</td><td>2052</td><td>数据库:[2]。对于表联接，指定的修改 [3] 操作无效。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2276</td><td>2052</td><td>数据库:[2]。系统不支持代码页 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2277</td><td>2052</td><td>数据库:[2]。无法保存表 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2278</td><td>2052</td><td>数据库:[2]。超出 SQL 查询中 WHERE 子句 32 个表达式限制: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2279</td><td>2052</td><td>数据库:[2] 转换:基表 [3] 中列太多。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2280</td><td>2052</td><td>数据库:[2]。无法为表 [4] 创建列 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2281</td><td>2052</td><td>无法重命名流 [2]。系统错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2282</td><td>2052</td><td>流名称无效 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_23</td><td>2052</td><td>无法创建文件 [2]。同名目录已存在。请取消此次安装，然后安装到其他位置。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2302</td><td>2052</td><td>修补程序通知:目前为止修补了 [2] 个字节。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2303</td><td>2052</td><td>获取卷信息时出错。GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2304</td><td>2052</td><td>获取可用磁盘空间时出错。GetLastError:[2]。卷: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2305</td><td>2052</td><td>等待修补线程时出错。GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2306</td><td>2052</td><td>无法为修补应用程序创建线程。GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2307</td><td>2052</td><td>源文件键名为空。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2308</td><td>2052</td><td>目标文件名为空。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2309</td><td>2052</td><td>在修补正在进行的同时，尝试修补文件 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2310</td><td>2052</td><td>在没有修补程序运行时尝试继续修补。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2315</td><td>2052</td><td>缺少路径分隔符: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2318</td><td>2052</td><td>文件不存在: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2319</td><td>2052</td><td>设置文件属性时出错:[3] GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2320</td><td>2052</td><td>文件不可写: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2321</td><td>2052</td><td>创建文件时出错: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2322</td><td>2052</td><td>用户已取消。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2323</td><td>2052</td><td>无效的文件属性。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2324</td><td>2052</td><td>无法打开文件:[3] GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2325</td><td>2052</td><td>无法获取文件的文件时间:[3] GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2326</td><td>2052</td><td>FileToDosDateTime 错误。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2327</td><td>2052</td><td>无法删除目录:[3] GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2328</td><td>2052</td><td>获取文件的文件版本信息时出错: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2329</td><td>2052</td><td>删除文件时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2330</td><td>2052</td><td>获取文件属性时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2331</td><td>2052</td><td>加载库 [2] 或查找入口点 [3] 时出错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2332</td><td>2052</td><td>获取文件属性时出错。GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2333</td><td>2052</td><td>设置文件属性时出错。GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2334</td><td>2052</td><td>将文件的文件时间转换为当地时间时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2335</td><td>2052</td><td>路径:[2] 不是 [3] 的父项。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2336</td><td>2052</td><td>在路径上创建临时文件时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2337</td><td>2052</td><td>无法关闭文件:[3] GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2338</td><td>2052</td><td>无法为文件更新资源:[3] GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2339</td><td>2052</td><td>无法为文件设置文件时间:[3] GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2340</td><td>2052</td><td>无法为文件更新资源:[3]，资源丢失。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2341</td><td>2052</td><td>无法为文件更新资源:[3]，资源太大。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2342</td><td>2052</td><td>无法为文件更新资源:[3] GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2343</td><td>2052</td><td>指定的路径为空。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2344</td><td>2052</td><td>无法找到所需的文件 IMAGEHLP.DLL 来验证文件: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2345</td><td>2052</td><td>[2]: 文件未包括有效的校验值。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2347</td><td>2052</td><td>用户忽略。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2348</td><td>2052</td><td>试图从压缩包流读取时出错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2349</td><td>2052</td><td>使用不同的信息恢复复制。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2350</td><td>2052</td><td>FDI 服务器错误</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2351</td><td>2052</td><td>未在压缩包 '[3]' 中找到文件密钥 '[2]'。安装无法继续。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2352</td><td>2052</td><td>无法初始化 CAB 文件服务器。所需的文件 'CABINET.DLL' 可能找不到。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2353</td><td>2052</td><td>不是压缩包。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2354</td><td>2052</td><td>无法处理压缩包。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2355</td><td>2052</td><td>损坏压缩包。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2356</td><td>2052</td><td>无法定位流中的压缩包: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2357</td><td>2052</td><td>无法设置属性。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2358</td><td>2052</td><td>确定文件是否正在使用中时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2359</td><td>2052</td><td>无法创建目标文件 - 可能正在使用文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2360</td><td>2052</td><td>进程刻度。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2361</td><td>2052</td><td>需要下一压缩包。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2362</td><td>2052</td><td>未找到文件夹: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2363</td><td>2052</td><td>无法枚举文件夹的子文件夹: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2364</td><td>2052</td><td>CreateCopier 调用中的错误枚举常量。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2365</td><td>2052</td><td>无法 BindImage exe 文件 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2366</td><td>2052</td><td>用户故障。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2367</td><td>2052</td><td>用户终止。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2368</td><td>2052</td><td>未能获取网络资源信息。错误 [2]，网络路径 [3]。扩展错误# :网络提供者 [5]，错误代码 [4]，错误描述 [6]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2370</td><td>2052</td><td>无效的 [2] 文件 CRC 校验值。{其标头表示校验值为 [3]，而其计算出的值为 [4]。}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2371</td><td>2052</td><td>无法将修补程序应用到文件 [2]。GetLastError: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2372</td><td>2052</td><td>修补程序文件 [2] 已损坏或格式无效。尝试修补文件 [3]。GetLastError: [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2373</td><td>2052</td><td>文件 [2] 不是有效的修补程序文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2374</td><td>2052</td><td>文件 [2] 不是修补文件 [3] 的有效目标文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2375</td><td>2052</td><td>未知修补错误: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2376</td><td>2052</td><td>未找到压缩包。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2379</td><td>2052</td><td>打开文件进行读取时出错:[3] GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2380</td><td>2052</td><td>打开文件进行写入时出错:[3]。GetLastError: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2381</td><td>2052</td><td>目录不存在: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2382</td><td>2052</td><td>驱动器未就绪: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_24</td><td>2052</td><td>请插入磁盘: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2401</td><td>2052</td><td>试图为密钥 [2] 在 32 位操作系统上进行 64 位注册表操作。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2402</td><td>2052</td><td>内存不足。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_25</td><td>2052</td><td>安装程序没有访问目录 [2] 的权限，安装无法继续进行。请以管理员身份登录，或与您的系统管理员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2501</td><td>2052</td><td>无法创建回滚脚本枚举器。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2502</td><td>2052</td><td>在没有正在执行的安装时调用 InstallFinalize。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2503</td><td>2052</td><td>在未标记为正在进行时，调用了 RunScript。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_26</td><td>2052</td><td>写至文件 [2] 时出错。请确认您有访问该目录的权限。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2601</td><td>2052</td><td>属性 [2] 的无效值: '[3]'</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2602</td><td>2052</td><td>[2] 表条目 '[3]' 在媒体表中没有相关的条目。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2603</td><td>2052</td><td>重复表名称 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2604</td><td>2052</td><td>未定义 [2] 属性。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2605</td><td>2052</td><td>无法在 [3] 或 [4] 中找到服务器 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2606</td><td>2052</td><td>属性 [2] 的值不是有效的完整路径: '[3]'。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2607</td><td>2052</td><td>找不到媒体表或其为空（安装文件所需）。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2608</td><td>2052</td><td>无法为对象创建安全描述符。错误: '[2]'。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2609</td><td>2052</td><td>尝试在初始化前迁移产品设置。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2611</td><td>2052</td><td>文件 [2] 标记为压缩，但相关媒体条目没有指定压缩包。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2612</td><td>2052</td><td>'[2]' 列中找不到流。主键: '[3]'。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2613</td><td>2052</td><td>RemoveExistingProducts 操作顺序不正确。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2614</td><td>2052</td><td>无法从安装包访问 IStorage 对象。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2615</td><td>2052</td><td>由于源解析错误，跳过模块 [2] 的注销。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2616</td><td>2052</td><td>缺少附带文件 [2] 父项。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2617</td><td>2052</td><td>未在组件表中找到共享组件 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2618</td><td>2052</td><td>未在组件表中找到独立的应用程序组件 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2619</td><td>2052</td><td>独立的组件 [2]、[3] 不是同一功能的组成部分。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2620</td><td>2052</td><td>独立的应用程序组件 [2] 的密钥文件不在文件表中。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2621</td><td>2052</td><td>快捷方式 [2] 的资源 DLL 或资源 ID 信息设置不正确。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27</td><td>2052</td><td>读取文件 [2] 时出错。{{ 系统错误 [3]。}}请确认文件存在，并且您能够访问该文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2701</td><td>2052</td><td>可接受的树深度为 [2] 级，某功能的深度超出了此限制。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2702</td><td>2052</td><td>功能表记录 ([2]) 引用属性字段中不存在的父项。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2703</td><td>2052</td><td>未定义根源路径的属性名称: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2704</td><td>2052</td><td>未定义根目录属性: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2705</td><td>2052</td><td>无效表:[2]；无法链接为树。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2706</td><td>2052</td><td>未创建源路径。目录表中不存在条目 [2] 的路径。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2707</td><td>2052</td><td>未创建目标路径。目录表中不存在条目 [2] 的路径。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2708</td><td>2052</td><td>未在文件表中找到条目。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2709</td><td>2052</td><td>未在组件表中找到指定的组件名称 ('[2]')。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2710</td><td>2052</td><td>对于此组件，所请求的 'Select' 状态为非法。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2711</td><td>2052</td><td>未在功能表中找到指定的功能名称 ('[2]')。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2712</td><td>2052</td><td>来自无模式对话框的无效返回:[3]，操作 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2713</td><td>2052</td><td>不可为空的列中存在空值（表 '[4]' 第 '[3]' 列中的 '[2]'。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2714</td><td>2052</td><td>默认文件夹名称的无效值: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2715</td><td>2052</td><td>未在文件表中找到指定的文件密钥 ('[2]')。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2716</td><td>2052</td><td>无法为组件 '[2]' 创建随机子组件名。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2717</td><td>2052</td><td>无效操作条件或调用自定义操作 '[2]' 时出错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2718</td><td>2052</td><td>缺少产品代码 '[2]' 的软件包名称。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2719</td><td>2052</td><td>源 '[2]' 中未找到 UNC 或驱动器号路径。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2720</td><td>2052</td><td>打开源列表键时出错。错误: '[2]'</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2721</td><td>2052</td><td>未在二进制表流中找到自定义操作 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2722</td><td>2052</td><td>未在文件表中找到自定义操作 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2723</td><td>2052</td><td>自定义操作 [2] 指定不支持的类型。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2724</td><td>2052</td><td>正在运行的来源媒体上的卷标 '[2]' 与媒体表中给定的标签 '[3]' 不匹配。只有当媒体表中仅有一个条目时，才允许出现此类情况。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2725</td><td>2052</td><td>无效的数据库表</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2726</td><td>2052</td><td>未找到操作: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2727</td><td>2052</td><td>目录表中不存在目录条目 '[2]'。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2728</td><td>2052</td><td>表定义错误: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2729</td><td>2052</td><td>未初始化安装引擎。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2730</td><td>2052</td><td>数据库中的无效值。表:'[2]'；主键:'[3]'；列: '[4]'</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2731</td><td>2052</td><td>未初始化 Selection Manager。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2732</td><td>2052</td><td>未初始化 Directory Manager。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2733</td><td>2052</td><td>'[4]' 表的 '[3]' 列中的无效外键 ('[2]')。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2734</td><td>2052</td><td>无效的重安装模式字符。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2735</td><td>2052</td><td>自定义操作 '[2]' 导致未处理的异常，并已被停止。这可能是自定义操作中的内部错误（如访问冲突）所造成的。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2736</td><td>2052</td><td>生成自定义操作临时文件失败: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2737</td><td>2052</td><td>无法访问自定义操作 [2]，条目 [3]，库 [4]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2738</td><td>2052</td><td>无法访问自定义操作 [2] 的 VBScript 运行时间。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2739</td><td>2052</td><td>无法访问自定义操作 [2] 的 JavaScript 运行时间。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2740</td><td>2052</td><td>自定义操作 [2] 脚本错误 [3]，[4]:[5] 第 [6] 行，第 [7] 列，[8]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2741</td><td>2052</td><td>产品 [2] 的配置信息已损坏。无效信息: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2742</td><td>2052</td><td>整理至服务器失败: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2743</td><td>2052</td><td>无法执行自定义操作 [2]，位置:[3]，命令: [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2744</td><td>2052</td><td>自定义操作 [2] 调用 EXE 失败，位置:[3]，命令: [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2745</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的语言 [4]，找到的语言 [5]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2746</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品 [4]，找到的产品 [5]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2747</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 &lt; [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2748</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 &lt;= [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2749</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 == [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2750</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 &gt;= [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27502</td><td>2052</td><td>无法连接到 [2] '[3]'。 [4]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27503</td><td>2052</td><td>从 [2] '[3]' 检索版本字符串时出错。 [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27504</td><td>2052</td><td>SQL 版本要求未达到：[3]。此安装需要 [2] [4] 或更新版本。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27505</td><td>2052</td><td>无法打开 SQL 脚本文件 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27506</td><td>2052</td><td>执行 SQL 脚本 [2] 时出错。 行 [3]。 [4]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27507</td><td>2052</td><td>浏览或连接数据库服务器要求安装 MDAC。安装程序将立即终止。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27508</td><td>2052</td><td>安装 COM+ 应用程序 [2] 时出错。 [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27509</td><td>2052</td><td>卸载 COM+ 应用程序 [2] 时出错。 [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2751</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的产品版本 &gt; [4]，找到的产品版本 [5]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27510</td><td>2052</td><td>安装 COM+ 应用程序 [2] 时出错。 无法创建 System.EnterpriseServices.RegistrationHelper 对象。 注册 Microsoft(R) .NET 服务组件需要安装 Microsoft(R) .NET Framework。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27511</td><td>2052</td><td>无法执行 SQL 脚本文件 [2]。 未打开连接： [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27512</td><td>2052</td><td>开始 [2] '[3]' 事务时出错。 数据库 [4]。 [5]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27513</td><td>2052</td><td>提交 [2] '[3]' 事务时出错。 数据库 [4]。 [5]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27514</td><td>2052</td><td>此安装需要 Microsoft SQL Server。指定服务器"[3]"是 Microsoft SQL Server Desktop Engine 或 SQL Server Express。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27515</td><td>2052</td><td>从 [2] '[3]' 检索模式版本时出错。 数据库： '[4]'. [5]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27516</td><td>2052</td><td>将模式版本写入 [2] '[3]' 时出错。 数据库： '[4]'. [5]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27517</td><td>2052</td><td>在本次安装中，您须具有管理员特权方能安装 COM+ 应用程序。请以管理员身份登录，然后重新开始安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27518</td><td>2052</td><td>COM+ 应用程序 "[2]" 的配置是作为一项 NT 服务运行；运行时，系统上须有 COM+ 1.5 或更新版。由于所用系统上有 COM+ 1.0，故无法安装该应用程序。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27519</td><td>2052</td><td>更新 XML 文件 [2] 时出错。 [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2752</td><td>2052</td><td>无法打开作为软件包 [4] 的子存储来存储的转换 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27520</td><td>2052</td><td>打开 XML 文件 [2] 时出错。 [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27521</td><td>2052</td><td>此安装程序需要 MSXML 3.0 或更高版本才能配置 XML 文件。请确定您有 3.0 或更高版本。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27522</td><td>2052</td><td>创建 XML 文件 [2] 时出错。 [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27523</td><td>2052</td><td>加载服务器出错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27524</td><td>2052</td><td>加载 NetApi32.DLL 时出错。ISNetApi.dll 要求正确地加载 NetApi32.DLL，同时需要基于 NT的操作系统。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27525</td><td>2052</td><td>找不到服务器。 检查指定的服务器是否存在。 服务器名称不能为空白。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27526</td><td>2052</td><td>从 ISNetApi.dll 返回未指定的错误。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27527</td><td>2052</td><td>缓冲区太小。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27528</td><td>2052</td><td>访问被拒。 检查管理权限。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27529</td><td>2052</td><td>无效的计算机。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2753</td><td>2052</td><td>未标记文件 '[2]'以进行安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27530</td><td>2052</td><td>NetAPI 返回一个错误，原因不详。 系统错误﹕ [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27531</td><td>2052</td><td>未处理的异常情况。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27532</td><td>2052</td><td>此服务器或域的用户名无效。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27533</td><td>2052</td><td>区分大小写的密码不符。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27534</td><td>2052</td><td>列表是空的。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27535</td><td>2052</td><td>访问违规。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27536</td><td>2052</td><td>获取组时出错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27537</td><td>2052</td><td>添加用户到组时出错。 检查该组是否存在于此域或服务器中。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27538</td><td>2052</td><td>创建用户时出错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27539</td><td>2052</td><td>已从 NetAPI 返回 ERROR_NETAPI_ERROR_NOT_PRIMARY。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2754</td><td>2052</td><td>文件 '[2]' 不是有效的修补程序文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27540</td><td>2052</td><td>指定的用户已存在。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27541</td><td>2052</td><td>指定的组已存在。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27542</td><td>2052</td><td>无效的密码。 检查密码是否与您的网络密码规则一致。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27543</td><td>2052</td><td>无效的名称。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27544</td><td>2052</td><td>无效的组。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27545</td><td>2052</td><td>用户名不得为空，且其格式必须为“域\用户名”。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27546</td><td>2052</td><td>在用户 TEMP 目录中加载或创建 INI 文件时出错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27547</td><td>2052</td><td>ISNetAPI.dll 未加载或加载 dll 时出错。 这项操作需要加载此 dll。 检查 dll 是否已经在 SUPPORTDIR 目录中。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27548</td><td>2052</td><td>从用户的 TEMP 目录中删除包含新用户信息的 INI 文件时出错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27549</td><td>2052</td><td>获取主域控制器 (PDC) 时出错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2755</td><td>2052</td><td>试图安装软件包 [3] 时，服务器返回意外错误 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27550</td><td>2052</td><td>每个字段必须有值才能创建用户。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27551</td><td>2052</td><td>找不到 [2] 的 ODBC 驱动程序。这是与 [2] 数据库服务器连接的必备工具。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27552</td><td>2052</td><td>创建数据库 [4] 时出错。服务器：[2] [3]. [5]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27553</td><td>2052</td><td>连接到数据库 [4] 时出错。服务器：[2] [3]. [5]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27554</td><td>2052</td><td>试图打开连接 [2] 时出错。没有与此连接相关的有效数据库元数据。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_27555</td><td>2052</td><td>将许可应用于对象 '[2]' 时出错。 系统错误﹕ [3] ([4])</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2756</td><td>2052</td><td>属性 '[2]' 在一个或多个表中用作目录属性，但从未指定过值。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2757</td><td>2052</td><td>无法为转换 [2] 创建摘要信息。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2758</td><td>2052</td><td>转换 [2] 不包含 MSI 版本。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2759</td><td>2052</td><td>转换 [2] 版本 [3] 与引擎不兼容；最低:[4]，最高: [5]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2760</td><td>2052</td><td>对于软件包 [3]，转换 [2] 无效。预期的升级代码 [4]，找到 [5]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2761</td><td>2052</td><td>无法开始事务。未正确初始化全局互斥体。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2762</td><td>2052</td><td>无法写入脚本记录。未启动事务。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2763</td><td>2052</td><td>无法运行脚本。未启动事务。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2765</td><td>2052</td><td>AssemblyName 表中缺少程序集名称:组件: [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2766</td><td>2052</td><td>文件 [2] 为无效的 MSI 存储文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2767</td><td>2052</td><td>没有更多数据{ 枚举 [2] 时}。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2768</td><td>2052</td><td>修补软件包中的转换无效。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2769</td><td>2052</td><td>自定义操作 [2] 未关闭 [3] MSIHANDLE。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2770</td><td>2052</td><td>未在内部缓存文件夹表中定义缓存文件夹 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2771</td><td>2052</td><td>功能 [2] 的升级缺少一个组件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2772</td><td>2052</td><td>新升级功能 [2] 必须为分页功能。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_28</td><td>2052</td><td>另一应用程序已经以独占模式访问了文件 [2]。请关闭所有其他的应用程序，然后再单击“重试”按钮。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2801</td><td>2052</td><td>未知消息 -- 类型 [2]。不执行任何操作。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2802</td><td>2052</td><td>未找到事件 [2] 的发行程序。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2803</td><td>2052</td><td>Dialog View 未找到对话框 [2] 的记录。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2804</td><td>2052</td><td>激活对话框 [2] 上的控件 [3] 时，CmsiDialog 无法评估条件 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2806</td><td>2052</td><td>对话框 [2] 无法评估条件 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2807</td><td>2052</td><td>未识别操作 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2808</td><td>2052</td><td>在对话框 [2] 上错误定义默认按钮。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2809</td><td>2052</td><td>在对话框 [2] 上，后面的控件指针没有形成循环。有从 [3] 指向 [4] 的指针，但没有其他指针。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2810</td><td>2052</td><td>在对话框 [2] 上，后面的控件指针没有形成循环。有从 [3] 和 [5] 指向 [4] 的指针。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2811</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 必须取得焦点，但无法实现。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2812</td><td>2052</td><td>未识别事件 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2813</td><td>2052</td><td>使用参数 [2] 调用了 EndDialog 事件，但对话框具有父项。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2814</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 将一个不存在的控件 [4] 作为下一控件命名。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2815</td><td>2052</td><td>ControlCondition 表有一行没有对话框 [2] 的条件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2816</td><td>2052</td><td>EventMapping 表为事件 [3] 引用对话框 [2] 上的无效控件 [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2817</td><td>2052</td><td>事件 [2] 无法为对话框 [3] 上的控件 [4] 设置属性。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2818</td><td>2052</td><td>在 ControlEvent 表中，EndDialog 具有无法识别的参数 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2819</td><td>2052</td><td>对话框 [2] 上的控件 [3] 需要一个链接到它的属性。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2820</td><td>2052</td><td>尝试初始化一个已初始化的处理程序。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2821</td><td>2052</td><td>尝试初始化一个已初始化的对话框: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2822</td><td>2052</td><td>只有添加所有控件后，才能在对话框 [2] 上调用其他方法。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2823</td><td>2052</td><td>尝试初始化一个已初始化的对话框:对话框 [2] 上的 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2824</td><td>2052</td><td>对话框属性 [3] 需要一条至少 [2] 个字段的记录。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2825</td><td>2052</td><td>控件属性 [3] 需要一条至少 [2] 个字段的记录。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2826</td><td>2052</td><td>对话框 [2] 上的控件 [3] 超出了对话框 [4] 的边界 [5] 个像素。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2827</td><td>2052</td><td>对话框 [2] 上的单选按钮组 [3] 中的按钮 [4] 超出组 [5] 的边界 [6] 个像素。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2828</td><td>2052</td><td>试图从对话框 [2] 删除控件 [3]，但该控件不是对话框的一部分。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2829</td><td>2052</td><td>尝试使用未初始化的对话框。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2830</td><td>2052</td><td>尝试使用对话框 [2] 上未初始化的控件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2831</td><td>2052</td><td>对话框 [2] 上的控件 [3] 不支持 [5] 属性 [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2832</td><td>2052</td><td>对话框 [2] 不支持属性 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2833</td><td>2052</td><td>对话框 [3] 上的控件 [4] 忽略消息 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2834</td><td>2052</td><td>对话框 [2] 上后面的指针没有形成单循环。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2835</td><td>2052</td><td>未在对话框 [3] 上找到控件 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2836</td><td>2052</td><td>对话框 [2] 上的控件 [3] 无法取得焦点。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2837</td><td>2052</td><td>对话框 [2] 上的控件 [3] 希望 winproc 返回 [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2838</td><td>2052</td><td>期   选择表中的项目 [2] 将其自身作为父项。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2839</td><td>2052</td><td>设置属性 [2] 失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2840</td><td>2052</td><td>错误对话框名称不匹配。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2841</td><td>2052</td><td>未在错误对话框上找到确定按钮。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2842</td><td>2052</td><td>未在错误对话框中找到文本字段。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2843</td><td>2052</td><td>标准对话框不支持 ErrorString 属性。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2844</td><td>2052</td><td>如果未设置 Errorstring，则无法执行错误对话框。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2845</td><td>2052</td><td>按钮的总宽度超过错误对话框的尺寸。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2846</td><td>2052</td><td>SetFocus 未在错误对话框上找到所需的控件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2847</td><td>2052</td><td>对话框 [2] 上的控件 [3] 同时设置了图标和位图样式。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2848</td><td>2052</td><td>试图将控件 [3] 设置为对话框 [2] 上的默认按钮，但该控件不存在。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2849</td><td>2052</td><td>对话框 [2] 上的控件 [3] 为一个值不能为整数的类型。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2850</td><td>2052</td><td>无法识别的卷类型。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2851</td><td>2052</td><td>图标 [2] 的数据无效。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2852</td><td>2052</td><td>使用前，必须至少将一个控件添加到对话框 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2853</td><td>2052</td><td>对话框 [2] 为无模式对话框。不应在此对话框上调用此执行方法。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2854</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 被指定为第一活动控件，但不存在此类控件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2855</td><td>2052</td><td>对话框 [2] 上的单选按钮组 [3] 的按钮少于两个。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2856</td><td>2052</td><td>创建对话框 [2] 的第二个副本。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2857</td><td>2052</td><td>在选择表中提及了目录 [2]，但却并未找到。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2858</td><td>2052</td><td>位图 [2] 的数据无效。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2859</td><td>2052</td><td>测试错误消息。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2860</td><td>2052</td><td>在对话框 [2] 上错误定义取消按钮。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2861</td><td>2052</td><td>对话框 [2] 控件 [3] 上的单选按钮后面的指针没有形成循环。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2862</td><td>2052</td><td>对话框 [2] 上的控件 [3] 的属性没有定义有效的图标大小。将大小设置为 16。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2863</td><td>2052</td><td>对话框 [2] 上的控件 [3] 需要尺寸为 [5]x[5] 的图标 [4]，但该尺寸不可用。加载第一个可用的尺寸。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2864</td><td>2052</td><td>对话框 [2] 上的控件 [3] 收到了浏览事件，但没有用于当前选择的可配置目录。可能的原因有:未正确设计浏览按钮。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2865</td><td>2052</td><td>公告板 [2] 上的控件 [3] 超出了公告板 [4] 的边界 [5] 个像素。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2866</td><td>2052</td><td>不允许对话框 [2] 返回参数 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2867</td><td>2052</td><td>未设置错误对话框属性。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2868</td><td>2052</td><td>错误对话框 [2] 的样式位设置是正确的。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2869</td><td>2052</td><td>对话框 [2] 样式位设置错误，但它不是错误的对话框。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2870</td><td>2052</td><td>对话框 [2] 上控件 [3] 的帮助字符串 [4] 不包含分隔符。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2871</td><td>2052</td><td>[2] 表已过期: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2872</td><td>2052</td><td>对话框 [2] 上的 CheckPath 控件事件的参数无效。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2873</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 的无效字符串长度限制为: [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2874</td><td>2052</td><td>将文本字体更改为 [2] 失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2875</td><td>2052</td><td>将文本颜色更改为 [2] 失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2876</td><td>2052</td><td>对话框 [2] 上的控件 [3] 必须截断字符串: [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2877</td><td>2052</td><td>未找到二进制数据 [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2878</td><td>2052</td><td>在对话框 [2] 上，控件 [3] 的可能值为:[4]。 这是一个无效值或重复值。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2879</td><td>2052</td><td>对话框 [2] 上的控件 [3] 无法解析掩码字符串: [4]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2880</td><td>2052</td><td>请勿执行剩余的控件事件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2881</td><td>2052</td><td>CmsiHandler 初始化失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2882</td><td>2052</td><td>对话框窗口类注册失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2883</td><td>2052</td><td>为对话框 [2] CreateNewDialog 失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2884</td><td>2052</td><td>无法为对话框 [2] 创建窗口。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2885</td><td>2052</td><td>无法在对话框 [2] 上创建控件 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2886</td><td>2052</td><td>创建 [2] 表失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2887</td><td>2052</td><td>创建到 [2] 表的光标失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2888</td><td>2052</td><td>执行 [2] 视图失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2889</td><td>2052</td><td>为对话框 [2] 上的控件 [3] 创建窗口失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2890</td><td>2052</td><td>处理程序无法创建已初始化的对话框。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2891</td><td>2052</td><td>无法销毁对话框 [2] 的窗口。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2892</td><td>2052</td><td>控件 [2] 只能为整型，[3] 不是有效的整数值。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2893</td><td>2052</td><td>对话框 [2] 上的控件 [3] 可接受最多 [5] 个字符长的属性值。值 [4] 超过此限制，因此已被截断。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2894</td><td>2052</td><td>加载 RICHED20.DLL 失败。GetLastError() 返回: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2895</td><td>2052</td><td>释放 RICHED20.DLL 失败。GetLastError() 返回: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2896</td><td>2052</td><td>执行操作 [2] 失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2897</td><td>2052</td><td>无法在此系统上创建任意 [2] 字体。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2898</td><td>2052</td><td>对于 [2] 文本样式，系统在 [4] 字符集中创建了 '[3]' 字体。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2899</td><td>2052</td><td>无法创建 [2] 文本样式。GetLastError() 返回: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_29</td><td>2052</td><td>没有足够的磁盘空间来安装文件 [2]。请释放一些磁盘空间后单击“重试”，或者单击“取消”退出。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2901</td><td>2052</td><td>操作 [2] 的无效参数:参数 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2902</td><td>2052</td><td>操作 [2] 调用顺序不正确。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2903</td><td>2052</td><td>缺少文件 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2904</td><td>2052</td><td>无法 BindImage 文件 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2905</td><td>2052</td><td>无法从脚本文件 [2] 读取记录。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2906</td><td>2052</td><td>脚本文件 [2] 中缺少标题。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2907</td><td>2052</td><td>无法创建安全的安全描述符。错误: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2908</td><td>2052</td><td>无法注册组件 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2909</td><td>2052</td><td>无法注销组件 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2910</td><td>2052</td><td>无法确定用户的安全 ID。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2911</td><td>2052</td><td>无法删除文件夹 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2912</td><td>2052</td><td>无法计划在重新启动时要删除的文件 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2919</td><td>2052</td><td>没有为压缩文件指定压缩包: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2920</td><td>2052</td><td>未为文件 [2] 指定源目录。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2924</td><td>2052</td><td>不支持脚本 [2] 版本。脚本版本:[3]，最低版本:[4]，最高版本: [5]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2927</td><td>2052</td><td>ShellFolder ID [2] 无效。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2928</td><td>2052</td><td>超出源的最大数。跳过源 '[2]'。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2929</td><td>2052</td><td>无法判断发布根目录。错误: [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2932</td><td>2052</td><td>无法从脚本数据创建文件 [2]。错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2933</td><td>2052</td><td>无法初始化回滚脚本 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2934</td><td>2052</td><td>无法保护转换 [2]。错误 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2935</td><td>2052</td><td>无法取消保护转换 [2]。错误 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2936</td><td>2052</td><td>无法找到转换 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2937</td><td>2052</td><td>Windows Installer 无法安装系统文件保护编录。编录:[2]，错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2938</td><td>2052</td><td>Windows Installer 无法从缓存检索系统文件保护编录。编录:[2]，错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2939</td><td>2052</td><td>Windows Installer 无法从缓存删除系统文件保护编录。编录:[2]，错误: [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2940</td><td>2052</td><td>未提供 Directory Manager 来实现源解析。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2941</td><td>2052</td><td>无法计算文件 [2] 的 CRC。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2942</td><td>2052</td><td>BindImage 操作尚未在 [2] 文件上执行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2943</td><td>2052</td><td>此版本的 Windows 不支持部署 64 位软件包。脚本 [2] 用于 64 位软件包。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2944</td><td>2052</td><td>GetProductAssignmentType 失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_2945</td><td>2052</td><td>安装 ComPlus App [2] 失败，错误 [3]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_3</td><td>2052</td><td>信息 [1]。 </td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_30</td><td>2052</td><td>没有找到源文件 [2]。请确认文件存在，并且您能够访问该文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_3001</td><td>2052</td><td>此列表中的修补程序包含不正确的顺序信息: [2][3][4][5][6][7][8][9][10][11][12][13][14][15][16]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_3002</td><td>2052</td><td>修补程序 [2] 包括无效的顺序信息。 </td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_31</td><td>2052</td><td>读取文件 [3] 时出错。{{ 系统错误 [2]。}} 请确认文件存在，并且您能够访问该文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_32</td><td>2052</td><td>写至文件 [3] 时出错。{{ 系统错误 [2]。}} 请确认您有权访问该目录。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_33</td><td>2052</td><td>没有找到源文件{{(包)}}: [2]。请确认文件存在，并且您能够访问该文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_34</td><td>2052</td><td>无法创建目录 [2]。同名文件已经存在。请重命名或删除文件，然后单击“重试”按钮，或者单击“取消”按钮退出。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_35</td><td>2052</td><td>目前无法使用卷 [2]，请另选其他卷。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_36</td><td>2052</td><td>无法使用指定的路径 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_37</td><td>2052</td><td>无法写入指定的文件夹 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_38</td><td>2052</td><td>试图读取文件 [2] 时发生网络错误。 </td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_39</td><td>2052</td><td>试图创建目录 [2] 时发生错误。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_4</td><td>2052</td><td>内部错误 [1]. [2]{, [3]}{, [4]}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_40</td><td>2052</td><td>试图创建目录 [2] 时发生网络错误。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_41</td><td>2052</td><td>试图打开源文件包 [2] 时发生网络错误。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_42</td><td>2052</td><td>指定的路径过长: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_43</td><td>2052</td><td>安装程序没有修改文件 [2] 的权限。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_44</td><td>2052</td><td>文件夹路径 [2] 的一部分无效。或者为空，或者超出了系统允许的长度。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_45</td><td>2052</td><td>文件夹路径 [2] 中含有无效单词。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_46</td><td>2052</td><td>文件夹路径 [2] 中含有无效的字符。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_47</td><td>2052</td><td>[2] 不是一个有效的短文件名。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_48</td><td>2052</td><td>获取文件 [3] 安全权限时发生错误 GetLastError: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_49</td><td>2052</td><td>无效驱动器: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_5</td><td>2052</td><td>{{磁盘已满: }}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_50</td><td>2052</td><td>无法创建键: [2]。{{ 系统错误 [3]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_51</td><td>2052</td><td>无法打开键: [2]。{{ 系统错误 [3]。}}  请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。 </td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_52</td><td>2052</td><td>无法删除值 [2]（从键 [3] 中）。{{ 系统错误 [4]。}}  请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_53</td><td>2052</td><td>无法删除键 [2]。{{ 系统错误 [3]。}}  请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_54</td><td>2052</td><td>无法读取值 [2]（从键 [3] 中）。{{ 系统错误 [4]。}}  请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_55</td><td>2052</td><td>无法将数值 [2] 写入键 [3]。{{ 系统错误 [4]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_56</td><td>2052</td><td>无法获取键 [2] 的数值名称。{{ 系统错误 [3]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_57</td><td>2052</td><td>无法获取键 [2] 的子键。{{ 系统错误 [3]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_58</td><td>2052</td><td>无法读取键 [2] 的安全信息。{{ 系统错误 [3]。}} 请验证您对该键拥有足够的访问权限，或者与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_59</td><td>2052</td><td>无法增加可用的注册表空间。安装本应用程序需要 [2] 千字节的空闲注册表空间。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_6</td><td>2052</td><td>操作 [Time]: [1]. [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_60</td><td>2052</td><td>另一安装过程正在进行。您必须先完成那次过程，然后才能继续本次过程。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_61</td><td>2052</td><td>访问受保护的数据时出错。请确认 Windows Installer 配置是否正确，然后重新安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_62</td><td>2052</td><td>用户 [2] 以前启动过产品 [3] 的安装程序。若要使用该产品，需要请此用户再次运行安装程序。现在将继续进行您的安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_63</td><td>2052</td><td>用户 [2] 以前启动过产品 [3] 的安装程序。若要使用该产品，需要请此用户再次运行安装程序。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_64</td><td>2052</td><td>磁盘空间不足 -- 卷: [2]；所需空间: [3] 千字节；可用空间: [4] 千字节。请在释放磁盘空间后再试。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_65</td><td>2052</td><td>是否确认要取消操作？</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_66</td><td>2052</td><td>文件 [2][3] 正被使用 {使用者: 名称: [4]，Id: [5]，窗口标题: “[6]”}。请关闭那个应用程序后再重试。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_67</td><td>2052</td><td>产品 [2] 已经安装，现在无法安装本产品。这两种产品不兼容。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_68</td><td>2052</td><td>磁盘空间不足 -- 卷 [2]；所需空间: [3] 千字节；可用空间: [4] 千字节。如果禁用回滚功能，则空间足够。单击“取消”退出，单击“重试”再次检查可用空间，单击“忽略”在禁用回滚功能的情况下继续安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_69</td><td>2052</td><td>无法访问网络位置 [2]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_7</td><td>2052</td><td>[ProductName]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_70</td><td>2052</td><td>在继续安装之前，请关闭以下应用程序: </td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_71</td><td>2052</td><td>无法在计算机上找到安装本产品所需的任何以前安装的相应产品。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_72</td><td>2052</td><td>键 [2] 无效。请确认您输入的键是否正确。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_73</td><td>2052</td><td>安装程序必须先重新启动您的系统，然后才能继续配置 [2]。单击“是”按钮可立即重新启动；单击“否”按钮则可在以后以人工方式启动。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_74</td><td>2052</td><td>您必须先重新启动系统，然后才能使对 [2] 做出的配置修改生效。单击“是”按钮可立即重新启动；单击“否”按钮则可在以后以人工方式启动。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_75</td><td>2052</td><td>[2] 的一次安装过程正处于暂停状态，您必须先撤消该安装过程做出的修改，然后才能继续操作。是否撤消那些修改？</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_76</td><td>2052</td><td>本产品的前一次安装正在进行，您必须先撤消该过程做出的修改，然后才能继续。是否撤消那些修改？</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_77</td><td>2052</td><td>无法找到产品 [2] 的安装程序包。请使用安装程序包 [3] 的有效拷贝重新进行安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_78</td><td>2052</td><td>安装操作已成功完成。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_79</td><td>2052</td><td>安装操作失败。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_8</td><td>2052</td><td>{[2]}{, [3]}{, [4]}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_80</td><td>2052</td><td>产品: [2] -- [3]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_81</td><td>2052</td><td>您可以将计算机还原至其原始状态，也可在以后继续安装。是否要进行还原？</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_82</td><td>2052</td><td>向硬盘写入安装信息时发生错误。请确认是否有足够的硬盘空间可供使用，然后单击“重试”按钮，或者单击“取消”按钮结束安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_83</td><td>2052</td><td>无法找到将您的计算机恢复至原始状态所需的一个或多个文件。不能进行恢复操作。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_84</td><td>2052</td><td>路径 [2] 无效，请指定有效路径。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_85</td><td>2052</td><td>内存不足。请先关闭其他应用程序，然后再重试。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_86</td><td>2052</td><td>驱动器 [2] 中没有磁盘。请先插入磁盘，然后单击“重试”按钮；或者单击“取消”按钮，返回前面选择的卷。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_87</td><td>2052</td><td>驱动器 [2] 中没有磁盘。请先插入磁盘，然后单击“重试”按钮；或者单击“取消”按钮，返回“浏览”对话框并选择其他卷。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_88</td><td>2052</td><td>文件夹 [2] 不存在。请输入某个原有文件夹的路径。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_89</td><td>2052</td><td>您读取此文件夹的权限不够。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_9</td><td>2052</td><td>消息类型: [1]， 参数: [2]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_90</td><td>2052</td><td>无法确定安装所需的有效路径。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_91</td><td>2052</td><td>试图读取源安装数据库 [2] 时出错。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_92</td><td>2052</td><td>正在安排重新启动操作: 将文件 [2] 重命名为 [3]。只有重新启动后操作才能完成。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_93</td><td>2052</td><td>正在安排重新启动操作: 删除文件 [2]。只有重新启动后操作才能完成。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_94</td><td>2052</td><td>无法注册模块 [2]。HRESULT [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_95</td><td>2052</td><td>无法撤消注册模块 [2]。HRESULT [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_96</td><td>2052</td><td>无法缓存包 [2]。错误: [3]。请与您的技术支持人员联系。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_97</td><td>2052</td><td>无法注册字体 [2]。请检查您是否有足够的权限安装字体，以及系统是否能够支持该字体。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_98</td><td>2052</td><td>无法撤消对字体 [2] 的注册。请检查您是否有足够的权限删除字体。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ERROR_99</td><td>2052</td><td>无法创建快捷方式 [2]。请检查目标文件夹是否存在，以及您是否可以访问该文件夹。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_INSTALLDIR</td><td>2052</td><td>{&amp;Tahoma8}[INSTALLDIR]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_INSTALLSHIELD</td><td>2052</td><td>InstallShield</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_INSTALLSHIELD_FORMATTED</td><td>2052</td><td>{&amp;MSSWhiteSerif8}InstallShield</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_MISSING</td><td>2052</td><td>该计算机缺少 InstallScript 引擎。请运行 ISScript.msi（如果有的话），或者联系您的支持人员获得进一步的帮助。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_OLD</td><td>2052</td><td>该计算机中的 InstallScript 引擎版本早于此安装程序需要的版本。请安装 ISScript.msi 的最新版本（如果有的话），或者联系您的支持人员获得进一步的帮助。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_NEXT</td><td>2052</td><td>下一步(&amp;N) &gt;</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_OK</td><td>2052</td><td>{&amp;Tahoma8}确定</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_BROWSE</td><td>2052</td><td>打开 [ProductName] 原版 [SETUPEXENAME]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_INVALID</td><td>2052</td><td>这一可执行文件好象不是 [ProductName] 原版的可执行文件。 若不用原版的 [SETUPEXENAME] 安装其他相关软件，[ProductName] 可能会出现问题。 是否寻找原版的 [SETUPEXENAME]？</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_SEARCH</td><td>2052</td><td>本次安装可能需要使用其他相关软件。 若没有这些相关软件，[ProductName] 可能会出现问题。 是否寻找原来的 [SETUPEXENAME]？</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PREVENT_DOWNGRADE_EXIT</td><td>2052</td><td>该应用程序的新版已在这台计算机上安装。如果您想安装这个版本，请先卸载已安装的新版程序。若需退出向导程序，请点击“确定”。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PRINT_BUTTON</td><td>2052</td><td>打印(&amp;P)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PRODUCTNAME_INSTALLSHIELD</td><td>2052</td><td>[ProductName] InstallShield Wizard</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOL</td><td>2052</td><td>创建应用程序池 %s</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOLS</td><td>2052</td><td>正在创建应用程序池...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOT</td><td>2052</td><td>正在创建 IIS 虚拟目录 %s</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOTS</td><td>2052</td><td>正在创建 IIS 虚拟目录...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSION</td><td>2052</td><td>创建 Web 服务扩展</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS</td><td>2052</td><td>正在创建 Web 服务扩展...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITE</td><td>2052</td><td>正在创建 IIS 网站 %s</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITES</td><td>2052</td><td>正在创建 IIS 网站...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACT</td><td>2052</td><td>正在检索 IIS 虚拟目录的信息...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACTDONE</td><td>2052</td><td>已检索 IIS 虚拟目录的信息...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOL</td><td>2052</td><td>删除应用程序池</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOLS</td><td>2052</td><td>正在删除应用程序池...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVESITE</td><td>2052</td><td>正在删除端口 %d 的网站</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOT</td><td>2052</td><td>正在删除 IIS 虚拟目录 %s</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOTS</td><td>2052</td><td>正在删除 IIS 虚拟目录...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION</td><td>2052</td><td>删除 Web 服务扩展</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS</td><td>2052</td><td>正在删除 Web 服务扩展...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSITES</td><td>2052</td><td>正在删除 IIS 网站...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKAPPPOOLS</td><td>2052</td><td>正在回滚应用程序池...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKVROOTS</td><td>2052</td><td>正在回滚虚拟目录和网站更改...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS</td><td>2052</td><td>正在回滚 Web 服务扩展...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_TEXTFILECHANGS_REPLACE</td><td>2052</td><td>替换 %s 中，使用的是﹕%s，位于 %s...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_XML_COSTING</td><td>2052</td><td>正在计算 XML 文件成本...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_XML_CREATE_FILE</td><td>2052</td><td>正在创建 XML 文件 %s...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_XML_FILES</td><td>2052</td><td>正在执行 XML 文件更改...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_XML_REMOVE_FILE</td><td>2052</td><td>正在删除 XML 文件 %s...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_XML_ROLLBACK_FILES</td><td>2052</td><td>正在回滚 XML 文件更改...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_PROGMSG_XML_UPDATE_FILE</td><td>2052</td><td>正在更新 XML 文件 %s...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SETUPEXE_EXPIRE_MSG</td><td>2052</td><td>本安装程序的使用期到 %s 结束。安装程序现在将退出。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SETUPEXE_LAUNCH_COND_E</td><td>2052</td><td>本安装程序内建有 InstallShield 的评估版，只能用 setup.exe 文件启动。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME1</td><td>1033</td><td/><td>0</td><td/><td>-324584338</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME1</td><td>2052</td><td>LAUNCH~1.EXE|Launch OpenSDK_Demo_Qt.exe</td><td>0</td><td/><td>-324584338</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME2</td><td>1033</td><td/><td>0</td><td/><td>-324580242</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME2</td><td>2052</td><td>LAUNCH~1.EXE|Launch MFCDemo.exe</td><td>0</td><td/><td>-324580242</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME3</td><td>1033</td><td/><td>0</td><td/><td>-324578194</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME3</td><td>2052</td><td>LAUNCH~1.EXE|Launch V2216DLLDemo.exe</td><td>0</td><td/><td>-324578194</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME4</td><td>1033</td><td/><td>0</td><td/><td>-324560432</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME4</td><td>2052</td><td>LAUNCH~1.EXE|Launch OpenSDK_Demo_Qt.exe</td><td>0</td><td/><td>-324560432</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME5</td><td>1033</td><td/><td>0</td><td/><td>-324558384</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME5</td><td>2052</td><td>LAUNCH~1.EXE|Launch MFCDemo.exe</td><td>0</td><td/><td>-324558384</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME6</td><td>1033</td><td/><td>0</td><td/><td>-324556336</td></row>
		<row><td>IDS_SHORTCUT_DISPLAY_NAME6</td><td>2052</td><td>LAUNCH~1.EXE|Launch V2216DLLDemo.exe</td><td>0</td><td/><td>-324556336</td></row>
		<row><td>IDS_SQLBROWSE_INTRO</td><td>2052</td><td>从以下服务器列表中选择要连接的数据库服务器。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_DB</td><td>2052</td><td>从以下的编录名称列表中，选择您希望将其作为目标的数据库编录。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_TEMPLATE</td><td>2052</td><td>[IS_SQLBROWSE_INTRO]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE</td><td>2052</td><td>浏览(&amp;R)...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE_DB</td><td>2052</td><td>浏览(&amp;O)...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_CATALOG</td><td>2052</td><td>数据库编录的名称(&amp;N)：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_CONNECT</td><td>2052</td><td>连接时使用：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_DESC</td><td>2052</td><td>选择数据库服务器和验证方法。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_ID</td><td>2052</td><td>登录 ID(&amp;L)：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_INTRO</td><td>2052</td><td>从以下列表中选择要安装的数据库服务器或单击“浏览”查看所有数据库服务器的列表。您还可以指定验证方法，确定使用当前证书或 SQL 登录 ID 和密码来验证您的登录。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_PSWD</td><td>2052</td><td>密码(&amp;P)：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_SERVER</td><td>2052</td><td>&amp;数据库服务器：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_SERVER2</td><td>2052</td><td>您要安装到的数据库服务器(&amp;D)：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_SQL</td><td>2052</td><td>使用以下登录 ID 和密码进行服务器身份验证(&amp;E)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_TITLE</td><td>2052</td><td>{&amp;MSSansBold8}数据库服务器</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLLOGIN_WIN</td><td>2052</td><td>当前用户的 Windows 验证证书(&amp;W)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLSCRIPT_INSTALLING</td><td>2052</td><td>正在执行 SQL 安装脚本...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SQLSCRIPT_UNINSTALLING</td><td>2052</td><td>正在执行 SQL 卸载脚本...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_STANDARD_USE_SETUPEXE</td><td>2052</td><td>直接启动 MSI 包无法运行此安装程序，必须要运行 setup.exe。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SetupTips_Advertise</td><td>2052</td><td>{&amp;Tahoma8}将在第一次使用时安装。 （只有在该功能支持此选项时有效）。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SetupTips_AllInstalledLocal</td><td>2052</td><td>{&amp;Tahoma8}将全部安装到本地硬盘驱动器上。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SetupTips_CustomSetup</td><td>2052</td><td>{&amp;MSSansBold8}自定义安装提示</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SetupTips_CustomSetupDescription</td><td>2052</td><td>{&amp;Tahoma8}“自定义安装”允许有选择地安装程序功能。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SetupTips_IconInstallState</td><td>2052</td><td>{&amp;Tahoma8}紧邻该功能名称的图标显示该功能的安装状态。 单击该图标可下拉每个功能的安装状态菜单。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SetupTips_InstallState</td><td>2052</td><td>{&amp;Tahoma8}此安装状态意味着该功能...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SetupTips_Network</td><td>2052</td><td>{&amp;Tahoma8}将安装从网络中运行。 （只有在该功能支持此选项时有效）。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SetupTips_OK</td><td>2052</td><td>{&amp;Tahoma8}确定</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SetupTips_SubFeaturesInstalledLocal</td><td>2052</td><td>{&amp;Tahoma8}将把一些子功能安装到本地硬盘驱动器上。 （只有在该功能带有子功能时有效）。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_SetupTips_WillNotBeInstalled</td><td>2052</td><td>{&amp;Tahoma8}将不安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_Available</td><td>2052</td><td>可用</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_Bytes</td><td>2052</td><td>字节</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_CompilingFeaturesCost</td><td>2052</td><td>正在编译此功能的代价...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_Differences</td><td>2052</td><td>差异</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_DiskSize</td><td>2052</td><td>磁盘空间</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureCompletelyRemoved</td><td>2052</td><td>此功能将被全部删除。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureContinueNetwork</td><td>2052</td><td>此功能将继续从网络中运行</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureFreeSpace</td><td>2052</td><td>此功能释放硬盘驱动器上的 [1] 。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD</td><td>2052</td><td>此功能及所有子功能安装后将从光盘上运行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD2</td><td>2052</td><td>此功能安装后将从光盘上运行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal</td><td>2052</td><td>此功能及所有子功能将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal2</td><td>2052</td><td>此功能将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork</td><td>2052</td><td>此功能及所有子功能安装后将从网络上运行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork2</td><td>2052</td><td>此功能安装后将从网络中运行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledRequired</td><td>2052</td><td>此功能将在需要时安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired</td><td>2052</td><td>此功能将被设置为在需要时安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired2</td><td>2052</td><td>此功能在需要时可进行安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureLocal</td><td>2052</td><td>此功能将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureLocal2</td><td>2052</td><td>此功能将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork</td><td>2052</td><td>此功能安装后将从网络中运行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork2</td><td>2052</td><td>此功能可从网络中运行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureNotAvailable</td><td>2052</td><td>此功能将不可用。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD</td><td>2052</td><td>此功能安装后将从光盘上运行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD2</td><td>2052</td><td>此功能可从光盘上运行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureRemainLocal</td><td>2052</td><td>此功能将保留在本地硬盘驱动器中。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureRemoveNetwork</td><td>2052</td><td>此功能将从本地硬盘驱动器中删除，但仍可以从网络中运行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedCD</td><td>2052</td><td>此功能将从本地硬盘驱动器中删除，但仍可以从光盘上运行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedUnlessRequired</td><td>2052</td><td>此功能将从本地硬盘驱动器中删除，但需要时将进行安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureRequiredSpace</td><td>2052</td><td>此功能需要硬盘驱动器上的 [1] 。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureRunFromCD</td><td>2052</td><td>此功能将继续从光盘上运行</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree</td><td>2052</td><td>此功能释放硬盘驱动器上的 [1] 。 选定了 [3] 子功能的 [2] 。 该子功能释放硬盘驱动器上的 [4] 。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree2</td><td>2052</td><td>此功能释放硬盘驱动器上的 [1] 。 选定了 [3] 子功能的 [2] 。 该子功能需要硬盘驱动器上的 [4] 。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree3</td><td>2052</td><td>此功能需要硬盘驱动器上的 [1] 。 选定了 [3] 子功能的 [2] 。 该子功能释放硬盘驱动器上的 [4] 。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree4</td><td>2052</td><td>此功能需要硬盘驱动器上的 [1] 。 选定了 [3] 子功能的 [2]。 该子功能需要硬盘驱动器上的 [4] 。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureUnavailable</td><td>2052</td><td>此功能将不安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureUninstallNoNetwork</td><td>2052</td><td>此功能将被全部卸载，您将无法从网络中运行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureWasCD</td><td>2052</td><td>此功能可从光盘上运行，但被设置为需要时才进行安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureWasCDLocal</td><td>2052</td><td>此功能可从光盘上运行，但将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkInstalled</td><td>2052</td><td>此功能从网络中运行，但在需要时将进行安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkLocal</td><td>2052</td><td>此功能从网络中运行，但将安装在本地硬盘驱动器上。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_FeatureWillBeUninstalled</td><td>2052</td><td>此功能将全部卸载，您将无法从光盘上运行。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_Folder</td><td>2052</td><td>文件夹|新文件夹</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_GB</td><td>2052</td><td>GB</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_KB</td><td>2052</td><td>KB</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_MB</td><td>2052</td><td>MB</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_Required</td><td>2052</td><td>要求</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_TimeRemaining</td><td>2052</td><td>剩余时间：{[1] 分 }{[2] 秒}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS_UITEXT_Volume</td><td>2052</td><td>卷</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__AgreeToLicense_0</td><td>2052</td><td>{&amp;Tahoma8}我不接受该许可证协议中的条款(&amp;D)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__AgreeToLicense_1</td><td>2052</td><td>{&amp;Tahoma8}我接受该许可证协议中的条款(&amp;A)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__DatabaseFolder_ChangeFolder</td><td>2052</td><td>单击“下一步”安装到此文件夹，或单击“更改”安装到不同的文件夹。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseDir</td><td>2052</td><td>[DATABASEDIR]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseFolder</td><td>2052</td><td>{&amp;MSSansBold8}数据库文件夹</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__DestinationFolder_Change</td><td>2052</td><td>{&amp;Tahoma8}更改(&amp;C)...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__DestinationFolder_ChangeFolder</td><td>2052</td><td>{&amp;Tahoma8}单击“下一步”安装到此文件夹，或单击“更改”安装到不同的文件夹。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__DestinationFolder_DestinationFolder</td><td>2052</td><td>{&amp;MSSansBold8}目的地文件夹</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__DestinationFolder_InstallTo</td><td>2052</td><td>{&amp;Tahoma8}将 [ProductName] 安装到：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__DisplayName_Custom</td><td>2052</td><td>自定义</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__DisplayName_Minimal</td><td>2052</td><td>最小化安装</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__DisplayName_Typical</td><td>2052</td><td>典型</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallBrowse_11</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallBrowse_4</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallBrowse_8</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallBrowse_BrowseDestination</td><td>2052</td><td>{&amp;Tahoma8}浏览目的地文件夹。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallBrowse_ChangeDestination</td><td>2052</td><td>{&amp;MSSansBold8}更改当前目的地文件夹</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallBrowse_CreateFolder</td><td>2052</td><td>创建新文件夹|</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallBrowse_FolderName</td><td>2052</td><td>{&amp;Tahoma8}文件夹名称(&amp;F)：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallBrowse_LookIn</td><td>2052</td><td>{&amp;Tahoma8}搜索范围(&amp;L)：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallBrowse_UpOneLevel</td><td>2052</td><td>上一级|</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_ServerImage</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 将在指定的网络位置创建 [ProductName] 的服务器映象。 要继续，请单击“下一步”。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_Wizard</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallPoint_Change</td><td>2052</td><td>{&amp;Tahoma8}更改(&amp;C)...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallPoint_EnterNetworkLocation</td><td>2052</td><td>{&amp;Tahoma8}输入网络位置或单击“更改”以浏览网络位置。  单击“安装”在指定的网络位置创建 [ProductName] 的服务器映象，或单击“取消”退出向导。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallPoint_Install</td><td>2052</td><td>{&amp;Tahoma8}安装(&amp;I)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocation</td><td>2052</td><td>{&amp;Tahoma8}网络位置(&amp;N)：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocationFormatted</td><td>2052</td><td>{&amp;MSSansBold8}网络位置</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsAdminInstallPoint_SpecifyNetworkLocation</td><td>2052</td><td>{&amp;Tahoma8}为产品的服务器映象指定网络位置。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseButton</td><td>2052</td><td>浏览(&amp;B)...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseFolderDlg_11</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseFolderDlg_4</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseFolderDlg_8</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseFolderDlg_BrowseDestFolder</td><td>2052</td><td>{&amp;Tahoma8}浏览目的地文件夹。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseFolderDlg_ChangeCurrentFolder</td><td>2052</td><td>{&amp;MSSansBold8}更改当前目的地文件夹</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseFolderDlg_CreateFolder</td><td>2052</td><td>创建新文件夹|</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseFolderDlg_FolderName</td><td>2052</td><td>{&amp;Tahoma8}文件夹名称(&amp;F)：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseFolderDlg_LookIn</td><td>2052</td><td>{&amp;Tahoma8}搜索范围(&amp;L)：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseFolderDlg_OK</td><td>2052</td><td>{&amp;Tahoma8}确定</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseFolderDlg_UpOneLevel</td><td>2052</td><td>上一级|</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseForAccount</td><td>2052</td><td>浏览用户帐号</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseGroup</td><td>2052</td><td>选择用户列表组</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsBrowseUsernameTitle</td><td>2052</td><td>选择用户名</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCancelDlg_ConfirmCancel</td><td>2052</td><td>{&amp;Tahoma8}要取消 [ProductName] 安装吗？</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCancelDlg_No</td><td>2052</td><td>{&amp;Tahoma8}否(&amp;N)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCancelDlg_Yes</td><td>2052</td><td>{&amp;Tahoma8}是(&amp;Y)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsConfirmPassword</td><td>2052</td><td>确认密码(&amp;F):</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCreateNewUserTitle</td><td>2052</td><td>新用户信息</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCreateUserBrowse</td><td>2052</td><td>新用户信息(&amp;E)...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Change</td><td>2052</td><td>{&amp;Tahoma8}更改(&amp;A)...</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCustomSelectionDlg_ClickFeatureIcon</td><td>2052</td><td>{&amp;Tahoma8}单击下面列表内的图标以更改功能的安装方式。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCustomSelectionDlg_CustomSetup</td><td>2052</td><td>{&amp;MSSansBold8}自定义安装</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureDescription</td><td>2052</td><td>{&amp;Tahoma8}功能说明</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeaturePath</td><td>2052</td><td>{&amp;Tahoma8}&lt;selected feature path&gt;</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureSize</td><td>2052</td><td>{&amp;Tahoma8}功能大小</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Help</td><td>2052</td><td>{&amp;Tahoma8}帮助(&amp;H)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCustomSelectionDlg_InstallTo</td><td>2052</td><td>{&amp;Tahoma8}安装到：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCustomSelectionDlg_MultilineDescription</td><td>2052</td><td>{&amp;Tahoma8}当前选定项目的多行说明</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCustomSelectionDlg_SelectFeatures</td><td>2052</td><td>{&amp;Tahoma8}选择要安装的程序功能。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Space</td><td>2052</td><td>{&amp;Tahoma8}空间(&amp;S)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsDiskSpaceDlg_DiskSpace</td><td>2052</td><td>{&amp;Tahoma8}安装所需的磁盘空间超出了可用的磁盘空间。</td><td>0</td><td>	</td><td>-324583891</td></row>
		<row><td>IDS__IsDiskSpaceDlg_HighlightedVolumes</td><td>2052</td><td>{&amp;Tahoma8}突出显示的卷没有足够的磁盘空间可供当前选定的功能使用。 可以从突出显示的卷中删除文件，或选择安装较少的功能到本地驱动器，还可选择不同的目的地驱动器。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsDiskSpaceDlg_Numbers</td><td>2052</td><td>{&amp;Tahoma8}{120}{70}{70}{70}{70}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OK</td><td>2052</td><td>{&amp;Tahoma8}确定(&amp;O)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OutOfDiskSpace</td><td>2052</td><td>{&amp;MSSansBold8}磁盘空间不足</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsDomainOrServer</td><td>2052</td><td>域或服务器(&amp;D):</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsErrorDlg_Abort</td><td>2052</td><td>{&amp;Tahoma8}放弃(&amp;A)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsErrorDlg_ErrorText</td><td>2052</td><td>{&amp;Tahoma8}&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsErrorDlg_Ignore</td><td>2052</td><td>{&amp;Tahoma8}忽略(&amp;I)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsErrorDlg_InstallerInfo</td><td>2052</td><td>[ProductName] 安装程序信息</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsErrorDlg_NO</td><td>2052</td><td>{&amp;Tahoma8}否(&amp;N)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsErrorDlg_OK</td><td>2052</td><td>{&amp;Tahoma8}确定(&amp;O)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsErrorDlg_Retry</td><td>2052</td><td>{&amp;Tahoma8}重试(&amp;R)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsErrorDlg_Yes</td><td>2052</td><td>{&amp;Tahoma8}是(&amp;Y)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsExitDialog_Finish</td><td>2052</td><td>{&amp;Tahoma8}完成(&amp;F)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsExitDialog_InstallSuccess</td><td>2052</td><td>{&amp;Tahoma8}InstallShield Wizard 成功地安装了 [ProductName] 。 单击“完成”退出向导。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsExitDialog_LaunchProgram</td><td>2052</td><td>启动程序</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsExitDialog_ShowReadMe</td><td>2052</td><td>显示自述文件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsExitDialog_UninstallSuccess</td><td>2052</td><td>{&amp;Tahoma8}InstallShield Wizard 成功地卸载了 [ProductName] 。 单击“完成”退出向导。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsExitDialog_Update_InternetConnection</td><td>2052</td><td>只要与因特网相连就可以确保得到最新的更新。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsExitDialog_Update_PossibleUpdates</td><td>2052</td><td>在您购买 [ProductName] 后，有些程序文件可能已经更新。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsExitDialog_Update_SetupFinished</td><td>2052</td><td>安装程序已完成对 [ProductName] 的安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsExitDialog_Update_YesCheckForUpdates</td><td>2052</td><td>是(&amp;Y)，安装完成后检查程序更新（建议）。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsExitDialog_WizardCompleted</td><td>2052</td><td>{&amp;TahomaBold10} InstallShield Wizard 完成</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFatalError_ClickFinish</td><td>2052</td><td>{&amp;Tahoma8}单击“完成”退出向导。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFatalError_Finish</td><td>2052</td><td>{&amp;Tahoma8}完成(&amp;F)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFatalError_KeepOrRestore</td><td>2052</td><td>{&amp;Tahoma8}可以保留系统中现存的已安装内容，以后再继续此安装过程，也可以将系统恢复到安装前的原始状态。</td><td>0</td><td>	</td><td>-324583891</td></row>
		<row><td>IDS__IsFatalError_NotModified</td><td>2052</td><td>{&amp;Tahoma8}系统未被修改。 要再次完成安装过程，请重新运行安装程序。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFatalError_RestoreOrContinueLater</td><td>2052</td><td>{&amp;Tahoma8}单击“恢复”或“以后继续”退出向导。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFatalError_WizardCompleted</td><td>2052</td><td>{&amp;TahomaBold10} InstallShield Wizard 完成</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFatalError_WizardInterrupted</td><td>2052</td><td>{&amp;Tahoma8}在 [ProductName] 完整安装之前向导已中断。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_DiskSpaceRequirements</td><td>2052</td><td>{&amp;MSSansBold8}磁盘空间需求</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_Numbers</td><td>2052</td><td>{&amp;Tahoma8}{120}{70}{70}{70}{70}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_OK</td><td>2052</td><td>{&amp;Tahoma8}确定</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_SpaceRequired</td><td>2052</td><td>{&amp;Tahoma8}安装选定功能所需的磁盘空间。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_VolumesTooSmall</td><td>2052</td><td>{&amp;Tahoma8}突出显示的卷没有足够的磁盘空间可供当前选定的功能使用。 可以从突出显示的卷中删除文件，或选择安装较少的功能到本地驱动器，还可选择不同的目的地驱动器。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFilesInUse_ApplicationsUsingFiles</td><td>2052</td><td>{&amp;Tahoma8}下列应用程序正在使用此安装程序需要更新的文件。 关闭这些应用程序并单击“重试”继续。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFilesInUse_Exit</td><td>2052</td><td>{&amp;Tahoma8}退出(&amp;E)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUse</td><td>2052</td><td>{&amp;MSSansBold8}正在使用的文件</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUseMessage</td><td>2052</td><td>{&amp;Tahoma8}某些需要更新的文件当前正在使用。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFilesInUse_Ignore</td><td>2052</td><td>{&amp;Tahoma8}忽略(&amp;I)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsFilesInUse_Retry</td><td>2052</td><td>{&amp;Tahoma8}重试(&amp;R)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsGroup</td><td>2052</td><td>用户列表组(&amp;U):</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsGroupLabel</td><td>2052</td><td>用户列表组(&amp;O):</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsInitDlg_1</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsInitDlg_2</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsInitDlg_PreparingWizard</td><td>2052</td><td>{&amp;Tahoma8}安装程序正在准备 InstallShield Wizard，InstallShield Wizard 将引导您完成程序安装过程，请稍候。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsInitDlg_WelcomeWizard</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsLicenseDlg_LicenseAgreement</td><td>2052</td><td>{&amp;MSSansBold8}许可证协议</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsLicenseDlg_ReadLicenseAgreement</td><td>2052</td><td>{&amp;Tahoma8}请仔细阅读下面的许可证协议。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsLogonInfoDescription</td><td>2052</td><td>指定此应用程序使用的用户帐号。 用户帐号的格式必须为“域\用户名”。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsLogonInfoTitle</td><td>2052</td><td>{&amp;MSSansBold8}登录信息</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsLogonInfoTitleDescription</td><td>2052</td><td>指定用户名和密码</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsLogonNewUserDescription</td><td>2052</td><td>选取以下按钮，指定有关安装过程中要创建的新用户信息。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMaintenanceDlg_ChangeFeatures</td><td>2052</td><td>{&amp;Tahoma8}更改要安装的程序功能。 此选项可显示“自定义选择”对话框，在其中您可以更改安装功能的方式。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMaintenanceDlg_MaitenanceOptions</td><td>2052</td><td>{&amp;Tahoma8}修改、修复或删除程序。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMaintenanceDlg_Modify</td><td>2052</td><td>{&amp;TahomaBold10}修改(&amp;M)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMaintenanceDlg_ProgramMaintenance</td><td>2052</td><td>{&amp;MSSansBold8}程序维护</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMaintenanceDlg_Remove</td><td>2052</td><td>{&amp;TahomaBold10}删除(&amp;R)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMaintenanceDlg_RemoveProductName</td><td>2052</td><td>{&amp;Tahoma8}从计算机中删除 [ProductName]。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMaintenanceDlg_Repair</td><td>2052</td><td>{&amp;TahomaBold10}修复(&amp;P)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMaintenanceDlg_RepairMessage</td><td>2052</td><td>{&amp;Tahoma8}修复程序中的错误。 通过此选项您可修复缺少或损坏的文件、快捷方式和注册表项。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMaintenanceWelcome_MaintenanceOptionsDescription</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 允许修改、修复或删除 [ProductName] 。 要继续，请单击“下一步”。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMaintenanceWelcome_WizardWelcome</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_ApplicationsUsingFiles</td><td>2052</td><td>下列应用程序正在使用此安装程序需要更新的文件。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_CloseRestart</td><td>2052</td><td>自动关闭并试图重新启动应用程序。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_RebootAfter</td><td>2052</td><td>不要关闭应用程序。（将需要重新启动。）</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsPatchDlg_PatchClickUpdate</td><td>2052</td><td>InstallShield(R) Wizard 将在您的计算机中安装 [ProductName] 的修补程序。  要继续，请单击“更新”。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsPatchDlg_PatchWizard</td><td>2052</td><td>[ProductName] InstallShield Wizard</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsPatchDlg_Update</td><td>2052</td><td>更新(&amp;U) &gt;</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsPatchDlg_WelcomePatchWizard</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] 的修补程序</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsProgressDlg_2</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsProgressDlg_Hidden</td><td>2052</td><td>{&amp;Tahoma8}（现在隐藏）</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsProgressDlg_HiddenTimeRemaining</td><td>2052</td><td>{&amp;Tahoma8}（现在隐藏）估计剩余时间：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsProgressDlg_InstallingProductName</td><td>2052</td><td>{&amp;MSSansBold8}正在安装 [ProductName]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsProgressDlg_ProgressDone</td><td>2052</td><td>已完成进度</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsProgressDlg_SecHidden</td><td>2052</td><td>{&amp;Tahoma8}（现在隐藏）秒</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsProgressDlg_Status</td><td>2052</td><td>{&amp;Tahoma8}状态：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsProgressDlg_Uninstalling</td><td>2052</td><td>{&amp;MSSansBold8}正在卸载 [ProductName]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures</td><td>2052</td><td>{&amp;Tahoma8}正在卸载您选择的程序功能。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures2</td><td>2052</td><td>{&amp;Tahoma8}正在安装您选择的程序功能。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall</td><td>2052</td><td>{&amp;Tahoma8}InstallShield Wizard 正在卸载 [ProductName] ，请稍候。 这需要几分钟的时间。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall2</td><td>2052</td><td>{&amp;Tahoma8}InstallShield Wizard 正在安装 [ProductName] ，请稍候。 这需要几分钟的时间。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsReadmeDlg_Cancel</td><td>2052</td><td>取消(&amp;C)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsReadmeDlg_PleaseReadInfo</td><td>2052</td><td>请仔细阅读下面的自述文件信息。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsReadmeDlg_ReadMeInfo</td><td>2052</td><td>{&amp;MSSansBold8}自述文件信息</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsRegisterUserDlg_16</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsRegisterUserDlg_Anyone</td><td>2052</td><td>{&amp;Tahoma8}使用本机的任何人(&amp;A)（所有用户）</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsRegisterUserDlg_CustomerInformation</td><td>2052</td><td>{&amp;MSSansBold8}用户信息</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsRegisterUserDlg_InstallFor</td><td>2052</td><td>{&amp;Tahoma8}此应用程序的使用者：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsRegisterUserDlg_OnlyMe</td><td>2052</td><td>{&amp;Tahoma8}仅限本人(&amp;M) ([USERNAME])</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsRegisterUserDlg_Organization</td><td>2052</td><td>{&amp;Tahoma8}单位(&amp;O)：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsRegisterUserDlg_PleaseEnterInfo</td><td>2052</td><td>{&amp;Tahoma8}请输入您的信息。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsRegisterUserDlg_SerialNumber</td><td>2052</td><td>序列号(&amp;S)：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma50</td><td>2052</td><td>{50}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma80</td><td>2052</td><td>{80}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsRegisterUserDlg_UserName</td><td>2052</td><td>{&amp;Tahoma8}用户姓名(&amp;U)：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsResumeDlg_ResumeSuspended</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 将完成计算机上挂起的 [ProductName] 安装过程。 要继续，请单击“下一步”。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsResumeDlg_Resuming</td><td>2052</td><td>{&amp;TahomaBold10}继续执行 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsResumeDlg_WizardResume</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 将在计算机上完成 [ProductName] 的安装过程。 要继续，请单击“下一步”。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSelectDomainOrServer</td><td>2052</td><td>选择域或服务器</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSelectDomainUserInstructions</td><td>2052</td><td>使用浏览按钮选择域\服务器和用户名。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSetupComplete_ShowMsiLog</td><td>2052</td><td>显示 Windows Installer 日志</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_13</td><td>2052</td><td>{&amp;Tahoma8}</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_AllFeatures</td><td>2052</td><td>{&amp;Tahoma8}将安装所有的程序功能。 （需要的磁盘空间最大）。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseFeatures</td><td>2052</td><td>{&amp;Tahoma8}选择要安装的程序功能和将要安装的位置。 建议高级用户使用。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseSetupType</td><td>2052</td><td>{&amp;Tahoma8}选择最适合自己需要的安装类型。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Complete</td><td>2052</td><td>{&amp;MSSansBold8}完整安装(&amp;O)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Custom</td><td>2052</td><td>{&amp;MSSansBold8}自定义(&amp;S)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Minimal</td><td>2052</td><td>{&amp;MSSansBold8}最小化安装(&amp;M)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_MinimumFeatures</td><td>2052</td><td>{&amp;Tahoma8}将安装最低要求的功能。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SelectSetupType</td><td>2052</td><td>{&amp;Tahoma8}请选择一个安装类型。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SetupType</td><td>2052</td><td>{&amp;MSSansBold8}安装类型</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Typical</td><td>2052</td><td>{&amp;MSSansBold8}典型(&amp;T)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsUserExit_ClickFinish</td><td>2052</td><td>{&amp;Tahoma8}单击“完成”退出向导。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsUserExit_Finish</td><td>2052</td><td>{&amp;Tahoma8}完成(&amp;F)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsUserExit_KeepOrRestore</td><td>2052</td><td>{&amp;Tahoma8}可以保留系统中现存的已安装内容，以后再继续此安装过程，也可以将系统恢复到安装前的原始状态。</td><td>0</td><td>	</td><td>-324583891</td></row>
		<row><td>IDS__IsUserExit_NotModified</td><td>2052</td><td>{&amp;Tahoma8}系统未被修改。 以后要再完成安装过程，请重新运行安装程序。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsUserExit_RestoreOrContinue</td><td>2052</td><td>{&amp;Tahoma8}单击“恢复”或“以后继续”退出该向导。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsUserExit_WizardCompleted</td><td>2052</td><td>{&amp;TahomaBold10} InstallShield Wizard 完成</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsUserExit_WizardInterrupted</td><td>2052</td><td>{&amp;Tahoma8}在 [ProductName] 完整安装之前向导已中断。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsUserNameLabel</td><td>2052</td><td>用户名(&amp;U):</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_BackOrCancel</td><td>2052</td><td>{&amp;Tahoma8}要查看或更改任何安装设置，请单击“上一步”。 单击“取消”退出向导。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ClickInstall</td><td>2052</td><td>{&amp;Tahoma8}单击“安装”开始安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Company</td><td>2052</td><td>公司： [COMPANYNAME]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_CurrentSettings</td><td>2052</td><td>当前设置：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_DestFolder</td><td>2052</td><td>目的地文件夹：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Install</td><td>2052</td><td>{&amp;Tahoma8}安装(&amp;I)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Installdir</td><td>2052</td><td>[INSTALLDIR]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ModifyReady</td><td>2052</td><td>{&amp;MSSansBold8}已做好修改程序的准备</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyInstall</td><td>2052</td><td>{&amp;MSSansBold8}已做好安装程序的准备</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyRepair</td><td>2052</td><td>{&amp;MSSansBold8}已做好修复程序的准备</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SelectedSetupType</td><td>2052</td><td>[SelectedSetupType]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Serial</td><td>2052</td><td>序列号： [ISX_SERIALNUM]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SetupType</td><td>2052</td><td>安装类型：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserInfo</td><td>2052</td><td>用户信息：</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserName</td><td>2052</td><td>姓名： [USERNAME]</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyReadyDlg_WizardReady</td><td>2052</td><td>{&amp;Tahoma8}向导准备开始安装。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ChoseRemoveProgram</td><td>2052</td><td>{&amp;Tahoma8}您已经选择从系统中删除此程序。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickBack</td><td>2052</td><td>{&amp;Tahoma8}要查看或更改任何设置，请单击“上一步”。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickRemove</td><td>2052</td><td>{&amp;Tahoma8}单击“删除”从计算机中删除 [ProductName] 。 删除后此程序将不能再使用。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_Remove</td><td>2052</td><td>{&amp;Tahoma8}删除(&amp;R)</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_RemoveProgram</td><td>2052</td><td>{&amp;MSSansBold8}删除程序</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsWelcomeDlg_InstallProductName</td><td>2052</td><td>{&amp;Tahoma8}InstallShield(R) Wizard 将要在您的计算机中安装 [ProductName] 。 要继续，请单击“下一步”。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsWelcomeDlg_WarningCopyright</td><td>2052</td><td>警告：本程序受版权法和国际条约的保护。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__IsWelcomeDlg_WelcomeProductName</td><td>2052</td><td>{&amp;TahomaBold10}欢迎使用 [ProductName] InstallShield Wizard</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__TargetReq_DESC_COLOR</td><td>2052</td><td>对于运行 [ProductName] 系统颜色设置不足。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__TargetReq_DESC_OS</td><td>2052</td><td>对于运行 [ProductName] 操作系统不足。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__TargetReq_DESC_PROCESSOR</td><td>2052</td><td>对于运行 [ProductName] 处理器不足。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__TargetReq_DESC_RAM</td><td>2052</td><td>对于运行 [ProductName] 内存量不足。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>IDS__TargetReq_DESC_RESOLUTION</td><td>2052</td><td>对于运行 [ProductName] 屏幕分辨率不足。</td><td>0</td><td/><td>-324583891</td></row>
		<row><td>ID_STRING1</td><td>2052</td><td>http://www.公司名称.com</td><td>0</td><td/><td>-324569395</td></row>
		<row><td>ID_STRING2</td><td>2052</td><td>公司名称</td><td>0</td><td/><td>-324569395</td></row>
		<row><td>IIDS_UITEXT_FeatureUninstalled</td><td>2052</td><td>系统将不安装此功能。</td><td>0</td><td/><td>-324583891</td></row>
	</table>

	<table name="ISSwidtagProperty">
		<col key="yes" def="s72">Name</col>
		<col def="s0">Value</col>
		<row><td>UniqueId</td><td>50A2DEFA-6464-409B-8666-66F7DE44E61F</td></row>
	</table>

	<table name="ISTargetImage">
		<col key="yes" def="s13">UpgradedImage_</col>
		<col key="yes" def="s13">Name</col>
		<col def="s0">MsiPath</col>
		<col def="i2">Order</col>
		<col def="I4">Flags</col>
		<col def="i2">IgnoreMissingFiles</col>
	</table>

	<table name="ISUpgradeMsiItem">
		<col key="yes" def="s72">UpgradeItem</col>
		<col def="s0">ObjectSetupPath</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="i2">ISAttributes</col>
	</table>

	<table name="ISUpgradedImage">
		<col key="yes" def="s13">Name</col>
		<col def="s0">MsiPath</col>
		<col def="s8">Family</col>
	</table>

	<table name="ISVirtualDirectory">
		<col key="yes" def="s72">Directory_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualPackage">
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualRegistry">
		<col key="yes" def="s72">Registry_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualRelease">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s255">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualShortcut">
		<col key="yes" def="s72">Shortcut_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISWSEWrap">
		<col key="yes" def="s72">Action_</col>
		<col key="yes" def="s72">Name</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISXmlElement">
		<col key="yes" def="s72">ISXmlElement</col>
		<col def="s72">ISXmlFile_</col>
		<col def="S72">ISXmlElement_Parent</col>
		<col def="L0">XPath</col>
		<col def="L0">Content</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISXmlElementAttrib">
		<col key="yes" def="s72">ISXmlElementAttrib</col>
		<col key="yes" def="s72">ISXmlElement_</col>
		<col def="L255">Name</col>
		<col def="L0">Value</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISXmlFile">
		<col key="yes" def="s72">ISXmlFile</col>
		<col def="l255">FileName</col>
		<col def="s72">Component_</col>
		<col def="s72">Directory</col>
		<col def="I4">ISAttributes</col>
		<col def="S0">SelectionNamespaces</col>
		<col def="S255">Encoding</col>
	</table>

	<table name="ISXmlLocator">
		<col key="yes" def="s72">Signature_</col>
		<col key="yes" def="S72">Parent</col>
		<col def="S255">Element</col>
		<col def="S255">Attribute</col>
		<col def="I2">ISAttributes</col>
	</table>

	<table name="Icon">
		<col key="yes" def="s72">Name</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I2">ISIconIndex</col>
		<row><td>ARPPRODUCTICON.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\setupicon.ico</td><td>0</td></row>
		<row><td>MFCDemo.exe_51578DB88E8A4A099A54906BF162203E.exe</td><td/><td>C:\Program Files (x86)\Funi\sdk\HIKPF\MFCDemo.exe</td><td>0</td></row>
		<row><td>MFCDemo.exe_962CEE85EA1B48B1A076DD5C92C2A6B4.exe</td><td/><td>C:\Users\YL\Desktop\sdk\HIKPF\MFCDemo.exe</td><td>0</td></row>
		<row><td>OpenSDK_Demo_Qt.ex_9D351846B58740DD83ED58DC0B276AA7.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>OpenSDK_Demo_Qt.ex_ED5F74CCF64042AFAF6F57ACF6A54EF6.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\GenericExe.ico</td><td>0</td></row>
		<row><td>V2216DLLDemo.exe_230B10BE10C340A482EDBD75BA996D17.exe</td><td/><td>C:\Program Files (x86)\Funi\sdk\INFNet\V2216DLLDemo.exe</td><td>0</td></row>
		<row><td>V2216DLLDemo.exe_27CD442615954F7C9CC0F1B53772C24C.exe</td><td/><td>C:\Users\YL\Desktop\sdk\INFNet\V2216DLLDemo.exe</td><td>0</td></row>
	</table>

	<table name="IniFile">
		<col key="yes" def="s72">IniFile</col>
		<col def="l255">FileName</col>
		<col def="S72">DirProperty</col>
		<col def="l255">Section</col>
		<col def="l128">Key</col>
		<col def="s255">Value</col>
		<col def="i2">Action</col>
		<col def="s72">Component_</col>
	</table>

	<table name="IniLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="s255">FileName</col>
		<col def="s96">Section</col>
		<col def="s128">Key</col>
		<col def="I2">Field</col>
		<col def="I2">Type</col>
	</table>

	<table name="InstallExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AllocateRegistrySpace</td><td>NOT Installed</td><td>1550</td><td>AllocateRegistrySpace</td><td/></row>
		<row><td>AppSearch</td><td/><td>400</td><td>AppSearch</td><td/></row>
		<row><td>BindImage</td><td/><td>4300</td><td>BindImage</td><td/></row>
		<row><td>CCPSearch</td><td>CCP_TEST</td><td>500</td><td>CCPSearch</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>CreateFolders</td><td/><td>3700</td><td>CreateFolders</td><td/></row>
		<row><td>CreateShortcuts</td><td/><td>4500</td><td>CreateShortcuts</td><td/></row>
		<row><td>DeleteServices</td><td>VersionNT</td><td>2000</td><td>DeleteServices</td><td/></row>
		<row><td>DuplicateFiles</td><td/><td>4210</td><td>DuplicateFiles</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>FindRelatedProducts</td><td>NOT ISSETUPDRIVEN</td><td>420</td><td>FindRelatedProducts</td><td/></row>
		<row><td>ISPreventDowngrade</td><td>ISFOUNDNEWERPRODUCTVERSION</td><td>450</td><td>ISPreventDowngrade</td><td/></row>
		<row><td>ISRunSetupTypeAddLocalEvent</td><td>Not Installed And Not ISRUNSETUPTYPEADDLOCALEVENT</td><td>1050</td><td>ISRunSetupTypeAddLocalEvent</td><td/></row>
		<row><td>ISSelfRegisterCosting</td><td/><td>2201</td><td/><td/></row>
		<row><td>ISSelfRegisterFiles</td><td/><td>5601</td><td/><td/></row>
		<row><td>ISSelfRegisterFinalize</td><td/><td>6601</td><td/><td/></row>
		<row><td>ISUnSelfRegisterFiles</td><td/><td>2202</td><td/><td/></row>
		<row><td>InstallFiles</td><td/><td>4000</td><td>InstallFiles</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1501</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallODBC</td><td/><td>5400</td><td>InstallODBC</td><td/></row>
		<row><td>InstallServices</td><td>VersionNT</td><td>5800</td><td>InstallServices</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>IsolateComponents</td><td/><td>950</td><td>IsolateComponents</td><td/></row>
		<row><td>LaunchConditions</td><td>Not Installed</td><td>410</td><td>LaunchConditions</td><td/></row>
		<row><td>MigrateFeatureStates</td><td/><td>1010</td><td>MigrateFeatureStates</td><td/></row>
		<row><td>MoveFiles</td><td/><td>3800</td><td>MoveFiles</td><td/></row>
		<row><td>MsiConfigureServices</td><td>VersionMsi &gt;= "5.00"</td><td>5850</td><td>MSI5 MsiConfigureServices</td><td/></row>
		<row><td>MsiPublishAssemblies</td><td/><td>6250</td><td>MsiPublishAssemblies</td><td/></row>
		<row><td>MsiUnpublishAssemblies</td><td/><td>1750</td><td>MsiUnpublishAssemblies</td><td/></row>
		<row><td>PatchFiles</td><td/><td>4090</td><td>PatchFiles</td><td/></row>
		<row><td>ProcessComponents</td><td/><td>1600</td><td>ProcessComponents</td><td/></row>
		<row><td>PublishComponents</td><td/><td>6200</td><td>PublishComponents</td><td/></row>
		<row><td>PublishFeatures</td><td/><td>6300</td><td>PublishFeatures</td><td/></row>
		<row><td>PublishProduct</td><td/><td>6400</td><td>PublishProduct</td><td/></row>
		<row><td>RMCCPSearch</td><td>Not CCP_SUCCESS And CCP_TEST</td><td>600</td><td>RMCCPSearch</td><td/></row>
		<row><td>RegisterClassInfo</td><td/><td>4600</td><td>RegisterClassInfo</td><td/></row>
		<row><td>RegisterComPlus</td><td/><td>5700</td><td>RegisterComPlus</td><td/></row>
		<row><td>RegisterExtensionInfo</td><td/><td>4700</td><td>RegisterExtensionInfo</td><td/></row>
		<row><td>RegisterFonts</td><td/><td>5300</td><td>RegisterFonts</td><td/></row>
		<row><td>RegisterMIMEInfo</td><td/><td>4900</td><td>RegisterMIMEInfo</td><td/></row>
		<row><td>RegisterProduct</td><td/><td>6100</td><td>RegisterProduct</td><td/></row>
		<row><td>RegisterProgIdInfo</td><td/><td>4800</td><td>RegisterProgIdInfo</td><td/></row>
		<row><td>RegisterTypeLibraries</td><td/><td>5500</td><td>RegisterTypeLibraries</td><td/></row>
		<row><td>RegisterUser</td><td/><td>6000</td><td>RegisterUser</td><td/></row>
		<row><td>RemoveDuplicateFiles</td><td/><td>3400</td><td>RemoveDuplicateFiles</td><td/></row>
		<row><td>RemoveEnvironmentStrings</td><td/><td>3300</td><td>RemoveEnvironmentStrings</td><td/></row>
		<row><td>RemoveExistingProducts</td><td/><td>1410</td><td>RemoveExistingProducts</td><td/></row>
		<row><td>RemoveFiles</td><td/><td>3500</td><td>RemoveFiles</td><td/></row>
		<row><td>RemoveFolders</td><td/><td>3600</td><td>RemoveFolders</td><td/></row>
		<row><td>RemoveIniValues</td><td/><td>3100</td><td>RemoveIniValues</td><td/></row>
		<row><td>RemoveODBC</td><td/><td>2400</td><td>RemoveODBC</td><td/></row>
		<row><td>RemoveRegistryValues</td><td/><td>2600</td><td>RemoveRegistryValues</td><td/></row>
		<row><td>RemoveShortcuts</td><td/><td>3200</td><td>RemoveShortcuts</td><td/></row>
		<row><td>ResolveSource</td><td>Not Installed</td><td>850</td><td>ResolveSource</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>6410</td><td>ScheduleReboot</td><td/></row>
		<row><td>SelfRegModules</td><td/><td>5600</td><td>SelfRegModules</td><td/></row>
		<row><td>SelfUnregModules</td><td/><td>2200</td><td>SelfUnregModules</td><td/></row>
		<row><td>SetARPINSTALLLOCATION</td><td/><td>1100</td><td>SetARPINSTALLLOCATION</td><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>VersionNT = 400</td><td>970</td><td/><td/></row>
		<row><td>SetODBCFolders</td><td/><td>1200</td><td>SetODBCFolders</td><td/></row>
		<row><td>StartServices</td><td>VersionNT</td><td>5900</td><td>StartServices</td><td/></row>
		<row><td>StopServices</td><td>VersionNT</td><td>1900</td><td>StopServices</td><td/></row>
		<row><td>UnpublishComponents</td><td/><td>1700</td><td>UnpublishComponents</td><td/></row>
		<row><td>UnpublishFeatures</td><td/><td>1800</td><td>UnpublishFeatures</td><td/></row>
		<row><td>UnregisterClassInfo</td><td/><td>2700</td><td>UnregisterClassInfo</td><td/></row>
		<row><td>UnregisterComPlus</td><td/><td>2100</td><td>UnregisterComPlus</td><td/></row>
		<row><td>UnregisterExtensionInfo</td><td/><td>2800</td><td>UnregisterExtensionInfo</td><td/></row>
		<row><td>UnregisterFonts</td><td/><td>2500</td><td>UnregisterFonts</td><td/></row>
		<row><td>UnregisterMIMEInfo</td><td/><td>3000</td><td>UnregisterMIMEInfo</td><td/></row>
		<row><td>UnregisterProgIdInfo</td><td/><td>2900</td><td>UnregisterProgIdInfo</td><td/></row>
		<row><td>UnregisterTypeLibraries</td><td/><td>2300</td><td>UnregisterTypeLibraries</td><td/></row>
		<row><td>ValidateProductID</td><td/><td>700</td><td>ValidateProductID</td><td/></row>
		<row><td>WriteEnvironmentStrings</td><td/><td>5200</td><td>WriteEnvironmentStrings</td><td/></row>
		<row><td>WriteIniValues</td><td/><td>5100</td><td>WriteIniValues</td><td/></row>
		<row><td>WriteRegistryValues</td><td/><td>5000</td><td>WriteRegistryValues</td><td/></row>
		<row><td>setAllUsersProfile2K</td><td>VersionNT &gt;= 500</td><td>980</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>VersionNT</td><td>960</td><td/><td/></row>
	</table>

	<table name="InstallShield">
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
		<row><td>ActiveLanguage</td><td>2052</td></row>
		<row><td>Comments</td><td/></row>
		<row><td>CurrentMedia</td><td dt:dt="bin.base64" md5="de9f554a3bc05c12be9c31b998217995">
UwBpAG4AZwBsAGUASQBtAGEAZwBlAAEARQB4AHAAcgBlAHMAcwA=
			</td></row>
		<row><td>DefaultProductConfiguration</td><td>Express</td></row>
		<row><td>EnableSwidtag</td><td>1</td></row>
		<row><td>ISCompilerOption_CompileBeforeBuild</td><td>1</td></row>
		<row><td>ISCompilerOption_Debug</td><td>0</td></row>
		<row><td>ISCompilerOption_IncludePath</td><td/></row>
		<row><td>ISCompilerOption_LibraryPath</td><td/></row>
		<row><td>ISCompilerOption_MaxErrors</td><td>50</td></row>
		<row><td>ISCompilerOption_MaxWarnings</td><td>50</td></row>
		<row><td>ISCompilerOption_OutputPath</td><td>&lt;ISProjectDataFolder&gt;\Script Files</td></row>
		<row><td>ISCompilerOption_PreProcessor</td><td>_ISSCRIPT_NEW_STYLE_DLG_DEFS</td></row>
		<row><td>ISCompilerOption_WarningLevel</td><td>3</td></row>
		<row><td>ISCompilerOption_WarningsAsErrors</td><td>1</td></row>
		<row><td>ISTheme</td><td>InstallShield Blue.theme</td></row>
		<row><td>ISUSLock</td><td>{06D9F26E-5C04-4DFF-A1DB-5E04C0FA82D2}</td></row>
		<row><td>ISUSSignature</td><td>{CBD4C9BB-9774-4607-8B48-4E6CF0BBBE95}</td></row>
		<row><td>ISVisitedViews</td><td>viewAssistant,viewProject,viewShortcuts,viewLearnMore</td></row>
		<row><td>Limited</td><td>1</td></row>
		<row><td>LockPermissionMode</td><td>1</td></row>
		<row><td>MsiExecCmdLineOptions</td><td/></row>
		<row><td>MsiLogFile</td><td/></row>
		<row><td>OnUpgrade</td><td>0</td></row>
		<row><td>Owner</td><td/></row>
		<row><td>PatchFamily</td><td>MyPatchFamily1</td></row>
		<row><td>PatchSequence</td><td>1.0.0</td></row>
		<row><td>SaveAsSchema</td><td/></row>
		<row><td>SccEnabled</td><td>0</td></row>
		<row><td>SccPath</td><td/></row>
		<row><td>SchemaVersion</td><td>776</td></row>
		<row><td>Type</td><td>MSIE</td></row>
	</table>

	<table name="InstallUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AppSearch</td><td/><td>400</td><td>AppSearch</td><td/></row>
		<row><td>CCPSearch</td><td>CCP_TEST</td><td>500</td><td>CCPSearch</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>ExecuteAction</td><td/><td>1300</td><td>ExecuteAction</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>FindRelatedProducts</td><td/><td>430</td><td>FindRelatedProducts</td><td/></row>
		<row><td>ISPreventDowngrade</td><td>ISFOUNDNEWERPRODUCTVERSION</td><td>450</td><td>ISPreventDowngrade</td><td/></row>
		<row><td>InstallWelcome</td><td>Not Installed</td><td>1210</td><td>InstallWelcome</td><td/></row>
		<row><td>IsolateComponents</td><td/><td>950</td><td>IsolateComponents</td><td/></row>
		<row><td>LaunchConditions</td><td>Not Installed</td><td>410</td><td>LaunchConditions</td><td/></row>
		<row><td>MaintenanceWelcome</td><td>Installed And Not RESUME And Not Preselected And Not PATCH</td><td>1230</td><td>MaintenanceWelcome</td><td/></row>
		<row><td>MigrateFeatureStates</td><td/><td>1200</td><td>MigrateFeatureStates</td><td/></row>
		<row><td>PatchWelcome</td><td>Installed And PATCH And Not IS_MAJOR_UPGRADE</td><td>1205</td><td>Patch Panel</td><td/></row>
		<row><td>RMCCPSearch</td><td>Not CCP_SUCCESS And CCP_TEST</td><td>600</td><td>RMCCPSearch</td><td/></row>
		<row><td>ResolveSource</td><td>Not Installed</td><td>990</td><td>ResolveSource</td><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>VersionNT = 400</td><td>970</td><td/><td/></row>
		<row><td>SetupCompleteError</td><td/><td>-3</td><td>SetupCompleteError</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td/><td>-1</td><td>SetupCompleteSuccess</td><td/></row>
		<row><td>SetupInitialization</td><td/><td>420</td><td>SetupInitialization</td><td/></row>
		<row><td>SetupInterrupted</td><td/><td>-2</td><td>SetupInterrupted</td><td/></row>
		<row><td>SetupProgress</td><td/><td>1240</td><td>SetupProgress</td><td/></row>
		<row><td>SetupResume</td><td>Installed And (RESUME Or Preselected) And Not PATCH</td><td>1220</td><td>SetupResume</td><td/></row>
		<row><td>ValidateProductID</td><td/><td>700</td><td>ValidateProductID</td><td/></row>
		<row><td>setAllUsersProfile2K</td><td>VersionNT &gt;= 500</td><td>980</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>VersionNT</td><td>960</td><td/><td/></row>
	</table>

	<table name="IsolatedComponent">
		<col key="yes" def="s72">Component_Shared</col>
		<col key="yes" def="s72">Component_Application</col>
	</table>

	<table name="LaunchCondition">
		<col key="yes" def="s255">Condition</col>
		<col def="l255">Description</col>
	</table>

	<table name="ListBox">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
	</table>

	<table name="ListView">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
		<col def="S72">Binary_</col>
	</table>

	<table name="LockPermissions">
		<col key="yes" def="s72">LockObject</col>
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="S255">Domain</col>
		<col key="yes" def="s255">User</col>
		<col def="I4">Permission</col>
	</table>

	<table name="MIME">
		<col key="yes" def="s64">ContentType</col>
		<col def="s255">Extension_</col>
		<col def="S38">CLSID</col>
	</table>

	<table name="Media">
		<col key="yes" def="i2">DiskId</col>
		<col def="i2">LastSequence</col>
		<col def="L64">DiskPrompt</col>
		<col def="S255">Cabinet</col>
		<col def="S32">VolumeLabel</col>
		<col def="S32">Source</col>
	</table>

	<table name="MoveFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="L255">SourceName</col>
		<col def="L255">DestName</col>
		<col def="S72">SourceFolder</col>
		<col def="s72">DestFolder</col>
		<col def="i2">Options</col>
	</table>

	<table name="MsiAssembly">
		<col key="yes" def="s72">Component_</col>
		<col def="s38">Feature_</col>
		<col def="S72">File_Manifest</col>
		<col def="S72">File_Application</col>
		<col def="I2">Attributes</col>
	</table>

	<table name="MsiAssemblyName">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="s255">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="MsiDigitalCertificate">
		<col key="yes" def="s72">DigitalCertificate</col>
		<col def="v0">CertData</col>
	</table>

	<table name="MsiDigitalSignature">
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="s72">SignObject</col>
		<col def="s72">DigitalCertificate_</col>
		<col def="V0">Hash</col>
	</table>

	<table name="MsiDriverPackages">
		<col key="yes" def="s72">Component</col>
		<col def="i4">Flags</col>
		<col def="I4">Sequence</col>
		<col def="S0">ReferenceComponents</col>
	</table>

	<table name="MsiEmbeddedChainer">
		<col key="yes" def="s72">MsiEmbeddedChainer</col>
		<col def="S255">Condition</col>
		<col def="S255">CommandLine</col>
		<col def="s72">Source</col>
		<col def="I4">Type</col>
	</table>

	<table name="MsiEmbeddedUI">
		<col key="yes" def="s72">MsiEmbeddedUI</col>
		<col def="s255">FileName</col>
		<col def="i2">Attributes</col>
		<col def="I4">MessageFilter</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="MsiFileHash">
		<col key="yes" def="s72">File_</col>
		<col def="i2">Options</col>
		<col def="i4">HashPart1</col>
		<col def="i4">HashPart2</col>
		<col def="i4">HashPart3</col>
		<col def="i4">HashPart4</col>
	</table>

	<table name="MsiLockPermissionsEx">
		<col key="yes" def="s72">MsiLockPermissionsEx</col>
		<col def="s72">LockObject</col>
		<col def="s32">Table</col>
		<col def="s0">SDDLText</col>
		<col def="S255">Condition</col>
	</table>

	<table name="MsiPackageCertificate">
		<col key="yes" def="s72">PackageCertificate</col>
		<col def="s72">DigitalCertificate_</col>
	</table>

	<table name="MsiPatchCertificate">
		<col key="yes" def="s72">PatchCertificate</col>
		<col def="s72">DigitalCertificate_</col>
	</table>

	<table name="MsiPatchMetadata">
		<col key="yes" def="s72">PatchConfiguration_</col>
		<col key="yes" def="S72">Company</col>
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="MsiPatchOldAssemblyFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="S72">Assembly_</col>
	</table>

	<table name="MsiPatchOldAssemblyName">
		<col key="yes" def="s72">Assembly</col>
		<col key="yes" def="s255">Name</col>
		<col def="S255">Value</col>
	</table>

	<table name="MsiPatchSequence">
		<col key="yes" def="s72">PatchConfiguration_</col>
		<col key="yes" def="s0">PatchFamily</col>
		<col key="yes" def="S0">Target</col>
		<col def="s0">Sequence</col>
		<col def="i2">Supersede</col>
	</table>

	<table name="MsiServiceConfig">
		<col key="yes" def="s72">MsiServiceConfig</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="i4">ConfigType</col>
		<col def="S0">Argument</col>
		<col def="s72">Component_</col>
	</table>

	<table name="MsiServiceConfigFailureActions">
		<col key="yes" def="s72">MsiServiceConfigFailureActions</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="I4">ResetPeriod</col>
		<col def="L255">RebootMessage</col>
		<col def="L255">Command</col>
		<col def="S0">Actions</col>
		<col def="S0">DelayActions</col>
		<col def="s72">Component_</col>
	</table>

	<table name="MsiShortcutProperty">
		<col key="yes" def="s72">MsiShortcutProperty</col>
		<col def="s72">Shortcut_</col>
		<col def="s0">PropertyKey</col>
		<col def="s0">PropVariantValue</col>
	</table>

	<table name="ODBCAttribute">
		<col key="yes" def="s72">Driver_</col>
		<col key="yes" def="s40">Attribute</col>
		<col def="S255">Value</col>
	</table>

	<table name="ODBCDataSource">
		<col key="yes" def="s72">DataSource</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s255">DriverDescription</col>
		<col def="i2">Registration</col>
	</table>

	<table name="ODBCDriver">
		<col key="yes" def="s72">Driver</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s72">File_</col>
		<col def="S72">File_Setup</col>
	</table>

	<table name="ODBCSourceAttribute">
		<col key="yes" def="s72">DataSource_</col>
		<col key="yes" def="s32">Attribute</col>
		<col def="S255">Value</col>
	</table>

	<table name="ODBCTranslator">
		<col key="yes" def="s72">Translator</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s72">File_</col>
		<col def="S72">File_Setup</col>
	</table>

	<table name="Patch">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="i2">Sequence</col>
		<col def="i4">PatchSize</col>
		<col def="i2">Attributes</col>
		<col def="V0">Header</col>
		<col def="S38">StreamRef_</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="PatchPackage">
		<col key="yes" def="s38">PatchId</col>
		<col def="i2">Media_</col>
	</table>

	<table name="ProgId">
		<col key="yes" def="s255">ProgId</col>
		<col def="S255">ProgId_Parent</col>
		<col def="S38">Class_</col>
		<col def="L255">Description</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="Property">
		<col key="yes" def="s72">Property</col>
		<col def="L0">Value</col>
		<col def="S255">ISComments</col>
		<row><td>ALLUSERS</td><td>1</td><td/></row>
		<row><td>ARPINSTALLLOCATION</td><td/><td/></row>
		<row><td>ARPPRODUCTICON</td><td>ARPPRODUCTICON.exe</td><td/></row>
		<row><td>ARPSIZE</td><td/><td/></row>
		<row><td>ARPURLINFOABOUT</td><td>##ID_STRING1##</td><td/></row>
		<row><td>AgreeToLicense</td><td>No</td><td/></row>
		<row><td>ApplicationUsers</td><td>AllUsers</td><td/></row>
		<row><td>DWUSINTERVAL</td><td>30</td><td/></row>
		<row><td>DWUSLINK</td><td>CE9BD08F1EFC27C8BEAC57C8BEAC978FE9CB808F599B9028CEBC97EFB9FC97CFFE0BE058BEAC</td><td/></row>
		<row><td>DefaultUIFont</td><td>ExpressDefault</td><td/></row>
		<row><td>DialogCaption</td><td>InstallShield for Windows Installer</td><td/></row>
		<row><td>DiskPrompt</td><td>[1]</td><td/></row>
		<row><td>DiskSerial</td><td>1234-5678</td><td/></row>
		<row><td>DisplayNameCustom</td><td>##IDS__DisplayName_Custom##</td><td/></row>
		<row><td>DisplayNameMinimal</td><td>##IDS__DisplayName_Minimal##</td><td/></row>
		<row><td>DisplayNameTypical</td><td>##IDS__DisplayName_Typical##</td><td/></row>
		<row><td>Display_IsBitmapDlg</td><td>1</td><td/></row>
		<row><td>ErrorDialog</td><td>SetupError</td><td/></row>
		<row><td>INSTALLLEVEL</td><td>200</td><td/></row>
		<row><td>ISCHECKFORPRODUCTUPDATES</td><td>1</td><td/></row>
		<row><td>ISENABLEDWUSFINISHDIALOG</td><td/><td/></row>
		<row><td>ISSHOWMSILOG</td><td/><td/></row>
		<row><td>ISVROOT_PORT_NO</td><td>0</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_COST</td><td>##IDS_COMPLUS_PROGRESSTEXT_COST##</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_INSTALL</td><td>##IDS_COMPLUS_PROGRESSTEXT_INSTALL##</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_UNINSTALL</td><td>##IDS_COMPLUS_PROGRESSTEXT_UNINSTALL##</td><td/></row>
		<row><td>IS_PREVENT_DOWNGRADE_EXIT</td><td>##IDS_PREVENT_DOWNGRADE_EXIT##</td><td/></row>
		<row><td>IS_PROGMSG_TEXTFILECHANGS_REPLACE</td><td>##IDS_PROGMSG_TEXTFILECHANGS_REPLACE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_COSTING</td><td>##IDS_PROGMSG_XML_COSTING##</td><td/></row>
		<row><td>IS_PROGMSG_XML_CREATE_FILE</td><td>##IDS_PROGMSG_XML_CREATE_FILE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_FILES</td><td>##IDS_PROGMSG_XML_FILES##</td><td/></row>
		<row><td>IS_PROGMSG_XML_REMOVE_FILE</td><td>##IDS_PROGMSG_XML_REMOVE_FILE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_ROLLBACK_FILES</td><td>##IDS_PROGMSG_XML_ROLLBACK_FILES##</td><td/></row>
		<row><td>IS_PROGMSG_XML_UPDATE_FILE</td><td>##IDS_PROGMSG_XML_UPDATE_FILE##</td><td/></row>
		<row><td>IS_SQLSERVER_AUTHENTICATION</td><td>0</td><td/></row>
		<row><td>IS_SQLSERVER_DATABASE</td><td/><td/></row>
		<row><td>IS_SQLSERVER_PASSWORD</td><td/><td/></row>
		<row><td>IS_SQLSERVER_SERVER</td><td/><td/></row>
		<row><td>IS_SQLSERVER_USERNAME</td><td>sa</td><td/></row>
		<row><td>InstallChoice</td><td>AR</td><td/></row>
		<row><td>LAUNCHPROGRAM</td><td>1</td><td/></row>
		<row><td>LAUNCHREADME</td><td>1</td><td/></row>
		<row><td>Manufacturer</td><td>##COMPANY_NAME##</td><td/></row>
		<row><td>PIDKEY</td><td/><td/></row>
		<row><td>PIDTemplate</td><td>12345&lt;###-%%%%%%%&gt;@@@@@</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEAPPPOOL</td><td>##IDS_PROGMSG_IIS_CREATEAPPPOOL##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEAPPPOOLS</td><td>##IDS_PROGMSG_IIS_CREATEAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEVROOT</td><td>##IDS_PROGMSG_IIS_CREATEVROOT##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEVROOTS</td><td>##IDS_PROGMSG_IIS_CREATEVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSERVICEEXTENSION</td><td>##IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSION##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSITE</td><td>##IDS_PROGMSG_IIS_CREATEWEBSITE##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSITES</td><td>##IDS_PROGMSG_IIS_CREATEWEBSITES##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACT</td><td>##IDS_PROGMSG_IIS_EXTRACT##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTDONE</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTDONEz</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTzDONE</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEAPPPOOL</td><td>##IDS_PROGMSG_IIS_REMOVEAPPPOOL##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEAPPPOOLS</td><td>##IDS_PROGMSG_IIS_REMOVEAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVESITE</td><td>##IDS_PROGMSG_IIS_REMOVESITE##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEVROOT</td><td>##IDS_PROGMSG_IIS_REMOVEVROOT##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEVROOTS</td><td>##IDS_PROGMSG_IIS_REMOVEVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSITES</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSITES##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKAPPPOOLS</td><td>##IDS_PROGMSG_IIS_ROLLBACKAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKVROOTS</td><td>##IDS_PROGMSG_IIS_ROLLBACKVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>ProductCode</td><td>{38936B87-831C-41F5-BEF3-D0D937223F6F}</td><td/></row>
		<row><td>ProductName</td><td>Setup1</td><td/></row>
		<row><td>ProductVersion</td><td>1.00.0000</td><td/></row>
		<row><td>ProgressType0</td><td>install</td><td/></row>
		<row><td>ProgressType1</td><td>Installing</td><td/></row>
		<row><td>ProgressType2</td><td>installed</td><td/></row>
		<row><td>ProgressType3</td><td>installs</td><td/></row>
		<row><td>RebootYesNo</td><td>Yes</td><td/></row>
		<row><td>ReinstallFileVersion</td><td>o</td><td/></row>
		<row><td>ReinstallModeText</td><td>omus</td><td/></row>
		<row><td>ReinstallRepair</td><td>r</td><td/></row>
		<row><td>RestartManagerOption</td><td>CloseRestart</td><td/></row>
		<row><td>SERIALNUMBER</td><td/><td/></row>
		<row><td>SERIALNUMVALSUCCESSRETVAL</td><td>1</td><td/></row>
		<row><td>SecureCustomProperties</td><td>ISFOUNDNEWERPRODUCTVERSION;USERNAME;COMPANYNAME;ISX_SERIALNUM;SUPPORTDIR</td><td/></row>
		<row><td>SelectedSetupType</td><td>##IDS__DisplayName_Typical##</td><td/></row>
		<row><td>SetupType</td><td>Typical</td><td/></row>
		<row><td>UpgradeCode</td><td>{6DC3ED1A-9ADA-4A09-B64B-455A7EA6C4B6}</td><td/></row>
		<row><td>_IsMaintenance</td><td>Change</td><td/></row>
		<row><td>_IsSetupTypeMin</td><td>Typical</td><td/></row>
	</table>

	<table name="PublishComponent">
		<col key="yes" def="s38">ComponentId</col>
		<col key="yes" def="s255">Qualifier</col>
		<col key="yes" def="s72">Component_</col>
		<col def="L0">AppData</col>
		<col def="s38">Feature_</col>
	</table>

	<table name="RadioButton">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="L64">Text</col>
		<col def="L50">Help</col>
		<col def="I4">ISControlId</col>
		<row><td>AgreeToLicense</td><td>1</td><td>No</td><td>0</td><td>15</td><td>291</td><td>15</td><td>##IDS__AgreeToLicense_0##</td><td/><td/></row>
		<row><td>AgreeToLicense</td><td>2</td><td>Yes</td><td>0</td><td>0</td><td>291</td><td>15</td><td>##IDS__AgreeToLicense_1##</td><td/><td/></row>
		<row><td>ApplicationUsers</td><td>1</td><td>AllUsers</td><td>1</td><td>7</td><td>290</td><td>14</td><td>##IDS__IsRegisterUserDlg_Anyone##</td><td/><td/></row>
		<row><td>ApplicationUsers</td><td>2</td><td>OnlyCurrentUser</td><td>1</td><td>23</td><td>290</td><td>14</td><td>##IDS__IsRegisterUserDlg_OnlyMe##</td><td/><td/></row>
		<row><td>RestartManagerOption</td><td>1</td><td>CloseRestart</td><td>6</td><td>9</td><td>331</td><td>14</td><td>##IDS__IsMsiRMFilesInUse_CloseRestart##</td><td/><td/></row>
		<row><td>RestartManagerOption</td><td>2</td><td>Reboot</td><td>6</td><td>21</td><td>331</td><td>14</td><td>##IDS__IsMsiRMFilesInUse_RebootAfter##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>1</td><td>Change</td><td>0</td><td>0</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Modify##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>2</td><td>Reinstall</td><td>0</td><td>60</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Repair##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>3</td><td>Remove</td><td>0</td><td>120</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Remove##</td><td/><td/></row>
		<row><td>_IsSetupTypeMin</td><td>1</td><td>Typical</td><td>1</td><td>6</td><td>264</td><td>14</td><td>##IDS__IsSetupTypeMinDlg_Typical##</td><td/><td/></row>
	</table>

	<table name="RegLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="i2">Root</col>
		<col def="s255">Key</col>
		<col def="S255">Name</col>
		<col def="I2">Type</col>
	</table>

	<table name="Registry">
		<col key="yes" def="s72">Registry</col>
		<col def="i2">Root</col>
		<col def="s255">Key</col>
		<col def="S255">Name</col>
		<col def="S0">Value</col>
		<col def="s72">Component_</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="RemoveFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="L255">FileName</col>
		<col def="s72">DirProperty</col>
		<col def="i2">InstallMode</col>
		<row><td>MFCDemo.exe</td><td>MFCDemo.exe</td><td/><td>setup1</td><td>2</td></row>
		<row><td>OpenSDK_Demo_Qt.exe</td><td>OpenSDK_Demo_Qt.exe</td><td/><td>setup1</td><td>2</td></row>
		<row><td>V2216DLLDemo.exe</td><td>V2216DLLDemo.exe</td><td/><td>setup1</td><td>2</td></row>
	</table>

	<table name="RemoveIniFile">
		<col key="yes" def="s72">RemoveIniFile</col>
		<col def="l255">FileName</col>
		<col def="S72">DirProperty</col>
		<col def="l96">Section</col>
		<col def="l128">Key</col>
		<col def="L255">Value</col>
		<col def="i2">Action</col>
		<col def="s72">Component_</col>
	</table>

	<table name="RemoveRegistry">
		<col key="yes" def="s72">RemoveRegistry</col>
		<col def="i2">Root</col>
		<col def="l255">Key</col>
		<col def="L255">Name</col>
		<col def="s72">Component_</col>
	</table>

	<table name="ReserveCost">
		<col key="yes" def="s72">ReserveKey</col>
		<col def="s72">Component_</col>
		<col def="S72">ReserveFolder</col>
		<col def="i4">ReserveLocal</col>
		<col def="i4">ReserveSource</col>
	</table>

	<table name="SFPCatalog">
		<col key="yes" def="s255">SFPCatalog</col>
		<col def="V0">Catalog</col>
		<col def="S0">Dependency</col>
	</table>

	<table name="SelfReg">
		<col key="yes" def="s72">File_</col>
		<col def="I2">Cost</col>
	</table>

	<table name="ServiceControl">
		<col key="yes" def="s72">ServiceControl</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="S255">Arguments</col>
		<col def="I2">Wait</col>
		<col def="s72">Component_</col>
	</table>

	<table name="ServiceInstall">
		<col key="yes" def="s72">ServiceInstall</col>
		<col def="s255">Name</col>
		<col def="L255">DisplayName</col>
		<col def="i4">ServiceType</col>
		<col def="i4">StartType</col>
		<col def="i4">ErrorControl</col>
		<col def="S255">LoadOrderGroup</col>
		<col def="S255">Dependencies</col>
		<col def="S255">StartName</col>
		<col def="S255">Password</col>
		<col def="S255">Arguments</col>
		<col def="s72">Component_</col>
		<col def="L255">Description</col>
	</table>

	<table name="Shortcut">
		<col key="yes" def="s72">Shortcut</col>
		<col def="s72">Directory_</col>
		<col def="l128">Name</col>
		<col def="s72">Component_</col>
		<col def="s255">Target</col>
		<col def="S255">Arguments</col>
		<col def="L255">Description</col>
		<col def="I2">Hotkey</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="I2">ShowCmd</col>
		<col def="S72">WkDir</col>
		<col def="S255">DisplayResourceDLL</col>
		<col def="I2">DisplayResourceId</col>
		<col def="S255">DescriptionResourceDLL</col>
		<col def="I2">DescriptionResourceId</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISShortcutName</col>
		<col def="I4">ISAttributes</col>
		<row><td>MFCDemo.exe</td><td>setup1</td><td>##IDS_SHORTCUT_DISPLAY_NAME5##</td><td>MFCDemo.exe</td><td>AlwaysInstall</td><td/><td/><td/><td>MFCDemo.exe_962CEE85EA1B48B1A076DD5C92C2A6B4.exe</td><td>1</td><td>1</td><td>HIKPF</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>OpenSDK_Demo_Qt.exe</td><td>setup1</td><td>##IDS_SHORTCUT_DISPLAY_NAME4##</td><td>OpenSDK_Demo_Qt.exe</td><td>AlwaysInstall</td><td/><td/><td/><td>OpenSDK_Demo_Qt.ex_9D351846B58740DD83ED58DC0B276AA7.exe</td><td>0</td><td>1</td><td>EZVIZ_DEVICE_PLUGIN</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>V2216DLLDemo.exe</td><td>setup1</td><td>##IDS_SHORTCUT_DISPLAY_NAME6##</td><td>V2216DLLDemo.exe</td><td>AlwaysInstall</td><td/><td/><td/><td>V2216DLLDemo.exe_27CD442615954F7C9CC0F1B53772C24C.exe</td><td>1</td><td>1</td><td>INFNET</td><td/><td/><td/><td/><td/><td/><td/></row>
	</table>

	<table name="Signature">
		<col key="yes" def="s72">Signature</col>
		<col def="s255">FileName</col>
		<col def="S20">MinVersion</col>
		<col def="S20">MaxVersion</col>
		<col def="I4">MinSize</col>
		<col def="I4">MaxSize</col>
		<col def="I4">MinDate</col>
		<col def="I4">MaxDate</col>
		<col def="S255">Languages</col>
	</table>

	<table name="TextStyle">
		<col key="yes" def="s72">TextStyle</col>
		<col def="s32">FaceName</col>
		<col def="i2">Size</col>
		<col def="I4">Color</col>
		<col def="I2">StyleBits</col>
		<row><td>Arial8</td><td>Arial</td><td>8</td><td/><td/></row>
		<row><td>Arial9</td><td>Arial</td><td>9</td><td/><td/></row>
		<row><td>ArialBlue10</td><td>Arial</td><td>10</td><td>16711680</td><td/></row>
		<row><td>ArialBlueStrike10</td><td>Arial</td><td>10</td><td>16711680</td><td>8</td></row>
		<row><td>CourierNew8</td><td>Courier New</td><td>8</td><td/><td/></row>
		<row><td>CourierNew9</td><td>Courier New</td><td>9</td><td/><td/></row>
		<row><td>ExpressDefault</td><td>@宋体</td><td>9</td><td>0</td><td>0</td></row>
		<row><td>MSGothic9</td><td>MS Gothic</td><td>9</td><td/><td/></row>
		<row><td>MSSGreySerif8</td><td>MS Sans Serif</td><td>8</td><td>8421504</td><td/></row>
		<row><td>MSSWhiteSerif8</td><td>Tahoma</td><td>8</td><td>16777215</td><td/></row>
		<row><td>MSSansBold8</td><td>Tahoma</td><td>8</td><td/><td>1</td></row>
		<row><td>MSSansSerif8</td><td>MS Sans Serif</td><td>8</td><td/><td/></row>
		<row><td>MSSansSerif9</td><td>MS Sans Serif</td><td>9</td><td/><td/></row>
		<row><td>Tahoma10</td><td>Tahoma</td><td>10</td><td/><td/></row>
		<row><td>Tahoma8</td><td>Tahoma</td><td>8</td><td/><td/></row>
		<row><td>Tahoma9</td><td>Tahoma</td><td>9</td><td/><td/></row>
		<row><td>TahomaBold10</td><td>Tahoma</td><td>10</td><td/><td>1</td></row>
		<row><td>TahomaBold8</td><td>Tahoma</td><td>8</td><td/><td>1</td></row>
		<row><td>Times8</td><td>Times New Roman</td><td>8</td><td/><td/></row>
		<row><td>Times9</td><td>Times New Roman</td><td>9</td><td/><td/></row>
		<row><td>TimesItalic12</td><td>Times New Roman</td><td>12</td><td/><td>2</td></row>
		<row><td>TimesItalicBlue10</td><td>Times New Roman</td><td>10</td><td>16711680</td><td>2</td></row>
		<row><td>TimesRed16</td><td>Times New Roman</td><td>16</td><td>255</td><td/></row>
		<row><td>VerdanaBold14</td><td>Verdana</td><td>13</td><td/><td>1</td></row>
	</table>

	<table name="TypeLib">
		<col key="yes" def="s38">LibID</col>
		<col key="yes" def="i2">Language</col>
		<col key="yes" def="s72">Component_</col>
		<col def="I4">Version</col>
		<col def="L128">Description</col>
		<col def="S72">Directory_</col>
		<col def="s38">Feature_</col>
		<col def="I4">Cost</col>
	</table>

	<table name="UIText">
		<col key="yes" def="s72">Key</col>
		<col def="L255">Text</col>
		<row><td>AbsentPath</td><td/></row>
		<row><td>GB</td><td>##IDS_UITEXT_GB##</td></row>
		<row><td>KB</td><td>##IDS_UITEXT_KB##</td></row>
		<row><td>MB</td><td>##IDS_UITEXT_MB##</td></row>
		<row><td>MenuAbsent</td><td>##IDS_UITEXT_FeatureNotAvailable##</td></row>
		<row><td>MenuAdvertise</td><td>##IDS_UITEXT_FeatureInstalledWhenRequired2##</td></row>
		<row><td>MenuAllCD</td><td>##IDS_UITEXT_FeatureInstalledCD##</td></row>
		<row><td>MenuAllLocal</td><td>##IDS_UITEXT_FeatureInstalledLocal##</td></row>
		<row><td>MenuAllNetwork</td><td>##IDS_UITEXT_FeatureInstalledNetwork##</td></row>
		<row><td>MenuCD</td><td>##IDS_UITEXT_FeatureInstalledCD2##</td></row>
		<row><td>MenuLocal</td><td>##IDS_UITEXT_FeatureInstalledLocal2##</td></row>
		<row><td>MenuNetwork</td><td>##IDS_UITEXT_FeatureInstalledNetwork2##</td></row>
		<row><td>NewFolder</td><td>##IDS_UITEXT_Folder##</td></row>
		<row><td>SelAbsentAbsent</td><td>##IDS_UITEXT_GB##</td></row>
		<row><td>SelAbsentAdvertise</td><td>##IDS_UITEXT_FeatureInstalledWhenRequired##</td></row>
		<row><td>SelAbsentCD</td><td>##IDS_UITEXT_FeatureOnCD##</td></row>
		<row><td>SelAbsentLocal</td><td>##IDS_UITEXT_FeatureLocal##</td></row>
		<row><td>SelAbsentNetwork</td><td>##IDS_UITEXT_FeatureNetwork##</td></row>
		<row><td>SelAdvertiseAbsent</td><td>##IDS_UITEXT_FeatureUnavailable##</td></row>
		<row><td>SelAdvertiseAdvertise</td><td>##IDS_UITEXT_FeatureInstalledRequired##</td></row>
		<row><td>SelAdvertiseCD</td><td>##IDS_UITEXT_FeatureOnCD2##</td></row>
		<row><td>SelAdvertiseLocal</td><td>##IDS_UITEXT_FeatureLocal2##</td></row>
		<row><td>SelAdvertiseNetwork</td><td>##IDS_UITEXT_FeatureNetwork2##</td></row>
		<row><td>SelCDAbsent</td><td>##IDS_UITEXT_FeatureWillBeUninstalled##</td></row>
		<row><td>SelCDAdvertise</td><td>##IDS_UITEXT_FeatureWasCD##</td></row>
		<row><td>SelCDCD</td><td>##IDS_UITEXT_FeatureRunFromCD##</td></row>
		<row><td>SelCDLocal</td><td>##IDS_UITEXT_FeatureWasCDLocal##</td></row>
		<row><td>SelChildCostNeg</td><td>##IDS_UITEXT_FeatureFreeSpace##</td></row>
		<row><td>SelChildCostPos</td><td>##IDS_UITEXT_FeatureRequiredSpace##</td></row>
		<row><td>SelCostPending</td><td>##IDS_UITEXT_CompilingFeaturesCost##</td></row>
		<row><td>SelLocalAbsent</td><td>##IDS_UITEXT_FeatureCompletelyRemoved##</td></row>
		<row><td>SelLocalAdvertise</td><td>##IDS_UITEXT_FeatureRemovedUnlessRequired##</td></row>
		<row><td>SelLocalCD</td><td>##IDS_UITEXT_FeatureRemovedCD##</td></row>
		<row><td>SelLocalLocal</td><td>##IDS_UITEXT_FeatureRemainLocal##</td></row>
		<row><td>SelLocalNetwork</td><td>##IDS_UITEXT_FeatureRemoveNetwork##</td></row>
		<row><td>SelNetworkAbsent</td><td>##IDS_UITEXT_FeatureUninstallNoNetwork##</td></row>
		<row><td>SelNetworkAdvertise</td><td>##IDS_UITEXT_FeatureWasOnNetworkInstalled##</td></row>
		<row><td>SelNetworkLocal</td><td>##IDS_UITEXT_FeatureWasOnNetworkLocal##</td></row>
		<row><td>SelNetworkNetwork</td><td>##IDS_UITEXT_FeatureContinueNetwork##</td></row>
		<row><td>SelParentCostNegNeg</td><td>##IDS_UITEXT_FeatureSpaceFree##</td></row>
		<row><td>SelParentCostNegPos</td><td>##IDS_UITEXT_FeatureSpaceFree2##</td></row>
		<row><td>SelParentCostPosNeg</td><td>##IDS_UITEXT_FeatureSpaceFree3##</td></row>
		<row><td>SelParentCostPosPos</td><td>##IDS_UITEXT_FeatureSpaceFree4##</td></row>
		<row><td>TimeRemaining</td><td>##IDS_UITEXT_TimeRemaining##</td></row>
		<row><td>VolumeCostAvailable</td><td>##IDS_UITEXT_Available##</td></row>
		<row><td>VolumeCostDifference</td><td>##IDS_UITEXT_Differences##</td></row>
		<row><td>VolumeCostRequired</td><td>##IDS_UITEXT_Required##</td></row>
		<row><td>VolumeCostSize</td><td>##IDS_UITEXT_DiskSize##</td></row>
		<row><td>VolumeCostVolume</td><td>##IDS_UITEXT_Volume##</td></row>
		<row><td>bytes</td><td>##IDS_UITEXT_Bytes##</td></row>
	</table>

	<table name="Upgrade">
		<col key="yes" def="s38">UpgradeCode</col>
		<col key="yes" def="S20">VersionMin</col>
		<col key="yes" def="S20">VersionMax</col>
		<col key="yes" def="S255">Language</col>
		<col key="yes" def="i4">Attributes</col>
		<col def="S255">Remove</col>
		<col def="s72">ActionProperty</col>
		<col def="S72">ISDisplayName</col>
		<row><td>{00000000-0000-0000-0000-000000000000}</td><td>***ALL_VERSIONS***</td><td></td><td></td><td>2</td><td/><td>ISFOUNDNEWERPRODUCTVERSION</td><td>ISPreventDowngrade</td></row>
	</table>

	<table name="Verb">
		<col key="yes" def="s255">Extension_</col>
		<col key="yes" def="s32">Verb</col>
		<col def="I2">Sequence</col>
		<col def="L255">Command</col>
		<col def="L255">Argument</col>
	</table>

	<table name="_Validation">
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="s32">Column</col>
		<col def="s4">Nullable</col>
		<col def="I4">MinValue</col>
		<col def="I4">MaxValue</col>
		<col def="S255">KeyTable</col>
		<col def="I2">KeyColumn</col>
		<col def="S32">Category</col>
		<col def="S255">Set</col>
		<col def="S255">Description</col>
		<row><td>ActionText</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to be described.</td></row>
		<row><td>ActionText</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description displayed in progress dialog and log when action is executing.</td></row>
		<row><td>ActionText</td><td>Template</td><td>Y</td><td/><td/><td/><td/><td>Template</td><td/><td>Optional localized format template used to format action data records for display during action execution.</td></row>
		<row><td>AdminExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdminExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdminExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdminExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdminExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdminUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdminUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdminUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdminUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdminUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdvtExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdvtExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdvtUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdvtUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdvtUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdvtUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdvtUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AppId</td><td>ActivateAtStorage</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td/></row>
		<row><td>AppId</td><td>AppId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td/></row>
		<row><td>AppId</td><td>DllSurrogate</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppId</td><td>LocalService</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppId</td><td>RemoteServerName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>AppId</td><td>RunAsInteractiveUser</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td/></row>
		<row><td>AppId</td><td>ServiceParameters</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppSearch</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The property associated with a Signature</td></row>
		<row><td>AppSearch</td><td>Signature_</td><td>N</td><td/><td/><td>ISXmlLocator;Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>BBControl</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>BBControl</td><td>BBControl</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the control. This name must be unique within a billboard, but can repeat on different billboard.</td></row>
		<row><td>BBControl</td><td>Billboard_</td><td>N</td><td/><td/><td>Billboard</td><td>1</td><td>Identifier</td><td/><td>External key to the Billboard table, name of the billboard.</td></row>
		<row><td>BBControl</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>BBControl</td><td>Type</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The type of the control.</td></row>
		<row><td>BBControl</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>Billboard</td><td>Action</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of an action. The billboard is displayed during the progress messages received from this action.</td></row>
		<row><td>Billboard</td><td>Billboard</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the billboard.</td></row>
		<row><td>Billboard</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>An external key to the Feature Table. The billboard is shown only if this feature is being installed.</td></row>
		<row><td>Billboard</td><td>Ordering</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>A positive integer. If there is more than one billboard corresponding to an action they will be shown in the order defined by this column.</td></row>
		<row><td>Binary</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>Binary</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>Binary</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique key identifying the binary data.</td></row>
		<row><td>BindImage</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>The index into the File table. This must be an executable file.</td></row>
		<row><td>BindImage</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>Paths</td><td/><td>A list of ;  delimited paths that represent the paths to be searched for the import DLLS. The list is usually a list of properties each enclosed within square brackets [] .</td></row>
		<row><td>CCPSearch</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>CheckBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to the item.</td></row>
		<row><td>CheckBox</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with the item.</td></row>
		<row><td>Class</td><td>AppId_</td><td>Y</td><td/><td/><td>AppId</td><td>1</td><td>Guid</td><td/><td>Optional AppID containing DCOM information for associated application (string GUID).</td></row>
		<row><td>Class</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>optional argument for LocalServers.</td></row>
		<row><td>Class</td><td>Attributes</td><td>Y</td><td/><td>32767</td><td/><td/><td/><td/><td>Class registration attributes.</td></row>
		<row><td>Class</td><td>CLSID</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The CLSID of an OLE factory.</td></row>
		<row><td>Class</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>Class</td><td>Context</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The numeric server context for this server. CLSCTX_xxxx</td></row>
		<row><td>Class</td><td>DefInprocHandler</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td>1;2;3</td><td>Optional default inproc handler.  Only optionally provided if Context=CLSCTX_LOCAL_SERVER.  Typically "ole32.dll" or "mapi32.dll"</td></row>
		<row><td>Class</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description for the Class.</td></row>
		<row><td>Class</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the CLSID factory to be operational.</td></row>
		<row><td>Class</td><td>FileTypeMask</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Optional string containing information for the HKCRthis CLSID) key. If multiple patterns exist, they must be delimited by a semicolon, and numeric subkeys will be generated: 0,1,2...</td></row>
		<row><td>Class</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index.</td></row>
		<row><td>Class</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Optional foreign key into the Icon Table, specifying the icon file associated with this CLSID. Will be written under the DefaultIcon key.</td></row>
		<row><td>Class</td><td>ProgId_Default</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>Optional ProgId associated with this CLSID.</td></row>
		<row><td>ComboBox</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list.	The integers do not have to be consecutive.</td></row>
		<row><td>ComboBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same combobox.</td></row>
		<row><td>ComboBox</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ComboBox</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>CompLocator</td><td>ComponentId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID unique to this component, version, and language.</td></row>
		<row><td>CompLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>CompLocator</td><td>Type</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td>A boolean value that determines if the registry value is a filename or a directory location.</td></row>
		<row><td>Complus</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the ComPlus component.</td></row>
		<row><td>Complus</td><td>ExpType</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>ComPlus component attributes.</td></row>
		<row><td>Component</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Remote execution option, one of irsEnum</td></row>
		<row><td>Component</td><td>Component</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>Component</td><td>ComponentId</td><td>Y</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID unique to this component, version, and language.</td></row>
		<row><td>Component</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A conditional statement that will disable this component if the specified condition evaluates to the 'True' state. If a component is disabled, it will not be installed, regardless of the 'Action' state associated with the component.</td></row>
		<row><td>Component</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Required key of a Directory table record. This is actually a property name whose value contains the actual path, set either by the AppSearch action or with the default setting obtained from the Directory table.</td></row>
		<row><td>Component</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a component.</td></row>
		<row><td>Component</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsCommit</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsInstall</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsRollback</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsUninstall</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISRegFileToMergeAtBuild</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path and File name of a .REG file to merge into the component at build time.</td></row>
		<row><td>Component</td><td>ISScanAtBuildFile</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File used by the Dot Net scanner to populate dependant assemblies' File_Application field.</td></row>
		<row><td>Component</td><td>KeyPath</td><td>Y</td><td/><td/><td>File;ODBCDataSource;Registry</td><td>1</td><td>Identifier</td><td/><td>Either the primary key into the File table, Registry table, or ODBCDataSource table. This extract path is stored when the component is installed, and is used to detect the presence of the component and to return the path to it.</td></row>
		<row><td>Condition</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Expression evaluated to determine if Level in the Feature table is to change.</td></row>
		<row><td>Condition</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Reference to a Feature entry in Feature table.</td></row>
		<row><td>Condition</td><td>Level</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>New selection Level to set in Feature table if Condition evaluates to TRUE.</td></row>
		<row><td>Control</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>Control</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>External key to the Binary table.</td></row>
		<row><td>Control</td><td>Control</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the control. This name must be unique within a dialog, but can repeat on different dialogs.</td></row>
		<row><td>Control</td><td>Control_Next</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>The name of an other control on the same dialog. This link defines the tab order of the controls. The links have to form one or more cycles!</td></row>
		<row><td>Control</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>External key to the Dialog table, name of the dialog.</td></row>
		<row><td>Control</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>Help</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The help strings used with the button. The text is optional.</td></row>
		<row><td>Control</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to .rtf file for scrollable text control</td></row>
		<row><td>Control</td><td>ISControlId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A number used to represent the control ID of the Control, Used in Dialog export</td></row>
		<row><td>Control</td><td>ISWindowStyle</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies non-MSI window styles to be applied to this control.</td></row>
		<row><td>Control</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of a defined property to be linked to this control.</td></row>
		<row><td>Control</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>Control</td><td>Type</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The type of the control.</td></row>
		<row><td>Control</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ControlCondition</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>Default;Disable;Enable;Hide;Show</td><td>The desired action to be taken on the specified control.</td></row>
		<row><td>ControlCondition</td><td>Condition</td><td>N</td><td/><td/><td/><td/><td>Condition</td><td/><td>A standard conditional statement that specifies under which conditions the action should be triggered.</td></row>
		<row><td>ControlCondition</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control.</td></row>
		<row><td>ControlCondition</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the dialog.</td></row>
		<row><td>ControlEvent</td><td>Argument</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A value to be used as a modifier when triggering a particular event.</td></row>
		<row><td>ControlEvent</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A standard conditional statement that specifies under which conditions an event should be triggered.</td></row>
		<row><td>ControlEvent</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control</td></row>
		<row><td>ControlEvent</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the dialog.</td></row>
		<row><td>ControlEvent</td><td>Event</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>An identifier that specifies the type of the event that should take place when the user interacts with control specified by the first two entries.</td></row>
		<row><td>ControlEvent</td><td>Ordering</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>An integer used to order several events tied to the same control. Can be left blank.</td></row>
		<row><td>CreateFolder</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table.</td></row>
		<row><td>CreateFolder</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Primary key, could be foreign key into the Directory table.</td></row>
		<row><td>CustomAction</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, name of action, normally appears in sequence table unless private use.</td></row>
		<row><td>CustomAction</td><td>ExtendedType</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The numeric custom action type info flags.</td></row>
		<row><td>CustomAction</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments for this custom action.</td></row>
		<row><td>CustomAction</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>CustomSource</td><td/><td>The table reference of the source of the code.</td></row>
		<row><td>CustomAction</td><td>Target</td><td>Y</td><td/><td/><td>ISDLLWrapper;ISInstallScriptAction</td><td>1</td><td>Formatted</td><td/><td>Excecution parameter, depends on the type of custom action</td></row>
		<row><td>CustomAction</td><td>Type</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>The numeric custom action type, consisting of source location, code type, entry, option flags.</td></row>
		<row><td>Dialog</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this dialog.</td></row>
		<row><td>Dialog</td><td>Control_Cancel</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the cancel control. Hitting escape or clicking on the close icon on the dialog is equivalent to pushing this button.</td></row>
		<row><td>Dialog</td><td>Control_Default</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the default control. Hitting return is equivalent to pushing this button.</td></row>
		<row><td>Dialog</td><td>Control_First</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the control that has the focus when the dialog is created.</td></row>
		<row><td>Dialog</td><td>Dialog</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the dialog.</td></row>
		<row><td>Dialog</td><td>HCentering</td><td>N</td><td>0</td><td>100</td><td/><td/><td/><td/><td>Horizontal position of the dialog on a 0-100 scale. 0 means left end, 100 means right end of the screen, 50 center.</td></row>
		<row><td>Dialog</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the dialog.</td></row>
		<row><td>Dialog</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments for this dialog.</td></row>
		<row><td>Dialog</td><td>ISResourceId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A Number the Specifies the Dialog ID to be used in Dialog Export</td></row>
		<row><td>Dialog</td><td>ISWindowStyle</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies non-MSI window styles to be applied to this control. This is only used in Script Based Setups.</td></row>
		<row><td>Dialog</td><td>TextStyle_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign Key into TextStyle table, only used in Script Based Projects.</td></row>
		<row><td>Dialog</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A text string specifying the title to be displayed in the title bar of the dialog's window.</td></row>
		<row><td>Dialog</td><td>VCentering</td><td>N</td><td>0</td><td>100</td><td/><td/><td/><td/><td>Vertical position of the dialog on a 0-100 scale. 0 means top end, 100 means bottom end of the screen, 50 center.</td></row>
		<row><td>Dialog</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the dialog.</td></row>
		<row><td>Directory</td><td>DefaultDir</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The default sub-path under parent's path.</td></row>
		<row><td>Directory</td><td>Directory</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for directory entry, primary key. If a property by this name is defined, it contains the full path to the directory.</td></row>
		<row><td>Directory</td><td>Directory_Parent</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Reference to the entry in this table specifying the default parent directory. A record parented to itself or with a Null parent represents a root of the install tree.</td></row>
		<row><td>Directory</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3;4;5;6;7</td><td>This is used to store Installshield custom properties of a directory.  Currently the only one is Shortcut.</td></row>
		<row><td>Directory</td><td>ISDescription</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of folder</td></row>
		<row><td>Directory</td><td>ISFolderName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is used in Pro projects because the pro identifier used in the tree wasn't necessarily unique.</td></row>
		<row><td>DrLocator</td><td>Depth</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The depth below the path to which the Signature_ is recursively searched. If absent, the depth is assumed to be 0.</td></row>
		<row><td>DrLocator</td><td>Parent</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The parent file signature. It is also a foreign key in the Signature table. If null and the Path column does not expand to a full path, then all the fixed drives of the user system are searched using the Path.</td></row>
		<row><td>DrLocator</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>AnyPath</td><td/><td>The path on the user system. This is a either a subpath below the value of the Parent or a full path. The path may contain properties enclosed within [ ] that will be expanded.</td></row>
		<row><td>DrLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>DuplicateFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the duplicate file.</td></row>
		<row><td>DuplicateFile</td><td>DestFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full pathname to a destination folder.</td></row>
		<row><td>DuplicateFile</td><td>DestName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Filename to be given to the duplicate file.</td></row>
		<row><td>DuplicateFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular file entry</td></row>
		<row><td>DuplicateFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing the source file to be duplicated.</td></row>
		<row><td>Environment</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the environmental value.</td></row>
		<row><td>Environment</td><td>Environment</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for the environmental variable setting</td></row>
		<row><td>Environment</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the environmental value.</td></row>
		<row><td>Environment</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to set in the environmental settings.</td></row>
		<row><td>Error</td><td>Error</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer error number, obtained from header file IError(...) macros.</td></row>
		<row><td>Error</td><td>Message</td><td>Y</td><td/><td/><td/><td/><td>Template</td><td/><td>Error formatting template, obtained from user ed. or localizers.</td></row>
		<row><td>EventMapping</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of the control attribute, that is set when this event is received.</td></row>
		<row><td>EventMapping</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control.</td></row>
		<row><td>EventMapping</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the Dialog.</td></row>
		<row><td>EventMapping</td><td>Event</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>An identifier that specifies the type of the event that the control subscribes to.</td></row>
		<row><td>Extension</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>Extension</td><td>Extension</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The extension associated with the table row.</td></row>
		<row><td>Extension</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the CLSID factory to be operational.</td></row>
		<row><td>Extension</td><td>MIME_</td><td>Y</td><td/><td/><td>MIME</td><td>1</td><td>Text</td><td/><td>Optional Context identifier, typically "type/format" associated with the extension</td></row>
		<row><td>Extension</td><td>ProgId_</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>Optional ProgId associated with this extension.</td></row>
		<row><td>Feature</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2;4;5;6;8;9;10;16;17;18;20;21;22;24;25;26;32;33;34;36;37;38;48;49;50;52;53;54</td><td>Feature attributes</td></row>
		<row><td>Feature</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Longer descriptive text describing a visible feature item.</td></row>
		<row><td>Feature</td><td>Directory_</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>UpperCase</td><td/><td>The name of the Directory that can be configured by the UI. A non-null value will enable the browse button.</td></row>
		<row><td>Feature</td><td>Display</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Numeric sort order, used to force a specific display ordering.</td></row>
		<row><td>Feature</td><td>Feature</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular feature record.</td></row>
		<row><td>Feature</td><td>Feature_Parent</td><td>Y</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Optional key of a parent record in the same table. If the parent is not selected, then the record will not be installed. Null indicates a root item.</td></row>
		<row><td>Feature</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Comments</td></row>
		<row><td>Feature</td><td>ISFeatureCabName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Name of CAB used when compressing CABs by Feature. Used to override build generated name for CAB file.</td></row>
		<row><td>Feature</td><td>ISProFeatureName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the feature used by pro projects.  This doesn't have to be unique.</td></row>
		<row><td>Feature</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Release Flags that specify whether this  feature will be built in a particular release.</td></row>
		<row><td>Feature</td><td>Level</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The install level at which record will be initially selected. An install level of 0 will disable an item and prevent its display.</td></row>
		<row><td>Feature</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Short text identifying a visible feature item.</td></row>
		<row><td>FeatureComponents</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>FeatureComponents</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>File</td><td>Attributes</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer containing bit flags representing file attributes (with the decimal value of each bit position in parentheses)</td></row>
		<row><td>File</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file.</td></row>
		<row><td>File</td><td>File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token, must match identifier in cabinet.  For uncompressed files, this field is ignored.</td></row>
		<row><td>File</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>File name used for installation.  This may contain a "short name|long name" pair.  It may be just a long name, hence it cannot be of the Filename data type.</td></row>
		<row><td>File</td><td>FileSize</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>File</td><td>ISAttributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>This field contains the following attributes: UseSystemSettings(0x1)</td></row>
		<row><td>File</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>File</td><td>ISComponentSubFolder_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key referencing component subfolder containing this file.  Only for Pro.</td></row>
		<row><td>File</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>List of decimal language Ids, comma-separated if more than one.</td></row>
		<row><td>File</td><td>Sequence</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Sequence with respect to the media images; order must track cabinet order.</td></row>
		<row><td>File</td><td>Version</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Version</td><td/><td>Version string for versioned files;  Blank for unversioned files.</td></row>
		<row><td>FileSFPCatalog</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>File associated with the catalog</td></row>
		<row><td>FileSFPCatalog</td><td>SFPCatalog_</td><td>N</td><td/><td/><td>SFPCatalog</td><td>1</td><td>Text</td><td/><td>Catalog associated with the file</td></row>
		<row><td>Font</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, foreign key into File table referencing font file.</td></row>
		<row><td>Font</td><td>FontTitle</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Font name.</td></row>
		<row><td>ISAssistantTag</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISAssistantTag</td><td>Tag</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Color</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Duration</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Effect</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Font</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>ISBillboard</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Origin</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Sequence</td><td>N</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Style</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Target</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Display name for the chained package. Used only in the IDE.</td></row>
		<row><td>ISChainPackage</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>InstallCondition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>InstallProperties</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Options</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Order</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Package</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>ProductCode</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>RemoveCondition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>RemoveProperties</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>SourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackageData</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>ISChainPackageData</td><td>File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>ISChainPackageData</td><td>FilePath</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackageData</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>ISChainPackageData</td><td>Options</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackageData</td><td>Package_</td><td>N</td><td/><td/><td>ISChainPackage</td><td>1</td><td>Identifier</td><td/><td/></row>
		<row><td>ISClrWrap</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into CustomAction table</td></row>
		<row><td>ISClrWrap</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property associated with this Action</td></row>
		<row><td>ISClrWrap</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value associated with this Property</td></row>
		<row><td>ISComCatalogAttribute</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogAttribute</td><td>ItemName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The named attribute for a catalog object.</td></row>
		<row><td>ISComCatalogAttribute</td><td>ItemValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A value associated with the attribute defined in the ItemName column.</td></row>
		<row><td>ISComCatalogCollection</td><td>CollectionName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>A catalog collection name.</td></row>
		<row><td>ISComCatalogCollection</td><td>ISComCatalogCollection</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComCatalogCollection table.</td></row>
		<row><td>ISComCatalogCollection</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogCollectionObjects</td><td>ISComCatalogCollection_</td><td>N</td><td/><td/><td>ISComCatalogCollection</td><td>1</td><td>Identifier</td><td/><td>A unique key for the ISComCatalogCollection table.</td></row>
		<row><td>ISComCatalogCollectionObjects</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogObject</td><td>DisplayName</td><td>N</td><td/><td/><td/><td/><td/><td/><td>The display name of a catalog object.</td></row>
		<row><td>ISComCatalogObject</td><td>ISComCatalogObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplication</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table that a COM+ application belongs to.</td></row>
		<row><td>ISComPlusApplication</td><td>ComputerName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Computer name that a COM+ application belongs to.</td></row>
		<row><td>ISComPlusApplication</td><td>DepFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List of the dependent files.</td></row>
		<row><td>ISComPlusApplication</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>InstallShield custom attributes associated with a COM+ application.</td></row>
		<row><td>ISComPlusApplication</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>AlterDLL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Alternate filename of the COM+ application component. Will be used for a .NET serviced component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>CLSID</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>CLSID of the COM+ application component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>DLL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Filename of the COM+ application component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComPlusApplicationDLL</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ProgId</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>ProgId of the COM+ application component.</td></row>
		<row><td>ISComPlusProxy</td><td>Component_</td><td>Y</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table that a COM+ application proxy belongs to.</td></row>
		<row><td>ISComPlusProxy</td><td>DepFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List of the dependent files.</td></row>
		<row><td>ISComPlusProxy</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>InstallShield custom attributes associated with a COM+ application proxy.</td></row>
		<row><td>ISComPlusProxy</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table that a COM+ application proxy belongs to.</td></row>
		<row><td>ISComPlusProxy</td><td>ISComPlusProxy</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComPlusProxy table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>ISPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the dependent file.</td></row>
		<row><td>ISComPlusProxyFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusProxyFile</td><td>ISComPlusApplicationDLL_</td><td>N</td><td/><td/><td>ISComPlusApplicationDLL</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>ISPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the dependent file.</td></row>
		<row><td>ISComPlusServerFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusServerFile</td><td>ISComPlusApplicationDLL_</td><td>N</td><td/><td/><td>ISComPlusApplicationDLL</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComponentExtended</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>ISComponentExtended</td><td>FTPLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>FTP Location</td></row>
		<row><td>ISComponentExtended</td><td>FilterProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property to set if you want to filter a component</td></row>
		<row><td>ISComponentExtended</td><td>HTTPLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HTTP Location</td></row>
		<row><td>ISComponentExtended</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Language</td></row>
		<row><td>ISComponentExtended</td><td>Miscellaneous</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Miscellaneous</td></row>
		<row><td>ISComponentExtended</td><td>OS</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>bitwise addition of OSs</td></row>
		<row><td>ISComponentExtended</td><td>Platforms</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>bitwise addition of Platforms.</td></row>
		<row><td>ISCustomActionReference</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into theICustomAction table.</td></row>
		<row><td>ISCustomActionReference</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Contents of the file speciifed in ISCAReferenceFilePath. This column is only used by MSI.</td></row>
		<row><td>ISCustomActionReference</td><td>FileType</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>file type of the file specified  ISCAReferenceFilePath. This column is only used by MSI.</td></row>
		<row><td>ISCustomActionReference</td><td>ISCAReferenceFilePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.  This column only exists in ISM.</td></row>
		<row><td>ISDIMDependency</td><td>ISDIMReference_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISDIMDependency table</td></row>
		<row><td>ISDIMDependency</td><td>RequiredBuildVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the build version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredMajorVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the major version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredMinorVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the minor version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredRevisionVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the revision version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredUUID</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>the UUID identifying the required DIM</td></row>
		<row><td>ISDIMReference</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISDIMReference</td><td>ISDIMReference</td><td>N</td><td/><td/><td>ISDIMDependency</td><td>1</td><td>Identifier</td><td/><td>This is the primary key to the ISDIMReference table</td></row>
		<row><td>ISDIMReferenceDependencies</td><td>ISDIMDependency_</td><td>N</td><td/><td/><td>ISDIMDependency</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMDependency table.</td></row>
		<row><td>ISDIMReferenceDependencies</td><td>ISDIMReference_Parent</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISDIMVariable</td><td>ISDIMReference_</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISDIMVariable</td><td>ISDIMVariable</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISDIMVariable table</td></row>
		<row><td>ISDIMVariable</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of a variable defined in the .dim file</td></row>
		<row><td>ISDIMVariable</td><td>NewValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>New value that you want to override with</td></row>
		<row><td>ISDIMVariable</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type of the variable. 0: Build Variable, 1: Runtime Variable</td></row>
		<row><td>ISDLLWrapper</td><td>EntryPoint</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the target column in the CustomAction table</td></row>
		<row><td>ISDLLWrapper</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This is column points to the source file for the DLLWrapper Custom Action</td></row>
		<row><td>ISDLLWrapper</td><td>Target</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The function signature</td></row>
		<row><td>ISDLLWrapper</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type</td></row>
		<row><td>ISDependency</td><td>Exclude</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISDependency</td><td>ISDependency</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISDisk1File</td><td>Disk</td><td>Y</td><td/><td/><td/><td/><td/><td>-1;0;1</td><td>Used to differentiate between disk1(1), last disk(-1), and other(0).</td></row>
		<row><td>ISDisk1File</td><td>ISBuildSourcePath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of file to be copied to Disk1 folder</td></row>
		<row><td>ISDisk1File</td><td>ISDisk1File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for ISDisk1File table</td></row>
		<row><td>ISDynamicFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file.</td></row>
		<row><td>ISDynamicFile</td><td>ExcludeFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Wildcards for excluded files.</td></row>
		<row><td>ISDynamicFile</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3;4;5;6;7;8;9;10;11;12;13;14;15</td><td>This is used to store Installshield custom properties of a dynamic filet.  Currently the only one is SelfRegister.</td></row>
		<row><td>ISDynamicFile</td><td>IncludeFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Wildcards for included files.</td></row>
		<row><td>ISDynamicFile</td><td>IncludeFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Include flags.</td></row>
		<row><td>ISDynamicFile</td><td>SourceFolder</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISFeatureDIMReferences</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureDIMReferences</td><td>ISDIMReference_</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>Feature_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>Language</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>ModuleID</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>ISMergeModule_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>1</td><td>Text</td><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>Language_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>2</td><td/><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureSetupPrerequisites</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureSetupPrerequisites</td><td>ISSetupPrerequisites_</td><td>N</td><td/><td/><td>ISSetupPrerequisites</td><td>1</td><td/><td/><td/></row>
		<row><td>ISFileManifests</td><td>File_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into File table.</td></row>
		<row><td>ISFileManifests</td><td>Manifest_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into File table.</td></row>
		<row><td>ISIISItem</td><td>Component_</td><td>Y</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key to Component table.</td></row>
		<row><td>ISIISItem</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localizable Item Name.</td></row>
		<row><td>ISIISItem</td><td>ISIISItem</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for each item.</td></row>
		<row><td>ISIISItem</td><td>ISIISItem_Parent</td><td>Y</td><td/><td/><td>ISIISItem</td><td>1</td><td>Identifier</td><td/><td>This record's parent record.</td></row>
		<row><td>ISIISItem</td><td>Type</td><td>N</td><td/><td/><td/><td/><td/><td/><td>IIS resource type.</td></row>
		<row><td>ISIISProperty</td><td>FriendlyName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS property name.</td></row>
		<row><td>ISIISProperty</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Flags.</td></row>
		<row><td>ISIISProperty</td><td>ISIISItem_</td><td>N</td><td/><td/><td>ISIISItem</td><td>1</td><td>Identifier</td><td/><td>Primary key for table, foreign key into ISIISItem.</td></row>
		<row><td>ISIISProperty</td><td>ISIISProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for table.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property attributes.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataProp</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property ID.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property data type.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataUserType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property user data type.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS property value.</td></row>
		<row><td>ISIISProperty</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Order sequencing.</td></row>
		<row><td>ISIISProperty</td><td>Schema</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS7 schema information.</td></row>
		<row><td>ISInstallScriptAction</td><td>EntryPoint</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the target column in the CustomAction table</td></row>
		<row><td>ISInstallScriptAction</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This is column points to the source file for the DLLWrapper Custom Action</td></row>
		<row><td>ISInstallScriptAction</td><td>Target</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The function signature</td></row>
		<row><td>ISInstallScriptAction</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type</td></row>
		<row><td>ISLanguage</td><td>ISLanguage</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the language ID.</td></row>
		<row><td>ISLanguage</td><td>Included</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1</td><td>Specify whether this language should be included.</td></row>
		<row><td>ISLinkerLibrary</td><td>ISLinkerLibrary</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for the link library.</td></row>
		<row><td>ISLinkerLibrary</td><td>Library</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the object library (.obl file).</td></row>
		<row><td>ISLinkerLibrary</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Order of the Library</td></row>
		<row><td>ISLocalControl</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>ISLocalControl</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>External key to the Binary table.</td></row>
		<row><td>ISLocalControl</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Name of the control. This name must be unique within a dialog, but can repeat on different dialogs.</td></row>
		<row><td>ISLocalControl</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>External key to the Dialog table, name of the dialog.</td></row>
		<row><td>ISLocalControl</td><td>Height</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to .rtf file for scrollable text control</td></row>
		<row><td>ISLocalControl</td><td>ISLanguage_</td><td>N</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalControl</td><td>Width</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>X</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>Y</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalDialog</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this dialog.</td></row>
		<row><td>ISLocalDialog</td><td>Dialog_</td><td>Y</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>Name of the dialog.</td></row>
		<row><td>ISLocalDialog</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the dialog.</td></row>
		<row><td>ISLocalDialog</td><td>ISLanguage_</td><td>Y</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalDialog</td><td>TextStyle_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign Key into TextStyle table, only used in Script Based Projects.</td></row>
		<row><td>ISLocalDialog</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the dialog.</td></row>
		<row><td>ISLocalRadioButton</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The height of the button.</td></row>
		<row><td>ISLocalRadioButton</td><td>ISLanguage_</td><td>N</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalRadioButton</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td>RadioButton</td><td>2</td><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ISLocalRadioButton</td><td>Property</td><td>N</td><td/><td/><td>RadioButton</td><td>1</td><td>Identifier</td><td/><td>A named property to be tied to this radio button. All the buttons tied to the same property become part of the same group.</td></row>
		<row><td>ISLocalRadioButton</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The width of the button.</td></row>
		<row><td>ISLocalRadioButton</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The horizontal coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>ISLocalRadioButton</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The vertical coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>ISLockPermissions</td><td>Attributes</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permissions attributes mask, 1==Deny access; 2==No inherit, 4==Ignore apply failures, 8==Target object is 64-bit</td></row>
		<row><td>ISLockPermissions</td><td>Domain</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Domain name for user whose permissions are being set.</td></row>
		<row><td>ISLockPermissions</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into CreateFolder, Registry, or File table</td></row>
		<row><td>ISLockPermissions</td><td>Permission</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permission Access mask.</td></row>
		<row><td>ISLockPermissions</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>CreateFolder;File;Registry</td><td>Reference to another table name</td></row>
		<row><td>ISLockPermissions</td><td>User</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>User for permissions to be set. This can be a property, hardcoded named, or SID string</td></row>
		<row><td>ISLogicalDisk</td><td>Cabinet</td><td>Y</td><td/><td/><td/><td/><td>Cabinet</td><td/><td>If some or all of the files stored on the media are compressed in a cabinet, the name of that cabinet.</td></row>
		<row><td>ISLogicalDisk</td><td>DiskId</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Primary key, integer to determine sort order for table.</td></row>
		<row><td>ISLogicalDisk</td><td>DiskPrompt</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk name: the visible text actually printed on the disk.  This will be used to prompt the user when this disk needs to be inserted.</td></row>
		<row><td>ISLogicalDisk</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISLogicalDisk</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISLogicalDisk</td><td>LastSequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the last file for this media.</td></row>
		<row><td>ISLogicalDisk</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>Property</td><td/><td>The property defining the location of the cabinet file.</td></row>
		<row><td>ISLogicalDisk</td><td>VolumeLabel</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The label attributed to the volume.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>Feature_</td><td>Y</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table,</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties, like Compressed, etc.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISLogicalDisk_</td><td>N</td><td>1</td><td>32767</td><td>ISLogicalDisk</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISLogicalDisk table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>Sequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the file for this media.</td></row>
		<row><td>ISMergeModule</td><td>Destination</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Destination.</td></row>
		<row><td>ISMergeModule</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a merge module.</td></row>
		<row><td>ISMergeModule</td><td>ISMergeModule</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The GUID identifying the merge module.</td></row>
		<row><td>ISMergeModule</td><td>Language</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Default decimal language of module.</td></row>
		<row><td>ISMergeModule</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the merge module.</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Attributes (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ContextData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>ContextData  (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>DefaultValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>DefaultValue  (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>DisplayName (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Format</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Format (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>HelpKeyword</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HelpKeyword (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>HelpLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HelpLocation (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ISMergeModule_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>1</td><td>Text</td><td/><td>The module signature, a foreign key into the ISMergeModule table</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Language_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>2</td><td/><td/><td>Default decimal language of module.</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ModuleConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Identifier, foreign key into ModuleConfiguration table (ModuleConfiguration.Name)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Type (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for this item.</td></row>
		<row><td>ISObject</td><td>Language</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObject</td><td>ObjectName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>IncludeInBuild</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Boolean, 0 for false non 0 for true</td></row>
		<row><td>ISObjectProperty</td><td>ObjectName</td><td>Y</td><td/><td/><td>ISObject</td><td>1</td><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISPatchConfigImage</td><td>PatchConfiguration_</td><td>Y</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISPatchConfigurationTable</td></row>
		<row><td>ISPatchConfigImage</td><td>UpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISUpgradedImageTable</td></row>
		<row><td>ISPatchConfiguration</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>PatchConfiguration attributes</td></row>
		<row><td>ISPatchConfiguration</td><td>CanPCDiffer</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether Product Codes may differ</td></row>
		<row><td>ISPatchConfiguration</td><td>CanPVDiffer</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether the Major Product Version may differ</td></row>
		<row><td>ISPatchConfiguration</td><td>EnablePatchCache</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to Enable Patch cacheing</td></row>
		<row><td>ISPatchConfiguration</td><td>Flags</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Patching API Flags</td></row>
		<row><td>ISPatchConfiguration</td><td>IncludeWholeFiles</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to build a binary level patch</td></row>
		<row><td>ISPatchConfiguration</td><td>LeaveDecompressed</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to leave intermediate files devcompressed when finished</td></row>
		<row><td>ISPatchConfiguration</td><td>MinMsiVersion</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Minimum Required MSI Version</td></row>
		<row><td>ISPatchConfiguration</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the Patch Configuration</td></row>
		<row><td>ISPatchConfiguration</td><td>OptimizeForSize</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to Optimize for large files</td></row>
		<row><td>ISPatchConfiguration</td><td>OutputPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Build Location</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchCacheDir</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Directory to recieve the Patch Cache information</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchGuid</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Unique Patch Identifier</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchGuidsToReplace</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List Of Patch Guids to unregister</td></row>
		<row><td>ISPatchConfiguration</td><td>TargetProductCodes</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>List Of target Product Codes</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>ISPatchConfiguration_</td><td>Y</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Name of the Patch Configuration</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the Patch Configuration Property value</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value of the Patch Configuration Property</td></row>
		<row><td>ISPatchExternalFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Filekey</td></row>
		<row><td>ISPatchExternalFile</td><td>FilePath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Filepath</td></row>
		<row><td>ISPatchExternalFile</td><td>ISUpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to the isupgraded image table</td></row>
		<row><td>ISPatchExternalFile</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Uniqu name to identify this record.</td></row>
		<row><td>ISPatchWholeFile</td><td>Component</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Component containing file key</td></row>
		<row><td>ISPatchWholeFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Key of file to be included as whole</td></row>
		<row><td>ISPatchWholeFile</td><td>UpgradedImage</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to ISUpgradedImage Table</td></row>
		<row><td>ISPathVariable</td><td>ISPathVariable</td><td>N</td><td/><td/><td/><td/><td/><td/><td>The name of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>TestValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The test value of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>Type</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;4;8</td><td>The type of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The value of the path variable.</td></row>
		<row><td>ISProductConfiguration</td><td>GeneratePackageCode</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td>0;1</td><td>Indicates whether or not to generate a package code.</td></row>
		<row><td>ISProductConfiguration</td><td>ISProductConfiguration</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the product configuration.</td></row>
		<row><td>ISProductConfiguration</td><td>ProductConfigurationFlags</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Product configuration (release) flags.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>InstanceId</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Identifies the instance number of this instance. This value is stored in the Property InstanceId.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Product Congiuration property name</td></row>
		<row><td>ISProductConfigurationInstance</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>ISProductConfigurationProperty</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISProductConfigurationProperty</td><td>Property</td><td>N</td><td/><td/><td>Property</td><td>1</td><td>Text</td><td/><td>Product Congiuration property name</td></row>
		<row><td>ISProductConfigurationProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property. Never null or empty.</td></row>
		<row><td>ISRelease</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding boolean values for various release attributes.</td></row>
		<row><td>ISRelease</td><td>BuildLocation</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Build location.</td></row>
		<row><td>ISRelease</td><td>CDBrowser</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Demoshield browser location.</td></row>
		<row><td>ISRelease</td><td>DefaultLanguage</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Default language for setup.</td></row>
		<row><td>ISRelease</td><td>DigitalPVK</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing private key (.pvk) file.</td></row>
		<row><td>ISRelease</td><td>DigitalSPC</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing Software Publisher Certificate (.spc) file.</td></row>
		<row><td>ISRelease</td><td>DigitalURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing URL.</td></row>
		<row><td>ISRelease</td><td>DiskClusterSize</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Disk cluster size.</td></row>
		<row><td>ISRelease</td><td>DiskSize</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk size.</td></row>
		<row><td>ISRelease</td><td>DiskSizeUnit</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2</td><td>Disk size units (KB or MB).</td></row>
		<row><td>ISRelease</td><td>DiskSpanning</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2</td><td>Disk spanning (automatic, enforce size, etc.).</td></row>
		<row><td>ISRelease</td><td>DotNetBuildConfiguration</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Build Configuration for .NET solutions.</td></row>
		<row><td>ISRelease</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISRelease</td><td>ISRelease</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISRelease</td><td>ISSetupPrerequisiteLocation</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3</td><td>Location the Setup Prerequisites will be placed in</td></row>
		<row><td>ISRelease</td><td>MediaLocation</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Media location on disk.</td></row>
		<row><td>ISRelease</td><td>MsiCommandLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command line passed to the msi package from setup.exe</td></row>
		<row><td>ISRelease</td><td>MsiSourceType</td><td>N</td><td>-1</td><td>4</td><td/><td/><td/><td/><td>MSI media source type.</td></row>
		<row><td>ISRelease</td><td>PackageName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Package name.</td></row>
		<row><td>ISRelease</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Password.</td></row>
		<row><td>ISRelease</td><td>Platforms</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Platforms supported (Intel, Alpha, etc.).</td></row>
		<row><td>ISRelease</td><td>ReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Release flags.</td></row>
		<row><td>ISRelease</td><td>ReleaseType</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;4</td><td>Release type (single, uncompressed, etc.).</td></row>
		<row><td>ISRelease</td><td>SupportedLanguagesData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Languages supported (for component filtering).</td></row>
		<row><td>ISRelease</td><td>SupportedLanguagesUI</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>UI languages supported.</td></row>
		<row><td>ISRelease</td><td>SupportedOSs</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Indicate which operating systmes are supported.</td></row>
		<row><td>ISRelease</td><td>SynchMsi</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>MSI file to synchronize file keys and other data with (patch-like functionality).</td></row>
		<row><td>ISRelease</td><td>Type</td><td>N</td><td>0</td><td>6</td><td/><td/><td/><td/><td>Release type (CDROM, Network, etc.).</td></row>
		<row><td>ISRelease</td><td>URLLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Media location via URL.</td></row>
		<row><td>ISRelease</td><td>VersionCopyright</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Version stamp information.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>AS Repository property name</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>AS Repository property value</td></row>
		<row><td>ISReleaseExtended</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding boolean values for various release attributes.</td></row>
		<row><td>ISReleaseExtended</td><td>CertPassword</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital certificate password</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificateDBaseNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to cerificate database for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificateIdNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to cerificate ID for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificatePasswordNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Password for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetBaseLanguage</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Base Languge of .NET Redist</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetFxCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to DotNetFx.exe</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetLangPackCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to LangPack.exe</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetLangaugePacks</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>.NET Redist language packs to include</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetRedistLocation</td><td>Y</td><td>0</td><td>3</td><td/><td/><td/><td/><td>Location of .NET framework Redist (Web, SetupExe, Source, None)</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetRedistURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to .NET framework Redist</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetVersion</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Version of .NET framework Redist (1.0, 1.1)</td></row>
		<row><td>ISReleaseExtended</td><td>EngineLocation</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Location of msi engine (Web, SetupExe...)</td></row>
		<row><td>ISReleaseExtended</td><td>ISEngineLocation</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Location of ISScript  engine (Web, SetupExe...)</td></row>
		<row><td>ISReleaseExtended</td><td>ISEngineURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to InstallShield scripting engine</td></row>
		<row><td>ISReleaseExtended</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleaseExtended</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISReleaseExtended</td><td>JSharpCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to vjredist.exe</td></row>
		<row><td>ISReleaseExtended</td><td>JSharpRedistLocation</td><td>Y</td><td>0</td><td>3</td><td/><td/><td/><td/><td>Location of J# framework Redist (Web, SetupExe, Source, None)</td></row>
		<row><td>ISReleaseExtended</td><td>MsiEngineVersion</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding selected MSI engine versions included in this release</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickCabName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File name of generated cabfile</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickHtmlName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File name of generated html page</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickTargetBrowser</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Target browser (IE, Netscape, both...)</td></row>
		<row><td>ISReleaseExtended</td><td>WebCabSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of the cabfile</td></row>
		<row><td>ISReleaseExtended</td><td>WebLocalCachePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Directory to cache downloaded package</td></row>
		<row><td>ISReleaseExtended</td><td>WebType</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Type of web install (One Executable, Downloader...)</td></row>
		<row><td>ISReleaseExtended</td><td>WebURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to .msi package</td></row>
		<row><td>ISReleaseExtended</td><td>Win9xMsiUrl</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to Ansi MSI engine</td></row>
		<row><td>ISReleaseExtended</td><td>WinMsi30Url</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to MSI 3.0 engine</td></row>
		<row><td>ISReleaseExtended</td><td>WinNTMsiUrl</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to Unicode MSI engine</td></row>
		<row><td>ISReleaseProperty</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISProductConfiguration table.</td></row>
		<row><td>ISReleaseProperty</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISRelease table.</td></row>
		<row><td>ISReleaseProperty</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property name</td></row>
		<row><td>ISReleaseProperty</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISReleasePublishInfo</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item description</td></row>
		<row><td>ISReleasePublishInfo</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item display name</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding various attributes</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISReleasePublishInfo</td><td>Publisher</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item publisher</td></row>
		<row><td>ISReleasePublishInfo</td><td>Repository</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository which to  publish the built merge module</td></row>
		<row><td>ISSQLConnection</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Authentication</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>BatchSeparator</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>CmdTimeout</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Database</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ISSQLConnection</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLConnection record.</td></row>
		<row><td>ISSQLConnection</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Password</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ScriptVersion_Column</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ScriptVersion_Table</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Server</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>UserName</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLConnectionDBServer</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLConnectionDBServer record.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLDBMetaData_</td><td>N</td><td/><td/><td>ISSQLDBMetaData</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLDBMetaData table.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnectionScript</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLConnectionScript</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLConnectionScript</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnAdditional</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnDatabase</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnDriver</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnNetLibrary</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnPassword</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnPort</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnServer</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnUserID</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnWindowsSecurity</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoDriverName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>CreateDbCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>CreateTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>DsnODBCName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ISSQLDBMetaData</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLDBMetaData record.</td></row>
		<row><td>ISSQLDBMetaData</td><td>InsertRecordCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>LocalInstanceNames</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>QueryDatabasesCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_Column</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_ColumnType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_Table</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>SelectTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>SwitchDbCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestDatabaseCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestTableCmd2</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionBeginToken</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionEndToken</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionInfoCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>WinAuthentUserId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>ISSQLConnectionDBServer_</td><td>Y</td><td/><td/><td>ISSQLConnectionDBServer</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnectionDBServer table.</td></row>
		<row><td>ISSQLRequirement</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLRequirement</td><td>ISSQLRequirement</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLRequirement record.</td></row>
		<row><td>ISSQLRequirement</td><td>MajorVersion</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>ServicePackLevel</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ErrHandling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ErrNumber</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ISSQLScriptFile_</td><td>Y</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table</td></row>
		<row><td>ISSQLScriptError</td><td>Message</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Custom end-user message. Reserved for future use.</td></row>
		<row><td>ISSQLScriptFile</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Comments</td></row>
		<row><td>ISSQLScriptFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the SQL script.</td></row>
		<row><td>ISSQLScriptFile</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A conditional statement that will disable this script if the specified condition evaluates to the 'False' state. If a script is disabled, it will not be installed regardless of the 'Action' state associated with the component.</td></row>
		<row><td>ISSQLScriptFile</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Display name for the SQL script file.</td></row>
		<row><td>ISSQLScriptFile</td><td>ErrorHandling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISSQLScriptFile</td><td>ISSQLScriptFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISSQLScriptFile table</td></row>
		<row><td>ISSQLScriptFile</td><td>InstallText</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Feedback end-user text at install</td></row>
		<row><td>ISSQLScriptFile</td><td>Scheduling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>UninstallText</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Feedback end-user text at Uninstall</td></row>
		<row><td>ISSQLScriptFile</td><td>Version</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Schema Version (#####.#####.#####.#####)</td></row>
		<row><td>ISSQLScriptImport</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Authentication</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Database</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>ExcludeTables</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLScriptImport</td><td>IncludeTables</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Server</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>UserName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLScriptReplace</td><td>ISSQLScriptReplace</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLScriptReplace record.</td></row>
		<row><td>ISSQLScriptReplace</td><td>Replace</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>Search</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISScriptFile</td><td>ISScriptFile</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the full path of the script file. The path portion may be expressed in path variable form.</td></row>
		<row><td>ISSelfReg</td><td>CmdLine</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSelfReg</td><td>Cost</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSelfReg</td><td>FileKey</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key to the file table</td></row>
		<row><td>ISSelfReg</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupFile</td><td>FileName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the file name to use when streaming the file to the support files location</td></row>
		<row><td>ISSetupFile</td><td>ISSetupFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISSetupFile table</td></row>
		<row><td>ISSetupFile</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Four digit language identifier.  0 for Language Neutral</td></row>
		<row><td>ISSetupFile</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Link to the source file on the build machine</td></row>
		<row><td>ISSetupFile</td><td>Splash</td><td>Y</td><td/><td/><td/><td/><td>Short</td><td/><td>Boolean value indication whether his setup file entry belongs in the Splasc Screen section</td></row>
		<row><td>ISSetupFile</td><td>Stream</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The bits to stream to the support location</td></row>
		<row><td>ISSetupPrerequisites</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupPrerequisites</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Release Flags that specify whether this prereq  will be included in a particular release.</td></row>
		<row><td>ISSetupPrerequisites</td><td>ISSetupLocation</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2</td><td/></row>
		<row><td>ISSetupPrerequisites</td><td>ISSetupPrerequisites</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupPrerequisites</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupType</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>ISSetupType</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Longer descriptive text describing a visible feature item.</td></row>
		<row><td>ISSetupType</td><td>Display</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Numeric sort order, used to force a specific display ordering.</td></row>
		<row><td>ISSetupType</td><td>Display_Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>ISSetupType</td><td>ISSetupType</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular feature record.</td></row>
		<row><td>ISSetupTypeFeatures</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISSetupTypeFeatures</td><td>ISSetupType_</td><td>N</td><td/><td/><td>ISSetupType</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSetupType table.</td></row>
		<row><td>ISStorages</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Path to the file to stream into sub-storage</td></row>
		<row><td>ISStorages</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Name of the sub-storage key</td></row>
		<row><td>ISString</td><td>Comment</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Comment</td></row>
		<row><td>ISString</td><td>Encoded</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Encoding for multi-byte strings.</td></row>
		<row><td>ISString</td><td>ISLanguage_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISString</td><td>ISString</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>String id.</td></row>
		<row><td>ISString</td><td>TimeStamp</td><td>Y</td><td/><td/><td/><td/><td>Time/Date</td><td/><td>Time Stamp. MSI's Time/Date column type is just an int, with bits packed in a certain order.</td></row>
		<row><td>ISString</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>real string value.</td></row>
		<row><td>ISSwidtagProperty</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISSwidtagProperty</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property value</td></row>
		<row><td>ISTargetImage</td><td>Flags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>relative order of the target image</td></row>
		<row><td>ISTargetImage</td><td>IgnoreMissingFiles</td><td>N</td><td/><td/><td/><td/><td/><td/><td>If true, ignore missing source files when creating patch</td></row>
		<row><td>ISTargetImage</td><td>MsiPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to the target image</td></row>
		<row><td>ISTargetImage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the TargetImage</td></row>
		<row><td>ISTargetImage</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td>relative order of the target image</td></row>
		<row><td>ISTargetImage</td><td>UpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>foreign key to the upgraded Image table</td></row>
		<row><td>ISUpgradeMsiItem</td><td>ISAttributes</td><td>N</td><td/><td/><td/><td/><td/><td>0;1</td><td/></row>
		<row><td>ISUpgradeMsiItem</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISUpgradeMsiItem</td><td>ObjectSetupPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The path to the setup you want to upgrade.</td></row>
		<row><td>ISUpgradeMsiItem</td><td>UpgradeItem</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the Upgrade Item.</td></row>
		<row><td>ISUpgradedImage</td><td>Family</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the image family</td></row>
		<row><td>ISUpgradedImage</td><td>MsiPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to the upgraded image</td></row>
		<row><td>ISUpgradedImage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the UpgradedImage</td></row>
		<row><td>ISVirtualDirectory</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Directory table.</td></row>
		<row><td>ISVirtualDirectory</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualDirectory</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File  table.</td></row>
		<row><td>ISVirtualFile</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualFile</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualPackage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualPackage</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualRegistry</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualRegistry</td><td>Registry_</td><td>N</td><td/><td/><td>Registry</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Registry table.</td></row>
		<row><td>ISVirtualRegistry</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualRelease</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISProductConfiguration table.</td></row>
		<row><td>ISVirtualRelease</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISRelease table.</td></row>
		<row><td>ISVirtualRelease</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property name</td></row>
		<row><td>ISVirtualRelease</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualShortcut</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualShortcut</td><td>Shortcut_</td><td>N</td><td/><td/><td>Shortcut</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Shortcut table.</td></row>
		<row><td>ISVirtualShortcut</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISWSEWrap</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into CustomAction table</td></row>
		<row><td>ISWSEWrap</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property associated with this Action</td></row>
		<row><td>ISWSEWrap</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value associated with this Property</td></row>
		<row><td>ISXmlElement</td><td>Content</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Element contents</td></row>
		<row><td>ISXmlElement</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML element attributes</td></row>
		<row><td>ISXmlElement</td><td>ISXmlElement</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized, internal token for Xml element</td></row>
		<row><td>ISXmlElement</td><td>ISXmlElement_Parent</td><td>Y</td><td/><td/><td>ISXmlElement</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISXMLElement table.</td></row>
		<row><td>ISXmlElement</td><td>ISXmlFile_</td><td>N</td><td/><td/><td>ISXmlFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into XmlFile table.</td></row>
		<row><td>ISXmlElement</td><td>XPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>XPath fragment including any operators</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML elementattib attributes</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISXmlElementAttrib</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized, internal token for Xml element attribute</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISXmlElement_</td><td>N</td><td/><td/><td>ISXmlElement</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISXMLElement table.</td></row>
		<row><td>ISXmlElementAttrib</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized attribute name</td></row>
		<row><td>ISXmlElementAttrib</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized attribute value</td></row>
		<row><td>ISXmlFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>ISXmlFile</td><td>Directory</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Directory table.</td></row>
		<row><td>ISXmlFile</td><td>Encoding</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>XML File Encoding</td></row>
		<row><td>ISXmlFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized XML file name</td></row>
		<row><td>ISXmlFile</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML file attributes</td></row>
		<row><td>ISXmlFile</td><td>ISXmlFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized,internal token for Xml file</td></row>
		<row><td>ISXmlFile</td><td>SelectionNamespaces</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Selection namespaces</td></row>
		<row><td>ISXmlLocator</td><td>Attribute</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>The name of an attribute within the XML element.</td></row>
		<row><td>ISXmlLocator</td><td>Element</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>XPath query that will locate an element in an XML file.</td></row>
		<row><td>ISXmlLocator</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2</td><td/></row>
		<row><td>ISXmlLocator</td><td>Parent</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The parent file signature. It is also a foreign key in the Signature table.</td></row>
		<row><td>ISXmlLocator</td><td>Signature_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, ISXmlLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>Icon</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>Icon</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>Icon</td><td>ISIconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index to be extracted.</td></row>
		<row><td>Icon</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key. Name of the icon file.</td></row>
		<row><td>IniFile</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;3</td><td>The type of modification to be made, one of iifEnum</td></row>
		<row><td>IniFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the .INI value.</td></row>
		<row><td>IniFile</td><td>DirProperty</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the .INI file is.</td></row>
		<row><td>IniFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name in which to write the information</td></row>
		<row><td>IniFile</td><td>IniFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>IniFile</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file key below Section.</td></row>
		<row><td>IniFile</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file Section.</td></row>
		<row><td>IniFile</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to be written.</td></row>
		<row><td>IniLocator</td><td>Field</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The field in the .INI line. If Field is null or 0 the entire line is read.</td></row>
		<row><td>IniLocator</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name.</td></row>
		<row><td>IniLocator</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Key value (followed by an equals sign in INI file).</td></row>
		<row><td>IniLocator</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Section name within in file (within square brackets in INI file).</td></row>
		<row><td>IniLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>IniLocator</td><td>Type</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>An integer value that determines if the .INI value read is a filename or a directory location or to be used as is w/o interpretation.</td></row>
		<row><td>InstallExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>InstallExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>InstallExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>InstallExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>InstallExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>InstallShield</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property, uppercase if settable by launcher or loader.</td></row>
		<row><td>InstallShield</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>InstallUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>InstallUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>InstallUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>InstallUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>InstallUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>IsolatedComponent</td><td>Component_Application</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Key to Component table item for application</td></row>
		<row><td>IsolatedComponent</td><td>Component_Shared</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Key to Component table item to be isolated</td></row>
		<row><td>LaunchCondition</td><td>Condition</td><td>N</td><td/><td/><td/><td/><td>Condition</td><td/><td>Expression which must evaluate to TRUE in order for install to commence.</td></row>
		<row><td>LaunchCondition</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Localizable text to display when condition fails and install must abort.</td></row>
		<row><td>ListBox</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ListBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same listbox.</td></row>
		<row><td>ListBox</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ListBox</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>ListView</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>The name of the icon to be displayed with the icon. The binary information is looked up from the Binary Table.</td></row>
		<row><td>ListView</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ListView</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same listview.</td></row>
		<row><td>ListView</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ListView</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>LockPermissions</td><td>Domain</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Domain name for user whose permissions are being set. (usually a property)</td></row>
		<row><td>LockPermissions</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Registry or File table</td></row>
		<row><td>LockPermissions</td><td>Permission</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permission Access mask.  Full Control = 268435456 (GENERIC_ALL = 0x10000000)</td></row>
		<row><td>LockPermissions</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>Directory;File;Registry</td><td>Reference to another table name</td></row>
		<row><td>LockPermissions</td><td>User</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>User for permissions to be set.  (usually a property)</td></row>
		<row><td>MIME</td><td>CLSID</td><td>Y</td><td/><td/><td>Class</td><td>1</td><td>Guid</td><td/><td>Optional associated CLSID.</td></row>
		<row><td>MIME</td><td>ContentType</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Primary key. Context identifier, typically "type/format".</td></row>
		<row><td>MIME</td><td>Extension_</td><td>N</td><td/><td/><td>Extension</td><td>1</td><td>Text</td><td/><td>Optional associated extension (without dot)</td></row>
		<row><td>Media</td><td>Cabinet</td><td>Y</td><td/><td/><td/><td/><td>Cabinet</td><td/><td>If some or all of the files stored on the media are compressed in a cabinet, the name of that cabinet.</td></row>
		<row><td>Media</td><td>DiskId</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Primary key, integer to determine sort order for table.</td></row>
		<row><td>Media</td><td>DiskPrompt</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk name: the visible text actually printed on the disk.  This will be used to prompt the user when this disk needs to be inserted.</td></row>
		<row><td>Media</td><td>LastSequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the last file for this media.</td></row>
		<row><td>Media</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>Property</td><td/><td>The property defining the location of the cabinet file.</td></row>
		<row><td>Media</td><td>VolumeLabel</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The label attributed to the volume.</td></row>
		<row><td>MoveFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>If this component is not "selected" for installation or removal, no action will be taken on the associated MoveFile entry</td></row>
		<row><td>MoveFile</td><td>DestFolder</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the destination directory</td></row>
		<row><td>MoveFile</td><td>DestName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name to be given to the original file after it is moved or copied.  If blank, the destination file will be given the same name as the source file</td></row>
		<row><td>MoveFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key that uniquely identifies a particular MoveFile record</td></row>
		<row><td>MoveFile</td><td>Options</td><td>N</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Integer value specifying the MoveFile operating mode, one of imfoEnum</td></row>
		<row><td>MoveFile</td><td>SourceFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the source directory</td></row>
		<row><td>MoveFile</td><td>SourceName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the source file(s) to be moved or copied.  Can contain the '*' or '?' wildcards.</td></row>
		<row><td>MsiAssembly</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Assembly attributes</td></row>
		<row><td>MsiAssembly</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>MsiAssembly</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>MsiAssembly</td><td>File_Application</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File table, denoting the application context for private assemblies. Null for global assemblies.</td></row>
		<row><td>MsiAssembly</td><td>File_Manifest</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the manifest file for the assembly.</td></row>
		<row><td>MsiAssemblyName</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>MsiAssemblyName</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name part of the name-value pairs for the assembly name.</td></row>
		<row><td>MsiAssemblyName</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The value part of the name-value pairs for the assembly name.</td></row>
		<row><td>MsiDigitalCertificate</td><td>CertData</td><td>N</td><td/><td/><td/><td/><td>Binary</td><td/><td>A certificate context blob for a signer certificate</td></row>
		<row><td>MsiDigitalCertificate</td><td>DigitalCertificate</td><td>N</td><td/><td/><td>MsiPackageCertificate</td><td>2</td><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiDigitalSignature</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td>MsiDigitalCertificate</td><td>1</td><td>Identifier</td><td/><td>Foreign key to MsiDigitalCertificate table identifying the signer certificate</td></row>
		<row><td>MsiDigitalSignature</td><td>Hash</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>The encoded hash blob from the digital signature</td></row>
		<row><td>MsiDigitalSignature</td><td>SignObject</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key to Media table</td></row>
		<row><td>MsiDigitalSignature</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Reference to another table name (only Media table is supported)</td></row>
		<row><td>MsiDriverPackages</td><td>Component</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>MsiDriverPackages</td><td>Flags</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Driver package flags</td></row>
		<row><td>MsiDriverPackages</td><td>ReferenceComponents</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiDriverPackages</td><td>Sequence</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Installation sequence number</td></row>
		<row><td>MsiEmbeddedChainer</td><td>CommandLine</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>MsiEmbeddedChainer</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>CustomSource</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td>Integer</td><td>2;18;50</td><td/></row>
		<row><td>MsiEmbeddedUI</td><td>Attributes</td><td>N</td><td>0</td><td>3</td><td/><td/><td>Integer</td><td/><td>Information about the data in the Data column.</td></row>
		<row><td>MsiEmbeddedUI</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>This column contains binary information.</td></row>
		<row><td>MsiEmbeddedUI</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Filename</td><td/><td>The name of the file that receives the binary information in the Data column.</td></row>
		<row><td>MsiEmbeddedUI</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>MsiEmbeddedUI</td><td>MessageFilter</td><td>Y</td><td>0</td><td>234913791</td><td/><td/><td>Integer</td><td/><td>Specifies the types of messages that are sent to the user interface DLL. This column is only relevant for rows with the msidbEmbeddedUI attribute.</td></row>
		<row><td>MsiEmbeddedUI</td><td>MsiEmbeddedUI</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The primary key for the table.</td></row>
		<row><td>MsiFileHash</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, foreign key into File table referencing file with this hash</td></row>
		<row><td>MsiFileHash</td><td>HashPart1</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart2</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart3</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart4</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>Options</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Various options and attributes for this hash.</td></row>
		<row><td>MsiLockPermissionsEx</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Expression which must evaluate to TRUE in order for this set of permissions to be applied</td></row>
		<row><td>MsiLockPermissionsEx</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Registry, File, CreateFolder, or ServiceInstall table</td></row>
		<row><td>MsiLockPermissionsEx</td><td>MsiLockPermissionsEx</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiLockPermissionsEx</td><td>SDDLText</td><td>N</td><td/><td/><td/><td/><td>FormattedSDDLText</td><td/><td>String to indicate permissions to be applied to the LockObject</td></row>
		<row><td>MsiLockPermissionsEx</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>CreateFolder;File;Registry;ServiceInstall</td><td>Reference to another table name</td></row>
		<row><td>MsiPackageCertificate</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A foreign key to the digital certificate table</td></row>
		<row><td>MsiPackageCertificate</td><td>PackageCertificate</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiPatchCertificate</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td>MsiDigitalCertificate</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the digital certificate table</td></row>
		<row><td>MsiPatchCertificate</td><td>PatchCertificate</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiPatchMetadata</td><td>Company</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Optional company name</td></row>
		<row><td>MsiPatchMetadata</td><td>PatchConfiguration_</td><td>N</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISPatchConfiguration table</td></row>
		<row><td>MsiPatchMetadata</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the metadata</td></row>
		<row><td>MsiPatchMetadata</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value of the metadata</td></row>
		<row><td>MsiPatchOldAssemblyFile</td><td>Assembly_</td><td>Y</td><td/><td/><td>MsiPatchOldAssemblyName</td><td>1</td><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Assembly</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchSequence</td><td>PatchConfiguration_</td><td>N</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the patch configuration table</td></row>
		<row><td>MsiPatchSequence</td><td>PatchFamily</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the family to which this patch belongs</td></row>
		<row><td>MsiPatchSequence</td><td>Sequence</td><td>N</td><td/><td/><td/><td/><td>Version</td><td/><td>The version of this patch in this family</td></row>
		<row><td>MsiPatchSequence</td><td>Supersede</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td>Supersede</td></row>
		<row><td>MsiPatchSequence</td><td>Target</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Target product codes for this patch family</td></row>
		<row><td>MsiServiceConfig</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Argument(s) for service configuration. Value depends on the content of the ConfigType field</td></row>
		<row><td>MsiServiceConfig</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the configuration of the service</td></row>
		<row><td>MsiServiceConfig</td><td>ConfigType</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Service Configuration Option</td></row>
		<row><td>MsiServiceConfig</td><td>Event</td><td>N</td><td>0</td><td>7</td><td/><td/><td/><td/><td>Bit field:   0x1 = Install, 0x2 = Uninstall, 0x4 = Reinstall</td></row>
		<row><td>MsiServiceConfig</td><td>MsiServiceConfig</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>MsiServiceConfig</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Actions</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A list of integer actions separated by [~] delimiters: 0 = SC_ACTION_NONE, 1 = SC_ACTION_RESTART, 2 = SC_ACTION_REBOOT, 3 = SC_ACTION_RUN_COMMAND. Terminate with [~][~]</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Command</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Command line of the process to CreateProcess function to execute</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the configuration of the service</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>DelayActions</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A list of delays (time in milli-seconds), separated by [~] delmiters, to wait before taking the corresponding Action. Terminate with [~][~]</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Event</td><td>N</td><td>0</td><td>7</td><td/><td/><td/><td/><td>Bit field:   0x1 = Install, 0x2 = Uninstall, 0x4 = Reinstall</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>MsiServiceConfigFailureActions</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>RebootMessage</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Message to be broadcast to server users before rebooting</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>ResetPeriod</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Time in seconds after which to reset the failure count to zero. Leave blank if it should never be reset</td></row>
		<row><td>MsiShortcutProperty</td><td>MsiShortcutProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiShortcutProperty</td><td>PropVariantValue</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>String representation of the value in the property</td></row>
		<row><td>MsiShortcutProperty</td><td>PropertyKey</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Canonical string representation of the Property Key being set</td></row>
		<row><td>MsiShortcutProperty</td><td>Shortcut_</td><td>N</td><td/><td/><td>Shortcut</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Shortcut table</td></row>
		<row><td>ODBCAttribute</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of ODBC driver attribute</td></row>
		<row><td>ODBCAttribute</td><td>Driver_</td><td>N</td><td/><td/><td>ODBCDriver</td><td>1</td><td>Identifier</td><td/><td>Reference to ODBC driver in ODBCDriver table</td></row>
		<row><td>ODBCAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for ODBC driver attribute</td></row>
		<row><td>ODBCDataSource</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCDataSource</td><td>DataSource</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for data source</td></row>
		<row><td>ODBCDataSource</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for data source</td></row>
		<row><td>ODBCDataSource</td><td>DriverDescription</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Reference to driver description, may be existing driver</td></row>
		<row><td>ODBCDataSource</td><td>Registration</td><td>N</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Registration option: 0=machine, 1=user, others t.b.d.</td></row>
		<row><td>ODBCDriver</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCDriver</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for driver, non-localized</td></row>
		<row><td>ODBCDriver</td><td>Driver</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for driver</td></row>
		<row><td>ODBCDriver</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Reference to key driver file</td></row>
		<row><td>ODBCDriver</td><td>File_Setup</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Optional reference to key driver setup DLL</td></row>
		<row><td>ODBCSourceAttribute</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of ODBC data source attribute</td></row>
		<row><td>ODBCSourceAttribute</td><td>DataSource_</td><td>N</td><td/><td/><td>ODBCDataSource</td><td>1</td><td>Identifier</td><td/><td>Reference to ODBC data source in ODBCDataSource table</td></row>
		<row><td>ODBCSourceAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for ODBC data source attribute</td></row>
		<row><td>ODBCTranslator</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCTranslator</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for translator</td></row>
		<row><td>ODBCTranslator</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Reference to key translator file</td></row>
		<row><td>ODBCTranslator</td><td>File_Setup</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Optional reference to key translator setup DLL</td></row>
		<row><td>ODBCTranslator</td><td>Translator</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for translator</td></row>
		<row><td>Patch</td><td>Attributes</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer containing bit flags representing patch attributes</td></row>
		<row><td>Patch</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, non-localized token, foreign key to File table, must match identifier in cabinet.</td></row>
		<row><td>Patch</td><td>Header</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The patch header, used for patch validation.</td></row>
		<row><td>Patch</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to patch header.</td></row>
		<row><td>Patch</td><td>PatchSize</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of patch in bytes (long integer).</td></row>
		<row><td>Patch</td><td>Sequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Primary key, sequence with respect to the media images; order must track cabinet order.</td></row>
		<row><td>Patch</td><td>StreamRef_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>External key into the MsiPatchHeaders table specifying the row that contains the patch header stream.</td></row>
		<row><td>PatchPackage</td><td>Media_</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Foreign key to DiskId column of Media table. Indicates the disk containing the patch package.</td></row>
		<row><td>PatchPackage</td><td>PatchId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A unique string GUID representing this patch.</td></row>
		<row><td>ProgId</td><td>Class_</td><td>Y</td><td/><td/><td>Class</td><td>1</td><td>Guid</td><td/><td>The CLSID of an OLE factory corresponding to the ProgId.</td></row>
		<row><td>ProgId</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description for the Program identifier.</td></row>
		<row><td>ProgId</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a component, like ExtractIcon, etc.</td></row>
		<row><td>ProgId</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index.</td></row>
		<row><td>ProgId</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Optional foreign key into the Icon Table, specifying the icon file associated with this ProgId. Will be written under the DefaultIcon key.</td></row>
		<row><td>ProgId</td><td>ProgId</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The Program Identifier. Primary key.</td></row>
		<row><td>ProgId</td><td>ProgId_Parent</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>The Parent Program Identifier. If specified, the ProgId column becomes a version independent prog id.</td></row>
		<row><td>Property</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>Property</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property, uppercase if settable by launcher or loader.</td></row>
		<row><td>Property</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>PublishComponent</td><td>AppData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is localisable Application specific data that can be associated with a Qualified Component.</td></row>
		<row><td>PublishComponent</td><td>ComponentId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID that represents the component id that will be requested by the alien product.</td></row>
		<row><td>PublishComponent</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table.</td></row>
		<row><td>PublishComponent</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Feature table.</td></row>
		<row><td>PublishComponent</td><td>Qualifier</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is defined only when the ComponentId column is an Qualified Component Id. This is the Qualifier for ProvideComponentIndirect.</td></row>
		<row><td>RadioButton</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The height of the button.</td></row>
		<row><td>RadioButton</td><td>Help</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The help strings used with the button. The text is optional.</td></row>
		<row><td>RadioButton</td><td>ISControlId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A number used to represent the control ID of the Control, Used in Dialog export</td></row>
		<row><td>RadioButton</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>RadioButton</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this radio button. All the buttons tied to the same property become part of the same group.</td></row>
		<row><td>RadioButton</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible title to be assigned to the radio button.</td></row>
		<row><td>RadioButton</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this button. Selecting the button will set the associated property to this value.</td></row>
		<row><td>RadioButton</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The width of the button.</td></row>
		<row><td>RadioButton</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The horizontal coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>RadioButton</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The vertical coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>RegLocator</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>RegLocator</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>RegLocator</td><td>Root</td><td>N</td><td>0</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum.</td></row>
		<row><td>RegLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table. If the type is 0, the registry values refers a directory, and _Signature is not a foreign key.</td></row>
		<row><td>RegLocator</td><td>Type</td><td>Y</td><td>0</td><td>18</td><td/><td/><td/><td/><td>An integer value that determines if the registry value is a filename or a directory location or to be used as is w/o interpretation.</td></row>
		<row><td>Registry</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the registry value.</td></row>
		<row><td>Registry</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a registry item.  Currently the only one is Automatic.</td></row>
		<row><td>Registry</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>Registry</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>Registry</td><td>Registry</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>Registry</td><td>Root</td><td>N</td><td>-1</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum.</td></row>
		<row><td>Registry</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The registry value.</td></row>
		<row><td>RemoveFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>DirProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full pathname to the folder of the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular file entry</td></row>
		<row><td>RemoveFile</td><td>FileName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>InstallMode</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;3</td><td>Installation option, one of iimEnum.</td></row>
		<row><td>RemoveIniFile</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>2;4</td><td>The type of modification to be made, one of iifEnum.</td></row>
		<row><td>RemoveIniFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the deletion of the .INI value.</td></row>
		<row><td>RemoveIniFile</td><td>DirProperty</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the .INI file is.</td></row>
		<row><td>RemoveIniFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name in which to delete the information</td></row>
		<row><td>RemoveIniFile</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file key below Section.</td></row>
		<row><td>RemoveIniFile</td><td>RemoveIniFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>RemoveIniFile</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file Section.</td></row>
		<row><td>RemoveIniFile</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to be deleted. The value is required when Action is iifIniRemoveTag</td></row>
		<row><td>RemoveRegistry</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the deletion of the registry value.</td></row>
		<row><td>RemoveRegistry</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>RemoveRegistry</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>RemoveRegistry</td><td>RemoveRegistry</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>RemoveRegistry</td><td>Root</td><td>N</td><td>-1</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum</td></row>
		<row><td>ReserveCost</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reserve a specified amount of space if this component is to be installed.</td></row>
		<row><td>ReserveCost</td><td>ReserveFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the destination directory</td></row>
		<row><td>ReserveCost</td><td>ReserveKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key that uniquely identifies a particular ReserveCost record</td></row>
		<row><td>ReserveCost</td><td>ReserveLocal</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Disk space to reserve if linked component is installed locally.</td></row>
		<row><td>ReserveCost</td><td>ReserveSource</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Disk space to reserve if linked component is installed to run from the source location.</td></row>
		<row><td>SFPCatalog</td><td>Catalog</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>SFP Catalog</td></row>
		<row><td>SFPCatalog</td><td>Dependency</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Parent catalog - only used by SFP</td></row>
		<row><td>SFPCatalog</td><td>SFPCatalog</td><td>N</td><td/><td/><td/><td/><td>Filename</td><td/><td>File name for the catalog.</td></row>
		<row><td>SelfReg</td><td>Cost</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The cost of registering the module.</td></row>
		<row><td>SelfReg</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the module that needs to be registered.</td></row>
		<row><td>ServiceControl</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Arguments for the service.  Separate by [~].</td></row>
		<row><td>ServiceControl</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the startup of the service</td></row>
		<row><td>ServiceControl</td><td>Event</td><td>N</td><td>0</td><td>187</td><td/><td/><td/><td/><td>Bit field:  Install:  0x1 = Start, 0x2 = Stop, 0x8 = Delete, Uninstall: 0x10 = Start, 0x20 = Stop, 0x80 = Delete</td></row>
		<row><td>ServiceControl</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>ServiceControl</td><td>ServiceControl</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>ServiceControl</td><td>Wait</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Boolean for whether to wait for the service to fully start</td></row>
		<row><td>ServiceInstall</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Arguments to include in every start of the service, passed to WinMain</td></row>
		<row><td>ServiceInstall</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the startup of the service</td></row>
		<row><td>ServiceInstall</td><td>Dependencies</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Other services this depends on to start.  Separate by [~], and end with [~][~]</td></row>
		<row><td>ServiceInstall</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of service.</td></row>
		<row><td>ServiceInstall</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>External Name of the Service</td></row>
		<row><td>ServiceInstall</td><td>ErrorControl</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Severity of error if service fails to start</td></row>
		<row><td>ServiceInstall</td><td>LoadOrderGroup</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>LoadOrderGroup</td></row>
		<row><td>ServiceInstall</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Internal Name of the Service</td></row>
		<row><td>ServiceInstall</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>password to run service with.  (with StartName)</td></row>
		<row><td>ServiceInstall</td><td>ServiceInstall</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>ServiceInstall</td><td>ServiceType</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Type of the service</td></row>
		<row><td>ServiceInstall</td><td>StartName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>User or object name to run service as</td></row>
		<row><td>ServiceInstall</td><td>StartType</td><td>N</td><td>0</td><td>4</td><td/><td/><td/><td/><td>Type of the service</td></row>
		<row><td>Shortcut</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The command-line arguments for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table denoting the component whose selection gates the the shortcut creation/deletion.</td></row>
		<row><td>Shortcut</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The description for the shortcut.</td></row>
		<row><td>Shortcut</td><td>DescriptionResourceDLL</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This field contains a Formatted string value for the full path to the language neutral file that contains the MUI manifest.</td></row>
		<row><td>Shortcut</td><td>DescriptionResourceId</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The description name index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the shortcut file is created.</td></row>
		<row><td>Shortcut</td><td>DisplayResourceDLL</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This field contains a Formatted string value for the full path to the language neutral file that contains the MUI manifest.</td></row>
		<row><td>Shortcut</td><td>DisplayResourceId</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The display name index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Hotkey</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The hotkey for the shortcut. It has the virtual-key code for the key in the low-order byte, and the modifier flags in the high-order byte.</td></row>
		<row><td>Shortcut</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a shortcut.  Mainly used in pro project types.</td></row>
		<row><td>Shortcut</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Shortcut.</td></row>
		<row><td>Shortcut</td><td>ISShortcutName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A non-unique name for the shortcut.  Mainly used by pro pro project types.</td></row>
		<row><td>Shortcut</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>The icon index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the external icon file for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the shortcut to be created.</td></row>
		<row><td>Shortcut</td><td>Shortcut</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>Shortcut</td><td>ShowCmd</td><td>Y</td><td/><td/><td/><td/><td/><td>1;3;7</td><td>The show command for the application window.The following values may be used.</td></row>
		<row><td>Shortcut</td><td>Target</td><td>N</td><td/><td/><td/><td/><td>Shortcut</td><td/><td>The shortcut target. This is usually a property that is expanded to a file or a folder that the shortcut points to.</td></row>
		<row><td>Shortcut</td><td>WkDir</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property defining location of working directory.</td></row>
		<row><td>Signature</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the file. This may contain a "short name|long name" pair.</td></row>
		<row><td>Signature</td><td>Languages</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>The languages supported by the file.</td></row>
		<row><td>Signature</td><td>MaxDate</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The maximum creation date of the file.</td></row>
		<row><td>Signature</td><td>MaxSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The maximum size of the file.</td></row>
		<row><td>Signature</td><td>MaxVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The maximum version of the file.</td></row>
		<row><td>Signature</td><td>MinDate</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The minimum creation date of the file.</td></row>
		<row><td>Signature</td><td>MinSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The minimum size of the file.</td></row>
		<row><td>Signature</td><td>MinVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The minimum version of the file.</td></row>
		<row><td>Signature</td><td>Signature</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The table key. The Signature represents a unique file signature.</td></row>
		<row><td>TextStyle</td><td>Color</td><td>Y</td><td>0</td><td>16777215</td><td/><td/><td/><td/><td>A long integer indicating the color of the string in the RGB format (Red, Green, Blue each 0-255, RGB = R + 256*G + 256^2*B).</td></row>
		<row><td>TextStyle</td><td>FaceName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>A string indicating the name of the font used. Required. The string must be at most 31 characters long.</td></row>
		<row><td>TextStyle</td><td>Size</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The size of the font used. This size is given in our units (1/12 of the system font height). Assuming that the system font is set to 12 point size, this is equivalent to the point size.</td></row>
		<row><td>TextStyle</td><td>StyleBits</td><td>Y</td><td>0</td><td>15</td><td/><td/><td/><td/><td>A combination of style bits.</td></row>
		<row><td>TextStyle</td><td>TextStyle</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the style. The primary key of this table. This name is embedded in the texts to indicate a style change.</td></row>
		<row><td>TypeLib</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>TypeLib</td><td>Cost</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The cost associated with the registration of the typelib. This column is currently optional.</td></row>
		<row><td>TypeLib</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>TypeLib</td><td>Directory_</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Optional. The foreign key into the Directory table denoting the path to the help file for the type library.</td></row>
		<row><td>TypeLib</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the type library to be operational.</td></row>
		<row><td>TypeLib</td><td>Language</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The language of the library.</td></row>
		<row><td>TypeLib</td><td>LibID</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The GUID that represents the library.</td></row>
		<row><td>TypeLib</td><td>Version</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The version of the library. The major version is in the upper 8 bits of the short integer. The minor version is in the lower 8 bits.</td></row>
		<row><td>UIText</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key that identifies the particular string.</td></row>
		<row><td>UIText</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The localized version of the string.</td></row>
		<row><td>Upgrade</td><td>ActionProperty</td><td>N</td><td/><td/><td/><td/><td>UpperCase</td><td/><td>The property to set when a product in this set is found.</td></row>
		<row><td>Upgrade</td><td>Attributes</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The attributes of this product set.</td></row>
		<row><td>Upgrade</td><td>ISDisplayName</td><td>Y</td><td/><td/><td>ISUpgradeMsiItem</td><td>1</td><td/><td/><td/></row>
		<row><td>Upgrade</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>A comma-separated list of languages for either products in this set or products not in this set.</td></row>
		<row><td>Upgrade</td><td>Remove</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The list of features to remove when uninstalling a product from this set.  The default is "ALL".</td></row>
		<row><td>Upgrade</td><td>UpgradeCode</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The UpgradeCode GUID belonging to the products in this set.</td></row>
		<row><td>Upgrade</td><td>VersionMax</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The maximum ProductVersion of the products in this set.  The set may or may not include products with this particular version.</td></row>
		<row><td>Upgrade</td><td>VersionMin</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The minimum ProductVersion of the products in this set.  The set may or may not include products with this particular version.</td></row>
		<row><td>Verb</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Optional value for the command arguments.</td></row>
		<row><td>Verb</td><td>Command</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The command text.</td></row>
		<row><td>Verb</td><td>Extension_</td><td>N</td><td/><td/><td>Extension</td><td>1</td><td>Text</td><td/><td>The extension associated with the table row.</td></row>
		<row><td>Verb</td><td>Sequence</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Order within the verbs for a particular extension. Also used simply to specify the default verb.</td></row>
		<row><td>Verb</td><td>Verb</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The verb for the command.</td></row>
		<row><td>_Validation</td><td>Category</td><td>Y</td><td/><td/><td/><td/><td/><td>"Text";"Formatted";"Template";"Condition";"Guid";"Path";"Version";"Language";"Identifier";"Binary";"UpperCase";"LowerCase";"Filename";"Paths";"AnyPath";"WildCardFilename";"RegPath";"KeyFormatted";"CustomSource";"Property";"Cabinet";"Shortcut";"URL";"DefaultDir"</td><td>String category</td></row>
		<row><td>_Validation</td><td>Column</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of column</td></row>
		<row><td>_Validation</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of column</td></row>
		<row><td>_Validation</td><td>KeyColumn</td><td>Y</td><td>1</td><td>32</td><td/><td/><td/><td/><td>Column to which foreign key connects</td></row>
		<row><td>_Validation</td><td>KeyTable</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>For foreign key, Name of table to which data must link</td></row>
		<row><td>_Validation</td><td>MaxValue</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Maximum value allowed</td></row>
		<row><td>_Validation</td><td>MinValue</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Minimum value allowed</td></row>
		<row><td>_Validation</td><td>Nullable</td><td>N</td><td/><td/><td/><td/><td/><td>Y;N;@</td><td>Whether the column is nullable</td></row>
		<row><td>_Validation</td><td>Set</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Set of values that are permitted</td></row>
		<row><td>_Validation</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of table</td></row>
	</table>
</msi>
