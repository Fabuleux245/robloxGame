-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:47
-- Luau version 6, Types version 3
-- Time taken: 0.000446 seconds

local ChromeShared = script:FindFirstAncestor("ChromeShared")
local useObservableValue_upvr = require(ChromeShared.Hooks.useObservableValue)
local Service_upvr = require(ChromeShared.Service)
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: useObservableValue_upvr (readonly)
		[2]: Service_upvr (readonly)
	]]
	local var3_result1 = useObservableValue_upvr(Service_upvr:menuList())
	if not var3_result1 then
		var3_result1 = {}
	end
	return var3_result1
end