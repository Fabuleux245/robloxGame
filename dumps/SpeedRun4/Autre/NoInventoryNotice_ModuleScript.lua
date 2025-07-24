-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:55
-- Luau version 6, Types version 3
-- Time taken: 0.001814 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("NoInventoryNotice")
local Colors_upvr = require(script.Parent.Parent.Colors)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
function any_extend_result1.render(arg1) -- Line 13
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: Colors_upvr (readonly)
		[3]: AppFonts_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
	]]
	local module = {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}
	local var8 = false
	if next(arg1.props.assets) == nil then
		var8 = arg1.props.isLoaded
	end
	module.Visible = var8
	return Roact_upvr.createElement("Frame", module, {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, 15);
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		NotWearingImage = Roact_upvr.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundTransparency = 1;
			Size = UDim2.new(0.25, 0, 0.25, 0);
			LayoutOrder = 1;
			Image = "rbxasset://textures/ui/InspectMenu/ico_isnt-wearing.png";
			ImageColor3 = Colors_upvr.White;
		}, {
			UIAspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
				AspectRatio = 1;
			});
		});
		NotWearingText = Roact_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0.8, 0, 0.3, 0);
			LayoutOrder = 2;
			Font = AppFonts_upvr.default:getDefault();
			Text = RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Description.NoInventoryNotice", arg1.props.locale);
			TextScaled = true;
			TextColor3 = Colors_upvr.White;
			TextSize = 20;
			TextXAlignment = Enum.TextXAlignment.Center;
			TextYAlignment = Enum.TextYAlignment.Top;
			TextWrapped = true;
		}, {
			UITextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
				MaxTextSize = 20;
			});
		});
	})
end
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 62
	return {
		assets = arg1.assets;
		locale = arg1.locale;
		isLoaded = arg1.isLoaded;
	}
end)(any_extend_result1)