-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:47
-- Luau version 6, Types version 3
-- Time taken: 0.001484 seconds

local React_upvr = require(script.Parent.Parent.React)
return function(arg1) -- Line 7, Named "useSwitchScreenKeys"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState({})
	local var4_upvr
	if arg1.keepVisitedScreensMounted == nil then
		var4_upvr = true
	else
		var4_upvr = arg1.keepVisitedScreensMounted
	end
	React_upvr.useLayoutEffect(function() -- Line 20
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: var4_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		any_useState_result2_upvr(function(arg1_2) -- Line 21
			--[[ Upvalues[2]:
				[1]: var4_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			local module = {}
			if var4_upvr then
				for _, v in arg1_2 do
					if arg1.descriptors[v] then
						table.insert(module, v)
					end
				end
			end
			if table.find(module, arg1.activeKey) == nil then
				table.insert(module, arg1.activeKey)
			end
			return module
		end)
	end, {arg1.activeKey, arg1.descriptors, var4_upvr})
	return any_useState_result1
end