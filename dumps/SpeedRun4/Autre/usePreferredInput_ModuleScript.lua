-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:07
-- Luau version 6, Types version 3
-- Time taken: 0.000663 seconds

local Responsive = script:FindFirstAncestor("Responsive")
local React_upvr = require(Responsive.Parent.React)
local InputMode_upvr = require(Responsive.InputMode)
return function() -- Line 6, Named "usePreferredInput"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: InputMode_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(InputMode_upvr.preferred)
	React_upvr.useEffect(function() -- Line 8
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: InputMode_upvr (copied, readonly)
		]]
		any_useState_result2_upvr(InputMode_upvr.preferred)
		local any_connect_result1_upvr = InputMode_upvr.connect(function() -- Line 10
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: InputMode_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(InputMode_upvr.preferred)
		end)
		return function() -- Line 13
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr (readonly)
			]]
			any_connect_result1_upvr:disconnect()
		end
	end, {})
	return any_useState_result1 or ""
end