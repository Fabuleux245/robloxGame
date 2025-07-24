-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:08
-- Luau version 6, Types version 3
-- Time taken: 0.000548 seconds

local Parent = script.Parent.Parent.Parent.Parent.Parent
local t = require(Parent.t)
local module = {
	PreferredTransparency = t.optional(t.number);
}
local any_optional_result1 = t.optional(t.boolean)
module.ReducedMotion = any_optional_result1
if require(Parent.UIBlox.Core.Utility.GetEngineFeatureSafe)("EnablePreferredTextSizeSetting") then
	any_optional_result1 = t.optional(t.enum(Enum.PreferredTextSize))
else
	any_optional_result1 = nil
end
module.PreferredTextSize = any_optional_result1
module.Scale = t.optional(t.number)
return t.strictInterface(module)