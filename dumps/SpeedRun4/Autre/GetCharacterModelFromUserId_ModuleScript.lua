-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:33
-- Luau version 6, Types version 3
-- Time taken: 0.001952 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local module_upvr = {Network_upvr}
local Thunk_upvr = require(Parent.Thunk)
local var5_upvr = require(Parent.createInspectAndBuyKeyMapper)("getPlayerModel")
local PerformFetch_upvr = require(game:GetService("CorePackages").Workspace.Packages.Http).PerformFetch
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
local Constants_upvr = require(Parent.Constants)
return function(arg1, arg2, arg3) -- Line 19, Named "GetCharacterModelFromUserId"
	--[[ Upvalues[7]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: var5_upvr (readonly)
		[5]: PerformFetch_upvr (readonly)
		[6]: SendCounter_upvr (readonly)
		[7]: Constants_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 20
		--[[ Upvalues[8]:
			[1]: Network_upvr (copied, readonly)
			[2]: var5_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: PerformFetch_upvr (copied, readonly)
			[6]: arg3 (readonly)
			[7]: SendCounter_upvr (copied, readonly)
			[8]: Constants_upvr (copied, readonly)
		]]
		local var11_upvr = arg2_2[Network_upvr]
		return PerformFetch_upvr.Single(var5_upvr(arg1_2:getState().storeId, arg1, arg2), function() -- Line 25
			--[[ Upvalues[6]:
				[1]: var11_upvr (readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg3 (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: SendCounter_upvr (copied, readonly)
				[6]: Constants_upvr (copied, readonly)
			]]
			return var11_upvr.getModelFromUserId(arg1):andThen(function(arg1_3) -- Line 26
				--[[ Upvalues[4]:
					[1]: arg3 (copied, readonly)
					[2]: arg1_2 (copied, readonly)
					[3]: SendCounter_upvr (copied, readonly)
					[4]: Constants_upvr (copied, readonly)
				]]
				arg3(arg1_3)
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetCharacterModelFromUserId..Constants_upvr.CounterSuffix.RequestSucceeded))
			end, function(arg1_4) -- Line 33
				--[[ Upvalues[3]:
					[1]: arg1_2 (copied, readonly)
					[2]: SendCounter_upvr (copied, readonly)
					[3]: Constants_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetCharacterModelFromUserId..Constants_upvr.CounterSuffix.RequestRejected))
			end)
		end)(arg1_2):catch(function(arg1_5) -- Line 40
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: SendCounter_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.GetCharacterModelFromUserId..Constants_upvr.CounterSuffix.RequestFailed))
		end)
	end)
end