-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:02
-- Luau version 6, Types version 3
-- Time taken: 0.000528 seconds

local module = {}
local Parent = script.Parent.Parent.Parent.Parent
local useRef_upvr = require(Parent.Parent.React).useRef
local equal_upvr = require(Parent.jsutils.equal)
function module.useDeepMemo(arg1, arg2) -- Line 26
	--[[ Upvalues[2]:
		[1]: useRef_upvr (readonly)
		[2]: equal_upvr (readonly)
	]]
	local useRef_upvr_result1 = useRef_upvr(nil)
	if not useRef_upvr_result1.current or not equal_upvr(arg2, useRef_upvr_result1.current.key) then
		local tbl = {}
		tbl.key = arg2
		tbl.value = arg1()
		useRef_upvr_result1.current = tbl
	end
	return useRef_upvr_result1.current.value
end
return module