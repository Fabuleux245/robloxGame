-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:57
-- Luau version 6, Types version 3
-- Time taken: 0.001200 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
return function() -- Line 11
	--[[ Upvalues[2]:
		[1]: useSelector_upvr (readonly)
		[2]: AppPage_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1) -- Line 12
		--[[ Upvalues[1]:
			[1]: AppPage_upvr (copied, readonly)
		]]
		local var6
		if not arg1.Navigation then
			return true
		end
		local history = arg1.Navigation.history
		if not history then
			return false
		end
		local var8 = history[#history]
		var6 = #var8
		local var9 = var8[var6]
		if var9 then
			var6 = var8[#var8]
			var9 = var6.name
		end
		if var9 ~= AppPage_upvr.Chat then
			var6 = false
		else
			var6 = true
		end
		return var6
	end)
end