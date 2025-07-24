-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:57
-- Luau version 6, Types version 3
-- Time taken: 0.012005 seconds

local Parent_3 = script.Parent
local Parent_2 = Parent_3.Parent.Parent
local Parent = Parent_2.Parent
local UIBloxConfig_upvr = require(Parent_2.UIBloxConfig)
if not UIBloxConfig_upvr.useNewHeaderBar then
	return require(Parent_3.HeaderBar_DEPRECATED)
end
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
local tbl_11_upvr = {
	barHeight = 48;
	title = "";
	isTitleCentered = true;
	isSecondary = false;
	isOnMedia = false;
	hasDivider = false;
}
local function useHeaderBarStyle_upvr(arg1, arg2) -- Line 97, Named "useHeaderBarStyle"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local Tokens_upvr = arg2.Tokens
	local Theme_upvr_2 = arg2.Theme
	local backgroundStyle_upvr = arg1.backgroundStyle
	local backgroundTransparency_upvr = arg1.backgroundTransparency
	local isOnMedia_2_upvr = arg1.isOnMedia
	local paddingTop_upvr = arg1.paddingTop
	local paddingRight_upvr = arg1.paddingRight
	local paddingBottom_upvr = arg1.paddingBottom
	local paddingLeft_upvr = arg1.paddingLeft
	local margin_upvr = arg1.margin
	return {
		BackgroundStyle = React_upvr.useMemo(function() -- Line 104
			--[[ Upvalues[4]:
				[1]: isOnMedia_2_upvr (readonly)
				[2]: backgroundStyle_upvr (readonly)
				[3]: Theme_upvr_2 (readonly)
				[4]: backgroundTransparency_upvr (readonly)
			]]
			if isOnMedia_2_upvr then
				return {}
			end
			if not backgroundStyle_upvr then
				local module_4 = {
					Color3 = Theme_upvr_2.BackgroundDefault.Color;
					Transparency = Theme_upvr_2.BackgroundDefault.Transparency;
				}
			end
			if backgroundTransparency_upvr then
				module_4.Transparency = backgroundTransparency_upvr
			end
			return module_4
		end, {isOnMedia_2_upvr, backgroundStyle_upvr, backgroundTransparency_upvr, Theme_upvr_2});
		Padding = React_upvr.useMemo(function() -- Line 128
			--[[ Upvalues[6]:
				[1]: paddingTop_upvr (readonly)
				[2]: Tokens_upvr (readonly)
				[3]: paddingRight_upvr (readonly)
				[4]: paddingBottom_upvr (readonly)
				[5]: paddingLeft_upvr (readonly)
				[6]: margin_upvr (readonly)
			]]
			local module_7 = {}
			local var25 = paddingTop_upvr
			if not var25 then
				var25 = UDim.new(0, Tokens_upvr.Global.Space_100)
			end
			module_7.Top = var25
			var25 = paddingRight_upvr
			local var26 = var25
			if not var26 then
				var26 = UDim.new(0, Tokens_upvr.Global.Space_250)
			end
			module_7.Right = var26
			var26 = paddingBottom_upvr
			local var27 = var26
			if not var27 then
				var27 = UDim.new(0, Tokens_upvr.Global.Space_100)
			end
			module_7.Bottom = var27
			var27 = paddingLeft_upvr
			local var28 = var27
			if not var28 then
				var28 = UDim.new(0, Tokens_upvr.Global.Space_250)
			end
			module_7.Left = var28
			if margin_upvr then
				module_7.Left = UDim.new(0, margin_upvr)
				module_7.Right = UDim.new(0, margin_upvr)
			end
			return module_7
		end, {paddingTop_upvr, paddingRight_upvr, paddingBottom_upvr, paddingLeft_upvr, margin_upvr, Tokens_upvr});
	}
