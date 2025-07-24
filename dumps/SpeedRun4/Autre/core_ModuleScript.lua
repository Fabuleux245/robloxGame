-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:23
-- Luau version 6, Types version 3
-- Time taken: 0.001036 seconds

local module = {}
local Parent = script.Parent.Parent
local utilities = Parent.utilities
local DEV = require(utilities).DEV
if typeof(DEV) ~= "boolean" then
	utilities = false
else
	utilities = true
end
require(Parent.jsutils.invariant).invariant(utilities, tostring(DEV))
module.empty = require(script.empty).empty
module.from = require(script.from).from
module.split = require(script.split).split
module.concat = require(script.concat).concat
module.execute = require(script.execute).execute
module.ApolloLink = require(script.ApolloLink).ApolloLink
require(Parent.Parent.LuauPolyfill).Object.assign(module, require(script.types))
return module