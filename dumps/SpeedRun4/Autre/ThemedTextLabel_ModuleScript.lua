-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:37
-- Luau version 6, Types version 3
-- Time taken: 0.002094 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local GlobalConfig_upvr = require(script.Parent.Parent.Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	themeKey = t.optional(t.string);
	fontKey = t.optional(t.string);
	AnchorPoint = t.optional(t.Vector2);
	LayoutOrder = t.optional(t.integer);
	Position = t.optional(t.UDim2);
	Size = t.optional(t.UDim2);
	Text = t.string;
	TextColor3 = t.optional(t.Color3);
	TextTransparency = t.optional(t.numberConstrained(0, 1));
	TextWrapped = t.optional(t.boolean);
	TextXAlignment = t.optional(t.enum(Enum.TextXAlignment));
	TextYAlignment = t.optional(t.enum(Enum.TextYAlignment));
	TextTruncate = t.optional(t.enum(Enum.TextTruncate));
	Visible = t.optional(t.boolean);
	ZIndex = t.optional(t.integer);
	AutomaticSize = t.optional(t.enum(Enum.AutomaticSize));
	[Roact_upvr.Children] = t.optional(t.table);
})
local withStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.withStyle
local Cryo_upvr = InGameMenuDependencies.Cryo
return function(arg1) -- Line 35, Named "ThemedTextLabel"
	--[[ Upvalues[5]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: Roact_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		assert(any_strictInterface_result1_upvr(arg1))
	end
	return withStyle_upvr(function(arg1_2) -- Line 39
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
		]]
		local var11 = arg1_2.Theme[arg1.themeKey or "TextDefault"]
		local var12 = arg1_2.Font[arg1.fontKey or "Body"]
		return Roact_upvr.createElement("TextLabel", Cryo_upvr.Dictionary.join({
			TextColor3 = var11.Color;
			TextTransparency = var11.Transparency;
		}, arg1, {
			fontKey = Cryo_upvr.None;
			themeKey = Cryo_upvr.None;
			BackgroundTransparency = 1;
			Font = var12.Font;
			TextSize = var12.RelativeSize * arg1_2.Font.BaseSize;
		}))
	end)
end