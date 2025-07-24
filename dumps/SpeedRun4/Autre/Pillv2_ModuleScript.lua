-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:21
-- Luau version 6, Types version 3
-- Time taken: 0.006889 seconds

local Parent_3 = script.Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local Core = Parent_2.Core
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local tbl_7_upvr = {
	hasBorder = false;
	isDisabled = false;
	isLoading = false;
	isSelected = false;
	layoutOrder = 1;
	text = "";
}
local tbl_3_upvr = {
	[ControlState_upvr.Default] = "SystemPrimaryContent";
	[ControlState_upvr.Hover] = "SystemPrimaryContent";
}
local tbl_upvr = {
	[ControlState_upvr.Default] = "TextDefault";
	[ControlState_upvr.Hover] = "TextEmphasis";
}
local tbl_2_upvr = {
	[ControlState_upvr.Default] = "SystemPrimaryContent";
	[ControlState_upvr.Hover] = "SystemPrimaryContent";
}
local tbl_8_upvr = {
	[ControlState_upvr.Default] = "BackgroundUIDefault";
	[ControlState_upvr.Hover] = "BackgroundUIDefault";
}
local tbl_upvr_2 = {
	[ControlState_upvr.Default] = "SystemPrimaryDefault";
	[ControlState_upvr.Hover] = "SystemPrimaryOnHover";
}
local tbl_4_upvr = {
	[ControlState_upvr.Default] = "BackgroundOnHover";
	[ControlState_upvr.Hover] = "BackgroundOnHover";
}
local useControlState_upvr = require(Core.Control.useControlState)
local useStyle_upvr = require(Core.Style.useStyle)
local useSelectionCursor_upvr = require(Parent_3.SelectionImage.useSelectionCursor)
local CursorKind_upvr = require(Parent_3.SelectionImage.CursorKind)
local getContentStyle_upvr = require(Core.Button.getContentStyle)
local getIconSize_upvr = require(Parent_3.ImageSet.getIconSize)
local IconSize_upvr = require(Parent_3.ImageSet.Enum.IconSize)
local GetTextSize_upvr = require(Parent_2.Core.Text.GetTextSize)
local ShimmerPanel_upvr = require(Parent_2.App.Loading.ShimmerPanel)
local Interactable_upvr = require(Core.Control.Interactable)
local GenericTextLabel_upvr = require(Core.Text.GenericTextLabel.GenericTextLabel)
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
local Images_upvr = require(Parent_3.ImageSet.Images)
local function Pillv2_upvr(arg1) -- Line 111, Named "Pillv2"
	--[[ Upvalues[23]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
		[3]: useControlState_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useStyle_upvr (readonly)
		[6]: useSelectionCursor_upvr (readonly)
		[7]: CursorKind_upvr (readonly)
		[8]: tbl_2_upvr (readonly)
		[9]: tbl_upvr (readonly)
		[10]: tbl_upvr_2 (readonly)
		[11]: tbl_8_upvr (readonly)
		[12]: getContentStyle_upvr (readonly)
		[13]: tbl_3_upvr (readonly)
		[14]: tbl_4_upvr (readonly)
		[15]: getIconSize_upvr (readonly)
		[16]: IconSize_upvr (readonly)
		[17]: GetTextSize_upvr (readonly)
		[18]: ShimmerPanel_upvr (readonly)
		[19]: ControlState_upvr (readonly)
		[20]: Interactable_upvr (readonly)
		[21]: GenericTextLabel_upvr (readonly)
		[22]: ImageSetComponent_upvr (readonly)
		[23]: Images_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_7_upvr, arg1)
	local text = any_join_result1_upvr.text
	local useControlState_upvr_result1, var15_result2_upvr = useControlState_upvr()
	local var16_result1 = useStyle_upvr()
	local Font = var16_result1.Font
	local SmallPill = CursorKind_upvr.SmallPill
	local var37
	if var37 then
		SmallPill = tbl_2_upvr
	else
		SmallPill = tbl_upvr
	end
	if any_join_result1_upvr.isSelected then
		var37 = tbl_upvr_2
	else
		var37 = tbl_8_upvr
	end
	local getContentStyle_upvr_result1 = getContentStyle_upvr(tbl_3_upvr, useControlState_upvr_result1, var16_result1)
	local getContentStyle_upvr_result1_2 = getContentStyle_upvr(var37, useControlState_upvr_result1, var16_result1)
	local var20_result1 = getIconSize_upvr(IconSize_upvr.Small)
	local var42 = Font.CaptionHeader.RelativeSize * Font.BaseSize
	local X = GetTextSize_upvr(text, var42, Font.CaptionHeader.Font, Vector2.new(10000, 10000)).X
	if any_join_result1_upvr.isSelected then
		local var44 = 4 + var20_result1
		local var45 = 216 - var44
	end
	if any_join_result1_upvr.isLoading then
		return React_upvr.createElement(ShimmerPanel_upvr, {
			LayoutOrder = any_join_result1_upvr.layoutOrder;
			Size = UDim2.new(0, X + 24 + var44, 0, 28);
			cornerRadius = UDim.new(1, 0);
		})
	end
	local var47 = not any_join_result1_upvr.isSelected
	if var47 then
		if useControlState_upvr_result1 ~= ControlState_upvr.Hover then
			var47 = false
		else
			var47 = true
		end
	end
	local module_2 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_2.Size = UDim2.new(0, X + 24 + var44, 0, 28)
	module_2.BackgroundColor3 = getContentStyle_upvr_result1_2.Color
	module_2.BackgroundTransparency = getContentStyle_upvr_result1_2.Transparency
	module_2.ImageColor3 = getContentStyle_upvr_result1_2.Color
	module_2.ImageTransparency = getContentStyle_upvr_result1_2.Transparency
	module_2.AutoButtonColor = false
	module_2.BorderSizePixel = 0
	module_2.LayoutOrder = any_join_result1_upvr.layoutOrder
	module_2.ScaleType = Enum.ScaleType.Slice
	module_2.isDisabled = any_join_result1_upvr.isDisabled
	module_2.SelectionImageObject = useSelectionCursor_upvr(SmallPill)
	if not any_join_result1_upvr.isLoading then
		-- KONSTANTWARNING: GOTO [206] #151
	end
	module_2[React_upvr.Event.Activated] = nil
	module_2.onStateChanged = React_upvr.useCallback(function(arg1_2, arg2) -- Line 116
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: var15_result2_upvr (readonly)
		]]
		if any_join_result1_upvr.onStateChanged then
			any_join_result1_upvr.onStateChanged(arg1_2, arg2)
		end
		var15_result2_upvr(arg1_2, arg2)
	end, {any_join_result1_upvr.onStateChanged})
	module_2.ref = any_join_result1_upvr.controlRef
	module_2.NextSelectionLeft = any_join_result1_upvr.NextSelectionLeft
	module_2.NextSelectionRight = any_join_result1_upvr.NextSelectionRight
	module_2.NextSelectionUp = any_join_result1_upvr.NextSelectionUp
	module_2.NextSelectionDown = any_join_result1_upvr.NextSelectionDown
	local module = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0);
		});
		UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
			MinSize = Vector2.new(28, 28);
			MaxSize = Vector2.new(240, 28);
		});
	}
	local tbl_5 = {
		Size = UDim2.fromScale(1, 1);
		BorderSizePixel = 0;
		BackgroundColor3 = getContentStyle_upvr(tbl_4_upvr, useControlState_upvr_result1, var16_result1).Color;
	}
	if var47 then
		-- KONSTANTWARNING: GOTO [291] #208
	end
	tbl_5.BackgroundTransparency = 1
	local tbl = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0);
		});
	}
	if any_join_result1_upvr.hasBorder then
		local tbl_9 = {
			Color = var16_result1.Theme.Divider.Color;
			Transparency = var16_result1.Theme.Divider.Transparency;
			Thickness = 1;
		}
	else
	end
	tbl.UIStroke = nil
	local tbl_6 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, 4);
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		});
	}
	local var59 = false
	if 0 < string.len(text) then
		var59 = React_upvr.createElement
		var59 = var59("Frame", {
			Size = UDim2.fromOffset(X, var42);
			LayoutOrder = 1;
			BackgroundTransparency = 1;
		}, {
			PillText = React_upvr.createElement(GenericTextLabel_upvr, {
				Text = text;
				BackgroundTransparency = 1;
				fontStyle = Font.CaptionHeader;
				colorStyle = getContentStyle_upvr(SmallPill, useControlState_upvr_result1, var16_result1);
				TextTruncate = Enum.TextTruncate.AtEnd;
				Size = UDim2.fromOffset(var45, var42);
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Center;
			});
			
			React_upvr.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(var45, 28);
			})
		})
	end
	tbl_6.TextArea = var59
	var59 = any_join_result1_upvr.isSelected
	local var64 = var59
	if var64 then
		var64 = React_upvr.createElement
		var64 = var64(ImageSetComponent_upvr.Label, {
			LayoutOrder = 2;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Size = UDim2.fromOffset(var20_result1, var20_result1);
			BackgroundTransparency = 1;
			Image = Images_upvr["icons/navigation/close_small"];
			ImageColor3 = getContentStyle_upvr_result1.Color;
			ImageTransparency = getContentStyle_upvr_result1.Transparency;
		})
	end
	tbl_6.CloseIcon = var64
	tbl_6.UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
		MaxSize = Vector2.new(216, 28);
	})
	tbl.Content = React_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.new(0, X + 4 + var20_result1, 1, 0);
		ClipsDescendants = true;
		BackgroundTransparency = 1;
	}, tbl_6)
	module.BackgroundLayer2 = React_upvr.createElement("Frame", tbl_5, tbl)
	return React_upvr.createElement(Interactable_upvr, module_2, module)
end
return React_upvr.forwardRef(function(arg1, arg2) -- Line 254
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Pillv2_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_3 = {}
	module_3.controlRef = arg2
	return React_upvr.createElement(Pillv2_upvr, Cryo_upvr.Dictionary.join(arg1, module_3))
end)