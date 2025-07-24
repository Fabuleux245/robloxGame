-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:40
-- Luau version 6, Types version 3
-- Time taken: 0.001333 seconds

local React_upvr = require(script.Parent.Parent.React)
local FocusNavigationContext_upvr = require(script.Parent.FocusNavigationContext)
return function() -- Line 13, Named "useActiveEventMap"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: FocusNavigationContext_upvr (readonly)
	]]
	local var4_upvr = FocusNavigationContext_upvr
	local any_useContext_result1_upvr = React_upvr.useContext(var4_upvr)
	if any_useContext_result1_upvr then
		var4_upvr = any_useContext_result1_upvr.activeEventMap:getValue()
	else
		var4_upvr = {}
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(var4_upvr)
	React_upvr.useEffect(function() -- Line 18
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: var4_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: any_useContext_result1_upvr (readonly)
		]]
		if any_useState_result1_upvr ~= var4_upvr then
			any_useState_result2_upvr(var4_upvr)
		end
		if any_useContext_result1_upvr then
			local any_subscribe_result1_upvr = any_useContext_result1_upvr.activeEventMap:subscribe(any_useState_result2_upvr)
			return function() -- Line 27
				--[[ Upvalues[1]:
					[1]: any_subscribe_result1_upvr (readonly)
				]]
				any_subscribe_result1_upvr:unsubscribe()
			end
		end
		any_subscribe_result1_upvr = nil
		return any_subscribe_result1_upvr
	end, {any_useContext_result1_upvr})
	return any_useState_result1_upvr
end