-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:44
-- Luau version 6, Types version 3
-- Time taken: 0.001892 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local FFlagEncodeSquadMembersUpdated_upvr = require(SquadsCore.Flags.FFlagEncodeSquadMembersUpdated)
local RoduxSquads_upvr = Parent.RoduxSquads
if FFlagEncodeSquadMembersUpdated_upvr then
	RoduxSquads_upvr = require(SquadsCore.Common.encodeUserIds)
else
	local HttpService_upvr = game:GetService("HttpService")
	function RoduxSquads_upvr(arg1) -- Line 21
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 22
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return HttpService_upvr:JSONEncode(arg1)
		end)
		if pcall_result1 then
			return pcall_result2
		end
		return "[]"
	end
end
local SquadLocationEnum_upvr = require(SquadsCore.Enums.SquadLocationEnum)
local Players_upvr = game:GetService("Players")
local encodeSquadMembers_upvr = require(SquadsCore.Common.encodeSquadMembers)
local Cryo_upvr = require(Parent.Cryo)
local EventNames_upvr = require(SquadsCore.Analytics.EventNames)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 33
	--[[ Upvalues[7]:
		[1]: SquadLocationEnum_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: FFlagEncodeSquadMembersUpdated_upvr (readonly)
		[4]: RoduxSquads_upvr (readonly)
		[5]: encodeSquadMembers_upvr (readonly)
		[6]: Cryo_upvr (readonly)
		[7]: EventNames_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 27 start (CF ANALYSIS FAILED)
	for _, v in ipairs(arg2) do
		({})[v.userId] = true
		local var28
	end
	for _, v_2 in Players_upvr:GetPlayers() do
		if var28[v_2.UserId] then
			table.insert({}, v_2.UserId)
		end
	end
	if FFlagEncodeSquadMembersUpdated_upvr then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: GOTO [70] #56
	end
	-- KONSTANTERROR: [5] 4. Error Block 27 end (CF ANALYSIS FAILED)
end