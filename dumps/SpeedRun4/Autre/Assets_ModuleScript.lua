-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:52
-- Luau version 6, Types version 3
-- Time taken: 0.000900 seconds

local UIBlox = require(game:GetService("CorePackages").Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local getIconSize = UIBlox.App.ImageSet.getIconSize
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
return {
	Images = {
		MuteIcon = {
			Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium));
			Image = "rbxasset://textures/ui/VoiceChat/SpeakerLight/Unmuted0.png";
		};
		BlockIcon = {
			Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium));
			Image = Images["icons/actions/block"];
		};
		VoiceChatIcon = {
			Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium));
			Image = "rbxasset://textures/ui/VoiceChat/SpeakerLight/Unmuted0.png";
		};
		TextChatIcon = {
			Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium));
			Image = "rbxasset://textures/ui/TopBar/chatOff.png";
		};
		OtherIcon = {
			Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium));
			Image = Images["icons/menu/help"];
		};
		RoundedRect = {
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(8, 8, 9, 9);
			Image = Images["component_assets/circle_17"];
		};
	};
}