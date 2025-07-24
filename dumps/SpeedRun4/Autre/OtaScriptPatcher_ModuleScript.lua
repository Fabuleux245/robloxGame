-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:17
-- Luau version 6, Types version 3
-- Time taken: 0.005184 seconds

local OtaPatchLoader = script:FindFirstAncestor("OtaPatchLoader")
local Parent = OtaPatchLoader.Parent
local default_upvr = require(Parent.LoggingProtocol).default
local OtaPatchLoaderTelemetry_upvr = require(script.Parent.OtaPatchLoaderTelemetry)
local module_upvr = {}
module_upvr.__index = module_upvr
local function _(arg1, arg2, arg3, arg4) -- Line 23, Named "recordEvent"
	--[[ Upvalues[2]:
		[1]: OtaPatchLoaderTelemetry_upvr (readonly)
		[2]: default_upvr (readonly)
	]]
	local tbl_5 = {}
	tbl_5.patchName = arg2
	tbl_5.packageName = arg3
	tbl_5.extraMessage = arg4
	OtaPatchLoaderTelemetry_upvr.sendTelemetryEvent(default_upvr, arg1, tbl_5)
end
function module_upvr.new() -- Line 31
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {
		corePackages = game:GetService("CorePackages");
		patchName = nil;
		otaPackagesRoot = nil;
	}
	setmetatable(module, module_upvr)
	return module
end
local FFlagLuaAppDisableAllOtaPackages_upvr = require(OtaPatchLoader.Flags.FFlagLuaAppDisableAllOtaPackages)
local Players_upvr = game:GetService("Players")
local AppStorageService_upvr = game:GetService("AppStorageService")
local DataModelPatchService_upvr = game:GetService("DataModelPatchService")
local loadOtaPackages_upvr = require(script.Parent.loadOtaPackages)
function module_upvr.load(arg1, arg2) -- Line 42
	--[[ Upvalues[7]:
		[1]: FFlagLuaAppDisableAllOtaPackages_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: AppStorageService_upvr (readonly)
		[4]: default_upvr (readonly)
		[5]: DataModelPatchService_upvr (readonly)
		[6]: loadOtaPackages_upvr (readonly)
		[7]: OtaPatchLoaderTelemetry_upvr (readonly)
	]]
	local var13
	if var13 then
	else
		var13 = _G.__TESTEZ_RUNNING_TEST__
		if var13 then return end
		var13 = arg2.patchName
		arg1.patchName = var13
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var13 = Players_upvr.LocalPlayer.UserId
			return var13
		end
		if not Players_upvr.LocalPlayer or not INLINED() then
			var13 = nil
		end
		if not var13 or var13 <= 0 then
			var13 = tonumber(AppStorageService_upvr:GetItem("UserId")) or 0
		end
		assert(var13, "userId should always exist; assert to workaround static analysis")
		local loadOtaPackages_upvr_result1 = loadOtaPackages_upvr(var13, arg1.patchName, arg2.patchBehavior, arg2.patchConfig, arg2.patchPackagesRoot, arg2.patchStarterScriptPath, {
			loggingProtocol = default_upvr;
			dataModelPatchService = DataModelPatchService_upvr;
		})
		arg1.otaPackagesRoot = loadOtaPackages_upvr_result1
		local tbl_4 = {}
		local patchName_2 = arg1.patchName
		tbl_4.patchName = patchName_2
		if loadOtaPackages_upvr_result1 ~= nil then
			patchName_2 = "true"
		else
			patchName_2 = "false"
		end
		tbl_4.otaPackagesLoaded = patchName_2
		OtaPatchLoaderTelemetry_upvr.logCheckpointTotal(default_upvr, tick() - tick(), tbl_4)
	end
end
local var18_upvw
function module_upvr.replacePackage(arg1, arg2, arg3) -- Line 89
	--[[ Upvalues[1]:
		[1]: var18_upvw (read and write)
	]]
	if not arg2 or not arg3 then
	else
		if not var18_upvw then
			var18_upvw = arg1.corePackages:FindFirstChild("OtaBackups")
			if not var18_upvw then
				var18_upvw = Instance.new("Folder")
				assert(var18_upvw, "otaBackups should always exist")
				var18_upvw.Name = "OtaBackups"
				var18_upvw.Parent = arg1.corePackages
			end
		end
		arg3.Name = arg2.Name
		arg3.Parent = arg2.Parent
		arg2.Parent = var18_upvw
	end
end
function module_upvr.revertPackage(arg1, arg2) -- Line 109
	--[[ Upvalues[1]:
		[1]: var18_upvw (read and write)
	]]
	if var18_upvw then
		local Name = arg2.Name
		local SOME = var18_upvw:FindFirstChild(Name)
		if SOME then
			SOME.Parent = arg2.Parent
			arg2.Name = `{Name}_bad`
			arg2.Parent = nil
			return SOME
		end
	end
	return nil
end
local Events_upvr = OtaPatchLoaderTelemetry_upvr.Events
local OtaPackagesStatus_upvr = require(Parent.OtaPatchPackagesStatus).OtaPackagesStatus
function module_upvr.requirePackageFromOta(arg1, arg2) -- Line 126
	--[[ Upvalues[4]:
		[1]: Events_upvr (readonly)
		[2]: OtaPatchLoaderTelemetry_upvr (readonly)
		[3]: default_upvr (readonly)
		[4]: OtaPackagesStatus_upvr (readonly)
	]]
	local patchName_3 = arg1.patchName
	local Name_2 = arg2.Name
	local otaPackagesRoot_2 = arg1.otaPackagesRoot
	local var41_upvw
	local var42
	local var43
	if otaPackagesRoot_2 then
		var41_upvw = otaPackagesRoot_2:FindFirstChild(Name_2)
		if var41_upvw then
			local pcall_result1, pcall_result2 = pcall(function() -- Line 137
				--[[ Upvalues[1]:
					[1]: var41_upvw (read and write)
				]]
				return require(var41_upvw)
			end)
			var42 = pcall_result1
			var43 = pcall_result2
			if var42 and var43 then
				OtaPatchLoaderTelemetry_upvr.sendTelemetryEvent(default_upvr, Events_upvr.PatchPackageRequiredOk, {
					patchName = patchName_3;
					packageName = Name_2;
					extraMessage = nil;
				})
				OtaPackagesStatus_upvr.AddPackageStatus(patchName_3, Name_2, true)
				return var43
			end
		end
	end
	if not var41_upvw then
		OtaPatchLoaderTelemetry_upvr.sendTelemetryEvent(default_upvr, Events_upvr.PatchPackageMissing, {
			patchName = patchName_3;
			packageName = Name_2;
			extraMessage = nil;
		})
	elseif not var42 then
		OtaPatchLoaderTelemetry_upvr.sendTelemetryEvent(default_upvr, Events_upvr.RequirePackageError, {
			patchName = patchName_3;
			packageName = Name_2;
			extraMessage = tostring(var43);
		})
	elseif var43 == nil then
		OtaPatchLoaderTelemetry_upvr.sendTelemetryEvent(default_upvr, Events_upvr.RequirePackageEmpty, {
			patchName = patchName_3;
			packageName = Name_2;
			extraMessage = nil;
		})
	end
	local any_revertPackage_result1 = arg1:revertPackage(arg2)
	if any_revertPackage_result1 then
		OtaPackagesStatus_upvr.AddPackageStatus(patchName_3, Name_2, false)
		return require(any_revertPackage_result1)
	end
	error(`Could not require OTA package '{Name_2}', from '{patchName_3}'. Original package is missing and cannot be found anymore.`)
	return nil
end
return module_upvr