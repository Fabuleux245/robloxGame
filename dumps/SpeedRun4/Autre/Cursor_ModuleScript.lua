-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:08
-- Luau version 6, Types version 3
-- Time taken: 0.003550 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local CursorType_upvr = require(Foundation.Enums.CursorType)
local tbl_5_upvr = {
	[CursorType_upvr.BulletUp] = {
		Tag = "SlicedImage";
		Image = "component_assets/bulletUp_17_stroke_3";
		SliceCenter = Rect.new(8, 8, 9, 9);
		InsetAdjustment = 2;
	};
	[CursorType_upvr.BulletDown] = {
		Tag = "SlicedImage";
		Image = "component_assets/bulletDown_17_stroke_3";
		SliceCenter = Rect.new(8, 8, 9, 9);
		InsetAdjustment = 2;
	};
	[CursorType_upvr.InputFields] = {
		Tag = "SlicedImage";
		Image = "component_assets/circle_22_stroke_3";
		SliceCenter = Rect.new(11, 11, 12, 12);
		InsetAdjustment = 14;
	};
	[CursorType_upvr.SelectionCell] = {
		Tag = "SlicedImage";
		Image = "component_assets/square_7_stroke_3";
		SliceCenter = Rect.new(3.5, 3.5, 3.5, 3.5);
		InsetAdjustment = 2;
		Padding = 50;
	};
	[CursorType_upvr.SelectedKnob] = {
		Tag = "FixedSizeImage";
		Image = "component_assets/circle_42_stroke_3";
		Size = 42;
	};
	[CursorType_upvr.UnselectedKnob] = {
		Tag = "FixedSizeImage";
		Image = "component_assets/circle_52_stroke_3";
		Size = 52;
	};
	[CursorType_upvr.InputButton] = {
		Tag = "RoundedImage";
		CornerRadius = UDim.new(0, 11);
		Offset = 11;
		BorderWidth = 3;
	};
	[CursorType_upvr.RoundedRect] = {
		Tag = "RoundedImage";
		CornerRadius = UDim.new(0, 8);
		Offset = 9;
		BorderWidth = 3;
	};
	[CursorType_upvr.RoundedRectNoInset] = {
		Tag = "RoundedImage";
		CornerRadius = UDim.new(0, 8);
		Offset = 0;
		BorderWidth = 3;
	};
	[CursorType_upvr.RoundedSlot] = {
		Tag = "RoundedImage";
		CornerRadius = UDim.new(0, 7);
		Offset = 0;
		BorderWidth = 3;
	};
	[CursorType_upvr.SkinToneCircle] = {
		Tag = "RoundedImage";
		CornerRadius = UDim.new(0.5, 0);
		Offset = 0;
		BorderWidth = 3;
	};
	[CursorType_upvr.SmallPill] = {
		Tag = "RoundedImage";
		CornerRadius = UDim.new(0, 15);
		Offset = 0;
		BorderWidth = 3;
	};
	[CursorType_upvr.LargePill] = {
		Tag = "RoundedImage";
		CornerRadius = UDim.new(0, 26);
		Offset = 0;
		BorderWidth = 3;
	};
	[CursorType_upvr.Square] = {
		Tag = "RoundedImage";
		CornerRadius = UDim.new(0, 0);
		Offset = 2;
		BorderWidth = 3;
	};
	[CursorType_upvr.Toggle] = {
		Tag = "RoundedImage";
		CornerRadius = UDim.new(0, 13);
		Offset = 0;
		BorderWidth = 3;
	};
}
local Color3_new_result1_upvr = Color3.new(1, 1, 1)
local Image_upvr = require(Foundation.Components.Image)
local AnimatedGradient_upvr = require(script.Parent.AnimatedGradient)
local CursorComponent_upvr = require(script.Parent.Parent.CursorComponent)
return React_upvr.forwardRef(function(arg1, arg2) -- Line 134
	--[[ Upvalues[7]:
		[1]: CursorType_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Color3_new_result1_upvr (readonly)
		[4]: tbl_5_upvr (readonly)
		[5]: Image_upvr (readonly)
		[6]: AnimatedGradient_upvr (readonly)
		[7]: CursorComponent_upvr (readonly)
	]]
	if arg1.cursorType == CursorType_upvr.NavHighlight then
		local module_6 = {
			AnchorPoint = Vector2.new(0, 1);
			Position = UDim2.new(0, 0, 1, -3);
			Size = UDim2.new(1, 0, 0, 3);
			BorderSizePixel = 1;
			BackgroundColor3 = Color3_new_result1_upvr;
			BackgroundTransparency = 0;
			BorderColor3 = Color3_new_result1_upvr;
		}
		module_6.ref = arg2
		return React_upvr.createElement("Frame", module_6)
	end
	if arg1.cursorType == CursorType_upvr.Invisible then
		local module_2 = {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, 0);
		}
		module_2.ref = arg2
		return React_upvr.createElement("Frame", module_2)
	end
	local var27 = tbl_5_upvr[arg1.cursorType]
	if var27.Tag == "FixedSizeImage" then
		local udim2 = UDim2.fromOffset(var27.Size, var27.Size)
		local module = {
			Image = var27.Image;
		}
		local tbl_3 = {}
		local var31 = Color3_new_result1_upvr
		tbl_3.Color3 = var31
		module.imageStyle = tbl_3
		module.Size = udim2
		module.Position = UDim2.new(0.5, -udim2.X.Offset / 2, 0.5, -udim2.Y.Offset / 2)
		module.ref = arg2
		local module_7 = {}
		if arg1.isVisible then
			var31 = React_upvr.createElement(AnimatedGradient_upvr)
		else
			var31 = nil
		end
		module_7.AnimatedGradient = var31
		return React_upvr.createElement(Image_upvr, module, module_7)
	end
	local var33
	if var27.Tag == "SlicedImage" then
		local InsetAdjustment = var27.InsetAdjustment
		local var35 = 1
		if var27.Padding then
			var35 = React_upvr.createElement
			local tbl = {}
			var33 = var27.Padding
			tbl.PaddingTop = UDim.new(0, var33)
			var33 = var27.Padding
			tbl.PaddingBottom = UDim.new(0, var33)
			var33 = var27.Padding
			tbl.PaddingLeft = UDim.new(0, var33)
			var33 = var27.Padding
			tbl.PaddingRight = UDim.new(0, var33)
			var35 = var35("UIPadding", tbl)
		else
			var35 = nil
		end
		local module_3 = {
			Image = var27.Image;
		}
		local tbl_4 = {}
		var33 = Color3_new_result1_upvr
		tbl_4.Color3 = var33
		module_3.imageStyle = tbl_4
		local tbl_2 = {}
		var33 = var27.SliceCenter
		tbl_2.center = var33
		module_3.slice = tbl_2
		module_3.Size = UDim2.new(var35, InsetAdjustment * 2, 1, InsetAdjustment * 2)
		var33 = -InsetAdjustment
		module_3.Position = UDim2.fromOffset(var33, -InsetAdjustment)
		module_3.ref = arg2
		local module_5 = {
			Padding = var35;
		}
		if arg1.isVisible then
			var33 = React_upvr.createElement(AnimatedGradient_upvr)
		else
			var33 = nil
		end
		module_5.AnimatedGradient = var33
		return React_upvr.createElement(Image_upvr, module_3, module_5)
	end
	if var27.Tag == "RoundedImage" then
		local module_4 = {
			isVisible = arg1.isVisible;
			cornerRadius = var27.CornerRadius;
			offset = var27.Offset - var27.BorderWidth;
			borderWidth = var27.BorderWidth;
		}
		module_4.ref = arg2
		return React_upvr.createElement(CursorComponent_upvr, module_4)
	end
	return nil
end)