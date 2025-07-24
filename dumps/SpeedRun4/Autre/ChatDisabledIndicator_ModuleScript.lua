-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:31
-- Luau version 6, Types version 3
-- Time taken: 0.003751 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatDisabledIndicator")
any_extend_result1.defaultProps = {
	LayoutOrder = 1;
	chatEnabled = false;
	chatDisabledText = "TRANSLATED To chat with your friends, turn on chat in your Privacy Settings.";
	privacyButtonText = "TRANSLATED Privacy Settings";
	navigateToPrivacy = function() -- Line 18, Named "navigateToPrivacy"
	end;
	privacyButtonEnabled = true;
}
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local Text_upvr = require(Parent.AppCommonLib).Text
local AppFonts_upvr = require(Parent.Style).AppFonts
function any_extend_result1.render(arg1) -- Line 22
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Text_upvr (readonly)
		[3]: AppFonts_upvr (readonly)
		[4]: Roact_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 23
		--[[ Upvalues[4]:
			[1]: Text_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: AppFonts_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
		]]
		local var21 = arg1_2.Font.SubHeader1.RelativeSize * arg1_2.Font.BaseSize
		local module_2 = {}
		local tbl_8 = {
			UIList = Roact_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
			Imagelabel = Roact_upvr.createElement("ImageLabel", {
				BackgroundTransparency = 1;
				Size = UDim2.new(0, 72, 0, 72);
				LayoutOrder = 1;
				Image = "rbxasset://textures/ui/LuaChat/icons/ic-friends.png";
			});
			DisabledMessage = Roact_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				LayoutOrder = 2;
				Font = AppFonts_upvr.default:getDefault();
				TextColor3 = arg1_2.Theme.TextDefault.Color;
				TextTransparency = arg1_2.Theme.TextDefault.Transparency;
				TextSize = arg1_2.Font.SubHeader1.RelativeSize * arg1_2.Font.BaseSize;
				Size = UDim2.new(0.8, 0, 0.5, 0);
				Text = arg1.props.chatDisabledText;
				TextWrapped = true;
			});
		}
		local var29 = not arg1.props.chatEnabled
		if var29 then
			var29 = arg1.props.privacyButtonEnabled
			if var29 then
				var29 = Roact_upvr.createElement
				var29 = var29("ImageButton", {
					AutoButtonColor = false;
					Size = UDim2.new(0, Text_upvr.GetTextWidth(arg1.props.privacyButtonText, AppFonts_upvr.default:getDefault(), var21) + 6, 0, 36);
					BackgroundTransparency = 1;
					LayoutOrder = 3;
					BorderSizePixel = 0;
					ScaleType = "Slice";
					SliceCenter = Rect.new(3, 3, 4, 4);
					Image = "rbxasset://textures/ui/LuaChat/9-slice/input-default.png";
					ImageColor3 = Color3.fromRGB(0, 176, 111);
					[Roact_upvr.Event.Activated] = arg1.props.navigateToPrivacy;
				}, {
					Textlabel = Roact_upvr.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0);
						BackgroundTransparency = 1;
						Font = AppFonts_upvr.default:getDefault();
						TextSize = var21;
						TextColor3 = Color3.fromRGB(255, 255, 255);
						Text = arg1.props.privacyButtonText;
						TextXAlignment = Enum.TextXAlignment.Center;
						TextYAlignment = Enum.TextYAlignment.Center;
					});
				})
			end
		end
		tbl_8.PrivacySettings = var29
		module_2.IndicatorInner = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 160);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			AnchorPoint = Vector2.new(0.5, 0.5);
		}, tbl_8)
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, 0);
			LayoutOrder = arg1.props.LayoutOrder;
		}, module_2)
	end)
end
return any_extend_result1