-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:15
-- Luau version 6, Types version 3
-- Time taken: 0.005417 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local AdService_upvr = game:GetService("AdService")
local TeleportService_upvr = game:GetService("TeleportService")
local CorePackages = game:GetService("CorePackages")
local Promise_upvr = require(CorePackages.Packages.Promise)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("TeleportHistoryButtons")
local any_GetAdTeleportInfo_result1, any_GetAdTeleportInfo_result2 = AdService_upvr:GetAdTeleportInfo()
if 0 < any_GetAdTeleportInfo_result1 and (any_GetAdTeleportInfo_result2 == 0 or any_GetAdTeleportInfo_result2 == game.GameId) or game_GetEngineFeature_result1_upvr then
	local var8_upvw
end
if game_GetEngineFeature_result1_upvr and var8_upvw == 0 then
	local any_GetThirdPartyTeleportInfo_result1, _ = TeleportService_upvr:GetThirdPartyTeleportInfo(false)
	if 0 < any_GetThirdPartyTeleportInfo_result1 then
		var8_upvw = any_GetThirdPartyTeleportInfo_result1
	end
end
local function _(arg1, arg2) -- Line 37, Named "truncateWithEllipsis"
	if arg2 < #arg1 then
		return string.sub(arg1, 1, arg2 - 3).."..."
	end
	return arg1
end
local var11_upvw
local GetGameNameAndDescription_upvr = require(CorePackages.Workspace.Packages.GameDetailRodux).GetGameNameAndDescription
local var14_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Common.httpRequest)(game:GetService("HttpRbxApiService"))
local any_defer_result1_upvr = Promise_upvr.defer(function(arg1) -- Line 46
	--[[ Upvalues[5]:
		[1]: var8_upvw (read and write)
		[2]: GetGameNameAndDescription_upvr (readonly)
		[3]: var14_upvr (readonly)
		[4]: var11_upvw (read and write)
		[5]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	if 0 < var8_upvw then
		GetGameNameAndDescription_upvr(var14_upvr, var8_upvw):andThen(function(arg1_2) -- Line 48
			--[[ Upvalues[2]:
				[1]: var11_upvw (copied, read and write)
				[2]: game_GetEngineFeature_result1_upvr (copied, readonly)
			]]
			var11_upvw = arg1_2.Name
			local var16 = game_GetEngineFeature_result1_upvr
			if var16 then
				local Name = arg1_2.Name
				if 30 < #Name then
					var16 = string.sub(Name, 1, 27).."..."
				else
					var16 = Name
				end
				var11_upvw = var16
			end
		end):await()
		arg1()
	else
		arg1()
	end
end)
local module_upvr = {}
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
function module_upvr.getTooltipText() -- Line 62
	--[[ Upvalues[2]:
		[1]: var11_upvw (read and write)
		[2]: RobloxTranslator_upvr (readonly)
	]]
	if var11_upvw == nil then
		return RobloxTranslator_upvr:FormatByKey("InGame.CommonUI.Label.ReturnFallback")
	end
	return RobloxTranslator_upvr:FormatByKey("InGame.CommonUI.Label.ReturnTo", {
		placeName = var11_upvw;
	})
end
function module_upvr.getTooltipTextTimeout() -- Line 72
	--[[ Upvalues[4]:
		[1]: var11_upvw (read and write)
		[2]: Promise_upvr (readonly)
		[3]: any_defer_result1_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	if var11_upvw == nil then
		Promise_upvr.any({any_defer_result1_upvr, Promise_upvr.delay(1)}):await()
	end
	return module_upvr.getTooltipText()
end
local Roact_upvr = require(CorePackages.Packages.Roact)
function module_upvr.getMenuText() -- Line 79
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: var11_upvw (read and write)
		[4]: any_defer_result1_upvr (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2_upvr = Roact_upvr.createBinding(module_upvr.getTooltipText())
	if var11_upvw == nil then
		pcall(function() -- Line 82
			--[[ Upvalues[3]:
				[1]: any_defer_result1_upvr (copied, readonly)
				[2]: any_createBinding_result2_upvr (readonly)
				[3]: module_upvr (copied, readonly)
			]]
			any_defer_result1_upvr:andThen(function() -- Line 83
				--[[ Upvalues[2]:
					[1]: any_createBinding_result2_upvr (copied, readonly)
					[2]: module_upvr (copied, readonly)
				]]
				any_createBinding_result2_upvr(module_upvr.getTooltipText())
			end)
		end)
	end
	return any_createBinding_result1
end
local var32_upvw = false
function module_upvr.initiateBackButtonTeleport(arg1) -- Line 91
	--[[ Upvalues[4]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: var32_upvw (read and write)
		[3]: AdService_upvr (readonly)
		[4]: TeleportService_upvr (readonly)
	]]
	if game_GetEngineFeature_result1_upvr then
		if var32_upvw then
			AdService_upvr:ReturnToPublisherExperience(arg1)
		else
			TeleportService_upvr:TeleportTrustedBackForth(false)
		end
	end
	AdService_upvr:ReturnToPublisherExperience(arg1)
end
function module_upvr.hasReturnUniverse() -- Line 102
	--[[ Upvalues[1]:
		[1]: var8_upvw (read and write)
	]]
	local var34
	if 0 >= var8_upvw then
		var34 = false
	else
		var34 = true
	end
	return var34
end
return module_upvr