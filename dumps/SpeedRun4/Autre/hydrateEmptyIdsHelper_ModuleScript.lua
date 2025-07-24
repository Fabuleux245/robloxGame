-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:18
-- Luau version 6, Types version 3
-- Time taken: 0.000712 seconds

local Parent = script:FindFirstAncestor("SocialCommon").Parent
local Promise_upvr = require(Parent.Promise)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 18, Named "hydrateEmptyIdsHelper"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local ids = arg1.ids
	if not ids then
		return Promise_upvr.resolve()
	end
	local selector_upvr = arg1.selector
	local any_filter_result1 = Cryo_upvr.List.filter(ids, function(arg1_2) -- Line 27
		--[[ Upvalues[1]:
			[1]: selector_upvr (readonly)
		]]
		local var7
		if selector_upvr(arg1_2) ~= nil then
			var7 = false
		else
			var7 = true
		end
		return var7
	end)
	if 0 < #any_filter_result1 then
		return arg1.hydrate(any_filter_result1)
	end
	return Promise_upvr.resolve()
end