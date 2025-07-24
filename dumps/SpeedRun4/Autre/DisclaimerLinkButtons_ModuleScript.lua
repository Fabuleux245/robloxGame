-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:16
-- Luau version 6, Types version 3
-- Time taken: 0.003547 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local function var5_upvr(arg1, arg2, arg3) -- Line 39
	if arg1 == Enum.FillDirection.Horizontal then
		return {
			CellSize = UDim2.new(0.5, -arg3, 0, arg2);
		}
	end
	return {
		CellSize = UDim2.new(1, 0, 0, arg2);
	}
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useSelectionCursor_upvr = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local function var8_upvr(arg1) -- Line 51
	--[[ Upvalues[8]:
		[1]: useStyle_upvr (readonly)
		[2]: useDesignTokens_upvr (readonly)
		[3]: useSelectionCursor_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: StyledTextLabel_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: Images_upvr (readonly)
	]]
	local var9_result1 = useStyle_upvr()
	local var4_result1 = useDesignTokens_upvr()
	local var17 = var4_result1.Global.Size_700 or 80
	local var18 = var4_result1.Global.Size_350 or 42
	return React_upvr.createElement("ImageButton", {
		AutoButtonColor = false;
		Size = UDim2.new(1, 0, 0, var17);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
		[React_upvr.Event.Activated] = arg1.activated;
		SelectionImageObject = useSelectionCursor_upvr(CursorKind_upvr.RoundedRect);
	}, {
		padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 36);
			PaddingRight = UDim.new(0, 36);
		});
		ButtonText = React_upvr.createElement(StyledTextLabel_upvr, {
			text = arg1.text;
			automaticSize = Enum.AutomaticSize.X;
			size = UDim2.new(1, 0, 0, var17);
			textXAlignment = Enum.TextXAlignment.Left;
			fontStyle = var9_result1.Font.Header1;
			colorStyle = var9_result1.Theme.TextDefault;
			layoutOrder = 1;
		});
		LinkIconImage = React_upvr.createElement(ImageSetLabel_upvr, {
			Size = UDim2.new(0, var18, 0, var18);
			Position = UDim2.new(1, 0, 0.5, 0);
			AnchorPoint = Vector2.new(1, 0.5);
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			ScaleType = Enum.ScaleType.Fit;
			Image = Images_upvr["icons/navigation/externallink_medium"];
			ImageColor3 = var9_result1.Theme.UIEmphasis.Color;
			ImageTransparency = 0;
		});
	})
end
return function(arg1) -- Line 94
	--[[ Upvalues[4]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: var8_upvr (readonly)
	]]
	local useDesignTokens_upvr_result1 = useDesignTokens_upvr()
	local var26 = useDesignTokens_upvr_result1.Global.Space_150 or 18
	local fillDirection = arg1.fillDirection
	if not fillDirection then
		fillDirection = Enum.FillDirection.Vertical
	end
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.fromScale(1, 0);
		Selectable = false;
		LayoutOrder = arg1.layoutOrder;
	}, {
		gridlayout = React_upvr.createElement("UIGridLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = fillDirection;
			CellPadding = UDim2.new(0, var26, 0, var26);
			CellSize = var5_upvr(fillDirection, useDesignTokens_upvr_result1.Global.Size_700 or 80, var26).CellSize;
		});
		ButtonTos = React_upvr.createElement(var8_upvr, {
			text = arg1.textTos;
			activated = arg1.activatedTos;
			layoutOrder = 1;
		});
		ButtonPrivacy = React_upvr.createElement(var8_upvr, {
			text = arg1.textPrivacy;
			activated = arg1.activatedPrivacy;
			layoutOrder = 2;
		});
	})
end