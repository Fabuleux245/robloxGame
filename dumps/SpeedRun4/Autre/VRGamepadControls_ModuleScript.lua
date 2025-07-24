-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:15
-- Luau version 6, Types version 3
-- Time taken: 0.003077 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local InGameMenu = script:FindFirstAncestor("InGameMenu")
local tbl_upvr = {
	ResetCameraLabel = "CoreScripts.InGameMenu.Controls.ResetCameraLabel";
	MenuLabel = "CoreScripts.InGameMenu.Controls.MenuLabel";
	SelectItemLabel = "CoreScripts.InGameMenu.Controls.SelectItemLabel";
	BackExitLabel = "CoreScripts.InGameMenu.Controls.BackExitLabel";
	FirstPersonCameraLabel = "CoreScripts.InGameMenu.Controls.FirstPersonCameraLabel";
	JumpSelectLabel = "CoreScripts.InGameMenu.Controls.JumpSelectLabel";
}
local Roact_upvr = InGameMenuDependencies.Roact
local ControlLayoutContainer_upvr = require(script.Parent.Parent.ControlLayoutContainer)
local ImageSetLabel_upvr = InGameMenuDependencies.UIBlox.Core.ImageSet.ImageSetLabel
local Assets_upvr = require(InGameMenu.Resources.Assets)
local React_upvr = require(CorePackages.Packages.React)
local Array_upvr = require(CorePackages.Packages.LuauPolyfill).Array
local Controls_upvr = require(InGameMenu.Resources.Controls)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("StaticDefLocKeysVRGamepadControls", false)
local withLocalization_upvr = require(InGameMenu.Localization.withLocalization)
local ThemedTextLabel_upvr = require(InGameMenu.Components.ThemedTextLabel)
return function(arg1) -- Line 40, Named "GamepadControls"
	--[[ Upvalues[11]:
		[1]: Roact_upvr (readonly)
		[2]: ControlLayoutContainer_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: Assets_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Array_upvr (readonly)
		[7]: Controls_upvr (readonly)
		[8]: game_DefineFastFlag_result1_upvr (readonly)
		[9]: tbl_upvr (readonly)
		[10]: withLocalization_upvr (readonly)
		[11]: ThemedTextLabel_upvr (readonly)
	]]
	return Roact_upvr.createElement(ControlLayoutContainer_upvr, {
		titleText = "CoreScripts.InGameMenu.Controls.GamepadTitle";
	}, {
		GamepadImage = Roact_upvr.createElement(ImageSetLabel_upvr, {
			BackgroundTransparency = 1;
			Image = Assets_upvr.Images.GamepadQuest;
			Size = UDim2.new(1, 0, 0.6, 0);
			Position = UDim2.new(0.5, 16.5, 0.5, 0);
			AnchorPoint = Vector2.new(0.5, 0.5);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			[React_upvr.Tag] = "data-testid=VRGamepadInstructions";
		}, {Array_upvr.map(Controls_upvr.questGamepadLabels, function(arg1_2, arg2) -- Line 53
			--[[ Upvalues[5]:
				[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[2]: tbl_upvr (copied, readonly)
				[3]: withLocalization_upvr (copied, readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: ThemedTextLabel_upvr (copied, readonly)
			]]
			local var20
			if game_DefineFastFlag_result1_upvr then
				var20 = tbl_upvr[arg1_2.labelKey]
			else
				var20 = "CoreScripts.InGameMenu.Controls."..arg1_2.labelKey
			end
			return withLocalization_upvr({var20})(function(arg1_3) -- Line 61
				--[[ Upvalues[4]:
					[1]: Roact_upvr (copied, readonly)
					[2]: ThemedTextLabel_upvr (copied, readonly)
					[3]: arg1_2 (readonly)
					[4]: arg2 (readonly)
				]]
				local module = {
					key = arg1_2.labelKey;
					fontKey = "Header2";
					themeKey = "TextEmphasis";
				}
				local xAlignment = arg1_2.xAlignment
				if not xAlignment then
					xAlignment = Enum.TextXAlignment.Right
				end
				module.TextXAlignment = xAlignment
				module.Size = UDim2.new(arg1_2.width, 0, 0.026, 0)
				module.Text = arg1_3[1]
				module.LayoutOrder = arg2
				module.Position = UDim2.new(arg1_2.xPosition, 0, arg1_2.yPosition, 0)
				module.TextScaled = true
				return Roact_upvr.createElement(ThemedTextLabel_upvr, module)
			end)
		end)});
	})
end