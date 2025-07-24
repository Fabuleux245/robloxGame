-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:34
-- Luau version 6, Types version 3
-- Time taken: 0.001429 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local React_upvr = require(CorePackages.Packages.React)
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 11, Named "ScreenshotLoadingDialog"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ButtonStack_upvr (readonly)
		[3]: ButtonType_upvr (readonly)
	]]
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 0;
	}, {
		Buttons = React_upvr.createElement(ButtonStack_upvr, {
			buttons = {{
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = function() -- Line 21, Named "onActivated"
						--[[ Upvalues[1]:
							[1]: arg1 (readonly)
						]]
						arg1.onNextPage()
					end;
					text = "This is page 1. Click to go next";
				};
			}};
		});
	})
end