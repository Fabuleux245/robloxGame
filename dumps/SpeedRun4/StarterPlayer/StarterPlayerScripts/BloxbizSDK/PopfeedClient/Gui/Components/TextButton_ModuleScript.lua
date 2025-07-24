-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:19
-- Luau version 6, Types version 3
-- Time taken: 0.002003 seconds

local Fusion = require(script.Parent.Parent.Parent.Parent.Utils.Fusion)
local New_upvr = Fusion.New
local OnEvent_upvr = Fusion.OnEvent
local Children_upvr = Fusion.Children
return function(arg1) -- Line 8
	--[[ Upvalues[3]:
		[1]: New_upvr (readonly)
		[2]: OnEvent_upvr (readonly)
		[3]: Children_upvr (readonly)
	]]
	local Font_fromEnum_result1 = Font.fromEnum(Enum.Font.Arial)
	Font_fromEnum_result1.Bold = arg1.Bold or false
	local module = {
		Name = arg1.Name;
		Size = arg1.Size;
		Position = arg1.Position;
		AnchorPoint = arg1.AnchorPoint;
		BackgroundColor3 = arg1.Color;
		LayoutOrder = arg1.LayoutOrder;
		SizeConstraint = arg1.SizeConstraint;
		ZIndex = arg1.ZIndex;
		[OnEvent_upvr("Activated")] = arg1.OnActivated;
	}
	local tbl = {}
	local tbl_3 = {
		Text = arg1.Text;
	}
	local AutomaticSize = arg1.AutomaticSize
	if not AutomaticSize then
		AutomaticSize = Enum.AutomaticSize.None
	end
	tbl_3.AutomaticSize = AutomaticSize
	tbl_3.BackgroundTransparency = 1
	tbl_3.TextScaled = true
	tbl_3.FontFace = Font_fromEnum_result1
	tbl_3.TextColor3 = arg1.TextColor
	tbl_3.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl_3.Position = UDim2.fromScale(0.5, 0.5)
	local TextSize = arg1.TextSize
	if not TextSize then
		TextSize = UDim2.fromScale(0.9, 0.5)
	end
	tbl_3.Size = TextSize
	tbl_3.ZIndex = arg1.ZIndex + 1
	local tbl_2 = {}
	local CornerRadius = arg1.CornerRadius
	if not CornerRadius then
		CornerRadius = UDim.new(0, 8)
	end
	tbl_2.CornerRadius = CornerRadius
	tbl[1] = New_upvr("TextLabel")(tbl_3)
	tbl[2] = New_upvr("UICorner")(tbl_2)
	tbl[3] = arg1[Children_upvr]
	module[Children_upvr] = tbl
	return New_upvr("TextButton")(module)
end