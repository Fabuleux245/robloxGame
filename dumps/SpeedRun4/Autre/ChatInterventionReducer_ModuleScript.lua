-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:09
-- Luau version 6, Types version 3
-- Time taken: 0.000838 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
return require(Parent.Rodux).createReducer({
	timeoutData = {
		endTimestamp = 0;
		isEnforced = false;
	};
}, {
	[require(ExpChat.Actions.ChatTimeoutUpdated).name] = function(arg1, arg2) -- Line 24, Named "updateChatTimeoutData"
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		return Dictionary_upvr.join(arg1, {
			timeoutData = {
				endTimestamp = arg2.endTimestamp;
				isEnforced = arg2.isEnforced;
			};
		})
	end;
})