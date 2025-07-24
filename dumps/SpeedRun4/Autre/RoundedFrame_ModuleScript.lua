-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:12
-- Luau version 6, Types version 3
-- Time taken: 0.001487 seconds

local Parent = script.Parent.Parent.Parent.Parent
local tbl_2_upvr = {
	zIndex = 1;
}
local Object_upvr = require(Parent.LuauPolyfill).Object
local React_upvr = require(Parent.React)
return function(arg1) -- Line 27
	--[[ Upvalues[3]:
		[1]: Object_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local any_assign_result1 = Object_upvr.assign({}, tbl_2_upvr, arg1)
	local module = {}
	local tbl_7 = {}
	local tbl_6 = {
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 2);
		BackgroundColor3 = any_assign_result1.background.Color;
	}
	local background = any_assign_result1.background
	tbl_6.BackgroundTransparency = background.Transparency
	local tbl_3 = {}
	if any_assign_result1.topCornerRadius then
		background = React_upvr.createElement
		background = background("UICorner", {
			CornerRadius = any_assign_result1.topCornerRadius;
		})
	else
		background = nil
	end
	tbl_3.UICorner = background
	tbl_7.Content = React_upvr.createElement("Frame", tbl_6, tbl_3)
	module.TopContainer = React_upvr.createElement("Frame", {
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 0.5);
		ClipsDescendants = true;
		BackgroundTransparency = 1;
	}, tbl_7)
	local tbl_5 = {}
	local tbl_4 = {}
	background = 0
	tbl_4.Position = UDim2.fromScale(background, -1)
	background = 1
	tbl_4.Size = UDim2.fromScale(background, 2)
	background = any_assign_result1.background
	tbl_4.BackgroundColor3 = background.Color
	background = any_assign_result1.background
	tbl_4.BackgroundTransparency = background.Transparency
	local tbl = {}
	if any_assign_result1.bottomCornerRadius then
		background = React_upvr.createElement
		background = background("UICorner", {
			CornerRadius = any_assign_result1.bottomCornerRadius;
		})
	else
		background = nil
	end
	tbl.UICorner = background
	tbl_5.Content = React_upvr.createElement("Frame", tbl_4, tbl)
	module.BottomContainer = React_upvr.createElement("Frame", {
		Position = UDim2.fromScale(0, 0.5);
		Size = UDim2.fromScale(1, 0.5);
		ClipsDescendants = true;
		BackgroundTransparency = 1;
	}, tbl_5)
	return React_upvr.createElement("Frame", {
		ZIndex = any_assign_result1.zIndex;
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	}, module)
end