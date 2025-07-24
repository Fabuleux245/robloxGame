-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:29
-- Luau version 6, Types version 3
-- Time taken: 0.001635 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent.Parent
local function getStyleProps_upvr(arg1, arg2) -- Line 34, Named "getStyleProps"
	local var4 = arg1
	if not var4 then
		var4 = {}
	end
	local module = {
		cornerRadius = var4.cornerRadius;
	}
	local textColor = var4.textColor
	if not textColor then
		textColor = arg2.Theme.TextMuted
	end
	module.textColor = textColor
	module.backgroundColor = var4.backgroundColor
	local textXAlignment = var4.textXAlignment
	if not textXAlignment then
		textXAlignment = Enum.TextXAlignment.Left
	end
	module.textXAlignment = textXAlignment
	textXAlignment = var4.textFont
	local var8 = textXAlignment
	if not var8 then
		var8 = arg2.Font.CaptionBody
	end
	module.textFont = var8
	return module
end
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local React_upvr = require(Parent.Parent.React)
local FooterFrame_upvr = require(Parent_2.FooterFrame)
return function(arg1) -- Line 45, Named "TextFooter"
	--[[ Upvalues[4]:
		[1]: useStyle_upvr (readonly)
		[2]: getStyleProps_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: FooterFrame_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local useStyle_upvr_result1 = useStyle_upvr()
	local getStyleProps_upvr_result1 = getStyleProps_upvr(arg1.styleProps, useStyle_upvr_result1)
	local cornerRadius = getStyleProps_upvr_result1.cornerRadius
	local textColor_2 = getStyleProps_upvr_result1.textColor
	local backgroundColor = getStyleProps_upvr_result1.backgroundColor
	local textFont = getStyleProps_upvr_result1.textFont
	local module_2 = {}
	local tbl_2 = {}
	local udim2 = UDim2.fromScale(1, 1)
	tbl_2.Size = udim2
	local var21
	if backgroundColor then
		udim2 = backgroundColor.Color
	else
		udim2 = nil
	end
	tbl_2.BackgroundColor3 = udim2
	if backgroundColor then
		-- KONSTANTWARNING: GOTO [49] #36
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 35. Error Block 22 start (CF ANALYSIS FAILED)
	tbl_2.BackgroundTransparency = 1
	tbl_2.BorderSizePixel = 0
	tbl_2.Text = arg1.text
	tbl_2.TextXAlignment = getStyleProps_upvr_result1.textXAlignment
	tbl_2.TextYAlignment = Enum.TextYAlignment.Center
	tbl_2.Font = textFont.Font
	var21 = useStyle_upvr_result1.Font.BaseSize
	tbl_2.TextSize = var21 * textFont.RelativeSize
	tbl_2.TextColor3 = textColor_2.Color
	tbl_2.TextTransparency = textColor_2.Transparency
	local tbl = {}
	if cornerRadius then
		var21 = React_upvr.createElement
		var21 = var21("UICorner", {
			CornerRadius = UDim.new(0, cornerRadius);
		})
	else
		var21 = nil
	end
	tbl.UICorner = var21
	module_2.Text = React_upvr.createElement("TextLabel", tbl_2, tbl)
	do
		return React_upvr.createElement(FooterFrame_upvr, arg1, module_2)
	end
	-- KONSTANTERROR: [48] 35. Error Block 22 end (CF ANALYSIS FAILED)
end