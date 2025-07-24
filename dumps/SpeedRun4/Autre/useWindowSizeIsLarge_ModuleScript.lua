-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:54
-- Luau version 6, Types version 3
-- Time taken: 0.000698 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
return function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(arg1:getIsLarge())
	local tbl = {}
	tbl[1] = arg1
	React_upvr.useEffect(function() -- Line 7
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_useState_result1_upvr (readonly)
		]]
		if any_useState_result1_upvr ~= arg1:getIsLarge() then
			any_useState_result2_upvr(arg1:getIsLarge())
		end
		local any_connect_result1_upvr = arg1:connect(function() -- Line 8
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			any_useState_result2_upvr(arg1:getIsLarge())
		end)
		return function() -- Line 16
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr (readonly)
			]]
			any_connect_result1_upvr:disconnect()
		end
	end, tbl)
	return any_useState_result1_upvr
end