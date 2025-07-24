-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:23
-- Luau version 6, Types version 3
-- Time taken: 0.001232 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ScrollButton")
any_extend_result1.validateProps = t.strictInterface({
	icon = t.table;
	callback = t.callback;
})
local withStyle_upvr = UIBlox.Core.Style.withStyle
local Interactable_upvr = UIBlox.Core.Control.Interactable
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local getIconSize_upvr = UIBlox.App.ImageSet.getIconSize
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
function any_extend_result1.render(arg1) -- Line 24
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Interactable_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: getIconSize_upvr (readonly)
		[6]: IconSize_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 25
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: Interactable_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: getIconSize_upvr (copied, readonly)
			[6]: IconSize_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(Interactable_upvr, {
			AutoButtonColor = false;
			Size = UDim2.fromScale(1, 1);
			BackgroundColor3 = arg1_2.Theme.BackgroundUIContrast.Color;
			BackgroundTransparency = arg1_2.Theme.BackgroundUIContrast.Transparency;
			BorderSizePixel = 0;
			[Roact_upvr.Event.Activated] = arg1.props.callback;
			onStateChanged = function() -- Line 34, Named "onStateChanged"
			end;
		}, {
			Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
				Size = UDim2.fromOffset(getIconSize_upvr(IconSize_upvr.Medium), getIconSize_upvr(IconSize_upvr.Medium));
				Position = UDim2.fromScale(0.5, 0.5);
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				Image = arg1.props.icon;
				ImageColor3 = arg1_2.Theme.IconEmphasis.Color;
				ImageTransparency = arg1_2.Theme.IconEmphasis.Transparency;
			});
		})
	end)
end
return any_extend_result1