-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:07
-- Luau version 6, Types version 3
-- Time taken: 0.000463 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local CarouselIndexSelected_upvr = require(Parent.Actions.CarouselIndexSelected)
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: CarouselIndexSelected_upvr (readonly)
	]]
	return function(arg1_2) -- Line 7
		--[[ Upvalues[3]:
			[1]: Constants_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: CarouselIndexSelected_upvr (copied, readonly)
		]]
		arg1_2:dispatch(CarouselIndexSelected_upvr(math.clamp(arg1, 1, #arg1_2:getState()[Constants_upvr.RoduxKey].Captures)))
	end
end