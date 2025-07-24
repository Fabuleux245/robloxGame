-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:02
-- Luau version 6, Types version 3
-- Time taken: 0.000569 seconds

local Parent = script.Parent.Parent
local PlatformInterface_upvr = require(Parent.Services.PlatformInterface)
local module_upvr = {PlatformInterface_upvr}
local Thunk_upvr = require(Parent.Thunk)
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local PromptState_upvr = require(Parent.Enums.PromptState)
return function() -- Line 13, Named "openRobuxStore"
	--[[ Upvalues[5]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: PlatformInterface_upvr (readonly)
		[4]: SetPromptState_upvr (readonly)
		[5]: PromptState_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1, arg2) -- Line 14
		--[[ Upvalues[3]:
			[1]: PlatformInterface_upvr (copied, readonly)
			[2]: SetPromptState_upvr (copied, readonly)
			[3]: PromptState_upvr (copied, readonly)
		]]
		arg1:dispatch(SetPromptState_upvr(PromptState_upvr.UpsellInProgress))
		arg2[PlatformInterface_upvr].openRobuxStore()
	end)
end