-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:09
-- Luau version 6, Types version 3
-- Time taken: 0.000655 seconds

local PromptDismissed_upvr = require(script.Parent.Parent.Actions.PromptDismissed)
local CaptureService_upvr = game:GetService("CaptureService")
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[2]:
		[1]: PromptDismissed_upvr (readonly)
		[2]: CaptureService_upvr (readonly)
	]]
	return function(arg1_2) -- Line 8
		--[[ Upvalues[4]:
			[1]: PromptDismissed_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: CaptureService_upvr (copied, readonly)
			[4]: arg2 (readonly)
		]]
		arg1_2:dispatch(PromptDismissed_upvr(arg1))
		CaptureService_upvr:OnSavePromptFinished(arg1, arg2)
	end
end