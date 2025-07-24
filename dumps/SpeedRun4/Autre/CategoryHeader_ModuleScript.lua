-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:23
-- Luau version 6, Types version 3
-- Time taken: 0.001088 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	LayoutOrder = t.integer;
	localizationKey = t.string;
})
local Roact_upvr = InGameMenuDependencies.Roact
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local ThemedTextLabel_upvr = require(script.Parent.Parent.ThemedTextLabel)
return function(arg1) -- Line 20
	--[[ Upvalues[5]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: withLocalization_upvr (readonly)
		[5]: ThemedTextLabel_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		assert(any_strictInterface_result1_upvr(arg1))
	end
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = arg1.LayoutOrder;
		Size = UDim2.new(1, 0, 0, 36);
	}, {
		Label = withLocalization_upvr({
			text = arg1.localizationKey;
		})(function(arg1_2) -- Line 32
			--[[ Upvalues[2]:
				[1]: Roact_upvr (copied, readonly)
				[2]: ThemedTextLabel_upvr (copied, readonly)
			]]
			return Roact_upvr.createElement(ThemedTextLabel_upvr, {
				fontKey = "Footer";
				themeKey = "TextEmphasis";
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.new(0.5, 0, 0.5, 0);
				Size = UDim2.new(1, -48, 0, 14);
				Text = arg1_2.text;
				TextTruncate = Enum.TextTruncate.AtEnd;
				TextXAlignment = Enum.TextXAlignment.Left;
			})
		end);
	})
end