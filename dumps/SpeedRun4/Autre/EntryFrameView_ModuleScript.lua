-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:45
-- Luau version 6, Types version 3
-- Time taken: 0.000952 seconds

local Parent = script.Parent.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local View_upvr = require(Parent.Foundation).View
return React_upvr.memo(function(arg1) -- Line 25, Named "EntryFrameView"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
	]]
	return React_upvr.createElement(View_upvr, {
		Size = arg1.size;
		BackgroundTransparency = 1;
		AutoButtonColor = false;
		Text = "";
		AutoLocalize = false;
		Selectable = not arg1.isTeamFrame;
		Active = not arg1.isTeamFrame;
		onActivated = arg1.onActivated;
		onStateChanged = arg1.onStateChanged;
		ref = arg1.firstPlayerRef;
	}, {
		BackgroundFrame = React_upvr.createElement("Frame", {
			ZIndex = 0;
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = arg1.backgroundStyle.Transparency;
			BackgroundColor3 = arg1.backgroundStyle.Color;
			BorderSizePixel = 0;
		});
		DoubleOverLay = React_upvr.createElement("Frame", {
			ZIndex = 1;
			Visible = arg1.doubleOverlay;
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = arg1.overlayStyle.Transparency;
			BackgroundColor3 = arg1.overlayStyle.Color;
			BorderSizePixel = 0;
		});
		OverlayFrame = React_upvr.createElement("Frame", {
			ZIndex = 2;
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = arg1.overlayStyle.Transparency;
			BackgroundColor3 = arg1.overlayStyle.Color;
			BorderSizePixel = 0;
		}, arg1.children);
	})
end)