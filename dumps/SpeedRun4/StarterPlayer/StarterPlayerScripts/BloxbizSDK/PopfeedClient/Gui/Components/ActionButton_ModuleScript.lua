-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:04
-- Luau version 6, Types version 3
-- Time taken: 0.005963 seconds

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
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6 = not not arg1.OnActivated
	local BackgroundColor = arg1.BackgroundColor
	local var8
	if var6 then
		BackgroundColor = "TextButton"
	else
		BackgroundColor = "Frame"
	end
	local module = {}
	var8 = arg1.Name
	module.Name = var8
	var8 = arg1.Size
	if not var8 then
		var8 = UDim2.fromScale(0, 1)
	end
	module.Size = var8
	var8 = arg1.Position
	module.Position = var8
	var8 = arg1.AnchorPoint
	module.AnchorPoint = var8
	var8 = arg1.BackgroundColor
	module.BackgroundColor3 = var8
	if not not BackgroundColor then
		var8 = 0
	else
		var8 = 1
	end
	module.BackgroundTransparency = var8
	module.Visible = arg1.Visible
	module.LayoutOrder = arg1.LayoutOrder
	module.AutomaticSize = Enum.AutomaticSize.X
	module.SizeConstraint = arg1.SizeConstraint
	module.ZIndex = arg1.ZIndex
	if not var6 or not arg1.OnActivated then
	end
	module[OnEvent_upvr("Activated")] = nil
	local tbl_2 = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl.CornerRadius = arg1.CornerRadius
		local tbl = {}
		return New_upvr("UICorner")(tbl)
	end
	if not arg1.CornerRadius or not INLINED() then
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		tbl_3.LayoutOrder = 1
		tbl_3.BackgroundTransparency = 1
		tbl_3.Size = UDim2.fromScale(arg1.FrontOffset, 0)
		tbl_3.SizeConstraint = Enum.SizeConstraint.RelativeYY
		tbl_3.Name = "BlankSpace"
		local tbl_3 = {}
		return New_upvr("Frame")(tbl_3)
	end
	if not arg1.FrontOffset or not INLINED_2() then
	end
	local tbl_6 = {
		Name = "Icon";
	}
	local IconSize = arg1.IconSize
	if not IconSize then
		IconSize = UDim2.fromScale(0.7, 0.7)
	end
	tbl_6.Size = IconSize
	tbl_6.Image = arg1.Icon
	tbl_6.SizeConstraint = Enum.SizeConstraint.RelativeYY
	tbl_6.BackgroundTransparency = 1
	tbl_6.LayoutOrder = 2
	tbl_6.ZIndex = arg1.ZIndex
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		tbl_5.LayoutOrder = 3
		tbl_5.BackgroundTransparency = 1
		tbl_5.Size = UDim2.fromScale(arg1.MiddleOffset, 0)
		tbl_5.SizeConstraint = Enum.SizeConstraint.RelativeYY
		tbl_5.Name = "BlankSpace"
		local tbl_5 = {}
		return New_upvr("Frame")(tbl_5)
	end
	if not arg1.MiddleOffset or not INLINED_3() then
	end
	local tbl_7 = {
		Text = arg1.Text;
	}
	local TextSize = arg1.TextSize
	if not TextSize then
		TextSize = UDim2.fromScale(0, 0.65)
	end
	tbl_7.Size = TextSize
	TextSize = arg1.Font
	local var19 = TextSize
	if not var19 then
		var19 = Font.fromEnum(Enum.Font.Arial)
	end
	tbl_7.FontFace = var19
	var19 = arg1.TextColor
	local var20 = var19
	if not var20 then
		var20 = Color3.fromRGB(255, 255, 255)
	end
	tbl_7.TextColor3 = var20
	tbl_7.AutomaticSize = Enum.AutomaticSize.X
	tbl_7.BackgroundTransparency = 1
	tbl_7.TextScaled = true
	tbl_7.LayoutOrder = 4
	tbl_7.RichText = true
	tbl_7.ZIndex = arg1.ZIndex
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		tbl_4.LayoutOrder = 5
		tbl_4.BackgroundTransparency = 1
		tbl_4.Size = UDim2.fromScale(arg1.BackOffset, 0)
		tbl_4.SizeConstraint = Enum.SizeConstraint.RelativeYY
		tbl_4.Name = "BlankSpace"
		local tbl_4 = {}
		return New_upvr("Frame")(tbl_4)
	end
	if not arg1.BackOffset or not INLINED_4() then
	end
	tbl_2[1] = nil
	tbl_2[2] = New_upvr("UIListLayout")({
		Padding = UDim.new(arg1.Padding, 0);
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	tbl_2[3] = nil
	tbl_2[4] = New_upvr("ImageLabel")(tbl_6)
	tbl_2[5] = nil
	tbl_2[6] = New_upvr("TextLabel")(tbl_7)
	tbl_2[7] = nil
	module[Children_upvr] = tbl_2
	return New_upvr(BackgroundColor)(module)
end