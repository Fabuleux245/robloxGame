-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:55
-- Luau version 6, Types version 3
-- Time taken: 0.002230 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("Notification")
local Colors_upvr = require(script.Parent.Parent.Colors)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
function any_extend_result1.render(arg1) -- Line 11
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: Colors_upvr (readonly)
		[3]: AppFonts_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, -10, 0, 45);
		LayoutOrder = 0;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}, {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, 10);
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		ExclamationPoint = Roact_upvr.createElement("ImageLabel", {
			Size = UDim2.new(0, 16, 0, 16);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/InspectMenu/ico_alert_tilt.png";
			ImageColor3 = Colors_upvr.White;
			LayoutOrder = 1;
		});
		PartOfBundleText = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, -30, 1, 0);
			TextColor3 = Colors_upvr.White;
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			TextWrapped = true;
			TextScaled = true;
			TextSize = 12;
			TextXAlignment = Enum.TextXAlignment.Left;
			Font = AppFonts_upvr.default:getDefault();
			Text = RobloxTranslator_upvr:FormatByKeyForLocale(arg1.props.noticeKey, arg1.props.locale);
		}, {
			UITextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
				MaxTextSize = 16;
			});
		});
	})
end
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 54
	return {
		locale = arg1.locale;
	}
end)(any_extend_result1)