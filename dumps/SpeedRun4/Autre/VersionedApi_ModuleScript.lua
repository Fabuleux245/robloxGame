-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:23
-- Luau version 6, Types version 3
-- Time taken: 0.000588 seconds

local module = {}
module.__index = module
function module.Interface(arg1, arg2, arg3) -- Line 16
	if getmetatable(arg2) ~= nil then
		error("table already has a metatable?")
	end
	local tbl = {}
	tbl._otaPatchKey = arg3
	tbl._minAppVersion = arg1
	setmetatable(arg2, tbl)
	return arg2
end
return module