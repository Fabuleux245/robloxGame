-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:11
-- Luau version 6, Types version 3
-- Time taken: 0.001035 seconds

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local GlobalSettings_upvr = require(Modules.Shell.GlobalSettings)
local LocalizedStrings_upvr = require(Modules.Shell.LocalizedStrings)
return function(arg1) -- Line 10
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: GlobalSettings_upvr (readonly)
		[3]: LocalizedStrings_upvr (readonly)
	]]
	return Roact_upvr.createElement("ImageLabel", {
		Size = UDim2.new(0, 599, 0, 404);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Shell/ScreenAdjustment/Controller@1080.png";
	}, {
		Line = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0, 240, 0, 1);
			Position = UDim2.new(0, 437, 0, 220);
			BackgroundTransparency = 0;
			BackgroundColor3 = Color3.new(1, 1, 1);
			BorderSizePixel = 0;
		}, {
			InputHint = Roact_upvr.createElement("TextLabel", {
				Size = UDim2.new(0, 0, 0, 0);
				Position = UDim2.new(1, 3, 0, -1);
				BackgroundTransparency = 1;
				Font = GlobalSettings_upvr.RegularFont;
				FontSize = GlobalSettings_upvr.ButtonSize;
				TextColor3 = GlobalSettings_upvr.WhiteTextColor;
				TextXAlignment = Enum.TextXAlignment.Left;
				Text = LocalizedStrings_upvr:LocalizedString("ResizeScreenInputHint");
			});
		});
	})
end