end
local function useRenderLeft_upvr(arg1, arg2) -- Line 149, Named "useRenderLeft"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: UIBloxConfig_upvr (readonly)
		[4]: GenericTextLabel_upvr (readonly)
	]]
	local module = {arg1.title, arg1.isTitleCentered, arg1.renderLeft, arg1.isSecondary, arg1.shouldHideSecondaryLeftItem}
	module[6] = arg2
	return React_upvr.useMemo(function() -- Line 150
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: Cryo_upvr (copied, readonly)
			[5]: UIBloxConfig_upvr (copied, readonly)
			[6]: GenericTextLabel_upvr (copied, readonly)
		]]
		local title_upvr_2 = arg1.title
		local renderLeft_upvr = arg1.renderLeft
		local isSecondary = arg1.isSecondary
		local var35 = true
		if renderLeft_upvr ~= nil then
			if renderLeft_upvr ~= React_upvr.None then
				var35 = false
			else
				var35 = true
			end
		end
		local Tokens_upvr_3 = arg2.Tokens
		if var35 and 0 < string.len(title_upvr_2) then
			return function(arg1_2) -- Line 161
				--[[ Upvalues[6]:
					[1]: Cryo_upvr (copied, readonly)
					[2]: React_upvr (copied, readonly)
					[3]: Tokens_upvr_3 (readonly)
					[4]: UIBloxConfig_upvr (copied, readonly)
					[5]: GenericTextLabel_upvr (copied, readonly)
					[6]: title_upvr_2 (readonly)
				]]
				local tbl_10 = {}
				local tbl_14 = {
					PaddingTop = UDim.new(0, Tokens_upvr_3.Global.Space_25);
					PaddingBottom = UDim.new(0, Tokens_upvr_3.Global.Space_25);
				}
				tbl_10.TextPadding = React_upvr.createElement("UIPadding", tbl_14)
				local module_3 = {}
				if UIBloxConfig_upvr.fixHeaderBarTitleFlickering then
					tbl_14 = React_upvr.createElement
					tbl_14 = tbl_14(GenericTextLabel_upvr, {
						fluidSizing = true;
						Text = title_upvr_2;
						TextXAlignment = Enum.TextXAlignment.Left;
						fontStyle = Tokens_upvr_3.Semantic.Typography.Title;
						colorStyle = Tokens_upvr_3.Semantic.Color.Text.Emphasis;
					}, Cryo_upvr.Dictionary.join(arg1_2.children, tbl_10))
				else
					tbl_14 = React_upvr.createElement
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_14 = tbl_14("TextLabel", {
						AutomaticSize = Enum.AutomaticSize.XY;
						BackgroundTransparency = 1;
						Text = title_upvr_2;
						Font = Tokens_upvr_3.Semantic.Typography.Title.Font;
						TextSize = Tokens_upvr_3.Semantic.Typography.Title.FontSize;
						LineHeight = Tokens_upvr_3.Semantic.Typography.Title.LineHeight;
						TextColor3 = Tokens_upvr_3.Semantic.Color.Text.Emphasis.Color3;
						TextTransparency = Tokens_upvr_3.Semantic.Color.Text.Emphasis.Transparency;
					}, Cryo_upvr.Dictionary.join(arg1_2.children, tbl_10))
				end
				module_3.Text = tbl_14
				return React_upvr.createElement(React_upvr.Fragment, nil, module_3)
			end
		end
		if isSecondary and not arg1.shouldHideSecondaryLeftItem and 0 < string.len(title_upvr_2) then
			local Font = arg2.Font
			local Header2_upvr = Font.Header2
			local var46_upvr = Header2_upvr.RelativeSize * Font.BaseSize
			local Theme_upvr = arg2.Theme
			do
				return function() -- Line 197
					--[[ Upvalues[7]:
						[1]: React_upvr (copied, readonly)
						[2]: var46_upvr (readonly)
						[3]: renderLeft_upvr (readonly)
						[4]: Theme_upvr (readonly)
						[5]: GenericTextLabel_upvr (copied, readonly)
						[6]: title_upvr_2 (readonly)
						[7]: Header2_upvr (readonly)
					]]
					local module_2 = {}
					local tbl_9 = {
						Layout = React_upvr.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder;
							FillDirection = Enum.FillDirection.Horizontal;
							VerticalAlignment = Enum.VerticalAlignment.Center;
							Padding = UDim.new(0, 12);
						});
					}
					local tbl_12 = {
						LayoutOrder = 1;
						Selectable = false;
					}
					local var53 = 0
					tbl_12.Size = UDim2.fromOffset(var53, 0)
					tbl_12.BorderSizePixel = 0
					tbl_12.BackgroundTransparency = 1
					tbl_12.AutomaticSize = Enum.AutomaticSize.XY
					local tbl = {}
					if renderLeft_upvr then
						var53 = renderLeft_upvr()
					else
						var53 = nil
					end
					tbl.LeftContent = var53
					tbl_9.Left = React_upvr.createElement("Frame", tbl_12, tbl)
					tbl_9.Divider = React_upvr.createElement("Frame", {
						LayoutOrder = 2;
						Selectable = false;
						BackgroundColor3 = Theme_upvr.Divider.Color;
						BackgroundTransparency = Theme_upvr.Divider.Transparency;
						BorderSizePixel = 0;
						Size = UDim2.new(0, 1, 1, 0);
					})
					tbl_9.TextLabel = React_upvr.createElement(GenericTextLabel_upvr, {
						LayoutOrder = 3;
						Selectable = false;
						ClipsDescendants = true;
						Text = title_upvr_2;
						TextTruncate = Enum.TextTruncate.AtEnd;
						TextWrapped = false;
						TextXAlignment = Enum.TextXAlignment.Left;
						fontStyle = Header2_upvr;
						colorStyle = Theme_upvr.TextEmphasis;
					})
					module_2.Text = React_upvr.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, var46_upvr);
						BorderSizePixel = 0;
						BackgroundTransparency = 1;
					}, tbl_9)
					return React_upvr.createElement(React_upvr.Fragment, nil, module_2)
				end
			end
			local var59
		end
		if not isSecondary and not arg1.isTitleCentered then
			Header2_upvr = Tokens_upvr_3.Semantic
			Theme_upvr = Header2_upvr.Typography.Header
			local var58_upvr = Theme_upvr
			local FontSize_upvr = var58_upvr.FontSize
		end
		return nil
	end, module)
