-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:13
-- Luau version 6, Types version 3
-- Time taken: 0.000966 seconds

local Parent = script.Parent
local Constants_upvr = require(Parent.Constants)
local UIManager_upvr = require(Parent.UIManager)
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: UIManager_upvr (readonly)
	]]
	local var5
	local var6 = Constants_upvr.ROACT_PANEL_UIGROUP_MAP[arg2]
	if var6 then
		var5 = {
			uiGroupElementOffset = Constants_upvr.ROACT_PANEL_UIGROUP_ELEMENT_OFFSET_MAP[arg2];
		}
	end
	local tbl = {
		panelObject = arg1.current;
		uiType = Constants_upvr.SpatialUIType.SpatialUIRoact;
	}
	tbl.panelType = arg2
	tbl.headScale = 1
	tbl.panelPositionProps = {
		uiGroup = var6;
		cameraFixedPanelProp = var5;
	}
	UIManager_upvr.getInstance():registerRoactPanel(arg2, tbl)
end