-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:42
-- Luau version 6, Types version 3
-- Time taken: 0.001725 seconds

local game_DefineFastString_result1_upvr_3 = game:DefineFastString("ContactImportLayer", "Social.ContactList")
local useUserExperiment_upvr = require(script:FindFirstAncestor("ContactImporter").Parent.RoactAppExperiment).useUserExperiment
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("ContactImportGreenFindFriendsButtonExperimentVariable", "green_find_friends_button")
local function var3_upvr(arg1) -- Line 12
	--[[ Upvalues[2]:
		[1]: game_DefineFastString_result1_upvr_3 (readonly)
		[2]: game_DefineFastString_result1_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5 = arg1
	if not var5 then
		var5 = {}
	end
	var5 = var5[game_DefineFastString_result1_upvr_3]
	local var6 = var5
	if not var6 then
		var6 = {}
	end
	if var6[game_DefineFastString_result1_upvr_2] ~= true then
	else
	end
	return true
end
local game_DefineFastString_result1_upvr = game:DefineFastString("ContactImportRemoveCloseButtonExperimentVariable", "remove_close_button")
local function var7_upvr(arg1) -- Line 18
	--[[ Upvalues[2]:
		[1]: game_DefineFastString_result1_upvr_3 (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var9 = arg1
	if not var9 then
		var9 = {}
	end
	var9 = var9[game_DefineFastString_result1_upvr_3]
	local var10 = var9
	if not var10 then
		var10 = {}
	end
	if var10[game_DefineFastString_result1_upvr] ~= true then
	else
	end
	return true
end
return {
	isGreenFindFriendsButtonExperimentEnabled = var3_upvr;
	isRemoveCloseButtonExperimentEnabled = var7_upvr;
	useIsGreenFindFriendsButtonExperimentEnabled = function(arg1) -- Line 27, Named "useIsGreenFindFriendsButtonExperimentEnabled"
		--[[ Upvalues[3]:
			[1]: useUserExperiment_upvr (readonly)
			[2]: game_DefineFastString_result1_upvr_3 (readonly)
			[3]: var3_upvr (readonly)
		]]
		return useUserExperiment_upvr({game_DefineFastString_result1_upvr_3}, var3_upvr, arg1.isExposureEnabled)
	end;
	useIsRemoveCloseButtonExperimentEnabled = function(arg1) -- Line 34, Named "useIsRemoveCloseButtonExperimentEnabled"
		--[[ Upvalues[3]:
			[1]: useUserExperiment_upvr (readonly)
			[2]: game_DefineFastString_result1_upvr_3 (readonly)
			[3]: var7_upvr (readonly)
		]]
		return useUserExperiment_upvr({game_DefineFastString_result1_upvr_3}, var7_upvr, arg1.isExposureEnabled)
	end;
}