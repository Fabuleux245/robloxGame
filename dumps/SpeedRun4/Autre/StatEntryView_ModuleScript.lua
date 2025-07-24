-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:46
-- Luau version 6, Types version 3
-- Time taken: 0.005892 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local useStyle_upvr = require(Parent_2.UIBlox).Core.Style.useStyle
local useLayoutValues_upvr = require(Parent.Common.useLayoutValues)
local FormatStatString_upvr = require(Parent.Common.FormatStatString)
return React_upvr.memo(function(arg1) -- Line 33
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: useLayoutValues_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: FormatStatString_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useStyle_upvr_result1 = useStyle_upvr()
	local useLayoutValues_upvr_result1 = useLayoutValues_upvr()
	local var10_upvw
	local var11_upvw
	local TextDefault = useStyle_upvr_result1.Theme.TextDefault
	local textStyle = arg1.textStyle
	local var14_upvr
	if textStyle then
		var14_upvr = textStyle.Color
	else
		var14_upvr = TextDefault.Color
	end
	if textStyle then
		local Transparency = textStyle.Transparency
	else
	end
	if textStyle then
		local _ = textStyle.StrokeColor
	else
	end
	if textStyle and textStyle.StrokeTransparency then
		local _ = textStyle.StrokeTransparency
	else
	end
	if not useLayoutValues_upvr_result1.IsTenFoot then
		var10_upvw = useStyle_upvr_result1.Font.CaptionHeader.Font
		var11_upvw = useStyle_upvr_result1.Font.CaptionHeader.RelativeSize * useStyle_upvr_result1.Font.BaseSize
	else
		var11_upvw = useLayoutValues_upvr_result1.StatTextSize
		var10_upvw = useLayoutValues_upvr_result1.StatFont
		if arg1.isTeamEntry then
			var10_upvw = useLayoutValues_upvr_result1.TeamStatFont
		end
	end
	local Transparency_upvr = TextDefault.Transparency
	local var20_upvr
	local var21_upvr
	local function var18() -- Line 58
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: FormatStatString_upvr (copied, readonly)
			[3]: var10_upvw (read and write)
			[4]: var11_upvw (read and write)
			[5]: var14_upvr (readonly)
			[6]: Transparency_upvr (readonly)
			[7]: var20_upvr (readonly)
			[8]: var21_upvr (readonly)
		]]
		local module_3 = {
			Text = arg1.statValue:map(function(arg1_2) -- Line 60
				--[[ Upvalues[1]:
					[1]: FormatStatString_upvr (copied, readonly)
				]]
				return FormatStatString_upvr(arg1_2)
			end);
		}
		local var24
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var24 = UDim2.fromScale(1, 0.5)
			return var24
		end
		if not arg1.showStatTitle or not INLINED() then
			var24 = UDim2.fromScale(1, 1)
		end
		module_3.Size = var24
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var24 = UDim2.fromScale(0, 0.5)
			return var24
		end
		if not arg1.showStatTitle or not INLINED_2() then
			var24 = UDim2.fromScale(0, 0)
		end
		module_3.Position = var24
		var24 = var10_upvw
		module_3.Font = var24
		var24 = var11_upvw
		module_3.TextSize = var24
		var24 = var14_upvr
		module_3.TextColor3 = var24
		var24 = Transparency_upvr
		module_3.TextTransparency = var24
		var24 = var20_upvr
		module_3.TextStrokeColor3 = var24
		var24 = var21_upvr
		module_3.TextStrokeTransparency = var24
		var24 = Enum.TextTruncate.AtEnd
		module_3.TextTruncate = var24
		var24 = 1
		module_3.BackgroundTransparency = var24
		return module_3
	end
	local tbl = {arg1.showStatTitle, var10_upvw, var11_upvw, var14_upvr, Transparency_upvr, var20_upvr, var21_upvr}
	local module_2 = {
		Size = UDim2.new(0, useLayoutValues_upvr_result1.StatEntrySizeX, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BorderSizePixel = 0;
	}
	local layoutOrder = arg1.layoutOrder
	module_2.LayoutOrder = layoutOrder
	if arg1.backgroundStyle then
		layoutOrder = arg1.backgroundStyle.Transparency
	else
		layoutOrder = 1
	end
	module_2.BackgroundTransparency = layoutOrder
	if arg1.backgroundStyle then
		-- KONSTANTWARNING: GOTO [143] #101
	end
	module_2.BackgroundColor3 = nil
	local var28
	local module = {}
	if arg1.showStatTitle and arg1.statName then
		var28 = React_upvr.createElement
		var28 = var28("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}, {
			StatTitle = React_upvr.createElement("TextLabel", {
				Text = arg1.statName;
				Size = UDim2.fromScale(1, 0.5);
				Position = UDim2.fromScale(0, 0);
				Font = useLayoutValues_upvr_result1.TitleStatFont;
				TextSize = var11_upvw;
				TextColor3 = var14_upvr;
				TextTransparency = Transparency_upvr;
				TextStrokeColor3 = var20_upvr;
				TextStrokeTransparency = var21_upvr;
				TextTruncate = Enum.TextTruncate.AtEnd;
				BackgroundTransparency = 1;
			});
			StatText = React_upvr.createElement("TextLabel", React_upvr.useMemo(var18, tbl));
		})
	else
		var28 = React_upvr.createElement
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var28 = var28("TextLabel", React_upvr.useMemo(var18, tbl))
	end
	module.PlayerStatDisplay = var28
	if arg1.doubleOverlay and arg1.overlayStyle then
		var28 = React_upvr.createElement
		var28 = var28("Frame", {
			ZIndex = 1;
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = arg1.overlayStyle.Transparency;
			BackgroundColor3 = arg1.overlayStyle.Color;
			BorderSizePixel = 0;
		})
	else
		var28 = nil
	end
	module.DoubleOverLay = var28
	if arg1.overlayStyle then
		var28 = React_upvr.createElement
		var28 = var28("Frame", {
			ZIndex = 2;
			Size = UDim2.new(1, 0, 1, 0);
			BorderSizePixel = 0;
			BackgroundTransparency = arg1.overlayStyle.Transparency;
			BackgroundColor3 = arg1.overlayStyle.Color;
		})
	else
		var28 = nil
	end
	module.OverlayFrame = var28
	return React_upvr.createElement("Frame", module_2, module)
end)