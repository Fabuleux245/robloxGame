-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:47
-- Luau version 6, Types version 3
-- Time taken: 0.003884 seconds

local CorePackages = game:GetService("CorePackages")
local Promise_upvr = require(CorePackages.Packages.Promise)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("TeleportHistoryButtons")
local var4
if game_GetEngineFeature_result1_upvr then
	local any_GetThirdPartyTeleportInfo_result1, any_GetThirdPartyTeleportInfo_result2 = game:GetService("TeleportService"):GetThirdPartyTeleportInfo(true)
	var4 = any_GetThirdPartyTeleportInfo_result1
	local var7_upvw
end
if game_GetEngineFeature_result1_upvr and 0 < var4 then
	var7_upvw = var4
end
local function _(arg1, arg2) -- Line 30, Named "truncateWithEllipsis"
	if arg2 < #arg1 then
		return string.sub(arg1, 1, arg2 - 3).."..."
	end
	return arg1
end
local var8_upvw
local GetGameNameAndDescription_upvr = require(CorePackages.Workspace.Packages.GameDetailRodux).GetGameNameAndDescription
local var11_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Common.httpRequest)(game:GetService("HttpRbxApiService"))
local any_defer_result1_upvr = Promise_upvr.defer(function(arg1) -- Line 39
	--[[ Upvalues[4]:
		[1]: var7_upvw (read and write)
		[2]: GetGameNameAndDescription_upvr (readonly)
		[3]: var11_upvr (readonly)
		[4]: var8_upvw (read and write)
	]]
	if 0 < var7_upvw then
		GetGameNameAndDescription_upvr(var11_upvr, var7_upvw):andThen(function(arg1_2) -- Line 41
			--[[ Upvalues[1]:
				[1]: var8_upvw (copied, read and write)
			]]
			local Name = arg1_2.Name
			local var14
			if 30 < #Name then
				var14 = string.sub(Name, 1, 27).."..."
			else
				var14 = Name
			end
			var8_upvw = var14
		end):await()
		arg1()
	else
		arg1()
	end
end)
local module_upvr = {}
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
function module_upvr.getTooltipText() -- Line 51
	--[[ Upvalues[2]:
		[1]: var8_upvw (read and write)
		[2]: RobloxTranslator_upvr (readonly)
	]]
	if var8_upvw == nil then
		return RobloxTranslator_upvr:FormatByKey("InGame.CommonUI.Label.ReturnFallback")
	end
	return RobloxTranslator_upvr:FormatByKey("InGame.CommonUI.Label.ReturnTo", {
		placeName = var8_upvw;
	})
end
function module_upvr.getTooltipTextTimeout() -- Line 61
	--[[ Upvalues[4]:
		[1]: var8_upvw (read and write)
		[2]: Promise_upvr (readonly)
		[3]: any_defer_result1_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	if var8_upvw == nil then
		Promise_upvr.any({any_defer_result1_upvr, Promise_upvr.delay(1)}):await()
	end
	return module_upvr.getTooltipText()
end
local Roact_upvr = require(CorePackages.Packages.Roact)
function module_upvr.getMenuText() -- Line 67
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: var8_upvw (read and write)
		[4]: any_defer_result1_upvr (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2_upvr = Roact_upvr.createBinding(module_upvr.getTooltipText())
	if var8_upvw == nil then
		pcall(function() -- Line 70
			--[[ Upvalues[3]:
				[1]: any_defer_result1_upvr (copied, readonly)
				[2]: any_createBinding_result2_upvr (readonly)
				[3]: module_upvr (copied, readonly)
			]]
			any_defer_result1_upvr:andThen(function() -- Line 71
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
local TeleportService_upvr = game:GetService("TeleportService")
function module_upvr.initiateFrontButtonTeleport() -- Line 78
	--[[ Upvalues[2]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: TeleportService_upvr (readonly)
	]]
	if game_GetEngineFeature_result1_upvr then
		TeleportService_upvr:TeleportTrustedBackForth(true)
	end
end
function module_upvr.hasReturnUniverse() -- Line 83
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	local var31
	if 0 >= var7_upvw then
		var31 = false
	else
		var31 = true
	end
	return var31
end
return module_upvr