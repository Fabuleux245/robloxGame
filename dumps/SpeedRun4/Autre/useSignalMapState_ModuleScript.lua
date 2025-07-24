-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:44
-- Luau version 6, Types version 3
-- Time taken: 0.000593 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local Signals_upvr = require(Parent.Signals)
return function(arg1) -- Line 9, Named "useSignalMapState"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Signals_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(arg1)
	local tbl = {}
	tbl[1] = arg1
	React_upvr.useLayoutEffect(function() -- Line 12
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: Signals_upvr (copied, readonly)
		]]
		any_useState_result2_upvr(arg1)
		return Signals_upvr.createEffect(function(arg1_2) -- Line 14
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			arg1.getCount(arg1_2)
			any_useState_result2_upvr(arg1)
		end)
	end, tbl)
	return any_useState_result1
end