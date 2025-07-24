-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:35
-- Luau version 6, Types version 3
-- Time taken: 0.001400 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local module_upvr = {Network_upvr}
local Thunk_upvr = require(Parent.Thunk)
local var5_upvr = require(Parent.createInspectAndBuyKeyMapper)("getFavoriteForAsset")
local PerformFetch_upvr = require(game:GetService("CorePackages").Workspace.Packages.Http).PerformFetch
local SetFavoriteAsset_upvr = require(Parent.Actions.SetFavoriteAsset)
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
local Constants_upvr = require(Parent.Constants)
return function(arg1) -- Line 20, Named "GetFavoriteForAsset"
	--[[ Upvalues[8]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: var5_upvr (readonly)
		[5]: PerformFetch_upvr (readonly)
		[6]: SetFavoriteAsset_upvr (readonly)
		[7]: SendCounter_upvr (readonly)
		[8]: Constants_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2) -- Line 21
		--[[ Upvalues[7]:
			[1]: Network_upvr (copied, readonly)
			[2]: var5_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: PerformFetch_upvr (copied, readonly)
			[5]: SetFavoriteAsset_upvr (copied, readonly)
			[6]: SendCounter_upvr (copied, readonly)
			[7]: Constants_upvr (copied, readonly)
		]]
		local var12_upvr = arg2[Network_upvr]
		return PerformFetch_upvr.Single(var5_upvr(arg1_2:getState().storeId, arg1), function(arg1_3) -- Line 26
			--[[ Upvalues[6]:
				[1]: var12_upvr (readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: SetFavoriteAsset_upvr (copied, readonly)
				[5]: SendCounter_upvr (copied, readonly)
				[6]: Constants_upvr (copied, readonly)
			]]
			return var12_upvr.getFavoriteForAsset(arg1):andThen(function(arg1_4) -- Line 27
				--[[ Upvalues[5]:
					[1]: arg1_2 (copied, readonly)
					[2]: SetFavoriteAsset_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: SendCounter_upvr (copied, readonly)
					[5]: Constants_upvr (copied, readonly)
				]]
				if arg1_4 == "null" then
					arg1_2:dispatch(SetFavoriteAsset_upvr(tostring(arg1), false))
				else
					arg1_2:dispatch(SetFavoriteAsset_upvr(tostring(arg1), true))
				end
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetFavoriteForAsset..Constants_upvr.CounterSuffix.RequestSucceeded))
			end, function(arg1_5) -- Line 37
				--[[ Upvalues[3]:
					[1]: arg1_2 (copied, readonly)
					[2]: SendCounter_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetFavoriteForAsset..Constants_upvr.CounterSuffix.RequestRejected))
			end)
		end)(arg1_2):catch(function(arg1_6) -- Line 42
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: SendCounter_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetFavoriteForAsset..Constants_upvr.CounterSuffix.RequestFailed))
		end)
	end)
end