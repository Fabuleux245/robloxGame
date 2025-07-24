-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:31
-- Luau version 6, Types version 3
-- Time taken: 0.000635 seconds

local Parent = script:FindFirstAncestor("Impressions").Parent
local React_upvr = require(Parent.React)
local ImpressionsTagUtility_upvr = require(script.Parent.ImpressionsTagUtility)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
return function(arg1, arg2, arg3) -- Line 9
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ImpressionsTagUtility_upvr (readonly)
		[3]: dependencyArray_upvr (readonly)
	]]
	React_upvr.useEffect(function() -- Line 10
		--[[ Upvalues[4]:
			[1]: ImpressionsTagUtility_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
		]]
		ImpressionsTagUtility_upvr.AddTag(arg1, arg2, arg3)
		return function() -- Line 13
			--[[ Upvalues[4]:
				[1]: ImpressionsTagUtility_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: arg3 (copied, readonly)
			]]
			ImpressionsTagUtility_upvr.RemoveTag(arg1, arg2, arg3)
		end
	end, dependencyArray_upvr(arg1, arg2, arg3))
end