-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:36
-- Luau version 6, Types version 3
-- Time taken: 0.002178 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local module_upvr = {Network_upvr}
local Thunk_upvr = require(Parent.Thunk)
local var5_upvr = require(Parent.createInspectAndBuyKeyMapper)("getFavoriteForBundle")
local PerformFetch_upvr = require(game:GetService("CorePackages").Workspace.Packages.Http).PerformFetch
local SetFavoriteBundle_upvr = require(Parent.Actions.SetFavoriteBundle)
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
local Constants_upvr = require(Parent.Constants)
return function(arg1) -- Line 20, Named "GetFavoriteForBundle"
	--[[ Upvalues[8]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: var5_upvr (readonly)
		[5]: PerformFetch_upvr (readonly)
		[6]: SetFavoriteBundle_upvr (readonly)
		[7]: SendCounter_upvr (readonly)
		[8]: Constants_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2) -- Line 21
		--[[ Upvalues[7]:
			[1]: Network_upvr (copied, readonly)
			[2]: var5_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: PerformFetch_upvr (copied, readonly)
			[5]: SetFavoriteBundle_upvr (copied, readonly)
			[6]: SendCounter_upvr (copied, readonly)
			[7]: Constants_upvr (copied, readonly)
		]]
		local var12_upvr = arg2[Network_upvr]
		return PerformFetch_upvr.Single(var5_upvr(arg1_2:getState().storeId, arg1), function(arg1_3) -- Line 26
			--[[ Upvalues[6]:
				[1]: var12_upvr (readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: SetFavoriteBundle_upvr (copied, readonly)
				[5]: SendCounter_upvr (copied, readonly)
				[6]: Constants_upvr (copied, readonly)
			]]
			return var12_upvr.getFavoriteForBundle(arg1):andThen(function(arg1_4) -- Line 27
				--[[ Upvalues[5]:
					[1]: arg1_2 (copied, readonly)
					[2]: SetFavoriteBundle_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: SendCounter_upvr (copied, readonly)
					[5]: Constants_upvr (copied, readonly)
				]]
				if arg1_4 == "null" then
					arg1_2:dispatch(SetFavoriteBundle_upvr(tostring(arg1), false))
				else
					arg1_2:dispatch(SetFavoriteBundle_upvr(tostring(arg1), true))
				end
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetFavoriteForBundle..Constants_upvr.CounterSuffix.RequestSucceeded))
			end, function(arg1_5) -- Line 37
				--[[ Upvalues[3]:
					[1]: arg1_2 (copied, readonly)
					[2]: SendCounter_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetFavoriteForBundle..Constants_upvr.CounterSuffix.RequestRejected))
			end)
		end)(arg1_2):catch(function(arg1_6) -- Line 42
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: SendCounter_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetFavoriteForBundle..Constants_upvr.CounterSuffix.RequestFailed))
		end)
	end)
end