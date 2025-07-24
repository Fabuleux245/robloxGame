-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:50
-- Luau version 6, Types version 3
-- Time taken: 0.001110 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
return function(arg1) -- Line 11
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(arg1:get())
	local tbl = {}
	tbl[1] = arg1
	React_upvr.useEffect(function() -- Line 13
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_useState_result1_upvr (readonly)
		]]
		if any_useState_result1_upvr ~= arg1:get() then
			any_useState_result2_upvr(arg1:get())
		end
		local any_connect_result1_upvr = arg1:connect(function(arg1_2) -- Line 14
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(arg1_2)
		end)
		return function() -- Line 24
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr (readonly)
			]]
			any_connect_result1_upvr:disconnect()
		end
	end, tbl)
	return any_useState_result1_upvr
end