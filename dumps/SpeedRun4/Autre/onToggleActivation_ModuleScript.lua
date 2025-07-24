-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:29
-- Luau version 6, Types version 3
-- Time taken: 0.000948 seconds

local Parent = script.Parent.Parent
local CapturesActivated_upvr = require(Parent.Actions.CapturesActivated)
local ToastTriggered_upvr = require(Parent.Actions.ToastTriggered)
local CapturesToastType_upvr = require(Parent.Enums.CapturesToastType)
local CapturesDeactivated_upvr = require(Parent.Actions.CapturesDeactivated)
local ToastDismissed_upvr = require(Parent.Actions.ToastDismissed)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 9
	--[[ Upvalues[5]:
		[1]: CapturesActivated_upvr (readonly)
		[2]: ToastTriggered_upvr (readonly)
		[3]: CapturesToastType_upvr (readonly)
		[4]: CapturesDeactivated_upvr (readonly)
		[5]: ToastDismissed_upvr (readonly)
	]]
	if not arg2 or arg2 == 1 or not arg1 then
		arg3(arg5)
		arg4(CapturesActivated_upvr())
		arg4(ToastTriggered_upvr(CapturesToastType_upvr.CapturesActivated))
	elseif arg1 then
		arg3(arg6)
		arg4(CapturesDeactivated_upvr())
		arg4(ToastDismissed_upvr())
	end
end