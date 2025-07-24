-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:01
-- Luau version 6, Types version 3
-- Time taken: 0.001287 seconds

local Radius_upvr = require(script.Parent.Parent.Parent.Parent.Foundation).Enums.Radius
return function(arg1, arg2) -- Line 9, Named "getClosestRadius"
	--[[ Upvalues[1]:
		[1]: Radius_upvr (readonly)
	]]
	if not arg2 or arg2 == UDim.new(0, 0) then
		return Radius_upvr.None
	end
	if arg2.Scale == 1 then
		return Radius_upvr.Circle
	end
	for i, v in {
		[Radius_upvr.None] = 0;
		[Radius_upvr.XSmall] = 2;
		[Radius_upvr.Small] = arg1.Small;
		[Radius_upvr.Medium] = arg1.Medium;
		[Radius_upvr.Large] = arg1.XLarge;
		[Radius_upvr.Circle] = arg1.Circle;
	} do
		if math.abs(arg2.Offset - v) < math.huge then
		end
	end
	return i
end