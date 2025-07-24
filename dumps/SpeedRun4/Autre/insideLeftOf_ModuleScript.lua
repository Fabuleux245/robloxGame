-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:45:10
-- Luau version 6, Types version 3
-- Time taken: 0.001143 seconds

local toRect_upvr = require(script.Parent.toRect)
local returnValue_upvr = require(script.Parent.returnValue)
return function(arg1, arg2, arg3) -- Line 26, Named "insideLeftOf"
	--[[ Upvalues[2]:
		[1]: toRect_upvr (readonly)
		[2]: returnValue_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var3 = -(toRect_upvr(arg1).Max - toRect_upvr(arg2).Max)
	local var4
	if var4 then
		if typeof(var4) == "number" then
			var4 = NumberRange.new(var4)
		end
		if var4.Min <= var3.X then
			if var3.X > var4.Max then
			else
			end
		end
		return returnValue_upvr(true, "Was within range", "Was not within range ( "..tostring(var4)..')')
	end
	if 0 > var3.X then
	else
	end
	return returnValue_upvr(true, "Was not right of the element", "Was too far right of the element")
end