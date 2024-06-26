class WaapiUri {
  static final String akWwiseCoreGetInfo = "ak.wwise.core.getInfo";
  static final String akWwiseUiBringToForeground =
      "ak.wwise.ui.bringToForeground";
  static final String akSoundenginePostEvent = "ak.soundengine.postEvent";
  static final String akSoundengineExecuteActionOnEvent =
      "ak.soundengine.executeActionOnEvent";
  static final String akSoundengineRegisterGameObj =
      "ak.soundengine.registerGameObj";
  static final String akSoundengineStopPlayingID =
      "ak.soundengine.stopPlayingID";
  static final String akSoundengineStopAll = "ak.soundengine.stopAll";
  static final String akSoundenginePostMsgMonitor =
      "ak.soundengine.postMsgMonitor";
  static final String akSoundengineSetObjectObstructionAndOcclusion =
      "ak.soundengine.setObjectObstructionAndOcclusion";
  static final String akSoundengineSetGameObjectOutputBusVolume =
      "ak.soundengine.setGameObjectOutputBusVolume";
  static final String akSoundengineSetGameObjectAuxSendValues =
      "ak.soundengine.setGameObjectAuxSendValues";
  static final String akSoundenginePostTrigger = "ak.soundengine.postTrigger";
  static final String akSoundengineSetSwitch = "ak.soundengine.setSwitch";
  static final String akSoundengineSetState = "ak.soundengine.setState";
  static final String akSoundengineResetRTPCValue =
      "ak.soundengine.resetRTPCValue";
  static final String akSoundengineSetRTPCValue = "ak.soundengine.setRTPCValue";
  static final String akSoundengineSetListenerSpatialization =
      "ak.soundengine.setListenerSpatialization";
  static final String akSoundengineSetMultiplePositions =
      "ak.soundengine.setMultiplePositions";
  static final String akSoundengineSetPosition = "ak.soundengine.setPosition";
  static final String akSoundengineSetScalingFactor =
      "ak.soundengine.setScalingFactor";
  static final String akSoundengineSetDefaultListeners =
      "ak.soundengine.setDefaultListeners";
  static final String akSoundengineSetListeners = "ak.soundengine.setListeners";
  static final String akSoundengineSeekOnEvent = "ak.soundengine.seekOnEvent";
  static final String akSoundengineUnregisterGameObj =
      "ak.soundengine.unregisterGameObj";
  static final String akWwiseWaapiGetTopics = "ak.wwise.waapi.getTopics";
  static final String akWwiseWaapiGetFunctions = "ak.wwise.waapi.getFunctions";
  static final String akWwiseWaapiGetSchema = "ak.wwise.waapi.getSchema";
  static final String akWwiseUiProjectOpen = "ak.wwise.ui.project.open";
  static final String akWwiseUiProjectClose = "ak.wwise.ui.project.close";
  static final String akWwiseCoreProjectSave = "ak.wwise.core.project.save";
  static final String akWwiseCoreObjectSetName = "ak.wwise.core.object.setName";
  static final String akWwiseCoreObjectSetReference =
      "ak.wwise.core.object.setReference";
  static final String akWwiseCoreObjectSetProperty =
      "ak.wwise.core.object.setProperty";
  static final String akWwiseCoreObjectSetRandomizer =
      "ak.wwise.core.object.setRandomizer";
  static final String akWwiseCoreObjectSetNotes =
      "ak.wwise.core.object.setNotes";
  static final String akWwiseUiCommandsExecute = "ak.wwise.ui.commands.execute";
  static final String akWwiseUiCommandsGetCommands =
      "ak.wwise.ui.commands.getCommands";
  static final String akWwiseUiGetSelectedObjects =
      "ak.wwise.ui.getSelectedObjects";
  static final String akWwiseCoreObjectGetAttenuationCurve =
      "ak.wwise.core.object.getAttenuationCurve";
  static final String akWwiseCoreObjectSetAttenuationCurve =
      "ak.wwise.core.object.setAttenuationCurve";
  static final String akWwiseCoreSwitchContainerAddAssignment =
      "ak.wwise.core.switchContainer.addAssignment";
  static final String akWwiseCoreSwitchContainerRemoveAssignment =
      "ak.wwise.core.switchContainer.removeAssignment";
  static final String akWwiseCoreSwitchContainerGetAssignments =
      "ak.wwise.core.switchContainer.getAssignments";
  static final String akWwiseCoreObjectCreate = "ak.wwise.core.object.create";
  static final String akWwiseCoreObjectMove = "ak.wwise.core.object.move";
  static final String akWwiseCoreObjectCopy = "ak.wwise.core.object.copy";
  static final String akWwiseCoreObjectDelete = "ak.wwise.core.object.delete";
  static final String akWwiseCoreObjectGet = "ak.wwise.core.object.get";
  static final String akWwiseCoreAudioImport = "ak.wwise.core.audio.import";
  static final String akWwiseCoreAudioImportTabDelimited =
      "ak.wwise.core.audio.importTabDelimited";
  static final String akWwiseCoreRemoteConnect = "ak.wwise.core.remote.connect";
  static final String akWwiseCoreRemoteDisconnect =
      "ak.wwise.core.remote.disconnect";
  static final String akWwiseCoreRemoteGetAvailableConsoles =
      "ak.wwise.core.remote.getAvailableConsoles";
  static final String akWwiseCoreRemoteGetConnectionStatus =
      "ak.wwise.core.remote.getConnectionStatus";
  static final String akWwiseCoreUndoBeginGroup =
      "ak.wwise.core.undo.beginGroup";
  static final String akWwiseCoreUndoCancelGroup =
      "ak.wwise.core.undo.cancelGroup";
  static final String akWwiseCoreUndoEndGroup = "ak.wwise.core.undo.endGroup";
  static final String akWwiseCorePluginGetList = "ak.wwise.core.plugin.getList";
  static final String akWwiseCoreObjectGetTypes =
      "ak.wwise.core.object.getTypes";
  static final String akWwiseCorePluginGetProperty =
      "ak.wwise.core.plugin.getProperty";
  static final String akWwiseCoreObjectGetPropertyInfo =
      "ak.wwise.core.object.getPropertyInfo";
  static final String akWwiseCorePluginGetProperties =
      "ak.wwise.core.plugin.getProperties";
  static final String akWwiseCoreObjectGetPropertyNames =
      "ak.wwise.core.object.getPropertyNames";
  static final String akWwiseCoreObjectGetPropertyAndReferenceNames =
      "ak.wwise.core.object.getPropertyAndReferenceNames";
  static final String akWwiseCoreObjectIsPropertyEnabled =
      "ak.wwise.core.object.isPropertyEnabled";
  static final String akWwiseDebugEnableAsserts =
      "ak.wwise.debug.enableAsserts";
  static final String akWwiseDebugTestAssert = "ak.wwise.debug.testAssert";
  static final String akWwiseDebugTestCrash = "ak.wwise.debug.testCrash";
  static final String akWwiseDebugEnableAutomationMode =
      "ak.wwise.debug.enableAutomationMode";
  static final String akWwiseUiCaptureScreen = "ak.wwise.ui.captureScreen";
  static final String akWwiseCoreSoundbankGetInclusions =
      "ak.wwise.core.soundbank.getInclusions";
  static final String akWwiseCoreSoundbankSetInclusions =
      "ak.wwise.core.soundbank.setInclusions";
  static final String akWwiseCoreSoundbankGenerate =
      "ak.wwise.core.soundbank.generate";
  static final String akWwiseCliMigrate = "ak.wwise.cli.migrate";
  static final String akWwiseCliTabDelimitedImport =
      "ak.wwise.cli.tabDelimitedImport";
  static final String akWwiseCliWaapiServer = "ak.wwise.cli.waapiServer";
  static final String akWwiseCliCreateNewProject =
      "ak.wwise.cli.createNewProject";
  static final String akWwiseCliDumpObjects = "ak.wwise.cli.dumpObjects";
  static final String akWwiseCliAddNewPlatform = "ak.wwise.cli.addNewPlatform";
  static final String akWwiseCliConvertExternalSource =
      "ak.wwise.cli.convertExternalSource";
  static final String akWwiseCliGenerateSoundbank =
      "ak.wwise.cli.generateSoundbank";
  static final String akWwiseCliMoveMediaIdsToSingleFile =
      "ak.wwise.cli.moveMediaIdsToSingleFile";
  static final String akWwiseCliMoveMediaIdsToWorkUnits =
      "ak.wwise.cli.moveMediaIdsToWorkUnits";
  static final String akWwiseCliUpdateMediaIdsInSingleFile =
      "ak.wwise.cli.updateMediaIdsInSingleFile";
  static final String akWwiseCoreLogGet = "ak.wwise.core.log.get";
  static final String akWwiseCoreTransportCreate =
      "ak.wwise.core.transport.create";
  static final String akWwiseCoreTransportDestroy =
      "ak.wwise.core.transport.destroy";
  static final String akWwiseCoreTransportGetState =
      "ak.wwise.core.transport.getState";
  static final String akWwiseCoreTransportGetList =
      "ak.wwise.core.transport.getList";
  static final String akWwiseCoreTransportExecuteAction =
      "ak.wwise.core.transport.executeAction";
  static final String akWwiseCoreAudioSourcePeaksGetMinMaxPeaksInRegion =
      "ak.wwise.core.audioSourcePeaks.getMinMaxPeaksInRegion";
  static final String akWwiseCoreAudioSourcePeaksGetMinMaxPeaksInTrimmedRegion =
      "ak.wwise.core.audioSourcePeaks.getMinMaxPeaksInTrimmedRegion";
  static final String akWwiseUiCommandsRegister =
      "ak.wwise.ui.commands.register";
  static final String akWwiseUiCommandsUnregister =
      "ak.wwise.ui.commands.unregister";
  static final String akWwiseCoreProfilerGetAudioObjects =
      "ak.wwise.core.profiler.getAudioObjects";
  static final String akWwiseCoreProfilerGetVoices =
      "ak.wwise.core.profiler.getVoices";
  static final String akWwiseCoreProfilerGetRTPCs =
      "ak.wwise.core.profiler.getRTPCs";
  static final String akWwiseCoreProfilerGetBusses =
      "ak.wwise.core.profiler.getBusses";
  static final String akWwiseCoreProfilerGetVoiceContributions =
      "ak.wwise.core.profiler.getVoiceContributions";
  static final String akWwiseCoreProfilerEnableProfilerData =
      "ak.wwise.core.profiler.enableProfilerData";
  static final String akWwiseCoreProfilerGetCursorTime =
      "ak.wwise.core.profiler.getCursorTime";
  static final String akWwiseCoreProfilerStartCapture =
      "ak.wwise.core.profiler.startCapture";
  static final String akWwiseCoreProfilerStopCapture =
      "ak.wwise.core.profiler.stopCapture";
  static final String akWwiseCoreAudioImported = "ak.wwise.core.audio.imported";
  static final String akWwiseCoreObjectReferenceChanged =
      "ak.wwise.core.object.referenceChanged";
  static final String akWwiseCoreSwitchContainerAssignmentAdded =
      "ak.wwise.core.switchContainer.assignmentAdded";
  static final String akWwiseCoreSwitchContainerAssignmentRemoved =
      "ak.wwise.core.switchContainer.assignmentRemoved";
  static final String akWwiseCoreObjectNameChanged =
      "ak.wwise.core.object.nameChanged";
  static final String akWwiseCoreObjectNotesChanged =
      "ak.wwise.core.object.notesChanged";
  static final String akWwiseCoreObjectCreated = "ak.wwise.core.object.created";
  static final String akWwiseCoreObjectPreDeleted =
      "ak.wwise.core.object.preDeleted";
  static final String akWwiseCoreObjectPostDeleted =
      "ak.wwise.core.object.postDeleted";
  static final String akWwiseCoreObjectChildAdded =
      "ak.wwise.core.object.childAdded";
  static final String akWwiseCoreObjectChildRemoved =
      "ak.wwise.core.object.childRemoved";
  static final String akWwiseCoreObjectCurveChanged =
      "ak.wwise.core.object.curveChanged";
  static final String akWwiseCoreObjectAttenuationCurveChanged =
      "ak.wwise.core.object.attenuationCurveChanged";
  static final String akWwiseCoreObjectAttenuationCurveLinkChanged =
      "ak.wwise.core.object.attenuationCurveLinkChanged";
  static final String akWwiseCoreObjectPropertyChanged =
      "ak.wwise.core.object.propertyChanged";
  static final String akWwiseCoreSoundbankGenerated =
      "ak.wwise.core.soundbank.generated";
  static final String akWwiseCoreSoundbankGenerationDone =
      "ak.wwise.core.soundbank.generationDone";
  static final String akWwiseCoreLogItemAdded = "ak.wwise.core.log.itemAdded";
  static final String akWwiseUiSelectionChanged =
      "ak.wwise.ui.selectionChanged";
  static final String akWwiseCoreProjectLoaded = "ak.wwise.core.project.loaded";
  static final String akWwiseCoreProjectPreClosed =
      "ak.wwise.core.project.preClosed";
  static final String akWwiseCoreProjectPostClosed =
      "ak.wwise.core.project.postClosed";
  static final String akWwiseCoreProjectSaved = "ak.wwise.core.project.saved";
  static final String akWwiseCoreTransportStateChanged =
      "ak.wwise.core.transport.stateChanged";
  static final String akWwiseDebugAssertFailed = "ak.wwise.debug.assertFailed";
  static final String akWwiseUiCommandsExecuted =
      "ak.wwise.ui.commands.executed";
  static final String akWwiseCoreProfilerCaptureLogItemAdded =
      "ak.wwise.core.profiler.captureLog.itemAdded";
}
