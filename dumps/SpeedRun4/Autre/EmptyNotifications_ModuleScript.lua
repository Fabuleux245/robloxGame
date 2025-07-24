-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:05
-- Luau version 6, Types version 3
-- Time taken: 0.001123 seconds

local StreamNotifications = script:FindFirstAncestor("StreamNotifications")
local Parent = StreamNotifications.Parent
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local constants_upvr = require(StreamNotifications.constants)
local React_upvr = require(Parent.React)
return function() -- Line 11
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: constants_upvr (readonly)
		[4]: React_upvr (readonly)
	]]
	local var4_result1 = useStyle_upvr()
	local Font = var4_result1.Font
	local var5_result1 = useLocalization_upvr({
		emptyText = constants_upvr.Text.EmptyKey;
	})
	local module = {}
	local tbl_2 = {
		FillDirection = Enum.FillDirection.Vertical;
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		Padding = UDim.new(0, constants_upvr.DefaultPadding);
	}
	module.UIListLayout = React_upvr.createElement("UIListLayout", tbl_2)
	local tbl = {}
	tbl_2 = var5_result1
	local var16 = tbl_2
	if var16 then
		var16 = var5_result1.emptyText
	end
	tbl.Text = var16
	tbl.LayoutOrder = 2
	tbl.Font = Font.Header1.Font
	tbl.TextSize = Font.BaseSize
	tbl.BackgroundTransparency = 1
	tbl.TextColor3 = var4_result1.Theme.TextDefault.Color
	tbl.Size = UDim2.new(1, 0, 0, constants_upvr.EmptyNotifications.LabelHeight)
	module[1] = React_upvr.createElement("TextLabel", tbl)
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY;
		Position = UDim2.new(0.5, 0, 0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
	}, module)
end