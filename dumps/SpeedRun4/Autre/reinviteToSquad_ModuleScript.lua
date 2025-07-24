-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:25
-- Luau version 6, Types version 3
-- Time taken: 0.000911 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local Logger = require(Parent.Loggers).Logger
local NetworkingSquads_upvr = require(SquadsCore.Http.NetworkingSquads)
local any_new_result1_upvr = Logger.new(Logger, "SquadsCore")
local SquadPromptType_upvr = require(SquadsCore.Enums.SquadPromptType)
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[4]:
		[1]: NetworkingSquads_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: SquadPromptType_upvr (readonly)
		[4]: Promise_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[6]:
			[1]: NetworkingSquads_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_new_result1_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: SquadPromptType_upvr (copied, readonly)
			[6]: Promise_upvr (copied, readonly)
		]]
		local module = {}
		module.squadId = arg1
		return arg1_2:dispatch(NetworkingSquads_upvr.ReinviteToSquad.API(module)):catch(function(arg1_3) -- Line 14
			--[[ Upvalues[5]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: arg2 (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: SquadPromptType_upvr (copied, readonly)
				[5]: Promise_upvr (copied, readonly)
			]]
			local var12
			if arg1_3.StatusCode then
				var12 = arg1_3.StatusCode
			else
				var12 = -1
			end
			any_new_result1_upvr:warning("Error reinviting parent channel participants to squad: {}", var12)
			local tbl = {}
			var12 = true
			tbl.hideCancelButton = var12
			var12 = SquadPromptType_upvr.Error
			tbl.promptType = var12
			arg2(arg1_2, tbl)
			return Promise_upvr.reject(arg1_3)
		end)
	end
end