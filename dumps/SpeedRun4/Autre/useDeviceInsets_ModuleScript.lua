-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:05
-- Luau version 6, Types version 3
-- Time taken: 0.000648 seconds

local React_upvr = require(script:FindFirstAncestor("Responsive").Parent.React)
local HardwareSafeAreaInsets_upvr = require(script.Parent.Parent.HardwareSafeAreaInsets)
return function() -- Line 6
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: HardwareSafeAreaInsets_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(HardwareSafeAreaInsets_upvr.deviceInsets())
	React_upvr.useLayoutEffect(function() -- Line 8
		--[[ Upvalues[3]:
			[1]: HardwareSafeAreaInsets_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_useState_result1_upvr (readonly)
		]]
		if HardwareSafeAreaInsets_upvr.diffInsets(any_useState_result1_upvr, HardwareSafeAreaInsets_upvr.deviceInsets()) then
			any_useState_result2_upvr(HardwareSafeAreaInsets_upvr.deviceInsets)
		end
		local any_connect_result1_upvr = HardwareSafeAreaInsets_upvr:connect(any_useState_result2_upvr)
		return function() -- Line 13
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr (readonly)
			]]
			any_connect_result1_upvr:disconnect()
		end
	end, {})
	return any_useState_result1_upvr
end