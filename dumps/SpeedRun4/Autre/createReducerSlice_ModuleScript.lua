-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:51
-- Luau version 6, Types version 3
-- Time taken: 0.002518 seconds

local RoduxPresence = script:FindFirstAncestor("RoduxPresence")
local getDeepValue_upvr = require(RoduxPresence.getDeepValue)
local Cryo_upvr = require(RoduxPresence.Parent.Cryo)
local ReceivedUserPresence_upvr = require(RoduxPresence.Actions.ReceivedUserPresence)
return function(arg1, arg2, arg3) -- Line 10
	--[[ Upvalues[3]:
		[1]: getDeepValue_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: ReceivedUserPresence_upvr (readonly)
	]]
	local function handlePresenceModel_upvr(arg1_2, arg2_2) -- Line 13, Named "handlePresenceModel"
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: getDeepValue_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: Cryo_upvr (copied, readonly)
		]]
		local tostring_result1 = tostring(arg2_2.userId)
		local getDeepValue_upvr_result1 = getDeepValue_upvr(arg1_2, string.format("byUserId.%s.%s", tostring_result1, arg2))
		local var8
		if getDeepValue_upvr_result1 and var8[getDeepValue_upvr_result1] then
			local tostring_result1_2 = tostring(getDeepValue_upvr_result1)
			var8 = Cryo_upvr.Dictionary.join(var8, {
				[tostring_result1_2] = Cryo_upvr.List.removeValue(var8[tostring_result1_2], tostring_result1);
			})
		end
		local var11 = var8[arg2_2[arg2]]
		if not var11 or not table.find(var11, tostring_result1) then
			local module = {}
			local var13 = var11
			if not var13 then
				var13 = {}
			end
			module[tostring(arg2_2[arg2])] = Cryo_upvr.List.join(var13, {tostring_result1})
			return Cryo_upvr.Dictionary.join(var8, module)
		end
		return var8
	end
	local presenceNetworking_upvr = arg3.presenceNetworking
	return function(arg1_3, arg2_3) -- Line 36
		--[[ Upvalues[4]:
			[1]: ReceivedUserPresence_upvr (copied, readonly)
			[2]: handlePresenceModel_upvr (readonly)
			[3]: presenceNetworking_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		assert(arg1_3, "state should not be nil")
		if arg2_3.type == ReceivedUserPresence_upvr.name then
			return handlePresenceModel_upvr(arg1_3, arg2_3.payload)
		end
		local var21
		if arg2_3.type == var21 then
			var21 = arg2_3.responseBody
			var21 = arg1_3[arg1]
			for _, v in ipairs(var21.userPresences) do
				var21 = handlePresenceModel_upvr(arg1_3, v)
			end
			return var21
		end
		return arg1_3[arg1]
	end
end