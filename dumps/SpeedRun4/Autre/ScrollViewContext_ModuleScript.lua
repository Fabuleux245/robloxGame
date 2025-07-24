-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:52
-- Luau version 6, Types version 3
-- Time taken: 0.000426 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Object = require(Parent.LuauPolyfill).Object
local module = {}
local any_createContext_result1 = require(Parent.React).createContext(nil)
if _G.__DEV__ then
	any_createContext_result1.displayName = "ScrollViewContext"
end
module.default = any_createContext_result1
module.HORIZONTAL = Object.freeze({
	horizontal = true;
})
module.VERTICAL = Object.freeze({
	horizontal = false;
})
return module