-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:21
-- Luau version 6, Types version 3
-- Time taken: 0.000859 seconds

local ExpChatShared = script:FindFirstAncestor("ExpChatShared")
local Parent = ExpChatShared.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local List_upvr = require(Parent.llama).List
local Actions = ExpChatShared.Actions
return require(Parent.Rodux).createReducer({}, {
	[require(Actions.PlayerAdded).name] = function(arg1, arg2) -- Line 16
		--[[ Upvalues[2]:
			[1]: Dictionary_upvr (readonly)
			[2]: List_upvr (readonly)
		]]
		local string_lower_result1 = string.lower(arg2.displayName)
		local module = {}
		local var10 = arg1[string_lower_result1]
		if not var10 then
			var10 = {}
		end
		module[string_lower_result1] = List_upvr.append(var10, arg2.userId)
		return Dictionary_upvr.join(arg1, module)
	end;
	[require(Actions.PlayerRemoved).name] = function(arg1, arg2) -- Line 23
		--[[ Upvalues[2]:
			[1]: Dictionary_upvr (readonly)
			[2]: List_upvr (readonly)
		]]
		return Dictionary_upvr.map(arg1, function(arg1_2) -- Line 24
			--[[ Upvalues[2]:
				[1]: List_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			return List_upvr.removeValue(arg1_2, arg2.userId)
		end)
	end;
})