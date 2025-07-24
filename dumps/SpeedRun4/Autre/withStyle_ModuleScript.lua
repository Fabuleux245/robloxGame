-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:22
-- Luau version 6, Types version 3
-- Time taken: 0.000667 seconds

local Parent = script.Parent
local Roact_upvr = require(Parent.Parent.Parent.Parent.Roact)
local StyleConsumer_upvr = require(Parent.StyleConsumer)
return function(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: StyleConsumer_upvr (readonly)
	]]
	local var5
	if type(arg1) ~= "function" then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "Expect renderCallback to be a function.")
	var5 = Roact_upvr
	var5 = StyleConsumer_upvr
	return var5.createElement(var5, {
		render = function(arg1_2) -- Line 12, Named "render"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1(arg1_2.style)
		end;
	})
end