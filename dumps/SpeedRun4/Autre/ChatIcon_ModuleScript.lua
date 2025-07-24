-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:27
-- Luau version 6, Types version 3
-- Time taken: 0.001512 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatIcon")
any_extend_result1.validateProps = t.strictInterface({
	chatVisible = t.boolean;
	unreadMessages = t.integer;
})
local withStyle_upvr = UIBlox.Core.Style.withStyle
local icons_menu_chat_on_upvr = Images["icons/menu/chat_on"]
local icons_menu_chat_off_upvr = Images["icons/menu/chat_off"]
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Badge_upvr = UIBlox.App.Indicator.Badge
function any_extend_result1.render(arg1) -- Line 24
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: icons_menu_chat_on_upvr (readonly)
		[3]: icons_menu_chat_off_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: Badge_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 25
		--[[ Upvalues[6]:
			[1]: icons_menu_chat_on_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: icons_menu_chat_off_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: ImageSetLabel_upvr (copied, readonly)
			[6]: Badge_upvr (copied, readonly)
		]]
		local Theme = arg1_2.Theme
		local var15 = icons_menu_chat_on_upvr
		if not arg1.props.chatVisible then
			var15 = icons_menu_chat_off_upvr
		end
		local module = {}
		local var18 = false
		if 0 < arg1.props.unreadMessages then
			var18 = Roact_upvr.createElement
			var18 = var18(Badge_upvr, {
				position = UDim2.new(0, 24, 0.5, 0);
				anchorPoint = Vector2.new(0, 0.5);
				hasShadow = false;
				value = arg1.props.unreadMessages;
			})
		end
		module.Badge = var18
		return Roact_upvr.createElement(ImageSetLabel_upvr, {
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			Image = var15;
			ImageColor3 = Theme.IconEmphasis.Color;
			ImageTransparency = Theme.IconEmphasis.Transparency;
			ZIndex = 2;
		}, module)
	end)
end
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1) -- Line 52, Named "mapStateToProps"
	return {
		chatVisible = arg1.chat.visible;
		unreadMessages = arg1.chat.unreadMessages;
	}
end, nil)(any_extend_result1)