<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="24008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="我的电脑" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">我的电脑/VI服务器</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Swp_Main.vi" Type="VI" URL="../Swp_Main.vi"/>
		<Item Name="依赖关系" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Remove Duplicates From 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Remove Duplicates From 1D Array.vim"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="Acquisition Settings.ctl" Type="VI" URL="../includes/shared/Acquisition Settings.ctl"/>
			<Item Name="Buffer and Transfer Settings.ctl" Type="VI" URL="../includes/shared/Buffer and Transfer Settings.ctl"/>
			<Item Name="CreateBuffer.vi" Type="VI" URL="../includes/shared/CreateBuffer.vi"/>
			<Item Name="DataBufferSizes.vi" Type="VI" URL="../includes/shared/DataBufferSizes.vi"/>
			<Item Name="Detect Current LV Bitness.vi" Type="VI" URL="../includes/shared/Detect Current LV Bitness.vi"/>
			<Item Name="EditedPicoScope2000aOpen.vi" Type="VI" URL="../includes/EditedPicoScope2000aOpen.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="myBodePlot.vi" Type="VI" URL="../includes/myBodePlot.vi"/>
			<Item Name="myCommClose_visa.vi" Type="VI" URL="../includes/myCommClose_visa.vi"/>
			<Item Name="myCommOpen_visa.vi" Type="VI" URL="../includes/myCommOpen_visa.vi"/>
			<Item Name="myCommOut_visa.vi" Type="VI" URL="../includes/myCommOut_visa.vi"/>
			<Item Name="myCSVwrite.vi" Type="VI" URL="../includes/myCSVwrite.vi"/>
			<Item Name="myFFT_abc2alphabeta.vi" Type="VI" URL="../includes/myFFT_abc2alphabeta.vi"/>
			<Item Name="myFFT_abc2pseq.vi" Type="VI" URL="../includes/myFFT_abc2pseq.vi"/>
			<Item Name="myFFT_alphabeta2dq.vi" Type="VI" URL="../includes/myFFT_alphabeta2dq.vi"/>
			<Item Name="myFFT_ResultFilt.vi" Type="VI" URL="../includes/myFFT_ResultFilt.vi"/>
			<Item Name="myFFT_ResultRead.vi" Type="VI" URL="../includes/myFFT_ResultRead.vi"/>
			<Item Name="myFFT_RowSave.vi" Type="VI" URL="../includes/myFFT_RowSave.vi"/>
			<Item Name="myFreqFFTindex.vi" Type="VI" URL="../includes/myFreqFFTindex.vi"/>
			<Item Name="myFreqGen.vi" Type="VI" URL="../includes/myFreqGen.vi"/>
			<Item Name="myFreqGroup.vi" Type="VI" URL="../includes/myFreqGroup.vi"/>
			<Item Name="myFreqParamGen.vi" Type="VI" URL="../includes/myFreqParamGen.vi"/>
			<Item Name="myFreqPreview.vi" Type="VI" URL="../includes/myFreqPreview.vi"/>
			<Item Name="myFreqSymm.vi" Type="VI" URL="../includes/myFreqSymm.vi"/>
			<Item Name="myFreqSymp.vi" Type="VI" URL="../includes/myFreqSymp.vi"/>
			<Item Name="myFreqTime.vi" Type="VI" URL="../includes/myFreqTime.vi"/>
			<Item Name="myOptionUI.vi" Type="VI" URL="../includes/myOptionUI.vi"/>
			<Item Name="myPICO_AWG.vi" Type="VI" URL="../includes/myPICO_AWG.vi"/>
			<Item Name="myPICO_CheckNum.vi" Type="VI" URL="../includes/myPICO_CheckNum.vi"/>
			<Item Name="myPICO_Close.vi" Type="VI" URL="../includes/myPICO_Close.vi"/>
			<Item Name="myPICO_Open.vi" Type="VI" URL="../includes/myPICO_Open.vi"/>
			<Item Name="myPICO_Run.vi" Type="VI" URL="../includes/myPICO_Run.vi"/>
			<Item Name="mySweepNum.vi" Type="VI" URL="../includes/mySweepNum.vi"/>
			<Item Name="mySweepSelect.vi" Type="VI" URL="../includes/mySweepSelect.vi"/>
			<Item Name="PicoBuffers.ctl" Type="VI" URL="../includes/shared/PicoBuffers.ctl"/>
			<Item Name="PicoCreatePicoMultiBuffers.vi" Type="VI" URL="../includes/shared/PicoCreatePicoMultiBuffers.vi"/>
			<Item Name="PicoErrorHandler.vi" Type="VI" URL="../includes/shared/PicoErrorHandler.vi"/>
			<Item Name="PicoErrorHandler2.vi" Type="VI" URL="../includes/shared/PicoErrorHandler2.vi"/>
			<Item Name="PicoErrorString.vi" Type="VI" URL="../includes/shared/PicoErrorString.vi"/>
			<Item Name="PicoReadPicoMultiBuffers.vi" Type="VI" URL="../includes/shared/PicoReadPicoMultiBuffers.vi"/>
			<Item Name="PicoReleaseMultiBuffers.vi" Type="VI" URL="../includes/shared/PicoReleaseMultiBuffers.vi"/>
			<Item Name="PicoScope2000aAnalogChannelSettings.ctl" Type="VI" URL="../includes/PicoScope2000aLib/PicoScope2000aAnalogChannelSettings.ctl"/>
			<Item Name="PicoScope2000aAWG.vi" Type="VI" URL="../includes/PicoScope2000aLib/PicoScope2000aAWG.vi"/>
			<Item Name="PicoScope2000aClose.vi" Type="VI" URL="../includes/PicoScope2000aLib/PicoScope2000aClose.vi"/>
			<Item Name="PicoScope2000aDigitalChannelSettings.ctl" Type="VI" URL="../includes/PicoScope2000aLib/PicoScope2000aDigitalChannelSettings.ctl"/>
			<Item Name="PicoScope2000aGetTimebase2.vi" Type="VI" URL="../includes/PicoScope2000aLib/PicoScope2000aGetTimebase2.vi"/>
			<Item Name="PicoScope2000aGetValues.vi" Type="VI" URL="../includes/PicoScope2000aLib/PicoScope2000aGetValues.vi"/>
			<Item Name="PicoScope2000aIsReady.vi" Type="VI" URL="../includes/PicoScope2000aLib/PicoScope2000aIsReady.vi"/>
			<Item Name="PicoScope2000aRunBlock.vi" Type="VI" URL="../includes/PicoScope2000aLib/PicoScope2000aRunBlock.vi"/>
			<Item Name="PicoScope2000aSetDataBuffers.vi" Type="VI" URL="../includes/PicoScope2000aLib/PicoScope2000aSetDataBuffers.vi"/>
			<Item Name="PicoScope2000aSettings.vi" Type="VI" URL="../includes/PicoScope2000aLib/PicoScope2000aSettings.vi"/>
			<Item Name="PicoScope2000aUnitInfo.vi" Type="VI" URL="../includes/PicoScope2000aLib/PicoScope2000aUnitInfo.vi"/>
			<Item Name="PicoScopeAdcToVolts.vi" Type="VI" URL="../includes/shared/PicoScopeAdcToVolts.vi"/>
			<Item Name="PicoScopeVoltsToAdc.vi" Type="VI" URL="../includes/shared/PicoScopeVoltsToAdc.vi"/>
			<Item Name="PicoStatus.vi" Type="VI" URL="../includes/shared/PicoStatus.vi"/>
			<Item Name="plcm3.dll" Type="Document" URL="plcm3.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ProbeInputRangesScaling.ctl" Type="VI" URL="../includes/shared/ProbeInputRangesScaling.ctl"/>
			<Item Name="ps2000.dll" Type="Document" URL="ps2000.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ps2000a.dll" Type="Document" URL="ps2000a.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ps2000a.dll" Type="Document" URL="../../../../../../C/Program Files (x86)/Pico Technology/SDK/lib/ps2000a.dll"/>
			<Item Name="ps3000.dll" Type="Document" URL="ps3000.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ps3000a.dll" Type="Document" URL="ps3000a.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ps4000.dll" Type="Document" URL="ps4000.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ps4000a.dll" Type="Document" URL="ps4000a.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ps5000.dll" Type="Document" URL="ps5000.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ps5000a.dll" Type="Document" URL="ps5000a.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ps6000.dll" Type="Document" URL="ps6000.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ps6000a.dll" Type="Document" URL="ps6000a.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="psospa.dll" Type="Document" URL="../../../../../../psospa.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ReadBuffer.vi" Type="VI" URL="../includes/shared/ReadBuffer.vi"/>
			<Item Name="ReleaseBuffer.vi" Type="VI" URL="../includes/shared/ReleaseBuffer.vi"/>
			<Item Name="Segment Range.ctl" Type="VI" URL="../includes/shared/Segment Range.ctl"/>
			<Item Name="UsbPT104.dll" Type="Document" URL="UsbPT104.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="程序生成规范" Type="Build">
			<Item Name="Swp_Main" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{65DA5345-C9B2-4B33-96F9-32029DCDA12A}</Property>
				<Property Name="App_INI_GUID" Type="Str">{72047AEE-9326-49C5-B509-E4078A296AC6}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{CBA9E933-F955-4B4F-8328-145C1C186456}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Swp_Main</Property>
				<Property Name="Bld_defaultLanguage" Type="Str">ChineseS</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Swp_Main</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{249A6770-87C5-496C-8CF1-D205C0EDBBF5}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">应用程序.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Swp_Main/应用程序.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">支持目录</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Swp_Main/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{54191793-7885-490B-A6CF-216914D1CF20}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/我的电脑/Swp_Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Swp_Main</Property>
				<Property Name="TgtF_internalName" Type="Str">Swp_Main</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">版权 2024 </Property>
				<Property Name="TgtF_productName" Type="Str">Swp_Main</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{8F1CAF58-0510-4C10-AD50-B5B3E8BE1D8A}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">应用程序.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
