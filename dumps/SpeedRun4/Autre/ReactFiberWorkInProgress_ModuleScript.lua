-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:17
-- Luau version 6, Types version 3
-- Time taken: 0.000700 seconds

local ReactFiberLane = require(script.Parent.ReactFiberLane)
local NoLanes_upvw = ReactFiberLane.NoLanes
local module = {
	workInProgressRootSkippedLanes = function(arg1) -- Line 24
		--[[ Upvalues[1]:
			[1]: NoLanes_upvw (read and write)
		]]
		if arg1 == nil then
			return NoLanes_upvw
		end
		NoLanes_upvw = arg1
		return NoLanes_upvw
	end;
}
local mergeLanes_upvr = ReactFiberLane.mergeLanes
function module.markSkippedUpdateLanes(arg1) -- Line 34
	--[[ Upvalues[2]:
		[1]: NoLanes_upvw (read and write)
		[2]: mergeLanes_upvr (readonly)
	]]
	NoLanes_upvw = mergeLanes_upvr(arg1, NoLanes_upvw)
end
return module