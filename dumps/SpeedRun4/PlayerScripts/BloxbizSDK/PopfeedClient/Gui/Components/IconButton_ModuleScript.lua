-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:27
-- Luau version 6, Types version 3
-- Time taken: 0.004895 seconds

local Fusion = require(script.Parent.Parent.Parent.Parent.Utils.Fusion)
local Children_upvr = Fusion.Children
local Value_upvr = Fusion.Value
local Observer_upvr = Fusion.Observer
local RunService_upvr = game:GetService("RunService")
local New_upvr = Fusion.New
local Computed_upvr = Fusion.Computed
local OnEvent_upvr = Fusion.OnEvent
local Ref_upvr = Fusion.Ref
return function(arg1) -- Line 14
	--[[ Upvalues[8]:
		[1]: Children_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: Observer_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: New_upvr (readonly)
		[6]: Computed_upvr (readonly)
		[7]: OnEvent_upvr (readonly)
		[8]: Ref_upvr (readonly)
	]]
	local tbl = {}
	local Name = arg1.Name
	tbl.Name = Name
	local var13
	if arg1.BackgroundInvisible then
		Name = 1
	else
		Name = 0
	end
	tbl.BackgroundInvisible = Name
	Name = arg1.AnchorPoint
	local var14 = Name
	if not var14 then
		var14 = Vector2.new(0.5, 0.5)
	end
	tbl.AnchorPoint = var14
	var14 = arg1.Position
	local var15 = var14
	if not var15 then
		var15 = UDim2.fromScale(0.5, 0.5)
	end
	tbl.Position = var15
	var15 = arg1.Size
	local var16 = var15
	if not var16 then
		var16 = UDim2.fromScale(0.475, 1)
	end
	tbl.Size = var16
	var16 = arg1.BackgroundColor
	local var17 = var16
	if not var17 then
		var17 = Color3.fromRGB(50, 50, 50)
	end
	tbl.BackgroundColor = var17
	var17 = arg1.SelectedBackgroundColor
	local var18 = var17
	if not var18 then
		var18 = Color3.fromRGB(255, 255, 255)
	end
	tbl.SelectedBackgroundColor = var18
	tbl.Visible = arg1.Visible
	tbl.ZIndex = arg1.ZIndex
	tbl.LayoutOrder = arg1.LayoutOrder
	tbl.Selected = arg1.Selected
	tbl.OnActivated = arg1.OnActivated
	tbl.IsLoading = arg1.IsLoading
	tbl.Text = arg1.Text
	tbl.BoldText = arg1.BoldText
	tbl.LabelSize = arg1.LabelSize or 0.6
	tbl.LabelPositionX = arg1.LabelPositionX
	tbl.Icon = arg1.Icon
	tbl.IconAnchorPointX = arg1.IconAnchorPointX
	local SelectedTextColor = arg1.SelectedTextColor
	if not SelectedTextColor then
		SelectedTextColor = Color3.fromRGB(0, 0, 0)
	end
	tbl.SelectedTextColor = SelectedTextColor
	SelectedTextColor = arg1.TextColor
	local var20 = SelectedTextColor
	if not var20 then
		var20 = Color3.fromRGB(255, 255, 255)
	end
	tbl.TextColor = var20
	tbl.IconSize = arg1.IconSize or 0.6
	tbl.IconRotation = arg1.IconRotation or 0
	tbl.IconPositionX = arg1.IconPositionX
	local SelectedIconColor = arg1.SelectedIconColor
	if not SelectedIconColor then
		SelectedIconColor = Color3.fromRGB(0, 0, 0)
	end
	tbl.SelectedIconColor = SelectedIconColor
	SelectedIconColor = arg1.IconColor
	local var22 = SelectedIconColor
	if not var22 then
		var22 = Color3.fromRGB(255, 255, 255)
	end
	tbl.IconColor = var22
	var22 = arg1.CornerRadius
	local var23 = var22
	if not var23 then
		var23 = UDim.new(0.3, 0)
	end
	tbl.CornerRadius = var23
	tbl[Children_upvr] = arg1[Children_upvr]
	local var24_upvw = tbl
	local Value_upvr_result1_upvr = Value_upvr()
	if var24_upvw.IsLoading then
		local var27_upvw
		Observer_upvr(var24_upvw.IsLoading):onChange(function() -- Line 56
			--[[ Upvalues[4]:
				[1]: var24_upvw (read and write)
				[2]: var27_upvw (read and write)
				[3]: RunService_upvr (copied, readonly)
				[4]: Value_upvr_result1_upvr (readonly)
			]]
			if var24_upvw.IsLoading:get() == true then
				var27_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 58
					--[[ Upvalues[1]:
						[1]: Value_upvr_result1_upvr (copied, readonly)
					]]
					local any_get_result1 = Value_upvr_result1_upvr:get()
					if not any_get_result1 then
					else
						any_get_result1.Rotation += 1
					end
				end)
			elseif var24_upvw.IsLoading:get() == false and var27_upvw then
				var27_upvw:Disconnect()
				var27_upvw = nil
			end
		end)
	end
	local Font_fromEnum_result1 = Font.fromEnum(Enum.Font.Arial)
	Font_fromEnum_result1.Bold = not not var24_upvw.BoldText
	local module = {
		Name = var24_upvw.Name;
		Size = var24_upvw.Size;
		Position = var24_upvw.Position;
		AnchorPoint = var24_upvw.AnchorPoint;
		BackgroundTransparency = var24_upvw.BackgroundInvisible;
		Visible = var24_upvw.Visible;
		ZIndex = var24_upvw.ZIndex;
		LayoutOrder = var24_upvw.LayoutOrder;
		BackgroundColor3 = Computed_upvr(function() -- Line 90
			--[[ Upvalues[1]:
				[1]: var24_upvw (read and write)
			]]
			if var24_upvw.Selected:get() then
				return var24_upvw.SelectedBackgroundColor
			end
			return var24_upvw.BackgroundColor
		end);
		[OnEvent_upvr("Activated")] = var24_upvw.OnActivated;
	}
	local tbl_2 = {}
	local tbl_3 = {}
	var13 = var24_upvw.Text
	tbl_3.Text = var13
	tbl_3.FontFace = Font_fromEnum_result1
	var13 = true
	tbl_3.TextScaled = var13
	var13 = UDim2.fromScale(0, var24_upvw.LabelSize)
	tbl_3.Size = var13
	var13 = UDim2.fromScale(math.clamp(var24_upvw.IconAnchorPointX, 0.05, 0.95) - var24_upvw.LabelPositionX or 0, 0.5)
	tbl_3.Position = var13
	var13 = Vector2.new(var24_upvw.IconAnchorPointX, 0.5)
	tbl_3.AnchorPoint = var13
	var13 = Enum.AutomaticSize.X
	tbl_3.AutomaticSize = var13
	var13 = 1
	tbl_3.BackgroundTransparency = var13
	var13 = var24_upvw.ZIndex
	tbl_3.ZIndex = var13
	var13 = Computed_upvr
	var13 = var13(function() -- Line 114
		--[[ Upvalues[1]:
			[1]: var24_upvw (read and write)
		]]
		if var24_upvw.Selected:get() then
			return var24_upvw.SelectedTextColor
		end
		return var24_upvw.TextColor
	end)
	tbl_3.TextColor3 = var13
	var13 = Computed_upvr
	var13 = var13(function() -- Line 122
		--[[ Upvalues[1]:
			[1]: var24_upvw (read and write)
		]]
		if not var24_upvw.IsLoading then
			return true
		end
		return not var24_upvw.IsLoading:get()
	end)
	tbl_3.Visible = var13
	var13 = "ImageLabel"
	var13 = {}
	var13.Name = "Icon"
	var13.Size = UDim2.fromScale(var24_upvw.IconSize, var24_upvw.IconSize)
	var13.Position = UDim2.fromScale(var24_upvw.IconPositionX, 0.5)
	var13.AnchorPoint = Vector2.new(math.abs(var24_upvw.IconAnchorPointX - 1), 0.5)
	var13.SizeConstraint = Enum.SizeConstraint.RelativeYY
	var13.BackgroundTransparency = 1
	var13.Image = var24_upvw.Icon
	var13.Rotation = var24_upvw.IconRotation
	var13.ZIndex = var24_upvw.ZIndex
	var13.ImageColor3 = Computed_upvr(function() -- Line 142
		--[[ Upvalues[1]:
			[1]: var24_upvw (read and write)
		]]
		if var24_upvw.Selected:get() then
			return var24_upvw.SelectedIconColor
		end
		return var24_upvw.IconColor
	end)
	var13.Visible = Computed_upvr(function() -- Line 150
		--[[ Upvalues[1]:
			[1]: var24_upvw (read and write)
		]]
		if not var24_upvw.IsLoading then
			return true
		end
		return not var24_upvw.IsLoading:get()
	end)
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var13 = var13(tbl_4)
		tbl_4[Ref_upvr] = Value_upvr_result1_upvr
		tbl_4.Visible = Computed_upvr(function() -- Line 169
			--[[ Upvalues[1]:
				[1]: var24_upvw (read and write)
			]]
			return var24_upvw.IsLoading:get()
		end)
		tbl_4.ZIndex = 101
		tbl_4.SizeConstraint = Enum.SizeConstraint.RelativeYY
		tbl_4.Image = "rbxassetid://11304130802"
		tbl_4.AnchorPoint = Vector2.new(0.5, 0.5)
		tbl_4.Position = UDim2.fromScale(0.5, 0.5)
		tbl_4.Size = UDim2.fromScale(0.8, 0.8)
		tbl_4.BackgroundTransparency = 1
		tbl_4.Name = "Spinner"
		local tbl_4 = {}
		var13 = New_upvr("ImageLabel")
		return var13
	end
	if not var24_upvw.IsLoading or not INLINED() then
		var13 = nil
	end
	tbl_2[1] = var24_upvw[Children_upvr]
	tbl_2[2] = New_upvr("TextLabel")(tbl_3)
	tbl_2[3] = New_upvr(var13)(var13)
	tbl_2[4] = var13
	tbl_2[5] = New_upvr("UICorner")({
		CornerRadius = var24_upvw.CornerRadius;
	})
	module[Children_upvr] = tbl_2
	return New_upvr("TextButton")(module)
end