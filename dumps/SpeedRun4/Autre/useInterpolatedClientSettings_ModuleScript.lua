-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:22
-- Luau version 6, Types version 3
-- Time taken: 0.001034 seconds

local React_upvr = require(script:FindFirstAncestor("ExpChat").Parent.React)
local Parent_upvr = require(script.Parent)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ExpChatAddressFrame0Flash", false)
local ClientSettingsUtility_upvr = require(script.Parent.ClientSettingsUtility)
return function(arg1) -- Line 11
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: Parent_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: ClientSettingsUtility_upvr (readonly)
	]]
	local any_useContext_result1_upvr = React_upvr.useContext(Parent_upvr)
	local tbl = {}
	local var8
	if game_DefineFastFlag_result1_upvr then
		var8 = ClientSettingsUtility_upvr.getBackgroundColor(arg1, any_useContext_result1_upvr)
	else
		var8 = nil
	end
	tbl.BackgroundColor3 = var8
	if not game_DefineFastFlag_result1_upvr then
		var8 = ClientSettingsUtility_upvr.getBackgroundColor(arg1, any_useContext_result1_upvr)
	else
		var8 = nil
	end
	tbl.BackgroundColor = var8
	var8 = ClientSettingsUtility_upvr.getBackgroundTransparency(arg1, any_useContext_result1_upvr)
	tbl.BackgroundTransparency = var8
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(tbl)
	var8 = React_upvr.useEffect
	local tbl_2 = {}
	tbl_2[1] = arg1
	tbl_2[2] = any_useContext_result1_upvr
	var8(function() -- Line 24
		--[[ Upvalues[4]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: ClientSettingsUtility_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: any_useContext_result1_upvr (readonly)
		]]
		any_useState_result2_upvr({
			BackgroundColor3 = ClientSettingsUtility_upvr.getBackgroundColor(arg1, any_useContext_result1_upvr);
			BackgroundTransparency = ClientSettingsUtility_upvr.getBackgroundTransparency(arg1, any_useContext_result1_upvr);
		})
	end, tbl_2)
	return any_useState_result1
end