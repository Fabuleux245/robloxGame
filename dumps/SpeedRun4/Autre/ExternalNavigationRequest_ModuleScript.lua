-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:25
-- Luau version 6, Types version 3
-- Time taken: 0.000694 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Cryo_upvr = require(Parent.Cryo)
return require(Parent.Rodux).createReducer({
	screen = nil;
	params = nil;
	requestId = 0;
	completedRequestId = 0;
}, {
	[require(AppChat.Actions.NavigateIntoChat).name] = function(arg1, arg2) -- Line 18
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			screen = arg2.screen;
			params = arg2.params;
			requestId = arg1.requestId + 1;
		})
	end;
	[require(AppChat.Actions.CompleteExternalNavigationIntoChat).name] = function(arg1, arg2) -- Line 26
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			completedRequestId = arg2.requestId;
		})
	end;
})