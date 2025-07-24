-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:32
-- Luau version 6, Types version 3
-- Time taken: 0.002402 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FeedbackBarHint")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.integer);
	text = t.string;
	maxWidth = t.optional(t.number);
	hintTextSize = t.optional(t.number);
})
local withStyle_upvr = UIBlox.Core.Style.withStyle
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FeedbackBarHintSizeAdjustment", false)
function any_extend_result1.render(arg1) -- Line 32
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: StyledTextLabel_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 33
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: StyledTextLabel_upvr (copied, readonly)
			[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
		local tbl_2 = {
			LayoutOrder = arg1.props.layoutOrder;
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.X;
		}
		;({}).Layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, 8);
		})
		local tbl = {}
		local hintTextSize = arg1.props.hintTextSize
		tbl.textSize = hintTextSize
		if arg1.props.maxWidth then
			if game_DefineFastFlag_result1_upvr then
				hintTextSize = Vector2.new(1000, arg1.props.maxWidth)
			else
				hintTextSize = Vector2.new(arg1.props.maxWidth)
			end
		else
			hintTextSize = nil
		end
		tbl.maxSize = hintTextSize
		tbl.layoutOrder = 2
		tbl.fontStyle = arg1_2.Font.Header2
		tbl.colorStyle = arg1_2.Theme.TextEmphasis
		if not arg1.props.maxWidth then
			-- KONSTANTWARNING: GOTO [118] #77
		end
		-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [117] 76. Error Block 32 start (CF ANALYSIS FAILED)
		tbl.automaticSize = nil
		if arg1.props.maxWidth then
			-- KONSTANTWARNING: GOTO [129] #85
		end
		-- KONSTANTERROR: [117] 76. Error Block 32 end (CF ANALYSIS FAILED)
	end)
end
return any_extend_result1