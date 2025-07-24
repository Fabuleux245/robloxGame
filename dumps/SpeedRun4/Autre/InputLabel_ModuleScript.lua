-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:26
-- Luau version 6, Types version 3
-- Time taken: 0.002006 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	AnchorPoint = t.optional(t.Vector2);
	Position = t.optional(t.UDim2);
	Size = t.optional(t.UDim2);
	localizationKey = t.string;
	LayoutOrder = t.optional(t.number);
})
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local Roact_upvr = InGameMenuDependencies.Roact
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
return function(arg1) -- Line 22
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
		text = arg1.localizationKey;
	})(function(arg1_2) -- Line 29
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ThemedTextLabel_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local module = {
			fontKey = "Body";
			themeKey = "TextDefault";
			LayoutOrder = arg1.LayoutOrder;
		}
		local AnchorPoint = arg1.AnchorPoint
		if not AnchorPoint then
			AnchorPoint = Vector2.new(0, 0.5)
		end
		module.AnchorPoint = AnchorPoint
		AnchorPoint = arg1.Position
		local var15 = AnchorPoint
		if not var15 then
			var15 = UDim2.new(0, 0, 0.5, 0)
		end
		module.Position = var15
		var15 = arg1.Size
		local var16 = var15
		if not var16 then
			var16 = UDim2.new(1, -72, 0.5, 0)
		end
		module.Size = var16
		module.Text = arg1_2.text
		module.TextTruncate = Enum.TextTruncate.AtEnd
		module.TextXAlignment = Enum.TextXAlignment.Left
		return Roact_upvr.createElement(ThemedTextLabel_upvr, module)
	end)
end