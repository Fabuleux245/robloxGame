-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:44
-- Luau version 6, Types version 3
-- Time taken: 0.002223 seconds

local Fusion = require(script.Parent.Parent.Parent.Parent.Utils.Fusion)
local New_upvr = Fusion.New
local OnEvent_upvr = Fusion.OnEvent
local Children_upvr = Fusion.Children
local Computed_upvr = Fusion.Computed
return function(arg1) -- Line 9
	--[[ Upvalues[4]:
		[1]: New_upvr (readonly)
		[2]: OnEvent_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: Computed_upvr (readonly)
	]]
	local tbl_3 = {
		Name = arg1.Name;
		Size = arg1.Size;
		Position = arg1.Position;
		AnchorPoint = arg1.AnchorPoint;
	}
	local LayoutOrder = arg1.LayoutOrder
	tbl_3.LayoutOrder = LayoutOrder
	local var9
	if arg1.Visible == nil then
		LayoutOrder = true
	else
		LayoutOrder = arg1.Visible
	end
	tbl_3.Visible = LayoutOrder
	LayoutOrder = arg1.AutomaticSize
	local var10 = LayoutOrder
	if not var10 then
		var10 = Enum.AutomaticSize.None
	end
	tbl_3.AutomaticSize = var10
	tbl_3.Text = arg1.Text
	tbl_3.Color = arg1.Color
	tbl_3.Bold = arg1.Bold
	tbl_3.OnActivated = arg1.OnActivated
	tbl_3.NoticeValue = arg1.NoticeValue
	tbl_3.isSelected = arg1.isSelected or false
	tbl_3.ZIndex = arg1.ZIndex
	tbl_3.TextXAlignment = arg1.TextXAlignment
	local var11_upvw = tbl_3
	local Font_fromEnum_result1 = Font.fromEnum(Enum.Font.Arial)
	Font_fromEnum_result1.Bold = not not var11_upvw.Bold
	local module = {
		Name = var11_upvw.Name;
		Size = var11_upvw.Size;
		Position = var11_upvw.Position;
		AnchorPoint = var11_upvw.AnchorPoint;
		LayoutOrder = var11_upvw.LayoutOrder;
		Visible = var11_upvw.Visible;
		BackgroundTransparency = 1;
		AutomaticSize = var11_upvw.AutomaticSize;
		TextXAlignment = var11_upvw.TextXAlignment;
		ZIndex = var11_upvw.ZIndex;
		Text = var11_upvw.Text;
		TextScaled = true;
		FontFace = Font_fromEnum_result1;
		TextColor3 = var11_upvw.Color;
		[OnEvent_upvr("Activated")] = var11_upvw.OnActivated;
	}
	local tbl_4 = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var9 = var9(tbl)
		tbl[Children_upvr] = tbl_5
		tbl_5[1] = New_upvr("TextLabel")(tbl_2)
		tbl_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		tbl_2.FontFace = Font_fromEnum_result1
		tbl_2.TextScaled = true
		tbl_2.BackgroundTransparency = 1
		tbl_2.AnchorPoint = Vector2.new(0.5, 0.5)
		tbl_2.Position = UDim2.fromScale(0.5, 0.5)
		tbl_2.Size = UDim2.fromScale(0.9, 0.9)
		tbl_2.Text = Computed_upvr(function() -- Line 67
			--[[ Upvalues[1]:
				[1]: var11_upvw (read and write)
			]]
			return var11_upvw.NoticeValue:get()
		end)
		tbl_2.Name = "Count"
		local tbl_2 = {}
		local tbl_5 = {}
		tbl.Visible = Computed_upvr(function() -- Line 60
			--[[ Upvalues[1]:
				[1]: var11_upvw (read and write)
			]]
			local var17
			if 0 >= var11_upvw.NoticeValue:get() then
				var17 = false
			else
				var17 = true
			end
			return var17
		end)
		tbl.ImageColor3 = Color3.fromRGB(224, 83, 83)
		tbl.Image = "rbxassetid://12776995467"
		tbl.BackgroundTransparency = 1
		tbl.SizeConstraint = Enum.SizeConstraint.RelativeYY
		tbl.AnchorPoint = Vector2.new(0.5, 0.5)
		tbl.Position = UDim2.fromScale(1, -0.3)
		tbl.Size = UDim2.fromScale(1, 1)
		tbl.Name = "Notice"
		local tbl = {}
		var9 = New_upvr("ImageLabel")
		return var9
	end
	if not var11_upvw.NoticeValue or not INLINED() then
		var9 = {}
	end
	tbl_4[1] = var9
	tbl_4[2] = New_upvr("Frame")({
		Name = "ActiveLine";
		Size = UDim2.new(1, 0, 0, 1);
		Position = UDim2.fromScale(0.5, 1);
		AnchorPoint = Vector2.new(0.5, 1);
		BackgroundColor3 = var11_upvw.Color;
		Visible = var11_upvw.isSelected;
	})
	module[Children_upvr] = tbl_4
	return New_upvr("TextButton")(module)
end