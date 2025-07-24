-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:12
-- Luau version 6, Types version 3
-- Time taken: 0.001206 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local View_upvr = Foundation.View
local Enums_upvr = Foundation.Enums
local AvatarWithLabel_upvr = require(script.Parent.AvatarWithLabel)
local Icon_upvr = Foundation.Icon
return React_upvr.memo(function(arg1) -- Line 23, Named "MemberEntry"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: Enums_upvr (readonly)
		[5]: AvatarWithLabel_upvr (readonly)
		[6]: Icon_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
	local tbl = {}
	local var12 = "size-full"
	tbl.tag = var12
	if arg1.user then
		var12 = React_upvr.useCallback(function() -- Line 24
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.onActivated and arg1.user then
				arg1.onActivated(arg1.user)
			end
		end, {arg1.onActivated, arg1.user})
	else
		var12 = nil
	end
	tbl.onActivated = var12
	tbl.stateLayer = {
		affordance = Enums_upvr.StateLayerAffordance.None;
	}
	if arg1.user then
		-- KONSTANTWARNING: GOTO [57] #41
	end
	-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 40. Error Block 36 start (CF ANALYSIS FAILED)
	;({}).image = "rbxasset://textures/ui/LuaChatV2/ic-friend-empty-border.png"
	if arg1.user then
		-- KONSTANTWARNING: GOTO [68] #48
	end
	-- KONSTANTERROR: [56] 40. Error Block 36 end (CF ANALYSIS FAILED)
end)