-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:44
-- Luau version 6, Types version 3
-- Time taken: 0.000679 seconds

local Roact_upvr = require(script.Parent.Parent.Roact)
local FocusContext_upvr = require(script.Parent.FocusContext)
local function FocusControllerConsumer_upvr(arg1) -- Line 9, Named "FocusControllerConsumer"
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: FocusContext_upvr (readonly)
	]]
	return Roact_upvr.createElement(FocusContext_upvr.Consumer, {
		render = function(arg1_2) -- Line 11, Named "render"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var4
			if arg1_2 then
				var4 = arg1_2.focusNode.focusController
			else
				var4 = nil
			end
			return arg1.render(var4)
		end;
	})
end
return function(arg1) -- Line 24, Named "withFocusController"
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: FocusControllerConsumer_upvr (readonly)
	]]
	local module = {}
	module.render = arg1
	return Roact_upvr.createElement(FocusControllerConsumer_upvr, module)
end