-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:39
-- Luau version 6, Types version 3
-- Time taken: 0.001598 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local module_upvr = {Network_upvr}
local Thunk_upvr = require(Parent.Thunk)
local var5_upvr = require(Parent.createInspectAndBuyKeyMapper)("getVersionInfo")
local PerformFetch_upvr = require(game:GetService("CorePackages").Workspace.Packages.Http).PerformFetch
local AssetInfo_upvr = require(Parent.Models.AssetInfo)
local SetAssets_upvr = require(Parent.Actions.SetAssets)
local GetExperiencePlayability_upvr = require(Parent.Thunks.GetExperiencePlayability)
local GetExperienceInfo_upvr = require(Parent.Thunks.GetExperienceInfo)
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
local Constants_upvr = require(Parent.Constants)
return function(arg1) -- Line 29, Named "GetVersionInfo"
	--[[ Upvalues[11]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: var5_upvr (readonly)
		[5]: PerformFetch_upvr (readonly)
		[6]: AssetInfo_upvr (readonly)
		[7]: SetAssets_upvr (readonly)
		[8]: GetExperiencePlayability_upvr (readonly)
		[9]: GetExperienceInfo_upvr (readonly)
		[10]: SendCounter_upvr (readonly)
		[11]: Constants_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2) -- Line 30
		--[[ Upvalues[10]:
			[1]: Network_upvr (copied, readonly)
			[2]: var5_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: PerformFetch_upvr (copied, readonly)
			[5]: AssetInfo_upvr (copied, readonly)
			[6]: SetAssets_upvr (copied, readonly)
			[7]: GetExperiencePlayability_upvr (copied, readonly)
			[8]: GetExperienceInfo_upvr (copied, readonly)
			[9]: SendCounter_upvr (copied, readonly)
			[10]: Constants_upvr (copied, readonly)
		]]
		local var15_upvr = arg2[Network_upvr]
		return PerformFetch_upvr.Single(var5_upvr(arg1_2:getState().storeId, arg1), function() -- Line 35
			--[[ Upvalues[9]:
				[1]: var15_upvr (readonly)
				[2]: arg1 (copied, readonly)
				[3]: AssetInfo_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: SetAssets_upvr (copied, readonly)
				[6]: GetExperiencePlayability_upvr (copied, readonly)
				[7]: GetExperienceInfo_upvr (copied, readonly)
				[8]: SendCounter_upvr (copied, readonly)
				[9]: Constants_upvr (copied, readonly)
			]]
			return var15_upvr.getVersionInfo(arg1):andThen(function(arg1_3) -- Line 36
				--[[ Upvalues[8]:
					[1]: AssetInfo_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: arg1_2 (copied, readonly)
					[4]: SetAssets_upvr (copied, readonly)
					[5]: GetExperiencePlayability_upvr (copied, readonly)
					[6]: GetExperienceInfo_upvr (copied, readonly)
					[7]: SendCounter_upvr (copied, readonly)
					[8]: Constants_upvr (copied, readonly)
				]]
				local data = arg1_3.data
				local _1 = data[1]
				if _1 then
					data = _1.creatingUniverseId
				else
					data = nil
				end
				if data then
					data = tostring(data)
					arg1_2:dispatch(SetAssets_upvr({AssetInfo_upvr.fromGetVersionInfo(arg1, _1)}))
					arg1_2:dispatch(GetExperiencePlayability_upvr(data))
					arg1_2:dispatch(GetExperienceInfo_upvr(data))
				end
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetVersionInfo..Constants_upvr.CounterSuffix.RequestSucceeded))
			end, function(arg1_4) -- Line 55
				--[[ Upvalues[3]:
					[1]: arg1_2 (copied, readonly)
					[2]: SendCounter_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetVersionInfo..Constants_upvr.CounterSuffix.RequestRejected))
			end)
		end)(arg1_2):catch(function(arg1_5) -- Line 60
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: SendCounter_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetVersionInfo..Constants_upvr.CounterSuffix.RequestFailed))
		end)
	end)
end