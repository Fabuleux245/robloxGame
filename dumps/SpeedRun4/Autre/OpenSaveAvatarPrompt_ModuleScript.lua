-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:10
-- Luau version 6, Types version 3
-- Time taken: 0.000442 seconds

local Parent = script.Parent.Parent
local OpenPrompt_upvr = require(Parent.Actions.OpenPrompt)
local PromptType_upvr = require(Parent.PromptType)
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[2]:
		[1]: OpenPrompt_upvr (readonly)
		[2]: PromptType_upvr (readonly)
	]]
	return function(arg1_2) -- Line 7
		--[[ Upvalues[4]:
			[1]: OpenPrompt_upvr (copied, readonly)
			[2]: PromptType_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
		]]
		local tbl = {}
		tbl.humanoidDescription = arg1
		tbl.rigType = arg2
		arg1_2:dispatch(OpenPrompt_upvr(PromptType_upvr.SaveAvatar, tbl))
	end
end