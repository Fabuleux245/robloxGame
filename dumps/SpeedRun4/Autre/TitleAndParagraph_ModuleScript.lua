-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:26
-- Luau version 6, Types version 3
-- Time taken: 0.004598 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("TitleAndParagraph")
any_extend_result1.defaultProps = {
	layoutOrder = 0;
	textXAlignment = Enum.TextXAlignment.Left;
	paragraphTextKeys = {};
	paragraphTextArgs = {};
}
local function _(arg1) -- Line 28
	return "paragraphText"..tostring(arg1)
end
local function _(arg1, arg2) -- Line 32
	local module_3 = {}
	module_3[1] = arg1
	for i, v in pairs(arg2) do
		module_3[i] = v
	end
	return module_3
end
local ArgCheck_upvr = require(Parent.ArgCheck)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AuthDisclaimerUseArgs", false)
local withLocalization_upvr = require(Parent.Localization).withLocalization
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local FormFactor_upvr = require(Parent.FormFactor).Enums.FormFactor
local FitTextLabel_upvr = require(AuthCommon.Components.FitTextLabel)
local FitChildren_upvr = require(AuthCommon.Components.FitChildren)
function any_extend_result1.render(arg1) -- Line 42
	--[[ Upvalues[8]:
		[1]: ArgCheck_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: withStyle_upvr (readonly)
		[5]: FormFactor_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: FitTextLabel_upvr (readonly)
		[8]: FitChildren_upvr (readonly)
	]]
	local paragraphTextKeys_upvr = arg1.props.paragraphTextKeys
	local width = arg1.props.width
	ArgCheck_upvr.isType(paragraphTextKeys_upvr, "table", "TitleAndParagraph expects paragraphTextKeys to be a table.")
	if game_DefineFastFlag_result1_upvr then
		ArgCheck_upvr.isEqual(#paragraphTextKeys_upvr, #arg1.props.paragraphTextArgs, "paragraphTextKeys and paragraphTextArgs should have the same size")
	end
	local udim2_upvw = UDim2.new(1, 0, 0, 0)
	if width then
		udim2_upvw = UDim2.new(0, width, 0, 0)
	end
	local module = {
		titleText = arg1.props.titleTextKey;
	}
	for i_2, v_2 in ipairs(paragraphTextKeys_upvr) do
		if game_DefineFastFlag_result1_upvr then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			for i_3, v_3 in pairs(arg1.props.paragraphTextArgs[i_2]) do
				({paragraphTextKeys_upvr[i_2]})[i_3] = v_3
				local var42
			end
			module["paragraphText"..tostring(i_2)] = var42
		else
			module["paragraphText"..tostring(i_2)] = v_2
		end
	end
	local formFactor_upvr = arg1.props.formFactor
	local textXAlignment_upvr = arg1.props.textXAlignment
	local layoutOrder_upvr = arg1.props.layoutOrder
	return withLocalization_upvr(module)(function(arg1_2) -- Line 79
		--[[ Upvalues[10]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: formFactor_upvr (readonly)
			[3]: FormFactor_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: FitTextLabel_upvr (copied, readonly)
			[6]: textXAlignment_upvr (readonly)
			[7]: FitChildren_upvr (copied, readonly)
			[8]: paragraphTextKeys_upvr (readonly)
			[9]: layoutOrder_upvr (readonly)
			[10]: udim2_upvw (read and write)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 80
			--[[ Upvalues[10]:
				[1]: formFactor_upvr (copied, readonly)
				[2]: FormFactor_upvr (copied, readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: FitTextLabel_upvr (copied, readonly)
				[6]: textXAlignment_upvr (copied, readonly)
				[7]: FitChildren_upvr (copied, readonly)
				[8]: paragraphTextKeys_upvr (copied, readonly)
				[9]: layoutOrder_upvr (copied, readonly)
				[10]: udim2_upvw (copied, read and write)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var56 = 12
			local Font = arg1_3.Font.Body.Font
			local var58
			if formFactor_upvr == FormFactor_upvr.COMPACT then
				var58 = arg1_3.Font.BaseSize * arg1_3.Font.Title.RelativeMinSize
				var56 = 5
			end
			local var59 = 0
			local module_2 = {
				Layout = Roact_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical;
					SortOrder = Enum.SortOrder.LayoutOrder;
					Padding = UDim.new(0, var56);
				});
			}
			local titleText = arg1_2.titleText
			if titleText then
				titleText = Roact_upvr.createElement
				titleText = titleText(FitTextLabel_upvr, {
					LayoutOrder = var59;
					BorderSizePixel = 0;
					BackgroundTransparency = 1;
					TextXAlignment = textXAlignment_upvr;
					TextYAlignment = Enum.TextYAlignment.Top;
					Text = arg1_2.titleText;
					TextSize = var58;
					Font = arg1_3.Font.Title.Font;
					TextColor3 = arg1_3.Theme.SystemPrimaryDefault.Color;
					TextTransparency = arg1_3.Theme.SystemPrimaryDefault.Transparency;
					Size = UDim2.new(1, 0, 0, 0);
					fitAxis = FitChildren_upvr.FitAxis.Height;
					TextWrapped = true;
				})
			end
			module_2.Title = titleText
			for i_4, _ in ipairs(paragraphTextKeys_upvr) do
				local var67 = "paragraphText"..tostring(i_4)
				module_2[var67] = Roact_upvr.createElement(FitTextLabel_upvr, {
					LayoutOrder = var59 + 1;
					BorderSizePixel = 0;
					BackgroundTransparency = 1;
					TextXAlignment = textXAlignment_upvr;
					TextYAlignment = Enum.TextYAlignment.Top;
					Text = arg1_2[var67];
					TextSize = arg1_3.Font.BaseSize * arg1_3.Font.Body.RelativeMinSize;
					Font = Font;
					TextColor3 = arg1_3.Theme.TextDefault.Color;
					TextTransparency = arg1_3.Theme.TextDefault.Transparency;
					Size = UDim2.new(1, 0, 0, 0);
					fitAxis = FitChildren_upvr.FitAxis.Height;
					TextWrapped = true;
				})
				local _
			end
			return Roact_upvr.createElement(FitChildren_upvr.FitFrame, {
				LayoutOrder = layoutOrder_upvr;
				Size = udim2_upvw;
				fitAxis = FitChildren_upvr.FitAxis.Height;
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
			}, module_2)
		end)
	end)
end
return require(Parent.RoactRodux).connect(function(arg1, arg2) -- Line 151
	return {
		formFactor = arg1.FormFactor;
	}
end)(any_extend_result1)