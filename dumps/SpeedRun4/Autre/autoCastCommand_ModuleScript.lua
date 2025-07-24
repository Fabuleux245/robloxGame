-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:01
-- Luau version 6, Types version 3
-- Time taken: 0.001243 seconds

local ExpChatShared = script:FindFirstAncestor("ExpChatShared")
local function matchesAlias_upvr(arg1, arg2) -- Line 10, Named "matchesAlias"
	for _, v in pairs(arg1) do
		if string.find(arg2, '^'..v..' ') then
			return true
		end
	end
	return false
end
local Promise_upvr = require(ExpChatShared.Parent.Promise)
local context_upvr = require(ExpChatShared.context)
return function(arg1, arg2, arg3) -- Line 20
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: context_upvr (readonly)
		[3]: matchesAlias_upvr (readonly)
	]]
	return Promise_upvr.try(function() -- Line 21
		--[[ Upvalues[6]:
			[1]: context_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: matchesAlias_upvr (copied, readonly)
			[4]: arg3 (readonly)
			[5]: arg2 (readonly)
			[6]: Promise_upvr (copied, readonly)
		]]
		assert(context_upvr.store, "Store should exist")
		if matchesAlias_upvr(context_upvr.store:getState().AutoCastCommands[arg1.name], arg3) then
			local any_clientRun_result1 = arg1.clientRun(context_upvr.store, arg2, arg3)
			if any_clientRun_result1 and string.find(any_clientRun_result1.metadata, "Success") then
				return Promise_upvr.resolve(any_clientRun_result1)
			end
		end
		return Promise_upvr.reject()
	end)
end