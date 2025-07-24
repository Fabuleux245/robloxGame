-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:41
-- Luau version 6, Types version 3
-- Time taken: 0.003682 seconds

local Parent = script.Parent.Parent.Parent.Parent
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local useTextSizeOffset_upvr = require(Parent.Core.Style.useTextSizeOffset)
local setDefault_upvr = require(Parent.Utility.setDefault)
local React_upvr = require(Parent.Parent.React)
return function(arg1) -- Line 44, Named "TileContentPanel"
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: useTextSizeOffset_upvr (readonly)
		[3]: setDefault_upvr (readonly)
		[4]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useStyle_upvr_result1 = useStyle_upvr()
	local var7
	if useStyle_upvr_result1.Settings.ReducedMotion then
		var7 = 6
	else
		var7 = 8
	end
	local contentTitle = arg1.contentTitle
	local contentFooter = arg1.contentFooter
	local setDefault_upvr_result1 = setDefault_upvr(arg1.textLineCount, 2)
	local var4_result1 = setDefault_upvr(arg1.hasSidePadding, true)
	if arg1.outerPadding == nil or type(arg1.outerPadding) == "number" then
		local setDefault_upvr_result1_3 = setDefault_upvr(arg1.outerPadding, var7)
	else
	end
	local Font = useStyle_upvr_result1.Font
	local setDefault_upvr_result1_2 = setDefault_upvr(arg1.titleFont, Font.Header2)
	local TextEmphasis = useStyle_upvr_result1.Theme.TextEmphasis
	local module = {}
	local tbl_2 = {
		FillDirection = Enum.FillDirection.Vertical;
		SortOrder = Enum.SortOrder.LayoutOrder;
	}
	local udim = UDim.new(0, setDefault_upvr(arg1.titlePadding, var7))
	tbl_2.Padding = udim
	module.UIListLayout = React_upvr.createElement("UIListLayout", tbl_2)
	local tbl = {}
	if var4_result1 then
		udim = UDim.new(0, setDefault_upvr(arg1.outerPadding.Left, var7))
	else
		udim = nil
	end
	tbl.PaddingLeft = udim
	if var4_result1 then
		-- KONSTANTWARNING: GOTO [178] #132
	end
	tbl.PaddingRight = nil
	tbl.PaddingTop = UDim.new(0, setDefault_upvr(arg1.outerPadding.Top, var7))
	tbl.PaddingBottom = UDim.new(0, setDefault_upvr(arg1.outerPadding.Bottom, var7))
	local any_createElement_result1 = React_upvr.createElement("UIPadding", tbl)
	module.Padding = any_createElement_result1
	if 0 < setDefault_upvr_result1 and contentTitle and 0 < string.len(contentTitle) then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("TextLabel", {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			Text = contentTitle;
			Font = setDefault_upvr_result1_2.Font;
			TextSize = Font.BaseSize * setDefault_upvr_result1_2.RelativeSize;
			TextTransparency = TextEmphasis.Transparency;
			TextColor3 = TextEmphasis.Color;
			TextWrapped = true;
			TextTruncate = Enum.TextTruncate.AtEnd;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Top;
			LayoutOrder = 1;
		}, {
			UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(math.huge, (Font.BaseSize + useTextSizeOffset_upvr()) * setDefault_upvr_result1_2.RelativeSize * setDefault_upvr_result1);
			});
		})
	else
		any_createElement_result1 = nil
	end
	module.TitleText = any_createElement_result1
	if contentFooter then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("Frame", {
			Size = UDim2.new(UDim.new(1, 0), arg1.footerHeight);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			LayoutOrder = 2;
		}, {contentFooter})
	else
		any_createElement_result1 = nil
	end
	module.ContentFooter = any_createElement_result1
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(UDim.new(1, 0), arg1.panelHeight);
		BackgroundTransparency = 1;
	}, module)
end