-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:06
-- Luau version 6, Types version 3
-- Time taken: 0.000635 seconds

local Parent = script:FindFirstAncestor("Responsive").Parent
local React_upvr = require(Parent.React)
local AppCommonLib_upvr = require(Parent.AppCommonLib)
return function() -- Line 5, Named "useIsSpatial"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: AppCommonLib_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(AppCommonLib_upvr.isSpatial)
	React_upvr.useEffect(function() -- Line 7
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: AppCommonLib_upvr (copied, readonly)
		]]
		any_useState_result2_upvr(AppCommonLib_upvr.isSpatial())
		local any_connectToIsSpatialChanged_result1_upvr = AppCommonLib_upvr.connectToIsSpatialChanged(function(arg1) -- Line 9
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(arg1)
		end)
		return function() -- Line 12
			--[[ Upvalues[1]:
				[1]: any_connectToIsSpatialChanged_result1_upvr (readonly)
			]]
			any_connectToIsSpatialChanged_result1_upvr:Disconnect()
		end
	end, {})
	return any_useState_result1
end