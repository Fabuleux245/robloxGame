-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:13
-- Luau version 6, Types version 3
-- Time taken: 0.003697 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local Parent = script.Parent.Parent.Parent.Parent
local Controls_upvr = require(Parent.Resources.Controls)
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local function verticalControlsList_upvr(arg1) -- Line 42, Named "verticalControlsList"
	--[[ Upvalues[3]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ThemedTextLabel_upvr (readonly)
	]]
	return withLocalization_upvr(arg1.controls)(function(arg1_2) -- Line 43
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ThemedTextLabel_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local module = {
			ListLayout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 21);
			});
		}
		for i, v in ipairs(arg1_2) do
			module["controlLabel_"..i] = Roact_upvr.createElement(ThemedTextLabel_upvr, {
				fontKey = "Header2";
				themeKey = "TextEmphasis";
				TextXAlignment = arg1.TextXAlignment;
				Size = UDim2.new(0, 1, 0, 22);
				Text = v;
				LayoutOrder = i;
			})
		end
		return Roact_upvr.createElement("Frame", {
			Position = arg1.Position;
			Size = UDim2.new(0, 0, 1, 0);
			BackgroundTransparency = 1;
		}, module)
	end)
end
local UserInputService_upvr = game:GetService("UserInputService")
local ControlLayoutContainer_upvr = require(script.Parent.Parent.ControlLayoutContainer)
local ImageSetLabel_upvr = InGameMenuDependencies.UIBlox.Core.ImageSet.ImageSetLabel
local Assets_upvr = require(Parent.Resources.Assets)
local React_upvr = require(CorePackages.Packages.React)
local var25_upvr = #Controls_upvr.gamepadLabels.right * 43 + 62
return function(arg1) -- Line 71, Named "GamepadControls"
	--[[ Upvalues[9]:
		[1]: UserInputService_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ControlLayoutContainer_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: Assets_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: verticalControlsList_upvr (readonly)
		[8]: Controls_upvr (readonly)
		[9]: var25_upvr (readonly)
	]]
	local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
	local var27 = true
	local var28
	if any_GetPlatform_result1 ~= Enum.Platform.XBox360 then
		if any_GetPlatform_result1 ~= Enum.Platform.XBoxOne then
			var27 = false
		else
			var27 = true
		end
	end
	local module_2 = {}
	local tbl = {}
	var28 = 1
	tbl.BackgroundTransparency = var28
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var28 = Assets_upvr.Images.GamepadXbox
		return var28
	end
	if not var27 or not INLINED() then
		var28 = Assets_upvr.Images.Gamepad
	end
	tbl.Image = var28
	var28 = UDim2.new(0, 473, 0, 465)
	tbl.Size = var28
	var28 = UDim2.new(0.5, 16.5, 0.5, 0)
	tbl.Position = var28
	var28 = Vector2.new(0.5, 0.5)
	tbl.AnchorPoint = var28
	var28 = React_upvr.Tag
	tbl[var28] = "data-testid=GamepadInstructions"
	var28 = {}
	var28.LeftControlsList = Roact_upvr.createElement(verticalControlsList_upvr, {
		TextXAlignment = Enum.TextXAlignment.Right;
		Position = UDim2.new(0, -26, 0, 62);
		controls = Controls_upvr.gamepadLabels.left;
	})
	var28.RightControlsList = Roact_upvr.createElement(verticalControlsList_upvr, {
		TextXAlignment = Enum.TextXAlignment.Left;
		Position = UDim2.new(1, -7, 0, 62);
		controls = Controls_upvr.gamepadLabels.right;
	})
	var28.RightIconsControlslIst = Roact_upvr.createElement(verticalControlsList_upvr, {
		TextXAlignment = Enum.TextXAlignment.Left;
		Position = UDim2.new(1, 26, 0, var25_upvr);
		controls = Controls_upvr.gamepadLabels.camera;
	})
	module_2.GamepadImage = Roact_upvr.createElement(ImageSetLabel_upvr, tbl, var28)
	return Roact_upvr.createElement(ControlLayoutContainer_upvr, {
		titleText = "CoreScripts.InGameMenu.Controls.GamepadTitle";
		closeButtonRef = arg1.closeButtonRef;
	}, module_2)
end