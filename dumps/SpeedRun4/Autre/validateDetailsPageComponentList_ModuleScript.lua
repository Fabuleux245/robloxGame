-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:09
-- Luau version 6, Types version 3
-- Time taken: 0.000384 seconds

local t = require(script:FindFirstAncestor("AppBlox").Parent.t)
return t.map(t.string, t.strictInterface({
	portraitLayoutOrder = t.integer;
	landscapeLayoutOrder = t.integer;
	landscapePosition = require(script.Parent.ContentPosition).isEnumValue;
	renderComponent = t.callback;
	showCornerGradient = t.optional(t.boolean);
	useSelectionBumper = t.optional(t.boolean);
	visible = t.optional(t.boolean);
}))