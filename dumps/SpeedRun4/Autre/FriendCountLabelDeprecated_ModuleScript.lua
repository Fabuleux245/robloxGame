-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:10
-- Luau version 6, Types version 3
-- Time taken: 0.001994 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FriendCountLabel")
any_extend_result1.defaultProps = {
	currentSize = 0;
	maxSize = 0;
	LayoutOrder = nil;
}
local UIBlox_upvr = require(Parent.UIBlox)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatFriendCountIconMigration", false)
local Icon_upvr = require(Parent.Foundation).Icon
local BuilderIcons_upvr = require(Parent.BuilderIcons)
local AppFonts_upvr = require(Parent.Style).AppFonts
function any_extend_result1.render(arg1) -- Line 28
	--[[ Upvalues[6]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: Icon_upvr (readonly)
		[5]: BuilderIcons_upvr (readonly)
		[6]: AppFonts_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 29
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[4]: Icon_upvr (copied, readonly)
			[5]: BuilderIcons_upvr (copied, readonly)
			[6]: AppFonts_upvr (copied, readonly)
		]]
		local module = {}
		local any_createElement_result1 = Roact_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		})
		module.layout = any_createElement_result1
		if game_DefineFastFlag_result1_upvr then
			any_createElement_result1 = Roact_upvr.createElement
			any_createElement_result1 = any_createElement_result1("Frame", {
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.XY;
				LayoutOrder = 1;
			}, {
				Icon = Roact_upvr.createElement(Icon_upvr, {
					name = BuilderIcons_upvr.Icon.PersonPlus;
					style = arg1_2.Theme.IconEmphasis;
					size = 24;
				});
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 6);
					PaddingBottom = UDim.new(0, 6);
					PaddingLeft = UDim.new(0, 6);
					PaddingRight = UDim.new(0, 6);
				});
			})
		else
			any_createElement_result1 = Roact_upvr.createElement
			any_createElement_result1 = any_createElement_result1("ImageLabel", {
				BackgroundTransparency = 1;
				Size = UDim2.new(0, 36, 0, 36);
				Image = "rbxasset://textures/ui/LuaChatV2/ic-add-friends.png";
				ImageColor3 = arg1_2.Theme.IconEmphasis.Color;
				ImageTransparency = arg1_2.Theme.IconEmphasis.Transparency;
				LayoutOrder = 1;
			})
		end
		module.iconImage = any_createElement_result1
		module.friendCount = Roact_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			TextSize = 16;
			TextColor3 = arg1_2.Theme.TextEmphasis.Color;
			TextTransparency = arg1_2.Theme.TextEmphasis.Transparency;
			Size = UDim2.new(1, 0, 0, 20);
			Text = arg1.props.currentSize..'/'..arg1.props.maxSize;
			Font = AppFonts_upvr.default:getDefault();
			TextXAlignment = Enum.TextXAlignment.Center;
			TextYAlignment = Enum.TextYAlignment.Bottom;
			LayoutOrder = 2;
		})
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Size = UDim2.new(0, 60, 1, 0);
			Position = UDim2.new(0, 0, 0, 10);
			LayoutOrder = arg1.props.LayoutOrder;
		}, module)
	end)
end
return any_extend_result1