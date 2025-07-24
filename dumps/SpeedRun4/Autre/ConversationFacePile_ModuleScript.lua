-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:21
-- Luau version 6, Types version 3
-- Time taken: 0.001576 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local any_new_result1_upvr = require(Parent.Loggers).Logger:new(script.Name)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local React_upvr = require(Parent.React)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getStandardSizeAvatarHeadShotRbxthumb_upvr = require(Parent.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb
local ImagePile_upvr = require(Parent.AppBlox).ImagePile
return function(arg1) -- Line 20, Named "ConversationFacePile"
	--[[ Upvalues[7]:
		[1]: any_new_result1_upvr (readonly)
		[2]: useLocalUserId_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[7]: ImagePile_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
	if not arg1.conversationId or arg1.conversationId == "" then
		any_new_result1_upvr:warning("conversationId cannot be nil nor an empty string")
		return nil
	end
	local var6_result1 = useSelector_upvr(React_upvr.useCallback(function(arg1_2) -- Line 30
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_2 and arg1_2.ChatAppReducer and arg1_2.ChatAppReducer.Conversations then
			return arg1_2.ChatAppReducer.Conversations[arg1.conversationId]
		end
		return nil
	end, {arg1.conversationId}))
	local var12
	if var6_result1 and var6_result1.participants then
		var12 = var6_result1.participants
	else
		var12 = {}
	end
	local tbl = {}
	if #var12 == 1 then
		table.insert(tbl, {
			Image = getStandardSizeAvatarHeadShotRbxthumb_upvr(useLocalUserId_upvr());
		})
		-- KONSTANTWARNING: GOTO [87] #65
	end
	-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 46. Error Block 39 start (CF ANALYSIS FAILED)
	local const_number = 1
	while #tbl < 2 and const_number <= #var12 do
		local var16 = var12[const_number]
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if var16 ~= useLocalUserId_upvr() then
			table.insert(tbl, {
				Image = getStandardSizeAvatarHeadShotRbxthumb_upvr(var16);
			})
		end
	end
	do
		return React_upvr.createElement(ImagePile_upvr, {
			images = tbl;
			imageBorderColor = useStyle_upvr().Theme.BackgroundDefault.Color;
		})
	end
	-- KONSTANTERROR: [62] 46. Error Block 39 end (CF ANALYSIS FAILED)
end