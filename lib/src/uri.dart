class WaapiUri {
  /// Retrieve global Wwise information.
  static final String ak_wwise_core_getinfo = "ak.wwise.core.getInfo";

  /// Bring Wwise main window to foreground. Refer to SetForegroundWindow and AllowSetForegroundWindow on MSDN for more information on the restrictions. Refer to ak.wwise.core.getInfo to obtain the Wwise process ID for AllowSetForegroundWindow.
  static final String ak_wwise_ui_bringtoforeground = "ak.wwise.ui.bringToForeground";

  /// Asynchronously post an Event to the sound engine (by event ID). See <tt>AK::SoundEngine::PostEvent</tt>.
  static final String ak_soundengine_postevent = "ak.soundengine.postEvent";

  /// Executes an action on all nodes that are referenced in the specified event in a Play action. See <tt>AK::SoundEngine::ExecuteActionOnEvent</tt>.
  static final String ak_soundengine_executeactiononevent = "ak.soundengine.executeActionOnEvent";

  /// Register a game object. Registering a game object twice does nothing. Unregistering it once unregisters it no matter how many times it has been registered. See <tt>AK::SoundEngine::RegisterGameObj</tt>.
  static final String ak_soundengine_registergameobj = "ak.soundengine.registerGameObj";

  /// Stops the current content, associated to the specified playing ID, from playing. See <tt>AK::SoundEngine::StopPlayingID</tt>.
  static final String ak_soundengine_stopplayingid = "ak.soundengine.stopPlayingID";

  /// Stop playing the current content associated to the specified game object ID. If no game object is specified, all sounds are stopped. See <tt>AK::SoundEngine::StopAll</tt>.
  static final String ak_soundengine_stopall = "ak.soundengine.stopAll";

  /// Display a message in the Profiler's Capture Log view.
  static final String ak_soundengine_postmsgmonitor = "ak.soundengine.postMsgMonitor";

  /// Set a game object's obstruction and occlusion levels. This function is used to affect how an object should be heard by a specific listener. See <tt>AK::SoundEngine::SetObjectObstructionAndOcclusion</tt>.
  static final String ak_soundengine_setobjectobstructionandocclusion =
      "ak.soundengine.setObjectObstructionAndOcclusion";

  /// Set the output bus volume (direct) to be used for the specified game object. See <tt>AK::SoundEngine::SetGameObjectOutputBusVolume</tt>.
  static final String ak_soundengine_setgameobjectoutputbusvolume = "ak.soundengine.setGameObjectOutputBusVolume";

  /// Sets the Auxiliary Busses to route the specified game object. See <tt>AK::SoundEngine::SetGameObjectAuxSendValues</tt>.
  static final String ak_soundengine_setgameobjectauxsendvalues = "ak.soundengine.setGameObjectAuxSendValues";

  /// Posts the specified Trigger. See <tt>AK::SoundEngine::PostTrigger</tt>.
  static final String ak_soundengine_posttrigger = "ak.soundengine.postTrigger";

  /// Sets the State of a Switch Group. See <tt>AK::SoundEngine::SetSwitch</tt>.
  static final String ak_soundengine_setswitch = "ak.soundengine.setSwitch";

  /// Sets the State of a State Group. See <tt>AK::SoundEngine::SetState</tt>.
  static final String ak_soundengine_setstate = "ak.soundengine.setState";

  /// Resets the value of a real-time parameter control to its default value, as specified in the Wwise project. See <tt>AK::SoundEngine::ResetRTPCValue</tt>.
  static final String ak_soundengine_resetrtpcvalue = "ak.soundengine.resetRTPCValue";

  /// Sets the value of a real-time parameter control. See <tt>AK::SoundEngine::SetRTPCValue</tt>.
  static final String ak_soundengine_setrtpcvalue = "ak.soundengine.setRTPCValue";

  /// Sets a listener's spatialization parameters. This lets you define listener-specific volume offsets for each audio channel. See <tt>AK::SoundEngine::SetListenerSpatialization</tt>.
  static final String ak_soundengine_setlistenerspatialization = "ak.soundengine.setListenerSpatialization";

  /// Sets multiple positions for a single game object. Setting multiple positions for a single game object is a way to simulate multiple emission sources while using the resources of only one voice. This can be used to simulate wall openings, area sounds, or multiple objects emitting the same sound in the same area. See <tt>AK::SoundEngine::SetMultiplePositions</tt>.
  static final String ak_soundengine_setmultiplepositions = "ak.soundengine.setMultiplePositions";

  /// Sets the position of a game object. See <tt>AK::SoundEngine::SetPosition</tt>.
  static final String ak_soundengine_setposition = "ak.soundengine.setPosition";

  /// Sets the scaling factor of a game object. You can modify the attenuation computations on this game object to simulate sounds with a larger or smaller affected areas. See <tt>AK::SoundEngine::SetScalingFactor</tt>.
  static final String ak_soundengine_setscalingfactor = "ak.soundengine.setScalingFactor";

  /// Sets the default active listeners for all subsequent game objects that are registered. See <tt>AK::SoundEngine::SetDefaultListeners</tt>.
  static final String ak_soundengine_setdefaultlisteners = "ak.soundengine.setDefaultListeners";

  /// Sets a single game object's active listeners. By default, all new game objects have no listeners active, but this behavior can be overridden with <tt>SetDefaultListeners()</tt>. Inactive listeners are not computed. See <tt>AK::SoundEngine::SetListeners</tt>.
  static final String ak_soundengine_setlisteners = "ak.soundengine.setListeners";

  /// Seeks inside all playing objects that are referenced in Play Actions of the specified Event. See <tt>AK::SoundEngine::SeekOnEvent</tt>.
  static final String ak_soundengine_seekonevent = "ak.soundengine.seekOnEvent";

  /// Unregisters a game object. Registering a game object twice does nothing. Unregistering it once unregisters it no matter how many times it has been registered. Unregistering a game object while it is in use is allowed, but the control over the parameters of this game object is lost. For example, say a sound associated with this game object is a 3D moving sound. It stops moving when the game object is unregistered, and there is no way to regain control over the game object. See <tt>AK::SoundEngine::UnregisterGameObj</tt>.
  static final String ak_soundengine_unregistergameobj = "ak.soundengine.unregisterGameObj";

  /// Retrieves the list of topics to which a client can subscribe.
  static final String ak_wwise_waapi_gettopics = "ak.wwise.waapi.getTopics";

  /// Retrieves the list of functions.
  static final String ak_wwise_waapi_getfunctions = "ak.wwise.waapi.getFunctions";

  /// Retrieves the JSON schema of a Waapi URI.
  static final String ak_wwise_waapi_getschema = "ak.wwise.waapi.getSchema";

  /// Opens a project, specified by path. Please refer to \ref ak_wwise_core_project_loaded for further explanations on how to be notified when the operation has completed.
  static final String ak_wwise_ui_project_open = "ak.wwise.ui.project.open";

  /// Closes the current project.
  static final String ak_wwise_ui_project_close = "ak.wwise.ui.project.close";

  /// Saves the current project.
  static final String ak_wwise_core_project_save = "ak.wwise.core.project.save";

  /// Renames an object.
  static final String ak_wwise_core_object_setname = "ak.wwise.core.object.setName";

  /// Sets an object's reference value. Refer to \ref wobjects_index for more information on the references available on each object type.
  static final String ak_wwise_core_object_setreference = "ak.wwise.core.object.setReference";

  /// Sets a property value of an object for a specific platform. Refer to \ref wobjects_index for more information on the properties available on each object type. Refer to \ref ak_wwise_core_object_setreference to set a reference to an object.
  static final String ak_wwise_core_object_setproperty = "ak.wwise.core.object.setProperty";

  /// Sets the randomizer values of a property of an object for a specific platform. Refer to \ref wobjects_index for more information on the properties available on each object type.
  static final String ak_wwise_core_object_setrandomizer = "ak.wwise.core.object.setRandomizer";

  /// Sets the object's notes.
  static final String ak_wwise_core_object_setnotes = "ak.wwise.core.object.setNotes";

  /// Executes a command. Some commands can take a list of objects as parameters. Refer to \ref globalcommandsids for the available commands.
  static final String ak_wwise_ui_commands_execute = "ak.wwise.ui.commands.execute";

  /// Gets the list of commands.
  static final String ak_wwise_ui_commands_getcommands = "ak.wwise.ui.commands.getCommands";

  /// Retrieves the list of objects currently selected by the user in the active view.
  static final String ak_wwise_ui_getselectedobjects = "ak.wwise.ui.getSelectedObjects";

  /// Gets the specified attenuation curve for a given attenuation object.
  static final String ak_wwise_core_object_getattenuationcurve = "ak.wwise.core.object.getAttenuationCurve";

  /// Sets the specified attenuation curve for a given attenuation object.
  static final String ak_wwise_core_object_setattenuationcurve = "ak.wwise.core.object.setAttenuationCurve";

  /// Assigns a Switch Container's child to a Switch. This is the equivalent of doing a drag&drop of the child to a state in the Assigned Objects view. The child is always added at the end for each state.
  static final String ak_wwise_core_switchcontainer_addassignment = "ak.wwise.core.switchContainer.addAssignment";

  /// Removes an assignment between a Switch Container's child and a State.
  static final String ak_wwise_core_switchcontainer_removeassignment = "ak.wwise.core.switchContainer.removeAssignment";

  /// Returns the list of assignments between a Switch Container's children and states.
  static final String ak_wwise_core_switchcontainer_getassignments = "ak.wwise.core.switchContainer.getAssignments";

  /// Creates an object of type 'type', as a child of 'parent'. Refer to \ref waapi_import for more information about creating objects. Also refer to \ref ak_wwise_core_audio_import to import audio files to Wwise.
  static final String ak_wwise_core_object_create = "ak.wwise.core.object.create";

  /// Moves an object to the given parent. Returns the moved object.
  static final String ak_wwise_core_object_move = "ak.wwise.core.object.move";

  /// Copies an object to the given parent.
  static final String ak_wwise_core_object_copy = "ak.wwise.core.object.copy";

  /// Deletes the specified object.
  static final String ak_wwise_core_object_delete = "ak.wwise.core.object.delete";

  /// Performs a query and returns specified data for each object in the query result. The query can specify either a 'waql' argument or a 'from' argument with an optional 'transform' argument. Refer to \ref waql_introduction or \ref waapi_query for more information.
  static final String ak_wwise_core_object_get = "ak.wwise.core.object.get";

  /// Creates Wwise objects and imports audio files. This function uses the same importation processor available through the Tab Delimited import in the Audio File Importer. The function returns an array of all objects created, replaced or re-used. Use the options to specify how the objects are returned. For more information, refer to \ref waapi_import.
  static final String ak_wwise_core_audio_import = "ak.wwise.core.audio.import";

  /// Scripted object creation and audio file import from a tab-delimited file.
  static final String ak_wwise_core_audio_importtabdelimited = "ak.wwise.core.audio.importTabDelimited";

  /// Connects the Wwise Authoring application to a Wwise Sound Engine running executable. The host must be running code with communication enabled. If only "host" is provided, Wwise connects to the first Sound Engine instance found. To distinguish between different instances, you can also provide the name of the application to connect to.
  static final String ak_wwise_core_remote_connect = "ak.wwise.core.remote.connect";

  /// Disconnects the Wwise Authoring application from a connected Wwise Sound Engine running executable.
  static final String ak_wwise_core_remote_disconnect = "ak.wwise.core.remote.disconnect";

  /// Retrieves all consoles available for connecting Wwise Authoring to a Sound Engine instance.
  static final String ak_wwise_core_remote_getavailableconsoles = "ak.wwise.core.remote.getAvailableConsoles";

  /// Retrieves the connection status.
  static final String ak_wwise_core_remote_getconnectionstatus = "ak.wwise.core.remote.getConnectionStatus";

  /// Begins an undo group. Make sure to call \ref ak_wwise_core_undo_endgroup exactly once for every ak.wwise.core.beginUndoGroup call you make. Calls to ak.wwise.core.undo.beginGroup can be nested.
  static final String ak_wwise_core_undo_begingroup = "ak.wwise.core.undo.beginGroup";

  /// Cancels the last undo group. Please note that this does not revert the operations made since the last \ref ak_wwise_core_undo_begingroup call.
  static final String ak_wwise_core_undo_cancelgroup = "ak.wwise.core.undo.cancelGroup";

  /// Ends the last undo group.
  static final String ak_wwise_core_undo_endgroup = "ak.wwise.core.undo.endGroup";

  /// Retrieves the list of all object types registered in Wwise's object model. This function returns the equivalent of \ref wobjects_index .
  static final String   /// \deprecated in favor of ak.wwise.core.object.getTypes
      ak_wwise_core_plugin_getlist = "ak.wwise.core.plugin.getList";

  /// Retrieves the list of all object types registered in Wwise's object model. This function returns the equivalent of \ref wobjects_index .
  static final String ak_wwise_core_object_gettypes = "ak.wwise.core.object.getTypes";

  /// Retrieves information about an object property.
  static final String   /// \deprecated in favor of ak.wwise.core.object.getPropertyInfo
      ak_wwise_core_plugin_getproperty = "ak.wwise.core.plugin.getProperty";

  /// Retrieves information about an object property.
  static final String ak_wwise_core_object_getpropertyinfo = "ak.wwise.core.object.getPropertyInfo";

  /// Retrieves the list of property and reference names for an object.
  static final String   /// \deprecated in favor of ak.wwise.core.object.getPropertyAndReferenceNames
      ak_wwise_core_plugin_getproperties = "ak.wwise.core.plugin.getProperties";

  /// Retrieves the list of property and reference names for an object.
  static final String   /// \deprecated in favor of ak.wwise.core.object.getPropertyAndReferenceNames
      ak_wwise_core_object_getpropertynames = "ak.wwise.core.object.getPropertyNames";

  /// Retrieves the list of property and reference names for an object.
  static final String ak_wwise_core_object_getpropertyandreferencenames =
      "ak.wwise.core.object.getPropertyAndReferenceNames";

  /// Returns true if a property is enabled based on the values of the properties it depends on.
  static final String ak_wwise_core_object_ispropertyenabled = "ak.wwise.core.object.isPropertyEnabled";

  /// Enables debug assertions. Every call to enableAsserts with 'false' increments the ref count. Calling with true decrements the ref count. This is only available with Debug builds.
  static final String ak_wwise_debug_enableasserts = "ak.wwise.debug.enableAsserts";

  /// Private use only.
  static final String ak_wwise_debug_testassert = "ak.wwise.debug.testAssert";

  /// Private use only.
  static final String ak_wwise_debug_testcrash = "ak.wwise.debug.testCrash";

  /// Enables or disables the automation mode for Wwise. This reduces the potential interruptions caused by message boxes and dialogs. For instance, enabling the automation mode silently accepts: project migration, project load log, EULA acceptance, project licence display and generic message boxes.
  static final String ak_wwise_debug_enableautomationmode = "ak.wwise.debug.enableAutomationMode";

  /// Captures a part of the Wwise UI relative to a view.
  static final String ak_wwise_ui_capturescreen = "ak.wwise.ui.captureScreen";

  /// Retrieves a SoundBank's inclusion list.
  static final String ak_wwise_core_soundbank_getinclusions = "ak.wwise.core.soundbank.getInclusions";

  /// Modifies a SoundBank's inclusion list. The 'operation' argument determines how the 'inclusions' argument modifies the SoundBank's inclusion list; 'inclusions' may be added to / removed from / replace the SoundBank's inclusion list.
  static final String ak_wwise_core_soundbank_setinclusions = "ak.wwise.core.soundbank.setInclusions";

  /// Generate a list of SoundBank with import definition defined in the WAAPI request. If you choose to not write the soundbanks to disk, subscribe to \ref ak_wwise_core_soundbank_generated to get SoundBank structure info and the bank data as base64.
  static final String ak_wwise_core_soundbank_generate = "ak.wwise.core.soundbank.generate";

  /// Migrate and save the project.
  static final String ak_wwise_cli_migrate = "ak.wwise.cli.migrate";

  /// Imports a tab-delimited file to create and modify different object hierarchies. The project is automatically migrated (if required). It is also automatically saved following the import.
  static final String ak_wwise_cli_tabdelimitedimport = "ak.wwise.cli.tabDelimitedImport";

  /// Starts a command-line Wwise Authoring API server, to which client applications, using the Wwise Authoring API, can connect.
  static final String ak_wwise_cli_waapiserver = "ak.wwise.cli.waapiServer";

  /// Creates a blank new project. The project must not already exist. If the folder does not exist, it is created.
  static final String ak_wwise_cli_createnewproject = "ak.wwise.cli.createNewProject";

  /// Dump the objects model of a project as a JSON file.
  static final String ak_wwise_cli_dumpobjects = "ak.wwise.cli.dumpObjects";

  /// Adds a new platform to a project. The platform must not already exist.
  static final String ak_wwise_cli_addnewplatform = "ak.wwise.cli.addNewPlatform";

  /// External Sources conversion. Converts the external sources files for the specified project. Optionally, additional WSOURCES can be specified. External Sources are a special type of source that you can put in a Sound object in Wwise. It indicates that the real sound data will be provided at run time. While External Source conversion is also triggered by SoundBank generation, this operation can be used to process sources not contained in the Wwise Project. Please refer to Wwise SDK help page "Integrating External Sources".
  static final String ak_wwise_cli_convertexternalsource = "ak.wwise.cli.convertExternalSource";

  /// SoundBank generation. SoundBank generation is performed according to the settings stored in the project. Custom user settings are ignored when SoundBank generation is launched from the command line. However, some of these settings can be overridden from the command line.
  static final String ak_wwise_cli_generatesoundbank = "ak.wwise.cli.generateSoundbank";

  /// Moves the project's media IDs from its work units (.wwu) to a single file, <project-name>.mediaid.  This command will force a save of all the project's work units.
  static final String ak_wwise_cli_movemediaidstosinglefile = "ak.wwise.cli.moveMediaIdsToSingleFile";

  /// Moves the project's media IDs from a single xml file <project-name>.mediaid to its work units (.wwu).  This command will force a save of all the project's work units.
  static final String ak_wwise_cli_movemediaidstoworkunits = "ak.wwise.cli.moveMediaIdsToWorkUnits";

  /// Loads the project and updates the contents of <project-name>.mediaid, if it exists.
  static final String ak_wwise_cli_updatemediaidsinsinglefile = "ak.wwise.cli.updateMediaIdsInSingleFile";

  /// Retrieves the latest log for a specific channel. Refer to \ref ak_wwise_core_log_itemadded to be notified when a item is added to the log.
  static final String ak_wwise_core_log_get = "ak.wwise.core.log.get";

  /// Creates a transport object for the given Wwise object. The return transport object can be used to play, stop, pause and resume the Wwise object via the other transport functions.
  static final String ak_wwise_core_transport_create = "ak.wwise.core.transport.create";

  /// Destroys the given transport object.
  static final String ak_wwise_core_transport_destroy = "ak.wwise.core.transport.destroy";

  /// Gets the state of the given transport object.
  static final String ak_wwise_core_transport_getstate = "ak.wwise.core.transport.getState";

  /// Returns the list of transport objects.
  static final String ak_wwise_core_transport_getlist = "ak.wwise.core.transport.getList";

  /// Executes an action on the given transport object, or all transport objects if none is specified.
  static final String ak_wwise_core_transport_executeaction = "ak.wwise.core.transport.executeAction";

  /// Gets the min/max peak pairs, in the given region of an audio source, as a collection of binary strings (one per channel). The strings are base-64 encoded, 16-bit signed int arrays, with min and max values being interleaved. If getCrossChannelPeaks is true, only one binary string represents the peaks across all channels globally.
  static final String ak_wwise_core_audiosourcepeaks_getminmaxpeaksinregion =
      "ak.wwise.core.audioSourcePeaks.getMinMaxPeaksInRegion";

  /// Gets the min/max peak pairs in the entire trimmed region of an audio source, for each channel, as an array of binary strings (one per channel). The strings are base-64 encoded, 16-bit signed int arrays, with min and max values being interleaved. If getCrossChannelPeaks is true, there is only one binary string representing peaks across all channels globally.
  static final String ak_wwise_core_audiosourcepeaks_getminmaxpeaksintrimmedregion =
      "ak.wwise.core.audioSourcePeaks.getMinMaxPeaksInTrimmedRegion";

  /// Registers an array of add-on commands. Registered commands remain until the Wwise process is terminated. Refer to \ref defining_custom_commands for more information about registering commands. Also refer to \ref ak_wwise_ui_commands_executed.
  static final String ak_wwise_ui_commands_register = "ak.wwise.ui.commands.register";

  /// Unregisters an array of add-on UI commands.
  static final String ak_wwise_ui_commands_unregister = "ak.wwise.ui.commands.unregister";

  /// Retrieves the Audio Objects at a specific profiler capture time.
  static final String ak_wwise_core_profiler_getaudioobjects = "ak.wwise.core.profiler.getAudioObjects";

  /// Retrieves the voices at a specific profiler capture time.
  static final String ak_wwise_core_profiler_getvoices = "ak.wwise.core.profiler.getVoices";

  /// Retrieves active RTPCs at a specific profiler capture time.
  static final String ak_wwise_core_profiler_getrtpcs = "ak.wwise.core.profiler.getRTPCs";

  /// Retrieves the busses at a specific profiler capture time.
  static final String ak_wwise_core_profiler_getbusses = "ak.wwise.core.profiler.getBusses";

  /// Retrieves all parameters affecting voice volume, highpass and lowpass for a voice path, resolved from pipeline IDs.
  static final String ak_wwise_core_profiler_getvoicecontributions = "ak.wwise.core.profiler.getVoiceContributions";

  /// Specifies the type of data you want to capture. Overrides the user's profiler settings.
  static final String ak_wwise_core_profiler_enableprofilerdata = "ak.wwise.core.profiler.enableProfilerData";

  /// Returns the current time of the specified profiler cursor, in milliseconds.
  static final String ak_wwise_core_profiler_getcursortime = "ak.wwise.core.profiler.getCursorTime";

  /// Starts the profiler capture and returns the time at the beginning of the capture, in milliseconds.
  static final String ak_wwise_core_profiler_startcapture = "ak.wwise.core.profiler.startCapture";

  /// Stops the profiler capture and returns the time at the end of the capture, in milliseconds.
  static final String ak_wwise_core_profiler_stopcapture = "ak.wwise.core.profiler.stopCapture";

  /// Sent at the end of an import operation.
  static final String ak_wwise_core_audio_imported = "ak.wwise.core.audio.imported";

  /// Sent when an object reference is changed.
  static final String ak_wwise_core_object_referencechanged = "ak.wwise.core.object.referenceChanged";

  /// Sent when an assignment is added to a Switch Container.
  static final String ak_wwise_core_switchcontainer_assignmentadded = "ak.wwise.core.switchContainer.assignmentAdded";

  /// Sent when an assignment is removed from a Switch Container.
  static final String ak_wwise_core_switchcontainer_assignmentremoved =
      "ak.wwise.core.switchContainer.assignmentRemoved";

  /// Sent when an object is renamed. Publishes the renamed object.
  static final String ak_wwise_core_object_namechanged = "ak.wwise.core.object.nameChanged";

  /// Sent when the object's notes are changed.
  static final String ak_wwise_core_object_noteschanged = "ak.wwise.core.object.notesChanged";

  /// Sent when an object is created.
  static final String ak_wwise_core_object_created = "ak.wwise.core.object.created";

  /// Sent prior to an object's deletion.
  static final String ak_wwise_core_object_predeleted = "ak.wwise.core.object.preDeleted";

  /// Sent following an object's deletion.
  static final String ak_wwise_core_object_postdeleted = "ak.wwise.core.object.postDeleted";

  /// Sent when an object is added as a child to another object.
  static final String ak_wwise_core_object_childadded = "ak.wwise.core.object.childAdded";

  /// Sent when an object is removed from the children of another object.
  static final String ak_wwise_core_object_childremoved = "ak.wwise.core.object.childRemoved";

  /// Sent when one or many curves are changed.
  static final String ak_wwise_core_object_curvechanged = "ak.wwise.core.object.curveChanged";

  /// Sent when an attenuation curve is changed.
  static final String ak_wwise_core_object_attenuationcurvechanged = "ak.wwise.core.object.attenuationCurveChanged";

  /// Sent when an attenuation curve's link/unlink is changed.
  static final String ak_wwise_core_object_attenuationcurvelinkchanged =
      "ak.wwise.core.object.attenuationCurveLinkChanged";

  /// Sent when the watched property of an object changes.
  static final String ak_wwise_core_object_propertychanged = "ak.wwise.core.object.propertyChanged";

  /// Sent when a single SoundBank is generated. This could be sent multiple times during SoundBank generation, for every SoundBank generated and for every platform. To generate SoundBanks, refer to \ref ak_wwise_core_soundbank_generate or \ref ak_wwise_ui_commands_execute with one of the SoundBank generation commands. Refer to \ref globalcommandsids for the list of commands.
  static final String ak_wwise_core_soundbank_generated = "ak.wwise.core.soundbank.generated";

  /// Sent when all soundbanks are generated.
  static final String ak_wwise_core_soundbank_generationdone = "ak.wwise.core.soundbank.generationDone";

  /// Sent when an item is added to the log. This could be used to retrieve items added to the SoundBank generation log. To retrieve the complete log, refer to \ref ak_wwise_core_log_get.
  static final String ak_wwise_core_log_itemadded = "ak.wwise.core.log.itemAdded";

  /// Sent when the selection changes in the project.
  static final String ak_wwise_ui_selectionchanged = "ak.wwise.ui.selectionChanged";

  /// Sent when the project has been successfully loaded.
  static final String ak_wwise_core_project_loaded = "ak.wwise.core.project.loaded";

  /// Sent when the project begins closing.
  static final String ak_wwise_core_project_preclosed = "ak.wwise.core.project.preClosed";

  /// Sent when the after the project is completely closed.
  static final String ak_wwise_core_project_postclosed = "ak.wwise.core.project.postClosed";

  /// Sent when the project has been saved.
  static final String ak_wwise_core_project_saved = "ak.wwise.core.project.saved";

  /// Sent when the transport's state has changed.
  static final String ak_wwise_core_transport_statechanged = "ak.wwise.core.transport.stateChanged";

  /// Sent when an assert has failed. This is only available in Debug builds.
  static final String ak_wwise_debug_assertfailed = "ak.wwise.debug.assertFailed";

  /// Sent when a command is executed. The objects for which the command is executed are sent in the publication.
  static final String ak_wwise_ui_commands_executed = "ak.wwise.ui.commands.executed";

  /// Sent when a new entry is added to the capture log. Note that all entries are being sent. No filtering is applied as opposed to the Capture Log view.
  static final String ak_wwise_core_profiler_capturelog_itemadded = "ak.wwise.core.profiler.captureLog.itemAdded";
}
