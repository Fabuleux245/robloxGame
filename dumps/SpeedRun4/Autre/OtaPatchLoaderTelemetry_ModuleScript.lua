-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:15
-- Luau version 6, Types version 3
-- Time taken: 0.005140 seconds

local Parent = script:FindFirstAncestor("OtaPatchLoader").Parent
local default = require(Parent.LoggingProtocol).default
local Logger_upvr = require(Parent.Loggers).Logger
local game_DefineFastInt_result1 = game:DefineFastInt("OtaLoaderCheckpointEventHundredthsPercent", 0)
local tbl_upvr_5 = {
	INFO = "INFO";
	ERROR = "ERROR";
}
local function _(arg1, arg2) -- Line 16, Named "genEvent"
	local module = {}
	module.Type = arg1
	module.Description = arg2
	return module
end
local tbl_upvr = {
	PatchLoadEntryPoint = {
		Type = tbl_upvr_5.INFO;
		Description = "Patch load entry point";
	};
	NoUserId = {
		Type = tbl_upvr_5.INFO;
		Description = "No User Id; can't load patch";
	};
	NoPatchFound = {
		Type = tbl_upvr_5.INFO;
		Description = "No patch found";
	};
	PatchLoadedOk = {
		Type = tbl_upvr_5.INFO;
		Description = "Patch loaded successfully";
	};
	PatchPackageFound = {
		Type = tbl_upvr_5.INFO;
		Description = "Package found in patch; attemping to require";
	};
	PatchPackageRequiredOk = {
		Type = tbl_upvr_5.INFO;
		Description = "Package successfully required from patch; using patch's package";
	};
	PackageValidationFailed = {
		Type = tbl_upvr_5.INFO;
		Description = "Package validation failed";
	};
	PatchLoadFailed = {
		Type = tbl_upvr_5.INFO;
		Description = "Patch failed to load";
	};
	MissingPatchRoot = {
		Type = tbl_upvr_5.ERROR;
		Description = "Could not find root of patch";
	};
	PatchLoadError = {
		Type = tbl_upvr_5.ERROR;
		Description = "Error when loading a patch";
	};
	RequirePackageError = {
		Type = tbl_upvr_5.ERROR;
		Description = "Script error on requiring the patch package";
	};
	RequirePackageEmpty = {
		Type = tbl_upvr_5.ERROR;
		Description = "Patch package was empty";
	};
	PatchPackageMissing = {
		Type = tbl_upvr_5.ERROR;
		Description = "Package missing in patch";
	};
	PackageValidationError = {
		Type = tbl_upvr_5.ERROR;
		Description = "Package validation script error";
	};
}
local tbl_upvr_4 = {
	eventName = "OtaPatch_Info";
	backends = {default.TelemetryBackends.Points};
	throttlingPercentage = game:DefineFastInt("OtaLoaderInfoEventHundredthsPercent2", 0);
	lastUpdated = {24, 6, 5};
	description = "Informative events for the OTA patch loader";
	links = "";
}
local tbl_upvr_3 = {
	eventName = "OtaPatch_Error";
	backends = {default.TelemetryBackends.Points};
	throttlingPercentage = game:DefineFastInt("OtaLoaderErrorEventHundredthsPercent2", 0);
	lastUpdated = {24, 6, 5};
	description = "Errors for the OTA patch loader";
	links = "";
}
local tbl_4_upvr = {
	eventName = "OtaPatch_Checkpoint_Total";
	backends = {default.TelemetryBackends.Stats};
	throttlingPercentage = game_DefineFastInt_result1;
	lastUpdated = {24, 11, 12};
	description = "Total time to load the ota patch";
	links = "";
}
local tbl_2_upvr = {
	eventName = "OtaPatch_Checkpoint_GetPatch";
	backends = {default.TelemetryBackends.Stats};
	throttlingPercentage = game_DefineFastInt_result1;
	lastUpdated = {24, 11, 12};
	description = "Time to register and load an ota patch";
	links = "";
}
local tbl_upvr_2 = {
	eventName = "OtaPatch_Checkpoint_RequireStarter";
	backends = {default.TelemetryBackends.Stats};
	throttlingPercentage = game_DefineFastInt_result1;
	lastUpdated = {24, 11, 12};
	description = "Time to require the patch starter script";
	links = "";
}
local module_2 = {}
local tbl = {}
for i, _ in pairs(tbl_upvr) do
	tbl[i] = i
end
module_2.Events = tbl
setmetatable(module_2.Events, {
	__newindex = function(arg1, arg2, arg3) -- Line 113, Named "__newindex"
		error(`Trying to modify static table with key {arg2}, index {arg3}`)
	end;
	__index = function(arg1, arg2) -- Line 116, Named "__index"
		error(`OtaPatchLoaderTelemetry - Could not find telemetry event for {arg2}`)
	end;
})
function module_2.sendTelemetryEvent(arg1, arg2, arg3) -- Line 121
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_5 (readonly)
		[3]: tbl_upvr_3 (readonly)
		[4]: tbl_upvr_4 (readonly)
		[5]: Logger_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	if not arg1 then
	else
		local var47 = tbl_upvr[arg2]
		if not var47 then
			error(`OtaPatchLoaderTelemetry - Could not find telemetry event for {arg2}`)
			return
		end
		if var47.Type == tbl_upvr_5.ERROR then
			-- KONSTANTWARNING: GOTO [46] #36
		end
		-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 21. Error Block 27 start (CF ANALYSIS FAILED)
		if var47.Type == tbl_upvr_5.INFO then
		else
			error(`OtaPatchLoaderTelemetry - Unknown event type {var47.Type} for event {arg2}`)
			return
		end
		local var48 = "[OtaPatchLoaderTelemetry]"
		if arg3.packageName then
			var48 = `{var48}[{arg3.packageName}]`
		end
		var48 = `{var48} Event {arg2}`
		local var49 = var48
		if arg3.extraMessage then
			var49 = `{var49} - {arg3.extraMessage}`
		end
		Logger_upvr:info(var49)
		local clone = table.clone(arg3)
		clone.eventName = arg2
		arg1:logRobloxTelemetryEvent(tbl_upvr_4, {arg1.StandardizedFields.addOsInfo}, clone)
		-- KONSTANTERROR: [25] 21. Error Block 27 end (CF ANALYSIS FAILED)
	end
end
local function logCheckpoint_upvr(arg1, arg2, arg3, arg4) -- Line 166, Named "logCheckpoint"
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	if not arg1 then
	else
		local tbl_3 = {}
		if arg4 then
			tbl_3 = table.clone(arg4)
		end
		local var53 = arg3 * 1000
		Logger_upvr:info(`[OtaPatchLoaderTelemetry] Checkpoint {arg2.eventName} took {var53}ms`)
		arg1:logRobloxTelemetryStat(arg2, var53, tbl_3)
	end
end
function module_2.logCheckpointTotal(arg1, arg2, arg3) -- Line 183
	--[[ Upvalues[2]:
		[1]: logCheckpoint_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	logCheckpoint_upvr(arg1, tbl_4_upvr, arg2, arg3)
end
function module_2.logCheckpointGetPatch(arg1, arg2, arg3) -- Line 187
	--[[ Upvalues[2]:
		[1]: logCheckpoint_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	logCheckpoint_upvr(arg1, tbl_2_upvr, arg2, arg3)
end
function module_2.logCheckpointRequireStarter(arg1, arg2, arg3) -- Line 191
	--[[ Upvalues[2]:
		[1]: logCheckpoint_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	logCheckpoint_upvr(arg1, tbl_upvr_2, arg2, arg3)
end
return module_2