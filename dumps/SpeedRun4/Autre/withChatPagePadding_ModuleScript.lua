-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:32
-- Luau version 6, Types version 3
-- Time taken: 0.000532 seconds

local Roact_upvr = require(script:FindFirstAncestor("AppChat").Parent.Roact)
local Context_upvr = require(script.Parent.Context)
return function(arg1) -- Line 13
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Context_upvr (readonly)
	]]
	local var4
	if type(arg1) ~= "function" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "Expect renderCallback to be a function.")
	var4 = Roact_upvr
	var4 = Context_upvr.Consumer
	local module = {}
	module.render = arg1
	return var4.createElement(var4, module)
end