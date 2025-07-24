-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:11
-- Luau version 6, Types version 3
-- Time taken: 0.000749 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local UpdateSelectedCaptures_upvr = require(Parent.Actions.UpdateSelectedCaptures)
local getUpdatedSelectedCapturesArray_upvr = require(Parent.Utils.getUpdatedSelectedCapturesArray)
return function(arg1) -- Line 9
	--[[ Upvalues[3]:
		[1]: Constants_upvr (readonly)
		[2]: UpdateSelectedCaptures_upvr (readonly)
		[3]: getUpdatedSelectedCapturesArray_upvr (readonly)
	]]
	return function(arg1_2) -- Line 10
		--[[ Upvalues[4]:
			[1]: Constants_upvr (copied, readonly)
			[2]: UpdateSelectedCaptures_upvr (copied, readonly)
			[3]: getUpdatedSelectedCapturesArray_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		arg1_2:dispatch(UpdateSelectedCaptures_upvr(getUpdatedSelectedCapturesArray_upvr(arg1_2:getState()[Constants_upvr.RoduxKey].CaptureManager.SelectedCaptures, arg1)))
	end
end