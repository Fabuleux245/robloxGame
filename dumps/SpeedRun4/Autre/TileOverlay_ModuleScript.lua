-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:42
-- Luau version 6, Types version 3
-- Time taken: 0.006931 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Core = Parent.Core
local setDefault_upvr = require(Parent.Utility.setDefault)
local useControlState_upvr = require(Core.Control.useControlState)
local useStyle_upvr = require(Core.Style.useStyle)
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local React_upvr = require(Parent.Parent.React)
local udim_upvr = UDim.new(0, 8)
local Interactable_upvr = require(Core.Control.Interactable)
return function(arg1) -- Line 33, Named "TileOverlay"
	--[[ Upvalues[7]:
		[1]: setDefault_upvr (readonly)
		[2]: useControlState_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: ControlState_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: udim_upvr (readonly)
		[7]: Interactable_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local setDefault_upvr_result1 = setDefault_upvr(arg1.isVisible, true)
	local reservedBottomHeight = arg1.reservedBottomHeight
	local var26 = reservedBottomHeight or 0
	local var27
	if 0 >= var26 then
		reservedBottomHeight = false
	else
		reservedBottomHeight = true
	end
	if not setDefault_upvr_result1 and not setDefault_upvr(arg1.isActive, true) then
		return nil
	end
	local useControlState_upvr_result1, var4_result2 = useControlState_upvr()
	local Theme_2 = useStyle_upvr().Theme
	local var31
	local var32 = 1
	if setDefault_upvr_result1 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if setDefault_upvr(arg1.isActive, true) then
			if useControlState_upvr_result1 == ControlState_upvr.Pressed then
				var31 = Theme_2.BackgroundOnPress.Color
				var32 = Theme_2.BackgroundOnPress.Transparency
			elseif useControlState_upvr_result1 == ControlState_upvr.Hover then
				var31 = Theme_2.BackgroundOnHover.Color
				var32 = Theme_2.BackgroundOnHover.Transparency
			end
		end
	end
	local module = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = udim_upvr;
		});
	}
	local tbl_3 = {}
	if reservedBottomHeight then
		var27 = -var26
	else
		var27 = 0
	end
	tbl_3.Size = UDim2.new(1, 0, 1, var27)
	tbl_3.BackgroundTransparency = 1
	tbl_3.ClipsDescendants = true
	local tbl = {}
	local tbl_8 = {}
	var27 = UDim2.new
	if reservedBottomHeight then
		-- KONSTANTWARNING: GOTO [135] #100
	end
	var27 = var27(1, 0, 1, 0)
	tbl_8.Size = var27
	tbl_8.BackgroundColor3 = var31
	tbl_8.BackgroundTransparency = var32
	var27 = false
	tbl_8.AutoButtonColor = var27
	tbl_8.onStateChanged = var4_result2
	var27 = React_upvr.Event.Activated
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if setDefault_upvr(arg1.isActive, true) then
	else
	end
	tbl_8[var27] = nil
	var27 = 3
	tbl_8.ZIndex = var27
	var27 = {}
	var27.UICorner = React_upvr.createElement("UICorner", {
		CornerRadius = udim_upvr;
	})
	tbl.Interactable = React_upvr.createElement(Interactable_upvr, tbl_8, var27)
	module.ClippingFrame = React_upvr.createElement("Frame", tbl_3, tbl)
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		ZIndex = arg1.zIndex;
	}, module)
end