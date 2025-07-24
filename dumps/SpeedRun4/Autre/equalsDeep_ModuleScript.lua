-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:25
-- Luau version 6, Types version 3
-- Time taken: 0.001431 seconds

local function equalsDeepOneWay_upvr(arg1, arg2) -- Line 4, Named "equalsDeepOneWay"
	--[[ Upvalues[1]:
		[1]: equalsDeepOneWay_upvr (readonly)
	]]
	if type(arg1) == "table" and type(arg2) == "table" then
		for i = 1, #arg1 do
			if not equalsDeepOneWay_upvr(arg1[i], arg2[i]) then
				return false
			end
		end
	elseif arg1 ~= arg2 then
		return false
	end
	return true
end
local equalObjects_upvr = require(script.Parent.Parent.equalObjects)
return function(...) -- Line 20, Named "equalsDeep"
	--[[ Upvalues[2]:
		[1]: equalObjects_upvr (readonly)
		[2]: equalsDeepOneWay_upvr (readonly)
	]]
	if equalObjects_upvr(...) then
		return true
	end
	local arg_count = select('#', ...)
	for i_2 = 1, arg_count do
		for i_3 = 1, arg_count do
			if i_3 ~= i_2 and not equalsDeepOneWay_upvr(select(i_2, ...), select(i_3, ...)) then
				return false
			end
		end
	end
	return true
end