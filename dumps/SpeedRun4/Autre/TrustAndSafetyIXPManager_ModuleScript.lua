-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:01
-- Luau version 6, Types version 3
-- Time taken: 0.001931 seconds

local TrustAndSafetyIxp = script:FindFirstAncestor("TrustAndSafetyIxp")
local Parent = TrustAndSafetyIxp.Parent
local GetFFlagForceReportAnythingAnnotationEnabled_upvr = require(TrustAndSafetyIxp.Flags.GetFFlagForceReportAnythingAnnotationEnabled)
local module_upvr = {}
module_upvr.__index = module_upvr
local IXPServiceWrapper_upvr = require(Parent.IxpServiceWrapper).IXPServiceWrapper
function module_upvr.new(arg1) -- Line 19
	--[[ Upvalues[2]:
		[1]: IXPServiceWrapper_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local module = {}
	local var7 = arg1
	if not var7 then
		var7 = IXPServiceWrapper_upvr
	end
	module._ixpServiceWrapper = var7
	module._initialized = false
	module._ixpInitialized = false
	module._optionalScreenshotEnabled = false
	module._reportAnythingExperienceEnabled = false
	module._reportAnythingAvatarEnabled = false
	module._callbacks = {}
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.getReportAnythingExperienceEnabled(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: GetFFlagForceReportAnythingAnnotationEnabled_upvr (readonly)
	]]
	if GetFFlagForceReportAnythingAnnotationEnabled_upvr() then
		return true
	end
	local _reportAnythingExperienceEnabled = arg1._reportAnythingExperienceEnabled
	if not _reportAnythingExperienceEnabled then
		_reportAnythingExperienceEnabled = arg1._optionalScreenshotEnabled
	end
	return _reportAnythingExperienceEnabled
end
function module_upvr.getReportAnythingAvatarEnabled(arg1) -- Line 40
	--[[ Upvalues[1]:
		[1]: GetFFlagForceReportAnythingAnnotationEnabled_upvr (readonly)
	]]
	if GetFFlagForceReportAnythingAnnotationEnabled_upvr() then
		return true
	end
	local _reportAnythingAvatarEnabled = arg1._reportAnythingAvatarEnabled
	if not _reportAnythingAvatarEnabled then
		_reportAnythingAvatarEnabled = arg1._optionalScreenshotEnabled
	end
	return _reportAnythingAvatarEnabled
end
function module_upvr.waitForInitialization(arg1, arg2) -- Line 47
	if arg1._ixpInitialized then
		arg2()
	else
		table.insert(arg1._callbacks, arg2)
	end
end
local GetFFlagReportAnythingAnnotationIXP_upvr = require(Parent.SharedFlags).GetFFlagReportAnythingAnnotationIXP
local GetFStringReportAnythingAnnotationIXPLayerName_upvr = require(Parent.SharedFlags).GetFStringReportAnythingAnnotationIXPLayerName
local any_new_result1_upvr = require(Parent.CoreScriptsInitializer).CoreLogger:new(script.Name)
function module_upvr.initialize(arg1) -- Line 55
	--[[ Upvalues[3]:
		[1]: GetFFlagReportAnythingAnnotationIXP_upvr (readonly)
		[2]: GetFStringReportAnythingAnnotationIXPLayerName_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
	]]
	if arg1._initialized then
	else
		arg1._initialized = true
		local function invokeCallbacks_upvr() -- Line 61, Named "invokeCallbacks"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			for _, v in ipairs(arg1._callbacks) do
				v()
			end
			arg1._callbacks = {}
		end
		if not GetFFlagReportAnythingAnnotationIXP_upvr() then
			arg1._ixpInitialized = true
			invokeCallbacks_upvr()
			return
		end
		task.spawn(function() -- Line 74
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: GetFStringReportAnythingAnnotationIXPLayerName_upvr (copied, readonly)
				[3]: any_new_result1_upvr (copied, readonly)
				[4]: invokeCallbacks_upvr (readonly)
			]]
			arg1._ixpServiceWrapper:WaitForInitialization()
			local any_GetLayerData_result1 = arg1._ixpServiceWrapper:GetLayerData(GetFStringReportAnythingAnnotationIXPLayerName_upvr())
			if any_GetLayerData_result1 then
				arg1._optionalScreenshotEnabled = any_GetLayerData_result1.OptionalScreenshotEnabled or false
				arg1._reportAnythingExperienceEnabled = any_GetLayerData_result1.OptionalScreenshotExperience or false
				arg1._reportAnythingAvatarEnabled = any_GetLayerData_result1.OptionalScreenshotAvatar or false
			end
			any_new_result1_upvr:debug("RA Optional Screenshot enabled (Avatar and/or Experience) or Select In Scene enabled? Both Avatar and Exp: {}, Exp: {}, Avatar: {}, Select in Scene: {}. Invoking {} callbacks.", arg1._optionalScreenshotEnabled, arg1._reportAnythingExperienceEnabled, arg1._reportAnythingAvatarEnabled, arg1._selectInSceneEnabled, #arg1._callbacks)
			arg1._ixpInitialized = true
			invokeCallbacks_upvr()
		end)
	end
end
module_upvr.default = module_upvr.new()
return module_upvr