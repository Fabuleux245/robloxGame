-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:53
-- Luau version 6, Types version 3
-- Time taken: 0.002508 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local RoactFitComponents_upvr = require(CorePackages.Packages.AvatarExperienceDeps).RoactFitComponents
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ListEntry")
any_extend_result1_upvr.validateProps = t.strictInterface({
	text = t.string;
	hasBullet = t.boolean;
	layoutOrder = t.integer;
	positionChangedCallback = t.optional(t.callback);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	forwardRef = t.optional(t.table);
})
local withStyle_upvr = require(CorePackages.Packages.UIBlox).Style.withStyle
local Text_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Text
local FitTextLabel_upvr = RoactFitComponents_upvr.FitTextLabel
function any_extend_result1_upvr.render(arg1) -- Line 34
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Text_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: RoactFitComponents_upvr (readonly)
		[5]: FitTextLabel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 35
		--[[ Upvalues[5]:
			[1]: Text_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: RoactFitComponents_upvr (copied, readonly)
			[5]: FitTextLabel_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Font = arg1_2.Font
		local Theme = arg1_2.Theme
		local Font_2 = Font.CaptionBody.Font
		local var14 = Font.BaseSize * Font.CaptionBody.RelativeSize
		local any_GetTextWidth_result1 = Text_upvr.GetTextWidth("• ", Font_2, var14)
		local module_2 = {}
		local hasBullet = arg1.props.hasBullet
		if hasBullet then
			hasBullet = Roact_upvr.createElement
			hasBullet = hasBullet("TextLabel", {
				BackgroundTransparency = 1;
				Size = UDim2.fromOffset(any_GetTextWidth_result1, var14);
				Text = "• ";
				Font = Font_2;
				TextSize = var14;
				TextColor3 = Theme.TextDefault.Color;
				TextTransparency = Theme.TextDefault.Transparency;
				TextXAlignment = Enum.TextXAlignment.Left;
				LayoutOrder = 1;
			})
		end
		module_2.Bullet = hasBullet
		local tbl = {}
		if not arg1.props.hasBullet or not -any_GetTextWidth_result1 then
		end
		tbl.width = UDim.new(1, 0)
		tbl.BackgroundTransparency = 1
		tbl.Text = arg1.props.text
		tbl.Font = Font_2
		tbl.TextSize = var14
		tbl.TextColor3 = Theme.TextDefault.Color
		tbl.TextTransparency = Theme.TextDefault.Transparency
		tbl.TextXAlignment = Enum.TextXAlignment.Left
		tbl.LayoutOrder = 2
		module_2.Text = Roact_upvr.createElement(FitTextLabel_upvr, tbl)
		return Roact_upvr.createElement(RoactFitComponents_upvr.FitFrameVertical, {
			width = UDim.new(1, 0);
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.layoutOrder;
			[Roact_upvr.Change.AbsolutePosition] = arg1.props.positionChangedCallback;
			NextSelectionLeft = arg1.props.NextSelectionLeft;
			NextSelectionRight = arg1.props.NextSelectionRight;
			NextSelectionUp = arg1.props.NextSelectionUp;
			NextSelectionDown = arg1.props.NextSelectionDown;
			[Roact_upvr.Ref] = arg1.props.forwardRef;
		}, module_2)
	end)
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 91
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)