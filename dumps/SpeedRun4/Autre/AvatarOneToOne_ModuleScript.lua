-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:18
-- Luau version 6, Types version 3
-- Time taken: 0.001457 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local ImageSetLabel_upvr = require(Parent.UIBlox).Core.ImageSet.ImageSetLabel
local CircleMask_upvr = require(script.Parent.CircleMask)
local Frame_upvr = require(AppChat.Components.Common.Frame)
local AvatarThumbnail_upvr = require(script.Parent.AvatarThumbnail)
return function(arg1) -- Line 29, Named "AvatarOneToOne"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: ImageSetLabel_upvr (readonly)
		[3]: CircleMask_upvr (readonly)
		[4]: Frame_upvr (readonly)
		[5]: AvatarThumbnail_upvr (readonly)
	]]
	local var8
	if arg1.showNewPresenceImage then
		var8 = React_upvr.createElement(ImageSetLabel_upvr, {
			Size = UDim2.fromOffset(arg1.presenceIndicatorSize, arg1.presenceIndicatorSize);
			BackgroundTransparency = 1;
			Image = arg1.presenceImage;
			ImageColor3 = arg1.presenceImageColor3;
			ImageTransparency = arg1.presenceImageTransparency;
		})
	else
		var8 = React_upvr.createElement("ImageLabel", {
			Size = UDim2.new(0, arg1.presenceIndicatorSize, 0, arg1.presenceIndicatorSize);
			BackgroundTransparency = 1;
			Image = arg1.presenceImage;
		})
	end
	return React_upvr.createElement(CircleMask_upvr, {
		circleColor3 = arg1.circleColor3;
		circleTransparency = arg1.circleTransparency;
		circleInteriorBackgroundColor3 = arg1.circleInteriorBackgroundColor3;
		circleInteriorBackgroundTransparency = arg1.circleInteriorBackgroundTransparency;
		circleDividerColor3 = arg1.circleDividerColor3;
		circleDividerTransparency = arg1.circleDividerTransparency;
		overlaySize = arg1.overlaySize;
		renderAboveMask = React_upvr.createElement(Frame_upvr, {}, {
			layout = React_upvr.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
				VerticalAlignment = Enum.VerticalAlignment.Bottom;
			});
			presenceIndicator = var8;
		});
		onActivated = arg1.onActivated;
	}, {
		uiCorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0);
		});
		avatar = React_upvr.createElement(AvatarThumbnail_upvr, {
			thumbnail = arg1.thumbnail;
			cornerRadius = UDim.new(1, 0);
		});
	})
end