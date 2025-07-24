-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:07
-- Luau version 6, Types version 3
-- Time taken: 0.003041 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local CorePackages = game:GetService("CorePackages")
game:DefineFastFlag("PointAndClickCursor", false)
game:DefineFastFlag("GamepadPointAndClick", false)
game:DefineFastFlag("GamepadDirectionalOverrideByUniverseIDEnabled", false)
game:DefineFastString("GamepadDirectionalOverrideByUniverseID", "{\"allowlist\":[]}")
local IXPServiceWrapper_upvr = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local AppUserLayers_upvr = require(CorePackages.Workspace.Packages.ExperimentLayers).AppUserLayers
local pcall_result1, pcall_result2 = pcall(function() -- Line 13
	--[[ Upvalues[2]:
		[1]: IXPServiceWrapper_upvr (readonly)
		[2]: AppUserLayers_upvr (readonly)
	]]
	return IXPServiceWrapper_upvr:GetLayerData(AppUserLayers_upvr.PointAndClick)
end)
local var7_upvw
if pcall_result1 and pcall_result2 then
	if pcall_result2.generatedExperimentVariantDistributionVariable ~= 1 then
		var7_upvw = false
	else
		var7_upvw = true
	end
end
if game:GetFastFlag("PointAndClickCursor") then
end
local var8_upvr = not game:GetFastFlag("GamepadDirectionalOverrideByUniverseIDEnabled")
if not var8_upvr then
	local allowlist = game:GetService("HttpService"):JSONDecode(game:GetFastString("GamepadDirectionalOverrideByUniverseID")).allowlist
	if not allowlist then
		allowlist = {}
	end
	if table.find(allowlist, game.GameId) == nil then
		var8_upvr = false
	else
		var8_upvr = true
	end
end
local game_GetFastFlag_result1_upvr = game:GetFastFlag("GamepadPointAndClick")
return function() -- Line 26, Named "getFFlagPointAndClickCursor"
	--[[ Upvalues[3]:
		[1]: var8_upvr (readonly)
		[2]: var7_upvw (read and write)
		[3]: game_GetFastFlag_result1_upvr (readonly)
	]]
	local var12 = var8_upvr
	if var12 then
		var12 = var7_upvw
		if not var12 then
			var12 = game_GetFastFlag_result1_upvr
		end
	end
	return var12
end