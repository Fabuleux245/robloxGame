-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:27
-- Luau version 6, Types version 3
-- Time taken: 0.000419 seconds

local Parent = script.Parent.Parent
local OpenPublishAvatarPrompt_upvr = require(Parent.Actions.OpenPublishAvatarPrompt)
local PromptType_upvr = require(Parent.PromptType)
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[2]:
		[1]: OpenPublishAvatarPrompt_upvr (readonly)
		[2]: PromptType_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[4]:
			[1]: OpenPublishAvatarPrompt_upvr (copied, readonly)
			[2]: PromptType_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
		]]
		arg1_2:dispatch(OpenPublishAvatarPrompt_upvr(PromptType_upvr.PublishAvatar, arg1, arg2))
	end
end