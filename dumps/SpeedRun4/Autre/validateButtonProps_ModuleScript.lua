-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:13
-- Luau version 6, Types version 3
-- Time taken: 0.001889 seconds

local Parent = script.Parent.Parent.Parent
local t = require(Parent.Parent.t)
return t.array(t.strictInterface({
	icon = t.optional(t.union(t.table, t.string));
	text = t.string;
	onActivated = t.callback;
	disabled = t.optional(t.boolean);
	inputBindingKey = t.optional(t.string);
	keyCodeLabel = t.optional(t.union(t.enum(Enum.KeyCode), t.strictInterface({
		key = t.enum(Enum.KeyCode);
		axis = t.optional(t.string);
	})));
	selected = t.optional(t.boolean);
	stayOnActivated = t.optional(t.boolean);
	renderRightSideGadget = t.optional(t.callback);
	rightSideGadgetSize = t.optional(t.Vector2);
	iconColorOverride = t.optional(t.Color3);
	textColorOverride = t.optional(t.Color3);
	dividerOffset = t.optional(t.number);
	dividerSize = t.optional(t.number);
	leftPaddingOffset = t.optional(t.number);
	fontStyle = t.optional(t.union(t.string, require(Parent.Core.Style.Validator.validateFontInfo), require(Parent.Core.Style.Validator.validateTypographyInfo)));
	iconSize = t.optional(t.integer);
	selectedIconSize = t.optional(t.integer);
	iconPaddingLeft = t.optional(t.integer);
	textPadding = t.optional(t.strictInterface({
		left = t.integer;
		right = t.integer;
	}));
	selectedIconPaddingRight = t.optional(t.integer);
	keyLabelPaddingRight = t.optional(t.integer);
	textOnlyPadding = t.optional(t.integer);
	buttonTextOverride = t.optional(t.table);
	borderCornerRadius = t.optional(t.integer);
	background = t.optional(require(Parent.Core.Style.Validator.validateColorInfo));
}))