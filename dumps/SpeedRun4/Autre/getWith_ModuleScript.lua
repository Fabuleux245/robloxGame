-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:46
-- Luau version 6, Types version 3
-- Time taken: 0.000550 seconds

local Roact_upvr = require(script:FindFirstAncestor("SocialLibraries").dependencies).Roact
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return function(arg1_2) -- Line 6
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var4
		if type(arg1_2) ~= "function" then
			var4 = false
		else
			var4 = true
		end
		assert(var4, "Expect renderCallback to be a function.")
		var4 = Roact_upvr
		var4 = arg1.Consumer
		local module = {}
		module.render = arg1_2
		return var4.createElement(var4, module)
	end
end