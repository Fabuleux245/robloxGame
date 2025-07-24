-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:09
-- Luau version 6, Types version 3
-- Time taken: 0.000387 seconds

local Parent = script.Parent
local t = require(Parent.Parent.Parent.Parent.Parent.t)
return t.strictInterface({
	Theme = t.optional(require(Parent.validateTheme));
	Font = t.optional(require(Parent.validateFont));
	Tokens = t.optional(require(Parent.validateTokens));
	Settings = t.optional(require(Parent.validateSettings));
})