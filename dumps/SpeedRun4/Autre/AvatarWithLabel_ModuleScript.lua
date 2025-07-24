-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:08
-- Luau version 6, Types version 3
-- Time taken: 0.001250 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local View_upvr = Foundation.View
local Image_upvr = Foundation.Image
local Text_upvr = Foundation.Text
return React_upvr.memo(function(arg1) -- Line 18, Named "AvatarWithLabel"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
		[3]: Image_upvr (readonly)
		[4]: Text_upvr (readonly)
	]]
	return React_upvr.createElement(View_upvr, {
		tag = "size-full col gap-xsmall items-center";
	}, {
		Avatar = React_upvr.createElement(Image_upvr, {
			Image = arg1.image;
			tag = "fill auto-x radius-circle";
			aspectRatio = {
				AspectRatio = 1;
				AspectType = Enum.AspectType.ScaleWithParentSize;
				DominantAxis = Enum.DominantAxis.Height;
			};
			imageStyle = arg1.avatarImageStyle;
			backgroundStyle = arg1.avatarBackgroundStyle;
			LayoutOrder = 1;
		});
		Label = React_upvr.createElement(Text_upvr, {
			tag = "size-full-0 auto-y text-truncate-end";
			Text = arg1.text;
			fontStyle = {
				FontSize = arg1.labelFontSize;
			};
			LayoutOrder = 2;
		});
	})
end)