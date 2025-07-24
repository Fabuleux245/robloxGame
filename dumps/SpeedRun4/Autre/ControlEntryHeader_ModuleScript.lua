-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:12
-- Luau version 6, Types version 3
-- Time taken: 0.001085 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	title = t.string;
	LayoutOrder = t.integer;
})
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local Roact_upvr = InGameMenuDependencies.Roact
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
return function(arg1) -- Line 26, Named "ControlEntry"
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
		title = arg1.title;
	})(function(arg1_2) -- Line 33
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ThemedTextLabel_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 45);
			BackgroundTransparency = 1;
			LayoutOrder = arg1.LayoutOrder;
		}, {
			HeaderText = Roact_upvr.createElement(ThemedTextLabel_upvr, {
				fontKey = "CaptionHeader";
				themeKey = "TextMuted";
				Text = arg1_2.title;
				TextXAlignment = Enum.TextXAlignment.Left;
				Position = UDim2.new(0, 0, 0, 20);
				Size = UDim2.new(1, 0, 0, 17);
			});
		})
	end)
end