-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:46
-- Luau version 6, Types version 3
-- Time taken: 0.000939 seconds

local FoundationImages_upvr = require(script:FindFirstAncestor("Foundation").Parent.FoundationImages)
return function(arg1, arg2) -- Line 9, Named "getScaledSlice"
	--[[ Upvalues[1]:
		[1]: FoundationImages_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_getResolutionScale_result1 = FoundationImages_upvr.getResolutionScale()
	local var4
	if var4 then
		var4 = Rect.new(var4.Min * any_getResolutionScale_result1, var4.Max * any_getResolutionScale_result1)
	end
	return {
		center = var4;
		scale = (arg2 or 1) / any_getResolutionScale_result1;
	}
end