-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:19
-- Luau version 6, Types version 3
-- Time taken: 0.000701 seconds

local tbl_upvr = {
	Size36x36 = "rbxasset://textures/ui/LuaChat/graphic/gr-profile-border-36x36.png";
	Size48x48 = "rbxasset://textures/ui/LuaChat/graphic/gr-profile-border-48x48.png";
}
local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
return function(arg1) -- Line 23, Named "CircleMask"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	return React_upvr.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundColor3 = arg1.circleInteriorBackgroundColor3;
		BackgroundTransparency = arg1.circleInteriorBackgroundTransparency;
		BorderSizePixel = 0;
		Image = "";
		AutoButtonColor = false;
		ClipsDescendants = true;
		[React_upvr.Event.Activated] = arg1.onActivated;
	}, {
		imageMask = React_upvr.createElement("ImageLabel", {
			Image = tbl_upvr[arg1.overlaySize or "Size36x36"];
			ImageColor3 = arg1.circleColor3;
			ImageTransparency = arg1.circleTransparency;
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			ZIndex = 2;
		}, arg1.renderAboveMask);
	}, arg1.children)
end