end
local useStyle_upvr = require(Parent_2.Core.Style.useStyle)
local GetTextSize_upvr = require(Parent_2.Core.Text.GetTextSize)
local ThreeSectionBar_upvr = require(Parent_2.Core.Bar.ThreeSectionBar)
return function(arg1) -- Line 302, Named "HeaderBar"
	--[[ Upvalues[10]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_11_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useRenderLeft_upvr (readonly)
		[6]: GenericTextLabel_upvr (readonly)
		[7]: UIBloxConfig_upvr (readonly)
		[8]: GetTextSize_upvr (readonly)
		[9]: useHeaderBarStyle_upvr (readonly)
		[10]: ThreeSectionBar_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 62 start (CF ANALYSIS FAILED)
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_11_upvr, arg1)
	local useStyle_upvr_result1 = useStyle_upvr()
	local Tokens_upvr_2 = useStyle_upvr_result1.Tokens
	local title_upvr = any_join_result1.title
	local renderCenter_upvr = any_join_result1.renderCenter
	local renderRight_upvr = any_join_result1.renderRight
	local isTitleCentered_upvr = any_join_result1.isTitleCentered
	local isSecondary_2_upvr = any_join_result1.isSecondary
	local onHeaderActivated = any_join_result1.onHeaderActivated
	local contentPaddingRight_upvr = any_join_result1.contentPaddingRight
	local automaticHeight = any_join_result1.automaticHeight
	local isOnMedia = any_join_result1.isOnMedia
	local var87_upvr = true
	local var88
	if any_join_result1.renderLeft ~= nil then
		if any_join_result1.renderLeft ~= React_upvr.None then
			var87_upvr = false
		else
			var87_upvr = true
		end
	end
	local useRenderLeft_result1_upvr = useRenderLeft_upvr(any_join_result1, useStyle_upvr_result1)
	if UIBloxConfig_upvr.fixHeaderBarDependenciesArray then
		local tbl_2 = {}
		var88 = Tokens_upvr_2
		tbl_2[1] = renderCenter_upvr
		tbl_2[2] = var87_upvr
		tbl_2[3] = isSecondary_2_upvr
		tbl_2[4] = isTitleCentered_upvr
		tbl_2[5] = var88
		tbl_2[6] = title_upvr
		-- KONSTANTWARNING: GOTO [88] #64
	end
	-- KONSTANTERROR: [0] 1. Error Block 62 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [79] 57. Error Block 44 start (CF ANALYSIS FAILED)
	local tbl_7 = {}
	var88 = Tokens_upvr_2
	tbl_7[1] = renderCenter_upvr
	tbl_7[2] = var87_upvr
	tbl_7[3] = isSecondary_2_upvr
	tbl_7[4] = isTitleCentered_upvr
	tbl_7[5] = var88
	local tbl_6 = {}
	var88 = useRenderLeft_result1_upvr
	tbl_6[1] = title_upvr
	tbl_6[2] = isTitleCentered_upvr
	tbl_6[3] = var87_upvr
	tbl_6[4] = var88
	tbl_6[5] = renderCenter_upvr
	tbl_6[6] = renderRight_upvr
	tbl_6[7] = isSecondary_2_upvr
	tbl_6[8] = Tokens_upvr_2
	local tbl_8 = {}
	local var105 = var87_upvr
	var88 = Tokens_upvr_2
	tbl_8[1] = contentPaddingRight_upvr
	tbl_8[2] = var105
	tbl_8[3] = var88
	local useHeaderBarStyle_upvr_result1 = useHeaderBarStyle_upvr(any_join_result1, useStyle_upvr_result1)
	local BackgroundStyle = useHeaderBarStyle_upvr_result1.BackgroundStyle
	local Padding = useHeaderBarStyle_upvr_result1.Padding
	if isOnMedia then
		var88 = any_join_result1.barHeight
		var105 = var88 + Tokens_upvr_2.Global.Size_500
	else
		var105 = any_join_result1.barHeight
	end
	if automaticHeight then
		var88 = 0
	else
		var88 = math.max(0, any_join_result1.barHeight - Padding.Top.Offset - Padding.Bottom.Offset)
	end
	local module_5 = {
		Selectable = false;
		Size = UDim2.new(1, 0, 0, var105);
		BorderSizePixel = 0;
		BackgroundColor3 = BackgroundStyle.Color3;
	}
	local Transparency = BackgroundStyle.Transparency
	module_5.BackgroundTransparency = Transparency
	if automaticHeight then
		Transparency = Enum.AutomaticSize.Y
	else
		Transparency = nil
	end
	module_5.AutomaticSize = Transparency
	module_5.ZIndex = any_join_result1.zIndex
	local module_8 = {}
	if isOnMedia then
		local tbl_15 = {
			Rotation = 90;
			Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))});
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.7), NumberSequenceKeypoint.new(1, 1)});
		}
		-- KONSTANTWARNING: GOTO [268] #197
	end
	module_8.Gradient = nil
	if isOnMedia then
		local _ = {
			PaddingBottom = UDim.new(0, Tokens_upvr_2.Global.Size_500);
		}
		-- KONSTANTWARNING: GOTO [289] #212
	end
	module_8.OnMediaExtendedHeight = nil
	module_8.Bar = React_upvr.createElement("Frame", {
		Selectable = false;
		Size = UDim2.fromScale(1, 0);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = Padding.Top;
			PaddingRight = Padding.Right;
			PaddingBottom = Padding.Bottom;
			PaddingLeft = Padding.Left;
		});
		ThreeSectionBar = React_upvr.createElement(ThreeSectionBar_upvr, {
			BackgroundTransparency = 1;
			barHeight = var88;
			automaticHeight = automaticHeight;
			renderLeft = useRenderLeft_result1_upvr;
			renderCenter = React_upvr.useMemo(function() -- Line 323
				--[[ Upvalues[8]:
					[1]: renderCenter_upvr (readonly)
					[2]: var87_upvr (readonly)
					[3]: isSecondary_2_upvr (readonly)
					[4]: isTitleCentered_upvr (readonly)
					[5]: Tokens_upvr_2 (readonly)
					[6]: React_upvr (copied, readonly)
					[7]: GenericTextLabel_upvr (copied, readonly)
					[8]: title_upvr (readonly)
				]]
				local var93 = renderCenter_upvr
				if not var93 and not var87_upvr and not isSecondary_2_upvr and isTitleCentered_upvr then
					local Header_2_upvr = Tokens_upvr_2.Semantic.Typography.Header
					local FontSize_upvr_2 = Header_2_upvr.FontSize
					function var93() -- Line 330
						--[[ Upvalues[6]:
							[1]: React_upvr (copied, readonly)
							[2]: GenericTextLabel_upvr (copied, readonly)
							[3]: FontSize_upvr_2 (readonly)
							[4]: title_upvr (copied, readonly)
							[5]: Header_2_upvr (readonly)
							[6]: Tokens_upvr_2 (copied, readonly)
						]]
						return React_upvr.createElement(GenericTextLabel_upvr, {
							Selectable = false;
							ClipsDescendants = true;
							Size = UDim2.new(1, 0, 0, FontSize_upvr_2);
							Text = title_upvr;
							TextTruncate = Enum.TextTruncate.AtEnd;
							TextWrapped = false;
							fontStyle = Header_2_upvr;
							colorStyle = Tokens_upvr_2.Semantic.Color.Text.Emphasis;
						}, {
							TextPadding = React_upvr.createElement("UIPadding", {
								PaddingTop = UDim.new(0, Tokens_upvr_2.Global.Space_25);
								PaddingBottom = UDim.new(0, Tokens_upvr_2.Global.Space_25);
							});
						})
					end
				end
				return var93
			end, tbl_7);
			renderRight = renderRight_upvr;
			estimatedCenterWidth = React_upvr.useMemo(function() -- Line 355
				--[[ Upvalues[9]:
					[1]: useRenderLeft_result1_upvr (readonly)
					[2]: renderCenter_upvr (readonly)
					[3]: renderRight_upvr (readonly)
					[4]: var87_upvr (readonly)
					[5]: isSecondary_2_upvr (readonly)
					[6]: isTitleCentered_upvr (readonly)
					[7]: Tokens_upvr_2 (readonly)
					[8]: GetTextSize_upvr (copied, readonly)
					[9]: title_upvr (readonly)
				]]
				if useRenderLeft_result1_upvr and renderCenter_upvr and renderRight_upvr then
					return 0
				end
				if not renderCenter_upvr and not var87_upvr and not isSecondary_2_upvr and isTitleCentered_upvr then
					local Header = Tokens_upvr_2.Semantic.Typography.Header
					return GetTextSize_upvr(title_upvr, Header.FontSize, Header.Font, Vector2.new(math.huge, math.huge)).X
				end
				return math.huge
			end, tbl_6);
			sectionSpacing = Tokens_upvr_2.Global.Space_150;
			contentPaddingRight = React_upvr.useMemo(function() -- Line 372
				--[[ Upvalues[3]:
					[1]: contentPaddingRight_upvr (readonly)
					[2]: var87_upvr (readonly)
					[3]: Tokens_upvr_2 (readonly)
				]]
				if contentPaddingRight_upvr then
					return contentPaddingRight_upvr
				end
				if var87_upvr then
					return UDim.new(0, 0)
				end
				return UDim.new(0, Tokens_upvr_2.Global.Space_300)
			end, tbl_8);
		});
	})
	if onHeaderActivated then
		local _ = {
			AutoButtonColor = false;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Text = "";
			Size = UDim2.fromScale(1, 1);
			Selectable = false;
			[React_upvr.Event.Activated] = onHeaderActivated;
			ZIndex = 0;
		}
		-- KONSTANTWARNING: GOTO [416] #294
	end
	module_8.HeaderClickArea = nil
	if any_join_result1.hasDivider then
		local _ = {
			Selectable = false;
			Size = UDim2.new(1, 0, 0, Tokens_upvr_2.Global.Stroke_100);
			Position = UDim2.new(0, 0, 1, -Tokens_upvr_2.Global.Stroke_100);
			BackgroundColor3 = Tokens_upvr_2.Semantic.Color.Common.Divider.Color3;
			BackgroundTransparency = Tokens_upvr_2.Semantic.Color.Common.Divider.Transparency;
			BorderSizePixel = 0;
			ZIndex = 1;
		}
	else
	end
	module_8.BottomDivider = nil
	do
		return React_upvr.createElement("Frame", module_5, module_8)
	end
	-- KONSTANTERROR: [79] 57. Error Block 44 end (CF ANALYSIS FAILED)
end