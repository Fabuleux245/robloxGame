-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:23
-- Luau version 6, Types version 3
-- Time taken: 0.002665 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("StatEntry")
any_extend_result1.validateProps = t.strictInterface({
	statValue = t.optional(t.any);
	isTitleEntry = t.boolean;
	isTeamEntry = t.boolean;
	layoutOrder = t.integer;
	textStyle = t.strictInterface({
		Color = t.Color3;
		Transparency = t.number;
		StrokeColor = t.optional(t.Color3);
		StrokeTransparency = t.optional(t.number);
	});
})
local WithLayoutValues_upvr = require(Parent.Connection.LayoutValues).WithLayoutValues
local withStyle_upvr = require(CorePackages.Packages.UIBlox).Style.withStyle
local FormatStatString_upvr = require(Parent.Parent.FormatStatString)
function any_extend_result1.render(arg1) -- Line 33
	--[[ Upvalues[4]:
		[1]: WithLayoutValues_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: FormatStatString_upvr (readonly)
		[4]: Roact_upvr (readonly)
	]]
	return WithLayoutValues_upvr(function(arg1_2) -- Line 34
		--[[ Upvalues[4]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: FormatStatString_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 35
			--[[ Upvalues[4]:
				[1]: arg1_2 (readonly)
				[2]: arg1 (copied, readonly)
				[3]: FormatStatString_upvr (copied, readonly)
				[4]: Roact_upvr (copied, readonly)
			]]
			local var13
			local var14
			if not arg1_2.IsTenFoot then
				var13 = arg1_3.Font.CaptionHeader.Font
				var14 = arg1_3.Font.CaptionHeader.RelativeSize * arg1_3.Font.BaseSize
			else
				var14 = arg1_2.StatTextSizeMobile
				var13 = arg1_2.StatFont
				if arg1.props.isTitleEntry then
					var13 = arg1_2.TitleStatFont
				elseif arg1.props.isTeamEntry then
					var13 = arg1_2.TeamStatFont
				end
			end
			return Roact_upvr.createElement("TextLabel", {
				Size = UDim2.new(0, arg1_2.StatEntrySizeX, 1, 0);
				Position = UDim2.new(0, 0, 0, 0);
				BackgroundTransparency = 1;
				Font = var13;
				LayoutOrder = arg1.props.layoutOrder;
				TextSize = var14;
				TextColor3 = arg1.props.textStyle.Color;
				TextTransparency = arg1.props.textStyle.Transparency;
				TextStrokeColor3 = arg1.props.textStyle.StrokeColor;
				TextStrokeTransparency = arg1.props.textStyle.StrokeTransparency;
				Text = FormatStatString_upvr(arg1.props.statValue);
				TextTruncate = Enum.TextTruncate.AtEnd;
			})
		end)
	end)
end
return any_extend_result1