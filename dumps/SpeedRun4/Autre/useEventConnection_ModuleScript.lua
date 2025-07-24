-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:58
-- Luau version 6, Types version 3
-- Time taken: 0.000645 seconds

local React_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.React)
return function(arg1, arg2, arg3) -- Line 7, Named "useEventConnection"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 8
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		return arg2
	end, arg3)
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = any_useMemo_result1_upvr
	React_upvr.useEffect(function() -- Line 12
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useMemo_result1_upvr (readonly)
		]]
		if arg1 == nil then
			return nil
		end
		local any_Connect_result1_upvr = arg1:Connect(any_useMemo_result1_upvr)
		return function() -- Line 19
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, tbl)
end