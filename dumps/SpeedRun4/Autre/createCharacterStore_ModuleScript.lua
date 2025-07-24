-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:39
-- Luau version 6, Types version 3
-- Time taken: 0.001276 seconds

local createSignal_upvr = require(script:FindFirstAncestor("ExpChat").Parent.Signals).createSignal
return function() -- Line 19, Named "createCharacterStore"
	--[[ Upvalues[1]:
		[1]: createSignal_upvr (readonly)
	]]
	local var1_result1, var1_result2_upvr = createSignal_upvr({})
	local function _(arg1) -- Line 23, Named "getKey"
		return tostring(arg1)
	end
	return {
		getCharacters = var1_result1;
		handleCharacterAdded = function(arg1, arg2) -- Line 27, Named "handleCharacterAdded"
			--[[ Upvalues[1]:
				[1]: var1_result2_upvr (readonly)
			]]
			local tostring_result1_upvr_2 = tostring(arg1)
			var1_result2_upvr(function(arg1_2) -- Line 30
				--[[ Upvalues[2]:
					[1]: tostring_result1_upvr_2 (readonly)
					[2]: arg2 (readonly)
				]]
				local clone = table.clone(arg1_2)
				clone[tostring_result1_upvr_2] = arg2
				return clone
			end)
		end;
		handlePlayerRemoved = function(arg1) -- Line 37, Named "handlePlayerRemoved"
			--[[ Upvalues[1]:
				[1]: var1_result2_upvr (readonly)
			]]
			local tostring_result1_upvr = tostring(arg1)
			var1_result2_upvr(function(arg1_3) -- Line 40
				--[[ Upvalues[1]:
					[1]: tostring_result1_upvr (readonly)
				]]
				local clone_2 = table.clone(arg1_3)
				clone_2[tostring_result1_upvr] = nil
				return clone_2
			end)
		end;
	}
end