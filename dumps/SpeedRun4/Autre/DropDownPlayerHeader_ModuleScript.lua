-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:17
-- Luau version 6, Types version 3
-- Time taken: 0.003943 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("DropDownPlayerHeader")
any_extend_result1.validateProps = t.strictInterface({
	player = t.instanceIsA("Player");
	transparency = t.any;
	contentVisible = t.boolean;
})
local WithLayoutValues_upvr = require(script.Parent.Parent.Connection.LayoutValues).WithLayoutValues
local withStyle_upvr = UIBlox.Style.withStyle
local UserLib_upvr = require(CorePackages.Workspace.Packages.UserLib)
local EmojiTextLabel_upvr = UIBlox.Core.Text.EmojiTextLabel
local Emoji_upvr = UIBlox.App.Emoji.Enum.Emoji
function any_extend_result1.render(arg1) -- Line 31
	--[[ Upvalues[6]:
		[1]: WithLayoutValues_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: UserLib_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: EmojiTextLabel_upvr (readonly)
		[6]: Emoji_upvr (readonly)
	]]
	return WithLayoutValues_upvr(function(arg1_2) -- Line 32
		--[[ Upvalues[6]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: UserLib_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: EmojiTextLabel_upvr (copied, readonly)
			[6]: Emoji_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 33
			--[[ Upvalues[6]:
				[1]: arg1 (copied, readonly)
				[2]: UserLib_upvr (copied, readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: EmojiTextLabel_upvr (copied, readonly)
				[6]: Emoji_upvr (copied, readonly)
			]]
			local player = arg1.props.player
			local module = {}
			local tbl_4 = {}
			local tbl_2 = {
				Layout = Roact_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Vertical;
					Padding = UDim.new(0, 0);
					VerticalAlignment = Enum.VerticalAlignment.Center;
				});
			}
			local var22
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var22 = var22(EmojiTextLabel_upvr, tbl)
				tbl.TextScaled = true
				tbl.BackgroundTransparency = 1
				tbl.TextTruncate = Enum.TextTruncate.AtEnd
				tbl.TextXAlignment = Enum.TextXAlignment.Left
				tbl.Text = player.DisplayName
				tbl.LayoutOrder = 1
				tbl.maxSize = Vector2.new(arg1_2.PlayerDropDownSizeXMobile - 124, 22)
				tbl.emoji = Emoji_upvr.Verified
				tbl.fluidSizing = false
				tbl.colorStyle = arg1_3.Theme.TextEmphasis
				tbl.fontStyle = arg1_3.Font.Header2
				local tbl = {}
				var22 = Roact_upvr.createElement
				return var22
			end
			if not UserLib_upvr.Utils.isPlayerVerified(player) or not INLINED() then
				var22 = Roact_upvr.createElement
				var22 = var22("TextLabel", {
					LayoutOrder = 1;
					Size = UDim2.new(1, 0, 0, 22);
					Text = player.DisplayName;
					Font = arg1_3.Font.Header2.Font;
					TextSize = arg1_3.Font.BaseSize * arg1_3.Font.Header2.RelativeSize;
					TextColor3 = arg1_3.Theme.TextEmphasis.Color;
					TextTransparency = arg1_3.Theme.TextEmphasis.Transparency;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextTruncate = Enum.TextTruncate.AtEnd;
					BackgroundTransparency = 1;
					TextScaled = true;
				}, {
					SizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
						MaxTextSize = arg1_3.Font.BaseSize * arg1_3.Font.Header2.RelativeSize;
						MinTextSize = arg1_3.Font.BaseSize * arg1_3.Font.Footer.RelativeSize;
					});
				})
			end
			tbl_2.DisplayName = var22
			var22 = Roact_upvr.createElement
			var22 = var22("TextLabel", {
				LayoutOrder = 2;
				Size = UDim2.new(1, 0, 0, 22);
				Text = '@'..player.Name;
				Font = arg1_3.Font.CaptionHeader.Font;
				TextSize = arg1_3.Font.BaseSize * arg1_3.Font.CaptionHeader.RelativeSize;
				TextColor3 = arg1_3.Theme.TextMuted.Color;
				TextTransparency = arg1_3.Theme.TextMuted.Transparency;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextTruncate = Enum.TextTruncate.AtEnd;
				BackgroundTransparency = 1;
				TextScaled = true;
			}, {
				SizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
					MaxTextSize = arg1_3.Font.BaseSize * arg1_3.Font.CaptionHeader.RelativeSize;
					MinTextSize = arg1_3.Font.BaseSize * arg1_3.Font.Footer.RelativeSize;
				});
			})
			tbl_2.PlayerName = var22
			tbl_4.TextContainerFrame = Roact_upvr.createElement("Frame", {
				Visible = arg1.props.contentVisible;
				BackgroundTransparency = 1;
				Size = UDim2.new(1, -124, 1, 0);
				Position = UDim2.new(0, 107, 0, 0);
			}, tbl_2)
			module.Background = Roact_upvr.createElement("ImageLabel", {
				BackgroundTransparency = 1;
				Image = "rbxasset://textures/ui/PlayerList/NewAvatarBackground.png";
				ImageTransparency = arg1.props.transparency;
				Size = UDim2.new(1, 0, 0, arg1_2.DropDownHeaderBackgroundSize);
				Position = UDim2.new(0, 0, 1, 0);
				AnchorPoint = Vector2.new(0, 1);
			}, tbl_4)
			local tbl_3 = {
				Position = UDim2.new(0, 56, 0, 0);
			}
			var22 = arg1_2
			tbl_3.Size = UDim2.new(0, arg1_2.DropDownHeaderSizeY, 0, var22.DropDownHeaderSizeY)
			tbl_3.AnchorPoint = Vector2.new(0.5, 0)
			tbl_3.BackgroundTransparency = 1
			tbl_3.ImageTransparency = arg1.props.transparency
			tbl_3.Image = "rbxthumb://type=AvatarHeadShot&id=%d&w=150&h=150":format(player.UserId)
			tbl_3.ZIndex = 2
			module.AvatarImage = Roact_upvr.createElement("ImageLabel", tbl_3)
			local var31 = not arg1.props.lastButton
			if var31 then
				var31 = Roact_upvr.createElement
				var31 = var31("Frame", {
					Size = UDim2.new(1, 0, 0, 1);
					Position = UDim2.new(0, 0, 1, 0);
					AnchorPoint = Vector2.new(0, 1);
					Visible = arg1.props.contentVisible;
					BackgroundTransparency = arg1_3.Theme.Divider.Transparency;
					BackgroundColor3 = arg1_3.Theme.Divider.Color;
					BorderSizePixel = 0;
					ZIndex = 3;
				})
			end
			module.Divider = var31
			return Roact_upvr.createElement("TextButton", {
				BackgroundTransparency = 1;
				Text = "";
				Size = UDim2.new(1, 0, 0, arg1_2.DropDownHeaderSizeY);
				LayoutOrder = 0;
				Selectable = false;
			}, module)
		end)
	end)
end
return any_extend_result1