-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:22
-- Luau version 6, Types version 3
-- Time taken: 0.000783 seconds

local ExpChatShared = script:FindFirstAncestor("ExpChatShared")
local Parent = ExpChatShared.Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local Actions = ExpChatShared.Actions
return require(Parent.Rodux).createReducer({}, {
	[require(Actions.PlayerAdded).name] = function(arg1, arg2) -- Line 15
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		return Dictionary_upvr.join(arg1, {
			[string.lower(arg2.username)] = arg2.userId;
		})
	end;
	[require(Actions.PlayerRemoved).name] = function(arg1, arg2) -- Line 22
		--[[ Upvalues[1]:
			[1]: Dictionary_upvr (readonly)
		]]
		return Dictionary_upvr.filter(arg1, function(arg1_2) -- Line 23
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local var10
			if arg1_2 == arg2.userId then
				var10 = false
			else
				var10 = true
			end
			return var10
		end)
	end;
})