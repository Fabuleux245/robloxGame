-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:05
-- Luau version 6, Types version 3
-- Time taken: 0.000668 seconds

local ReactUtils = script:FindFirstAncestor("ReactUtils")
local React_upvr = require(ReactUtils.Parent.React)
local useEventConnection_upvr = require(ReactUtils.useEventConnection)
return function(arg1) -- Line 9, Named "useSelection"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: useEventConnection_upvr (readonly)
	]]
	local var4_upvr = arg1
	if not var4_upvr then
		var4_upvr = game:GetService("Selection")
	end
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(function() -- Line 12
		--[[ Upvalues[1]:
			[1]: var4_upvr (readonly)
		]]
		return var4_upvr:Get()
	end)
	useEventConnection_upvr(var4_upvr.SelectionChanged, function() -- Line 16
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: var4_upvr (readonly)
		]]
		any_useState_result2_upvr(var4_upvr:Get())
	end, {})
	return any_useState_result1
end