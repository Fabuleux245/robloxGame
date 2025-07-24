-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:43
-- Luau version 6, Types version 3
-- Time taken: 0.000708 seconds

local React_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.React)
local dependencyArray_upvr = require(script.Parent.dependencyArray)
return function(arg1, arg2) -- Line 16, Named "useSignal"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: dependencyArray_upvr (readonly)
	]]
	React_upvr.useEffect(function() -- Line 17
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		local var6
		if not arg1 then return end
		if arg1 == nil then
			var6 = false
		else
			var6 = true
		end
		assert(var6, "signal is not nil")
		local any_connect_result1_upvr = arg1:connect(arg2)
		function var6() -- Line 24
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr (readonly)
			]]
			any_connect_result1_upvr:disconnect()
		end
		return var6
	end, dependencyArray_upvr(arg1, arg2))
end