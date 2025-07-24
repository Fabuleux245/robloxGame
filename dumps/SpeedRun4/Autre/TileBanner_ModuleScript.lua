-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:23
-- Luau version 6, Types version 3
-- Time taken: 0.001173 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("TileBanner")
any_extend_result1.validateProps = t.strictInterface({
	bannerText = t.string;
})
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
function any_extend_result1.render(arg1) -- Line 21
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	local bannerText_upvr = arg1.props.bannerText
	return withStyle_upvr(function(arg1_2) -- Line 24
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: bannerText_upvr (readonly)
		]]
		local Font = arg1_2.Font
		local Theme = arg1_2.Theme
		return Roact_upvr.createElement("Frame", {
			BackgroundColor3 = Theme.SystemPrimaryDefault.Color;
			BackgroundTransparency = Theme.SystemPrimaryDefault.Transparency;
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 0, 6 + Font.CaptionBody.RelativeSize * Font.BaseSize);
		}, {
			TextLabel = Roact_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				Font = Font.CaptionBody.Font;
				TextSize = Font.CaptionBody.RelativeSize * Font.BaseSize;
				Text = bannerText_upvr;
				TextColor3 = Theme.SystemPrimaryContent.Color;
				TextTransparency = Theme.SystemPrimaryContent.Transparency;
				TextTruncate = Enum.TextTruncate.AtEnd;
				TextXAlignment = Enum.TextXAlignment.Center;
				Size = UDim2.new(1, 0, 1, 0);
			});
		})
	end)
end
return any_extend_result1