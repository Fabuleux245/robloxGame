-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:47
-- Luau version 6, Types version 3
-- Time taken: 0.001110 seconds

local AppUserLayers_upvr = require(game:GetService("CorePackages").Workspace.Packages.ExperimentLayers).AppUserLayers
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("XboxPrimaryNavABIXPEnabled", false)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("XboxPrimaryNavABIXPEnrolledForAll", false)
local tbl_upvw = {}
local game_DefineFastString_result1_upvr = game:DefineFastString("XboxPrimaryNavABIXPVariable", "tenFootPrimaryNavEnabled")
return {
	isEnabled = function() -- Line 37, Named "isEnabled"
		--[[ Upvalues[2]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr_2 (readonly)
		]]
		local var5 = game_DefineFastFlag_result1_upvr
		if not var5 then
			var5 = game_DefineFastFlag_result1_upvr_2
		end
		return var5
	end;
	isEnrolledForAll = function() -- Line 33, Named "isEnrolledForAll"
		--[[ Upvalues[1]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
		]]
		return game_DefineFastFlag_result1_upvr
	end;
	isUserEnrolled = function() -- Line 41, Named "isUserEnrolled"
		--[[ Upvalues[5]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr_2 (readonly)
			[3]: tbl_upvw (read and write)
			[4]: AppUserLayers_upvr (readonly)
			[5]: game_DefineFastString_result1_upvr (readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			return true
		end
		local var7 = game_DefineFastFlag_result1_upvr
		if not var7 then
			var7 = game_DefineFastFlag_result1_upvr_2
		end
		if not var7 then
			return false
		end
		local var8 = tbl_upvw[AppUserLayers_upvr.XboxClassicUILayer]
		if not var8 then
			var8 = {}
		end
		return var8[game_DefineFastString_result1_upvr] or false
	end;
	layer = AppUserLayers_upvr.XboxClassicUILayer;
	experiment = require(script.Parent.makeExperiment)("OnUserLayerLoadingStatusChanged", "GetUserLayerLoadingStatus", "GetUserLayerVariables", "LogUserLayerExposure", "GetUserStatusForLayer");
	setExperimentState = function(arg1) -- Line 29, Named "setExperimentState"
		--[[ Upvalues[1]:
			[1]: tbl_upvw (read and write)
		]]
		tbl_upvw = arg1
	end;
}