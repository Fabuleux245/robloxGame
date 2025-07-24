-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:00
-- Luau version 6, Types version 3
-- Time taken: 0.004508 seconds

local Parent = script:FindFirstAncestor("GameTile").Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local UserLib = require(Parent.UserLib)
local function var6_upvr(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	return React_upvr.createElement(React_upvr.Fragment, nil, {
		Corner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8);
		});
		Border = React_upvr.createElement("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			Color = arg1.Theme.BackgroundUIDefault.Color;
			Transparency = arg1.Theme.BackgroundUIDefault.Transparency;
			Thickness = 2;
		});
	})
end
local getRbxthumbWithTypeSizeAndOptions_upvr = UserLib.Utils.getRbxthumbWithTypeSizeAndOptions
local Constants_upvr = UserLib.Utils.Constants
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local function var10_upvr(arg1, arg2) -- Line 38
	--[[ Upvalues[6]:
		[1]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: var6_upvr (readonly)
		[6]: StyledTextLabel_upvr (readonly)
	]]
	local module = {}
	local var19
	if arg1 then
		var19 = 0
		for _, v in pairs(arg1) do
			var19 += 1
			local tostring_result1 = tostring(v)
			if var19 <= 3 then
				module["mini_avatar_"..tostring_result1] = React_upvr.createElement(ImageSetLabel_upvr, {
					AnchorPoint = Vector2.new(0, 0.5);
					Position = UDim2.new(0, var19 * 16 / 2, 0.5, 0);
					Size = UDim2.fromOffset(16, 16);
					BackgroundTransparency = 0;
					Image = getRbxthumbWithTypeSizeAndOptions_upvr(tostring_result1, Constants_upvr.RbxthumbTypes.AvatarHeadShot, 100);
					BackgroundColor3 = Color3.fromRGB(209, 209, 209);
					ZIndex = 4 - var19;
				}, {var6_upvr(arg2)})
			end
		end
		module.online_indicator = React_upvr.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(0, 0, 0.5, 0);
			Size = UDim2.fromOffset(14, 14);
			BackgroundTransparency = 0;
			BackgroundColor3 = Color3.fromRGB(0, 180, 109);
			ZIndex = 4;
		}, {
			InExperienceCounter = React_upvr.createElement(StyledTextLabel_upvr, {
				colorStyle = arg2.Theme.TextEmphasis;
				fontStyle = arg2.Font.Footer;
				textXAlignment = Enum.TextXAlignment.Center;
				size = UDim2.fromScale(1, 1);
				lineHeight = 1;
				text = tostring(var19);
				textTruncate = Enum.TextTruncate.None;
				richText = false;
			});
			var6_upvr(arg2)
		})
		return React_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 1);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			BackgroundTransparency = 1;
		}, module), var19
	end
	return nil, nil
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
return function(arg1) -- Line 99
	--[[ Upvalues[5]:
		[1]: useStyle_upvr (readonly)
		[2]: var10_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: StyledTextLabel_upvr (readonly)
	]]
	local var31_result1 = useStyle_upvr()
	local Font = var31_result1.Font
	local var10_upvr_result1, var10_upvr_result2 = var10_upvr(arg1.friends, var31_result1)
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, 6);
		});
		PresenceList = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Size = UDim2.new(0, math.min(3, var10_upvr_result2 or 0) * 16 / 2 + 16, 0, 22);
			LayoutOrder = 1;
		}, {
			ActiveFriends = var10_upvr_result1;
		});
		FriendsLabel = React_upvr.createElement(StyledTextLabel_upvr, {
			colorStyle = var31_result1.Theme.TextMuted;
			fontStyle = Font.CaptionHeader;
			textXAlignment = Enum.TextXAlignment.Left;
			size = UDim2.new(1, -40, 0, Font.BaseSize * Font.CaptionHeader.RelativeSize);
			lineHeight = 1;
			text = useLocalization_upvr({
				friendsText = "CommonUI.Features.Label.Friends";
			}).friendsText;
			textTruncate = Enum.TextTruncate.AtEnd;
			richText = false;
			layoutOrder = 2;
		});
	})
end