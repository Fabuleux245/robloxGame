-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:44
-- Luau version 6, Types version 3
-- Time taken: 0.005331 seconds

local Fusion_upvr = require(script.Parent.Parent.Parent.Parent.Utils.Fusion)
local Value_upvr = Fusion_upvr.Value
local New_upvr = Fusion_upvr.New
local Children_upvr = Fusion_upvr.Children
local ForValues_upvr = Fusion_upvr.ForValues
local Computed_upvr = Fusion_upvr.Computed
local SelectButton_upvr = require(script.Parent.SelectButton)
return function(arg1) -- Line 12
	--[[ Upvalues[7]:
		[1]: Value_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: ForValues_upvr (readonly)
		[5]: Computed_upvr (readonly)
		[6]: SelectButton_upvr (readonly)
		[7]: Fusion_upvr (readonly)
	]]
	local tbl = {}
	local onButtonActivated
	if not onButtonActivated then
		onButtonActivated = UDim2.fromScale(1, 1)
	end
	tbl.Size = onButtonActivated
	onButtonActivated = arg1.Position
	if not onButtonActivated then
		onButtonActivated = UDim2.new()
	end
	tbl.Position = onButtonActivated
	onButtonActivated = arg1.AnchorPoint
	if not onButtonActivated then
		onButtonActivated = Vector2.new(0, 0.5)
	end
	tbl.AnchorPoint = onButtonActivated
	onButtonActivated = arg1.LayoutOrder
	tbl.LayoutOrder = onButtonActivated
	onButtonActivated = arg1.Visible
	tbl.Visible = onButtonActivated
	onButtonActivated = arg1.BackgroundTransparency or 1
	tbl.BackgroundTransparency = onButtonActivated
	onButtonActivated = arg1.BackgroundColor3
	if not onButtonActivated then
		onButtonActivated = Color3.fromRGB(50, 50, 50)
	end
	tbl.BackgroundColor3 = onButtonActivated
	onButtonActivated = arg1.SizeConstraint
	if not onButtonActivated then
		onButtonActivated = Enum.SizeConstraint.RelativeXY
	end
	tbl.SizeConstraint = onButtonActivated
	onButtonActivated = arg1.HorizontalAlignment
	if not onButtonActivated then
		onButtonActivated = Enum.HorizontalAlignment.Left
	end
	tbl.HorizontalAlignment = onButtonActivated
	onButtonActivated = arg1.buttonNames
	tbl.buttonNames = onButtonActivated
	onButtonActivated = arg1.initialSelection
	tbl.initialSelection = onButtonActivated
	if arg1.initialSelectionActive == nil then
		onButtonActivated = true
	else
		onButtonActivated = arg1.initialSelectionActive
	end
	tbl.initialSelectionIsActive = onButtonActivated
	onButtonActivated = arg1.buttonSelectedCallback
	tbl.buttonSelectedCallback = onButtonActivated
	onButtonActivated = arg1.padding
	tbl.padding = onButtonActivated
	onButtonActivated = arg1.customButtonProps
	if not onButtonActivated then
		onButtonActivated = {}
	end
	tbl.customButtonProps = onButtonActivated
	local var11_upvw = tbl
	onButtonActivated = var11_upvw.initialSelection
	local Value_upvr_result1_upvr = Value_upvr(onButtonActivated)
	function onButtonActivated(arg1_2, arg2) -- Line 36
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: var11_upvw (read and write)
		]]
		if arg2.canBeSelected ~= false then
			Value_upvr_result1_upvr:set(arg1_2)
		end
		var11_upvw.buttonSelectedCallback(arg1_2)
	end
	if var11_upvw.initialSelection and var11_upvw.initialSelectionActive then
		local initialSelection = var11_upvw.initialSelection
		if nil.canBeSelected ~= false then
			Value_upvr_result1_upvr:set(initialSelection)
		end
		var11_upvw.buttonSelectedCallback(initialSelection)
	end
	return New_upvr("Frame")({
		Name = "SelectButtonRow";
		Size = var11_upvw.Size;
		Position = var11_upvw.Position;
		AnchorPoint = var11_upvw.AnchorPoint;
		LayoutOrder = var11_upvw.LayoutOrder;
		BackgroundTransparency = var11_upvw.BackgroundTransparency;
		BackgroundColor3 = var11_upvw.BackgroundColor3;
		SizeConstraint = var11_upvw.SizeConstraint;
		Visible = var11_upvw.Visible;
		[Children_upvr] = {New_upvr("UIListLayout")({
			Name = "List";
			Padding = var11_upvw.padding;
			HorizontalAlignment = var11_upvw.HorizontalAlignment;
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		}), ForValues_upvr(var11_upvw.buttonNames, function(arg1_3) -- Line 67
			--[[ Upvalues[4]:
				[1]: var11_upvw (read and write)
				[2]: Value_upvr_result1_upvr (readonly)
				[3]: Computed_upvr (copied, readonly)
				[4]: SelectButton_upvr (copied, readonly)
			]]
			local var21_upvr = var11_upvw.customButtonProps[arg1_3]
			if not var21_upvr then
				var21_upvr = {}
			end
			local tbl_2 = {}
			tbl_2.Name = arg1_3
			tbl_2.AnchorPoint = Vector2.new(0.5, 0.5)
			tbl_2.Size = UDim2.fromScale(0, 1)
			tbl_2.AutomaticSize = Enum.AutomaticSize.X
			tbl_2.Text = arg1_3
			tbl_2.Color = Color3.fromRGB(255, 255, 255)
			function tbl_2.OnActivated() -- Line 77
				--[[ Upvalues[4]:
					[1]: arg1_3 (readonly)
					[2]: var21_upvr (readonly)
					[3]: Value_upvr_result1_upvr (copied, readonly)
					[4]: var11_upvw (copied, read and write)
				]]
				local var23 = arg1_3
				if var21_upvr.canBeSelected ~= false then
					Value_upvr_result1_upvr:set(var23)
				end
				var11_upvw.buttonSelectedCallback(var23)
			end
			tbl_2.isSelected = Computed_upvr(function() -- Line 80
				--[[ Upvalues[3]:
					[1]: var21_upvr (readonly)
					[2]: Value_upvr_result1_upvr (copied, readonly)
					[3]: arg1_3 (readonly)
				]]
				local var25
				if var25 == false then
					var25 = false
					return var25
				end
				if Value_upvr_result1_upvr:get() ~= arg1_3 then
					var25 = false
				else
					var25 = true
				end
				return var25
			end)
			for i, v in pairs(var21_upvr) do
				tbl_2[i] = v
				local var29
			end
			return SelectButton_upvr(var29)
		end, Fusion_upvr.cleanup)};
	})
end