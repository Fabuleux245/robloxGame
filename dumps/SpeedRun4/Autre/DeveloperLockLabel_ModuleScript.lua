-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:25
-- Luau version 6, Types version 3
-- Time taken: 0.001440 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	Position = t.UDim2;
	Size = t.UDim2;
	AnchorPoint = t.Vector2;
})
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local Roact_upvr = InGameMenuDependencies.Roact
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
return function(arg1) -- Line 20
	--[[ Upvalues[5]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: withLocalization_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ThemedTextLabel_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		assert(any_strictInterface_result1_upvr(arg1))
	end
	return withLocalization_upvr({
		lockedText = "CoreScripts.InGameMenu.GameSettings.LockedByDeveloper";
	})(function(arg1_2) -- Line 27
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ThemedTextLabel_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(ThemedTextLabel_upvr, {
			themeKey = "TextDefault";
			fontKey = "CaptionBody";
			TextTransparency = 0.5;
			Text = arg1_2.lockedText;
			Size = UDim2.new(1, -72, 0.25, 0);
			Position = UDim2.new(0, 0, 1, 0);
			AnchorPoint = Vector2.new(0, 1);
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Bottom;
		})
	end)
end