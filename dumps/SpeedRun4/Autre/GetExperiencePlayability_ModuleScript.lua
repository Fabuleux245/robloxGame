-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:35
-- Luau version 6, Types version 3
-- Time taken: 0.002075 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local module_upvr = {Network_upvr}
local Thunk_upvr = require(Parent.Thunk)
local var5_upvr = require(Parent.createInspectAndBuyKeyMapper)("getExperiencePlayabilityStatus")
local PerformFetch_upvr = require(game:GetService("CorePackages").Workspace.Packages.Http).PerformFetch
local ExperienceInfo_upvr = require(Parent.Models.ExperienceInfo)
local SetExperienceInfo_upvr = require(Parent.Actions.SetExperienceInfo)
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
local Constants_upvr = require(Parent.Constants)
return function(arg1) -- Line 23, Named "GetExperiencePlayability"
	--[[ Upvalues[9]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: var5_upvr (readonly)
		[5]: PerformFetch_upvr (readonly)
		[6]: ExperienceInfo_upvr (readonly)
		[7]: SetExperienceInfo_upvr (readonly)
		[8]: SendCounter_upvr (readonly)
		[9]: Constants_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2) -- Line 24
		--[[ Upvalues[8]:
			[1]: Network_upvr (copied, readonly)
			[2]: var5_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: PerformFetch_upvr (copied, readonly)
			[5]: ExperienceInfo_upvr (copied, readonly)
			[6]: SetExperienceInfo_upvr (copied, readonly)
			[7]: SendCounter_upvr (copied, readonly)
			[8]: Constants_upvr (copied, readonly)
		]]
		local var13_upvr = arg2[Network_upvr]
		return PerformFetch_upvr.Single(var5_upvr(arg1_2:getState().storeId, arg1), function() -- Line 29
			--[[ Upvalues[7]:
				[1]: var13_upvr (readonly)
				[2]: arg1 (copied, readonly)
				[3]: ExperienceInfo_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: SetExperienceInfo_upvr (copied, readonly)
				[6]: SendCounter_upvr (copied, readonly)
				[7]: Constants_upvr (copied, readonly)
			]]
			return var13_upvr.getExperiencePlayability(arg1):andThen(function(arg1_3) -- Line 30
				--[[ Upvalues[5]:
					[1]: ExperienceInfo_upvr (copied, readonly)
					[2]: arg1_2 (copied, readonly)
					[3]: SetExperienceInfo_upvr (copied, readonly)
					[4]: SendCounter_upvr (copied, readonly)
					[5]: Constants_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SetExperienceInfo_upvr(ExperienceInfo_upvr.fromGetPlayabilityStatus(arg1_3[1])))
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetExperiencePlayability..Constants_upvr.CounterSuffix.RequestSucceeded))
			end, function(arg1_4) -- Line 38
				--[[ Upvalues[3]:
					[1]: arg1_2 (copied, readonly)
					[2]: SendCounter_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetExperiencePlayability..Constants_upvr.CounterSuffix.RequestRejected))
			end)
		end)(arg1_2):catch(function(arg1_5) -- Line 43
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: SendCounter_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetExperiencePlayability..Constants_upvr.CounterSuffix.RequestFailed))
		end)
	end)
end