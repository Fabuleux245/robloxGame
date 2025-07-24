-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:15
-- Luau version 6, Types version 3
-- Time taken: 0.002503 seconds

local OtaPatchLoaderTelemetry_upvr = require(script.Parent.OtaPatchLoaderTelemetry)
local function _(arg1, arg2) -- Line 8, Named "FindFromPath"
	local var6
	for _, v in arg2 do
		var6 = var6:FindFirstChild(v, false)
		if not var6 then
			return nil
		end
	end
	return var6
end
local function _(arg1, arg2, arg3, arg4) -- Line 20, Named "recordEvent"
	--[[ Upvalues[1]:
		[1]: OtaPatchLoaderTelemetry_upvr (readonly)
	]]
	local tbl_8 = {}
	tbl_8.patchName = arg3
	tbl_8.extraMessage = arg4
	OtaPatchLoaderTelemetry_upvr.sendTelemetryEvent(arg1, arg2, tbl_8)
end
local Events_upvr = OtaPatchLoaderTelemetry_upvr.Events
local tbl_2_upvr = {}
local game_DefineFastInt_result1_upvr = game:DefineFastInt("LuaAppUpdatePatchDeferTimeMs", 45000)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 31
	--[[ Upvalues[4]:
		[1]: Events_upvr (readonly)
		[2]: OtaPatchLoaderTelemetry_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: game_DefineFastInt_result1_upvr (readonly)
	]]
	if not arg2 then
		return nil
	end
	local loggingProtocol_upvr = arg7.loggingProtocol
	local dataModelPatchService_upvr = arg7.dataModelPatchService
	if not dataModelPatchService_upvr then
		error("DataModelPatchService not provided to loadOtaPackages")
	end
	if not arg1 or arg1 == 0 then
		local tbl_3 = {}
		tbl_3.patchName = arg2
		tbl_3.extraMessage = nil
		OtaPatchLoaderTelemetry_upvr.sendTelemetryEvent(loggingProtocol_upvr, Events_upvr.NoUserId, tbl_3)
		return nil
	end
	local formatted = `{arg1}:{arg2}`
	local var16 = tbl_2_upvr[formatted]
	if var16 ~= nil then
		if var16 == "NONE" then
			return nil
		end
		return tbl_2_upvr[formatted]
	end
	local tbl_4 = {}
	tbl_4.patchName = arg2
	tbl_4.extraMessage = nil
	OtaPatchLoaderTelemetry_upvr.sendTelemetryEvent(loggingProtocol_upvr, Events_upvr.PatchLoadEntryPoint, tbl_4)
	local pcall_result1, pcall_result2 = pcall(function() -- Line 67
		--[[ Upvalues[11]:
			[1]: arg3 (readonly)
			[2]: arg4 (readonly)
			[3]: arg5 (readonly)
			[4]: dataModelPatchService_upvr (readonly)
			[5]: arg2 (readonly)
			[6]: arg1 (readonly)
			[7]: OtaPatchLoaderTelemetry_upvr (copied, readonly)
			[8]: loggingProtocol_upvr (readonly)
			[9]: game_DefineFastInt_result1_upvr (copied, readonly)
			[10]: Events_upvr (copied, readonly)
			[11]: arg6 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
		assert(arg3, "patchBehavior is nil")
		assert(arg4, "patchConfig is nil")
		assert(arg5, "patchPackagesRoot is nil")
		dataModelPatchService_upvr:RegisterPatch(arg2, arg3, arg4, arg1)
		local any_GetPatch_result1 = dataModelPatchService_upvr:GetPatch(arg2)
		local tbl_9 = {}
		tbl_9.patchName = arg2
		OtaPatchLoaderTelemetry_upvr.logCheckpointGetPatch(loggingProtocol_upvr, tick() - tick(), tbl_9)
		task.defer(function() -- Line 81
			--[[ Upvalues[4]:
				[1]: game_DefineFastInt_result1_upvr (copied, readonly)
				[2]: dataModelPatchService_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: arg2 (copied, readonly)
			]]
			local var22 = game_DefineFastInt_result1_upvr / 1000
			if 0 < var22 then
				task.wait(var22)
			end
			dataModelPatchService_upvr:UpdatePatch(arg1, arg2, function() -- Line 88
			end)
		end)
		local var24
		if not any_GetPatch_result1 then
			local tbl_7 = {}
			tbl_7.patchName = arg2
			tbl_7.extraMessage = nil
			OtaPatchLoaderTelemetry_upvr.sendTelemetryEvent(loggingProtocol_upvr, Events_upvr.NoPatchFound, tbl_7)
			return nil
		end
		-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [94] 77. Error Block 6 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [94] 77. Error Block 6 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [85] 69. Error Block 27 start (CF ANALYSIS FAILED)
		if not any_GetPatch_result1 then
			-- KONSTANTWARNING: GOTO [97] #79
		end
		-- KONSTANTERROR: [85] 69. Error Block 27 end (CF ANALYSIS FAILED)
	end)
	if pcall_result1 and pcall_result2 then
		local tbl_5 = {}
		tbl_5.patchName = arg2
		tbl_5.extraMessage = nil
		OtaPatchLoaderTelemetry_upvr.sendTelemetryEvent(loggingProtocol_upvr, Events_upvr.PatchLoadedOk, tbl_5)
		tbl_2_upvr[formatted] = pcall_result2
		return pcall_result2
	end
	if not pcall_result1 then
		local tbl = {}
		tbl.patchName = arg2
		tbl.extraMessage = tostring(pcall_result2)
		OtaPatchLoaderTelemetry_upvr.sendTelemetryEvent(loggingProtocol_upvr, Events_upvr.PatchLoadError, tbl)
	else
		local tbl_6 = {}
		tbl_6.patchName = arg2
		tbl_6.extraMessage = nil
		OtaPatchLoaderTelemetry_upvr.sendTelemetryEvent(loggingProtocol_upvr, Events_upvr.PatchLoadFailed, tbl_6)
	end
	tbl_2_upvr[formatted] = "NONE"
	return nil
end