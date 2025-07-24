-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:38
-- Luau version 6, Types version 3
-- Time taken: 0.001887 seconds

local Utilities_upvr = require(script.Parent.Utilities)
local ScrollingFrame_upvr = require(script.Parent.Parent.Generic.ScrollingFrame)
local module_upvr = require(script.Parent.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
return function(arg1) -- Line 21
	--[[ Upvalues[3]:
		[1]: Utilities_upvr (readonly)
		[2]: ScrollingFrame_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5
	if arg1.UtilitiesHolder ~= nil then
		var5 = false
	else
		var5 = true
	end
	if arg1.UtilitiesHolder then
	end
	local var6
	if not arg1.ScrollingFrame then
		local tbl_2 = {}
		if var5 then
			var6 = 1
		else
			var6 = 1
		end
		tbl_2.Size = UDim2.fromScale(1, var6)
		var6 = 0
		tbl_2.Position = UDim2.fromScale(0.5, var6)
		tbl_2.ScrollingDirection = Enum.ScrollingDirection.Y
		tbl_2.AutomaticCanvasSize = Enum.AutomaticSize.Y
		tbl_2.DragScrollDisabled = true
		local tbl = {
			Type = "UIGridLayout";
			FillDirection = Enum.FillDirection.Horizontal;
		}
		var6 = 0.243
		if var5 then
		else
		end
		tbl.Size = UDim2.fromScale(var6, 0.3)
		tbl.SortOrder = Enum.SortOrder.LayoutOrder
		var6 = 0.009
		tbl.Padding = UDim2.fromScale(var6, 0.012)
		tbl_2.Layout = tbl
	end
	local module = {
		Name = arg1.Name or "Frame";
		Active = true;
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Selectable = false;
		Size = UDim2.fromScale(1, 1);
	}
	local tbl_3 = {}
	local var11 = not arg1.SkipListLayout
	if var11 then
		var11 = module_upvr.New("UIListLayout")
		var11 = var11({
			Name = "UIListLayout";
			SortOrder = Enum.SortOrder.LayoutOrder;
		})
	end
	tbl_3[1] = var11
	tbl_3[2] = ScrollingFrame_upvr(tbl_2)
	tbl_3[3] = Utilities_upvr(arg1.UtilitiesHolder)
	module[module_upvr.Children] = tbl_3
	return module_upvr.New("Frame")(module)
end