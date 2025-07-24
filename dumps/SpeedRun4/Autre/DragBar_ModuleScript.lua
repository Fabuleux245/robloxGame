-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:12
-- Luau version 6, Types version 3
-- Time taken: 0.001780 seconds

local tbl_upvr = {
	Hovering = "Hovering";
	Dragging = "Dragging";
	Idle = "Idle";
}
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.getCFrame(arg1) -- Line 33
	return arg1.part.CFrame
end
function module_2_upvr.setCFrame(arg1, arg2) -- Line 37
	arg1.part.CFrame = arg2
end
function module_2_upvr.updateTransparency(arg1) -- Line 41
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1.dragBarState == tbl_upvr.Hovering then
		arg1.dragBarImage.ImageTransparency = 0.2
	else
		if arg1.dragBarState == tbl_upvr.Dragging then
			arg1.dragBarImage.ImageTransparency = 0
			return
		end
		arg1.dragBarImage.ImageTransparency = 0.6
	end
end
function module_2_upvr.updateState(arg1) -- Line 51
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1.dragging then
		arg1.dragBarState = tbl_upvr.Dragging
	elseif arg1.hovering and not arg1.dragging then
		arg1.dragBarState = tbl_upvr.Hovering
	else
		arg1.dragBarState = tbl_upvr.Idle
	end
	arg1:updateTransparency()
end
function module_2_upvr.startDrag(arg1, arg2) -- Line 62
	arg1.dragging = true
	arg1.uiGroupOffSet = arg2
	arg1:updateState()
end
function module_2_upvr.dragEnd(arg1) -- Line 68
	arg1.dragging = false
	arg1:updateState()
end
function module_2_upvr.startHover(arg1) -- Line 73
	arg1.hovering = true
	arg1:updateState()
end
function module_2_upvr.hoverEnd(arg1) -- Line 78
	arg1.hovering = false
	arg1:updateState()
end
function module_2_upvr.show(arg1) -- Line 83
	arg1.part.Parent = arg1.partsParent
end
function module_2_upvr.hide(arg1) -- Line 87
	arg1.part.Parent = nil
end
local Utils_upvr = require(script.Parent.Utils)
function module_2_upvr.rescale(arg1, arg2) -- Line 91
	--[[ Upvalues[1]:
		[1]: Utils_upvr (readonly)
	]]
	arg1.part.Size = arg1.part.Size * arg2
	if arg1.uiGroupOffSet then
		arg1.uiGroupOffSet = Utils_upvr.rescaleCFramePosition(arg1.uiGroupOffSet, arg2)
	end
end
function module_2_upvr.new(arg1, arg2) -- Line 98
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local module = {}
	module.part = arg1
	module.dragBarImage = arg2
	module.hovering = false
	module.dragging = false
	module.dragBarState = tbl_upvr.Idle
	module.partsParent = arg1.Parent
	module.uiGroupOffSet = nil
	setmetatable(module, module_2_upvr)
	module.dragBarImage.ImageTransparency = 0.6
	return module
end
return module_2_upvr