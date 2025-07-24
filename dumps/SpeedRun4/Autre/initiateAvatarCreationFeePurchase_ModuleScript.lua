-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:56
-- Luau version 6, Types version 3
-- Time taken: 0.001880 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local module_upvr = {Network_upvr, ExternalSettings_upvr}
local Thunk_upvr = require(Parent.Thunk)
local RequestAvatarCreationFeePurchase_upvr = require(Parent.Actions.RequestAvatarCreationFeePurchase)
local Promise_upvr = require(Parent.Promise)
local getAccountInfo_upvr = require(Parent.Network.getAccountInfo)
local getBalanceInfo_upvr = require(Parent.Network.getBalanceInfo)
local resolvePromptState_upvr = require(script.Parent.resolvePromptState)
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
return function(arg1, arg2, arg3, arg4) -- Line 24, Named "initiateAvatarCreationFeePurchase"
	--[[ Upvalues[10]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: ExternalSettings_upvr (readonly)
		[5]: RequestAvatarCreationFeePurchase_upvr (readonly)
		[6]: Promise_upvr (readonly)
		[7]: getAccountInfo_upvr (readonly)
		[8]: getBalanceInfo_upvr (readonly)
		[9]: resolvePromptState_upvr (readonly)
		[10]: ErrorOccurred_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 25
		--[[ Upvalues[12]:
			[1]: Network_upvr (copied, readonly)
			[2]: ExternalSettings_upvr (copied, readonly)
			[3]: RequestAvatarCreationFeePurchase_upvr (copied, readonly)
			[4]: arg3 (readonly)
			[5]: arg2 (readonly)
			[6]: Promise_upvr (copied, readonly)
			[7]: getAccountInfo_upvr (copied, readonly)
			[8]: getBalanceInfo_upvr (copied, readonly)
			[9]: arg4 (readonly)
			[10]: arg1 (readonly)
			[11]: resolvePromptState_upvr (copied, readonly)
			[12]: ErrorOccurred_upvr (copied, readonly)
		]]
		local var13 = arg2_2[Network_upvr]
		local var14 = arg2_2[ExternalSettings_upvr]
		arg1_2:dispatch(RequestAvatarCreationFeePurchase_upvr(arg3, arg2))
		return Promise_upvr.all({
			accountInfo = getAccountInfo_upvr(var13, var14);
			balanceInfo = getBalanceInfo_upvr(var13, var14, true);
		}):andThen(function(arg1_3) -- Line 35
			--[[ Upvalues[4]:
				[1]: arg4 (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: resolvePromptState_upvr (copied, readonly)
			]]
			local tbl = {}
			tbl.PriceInRobux = arg4
			tbl.Name = arg1.name
			tbl.Description = arg1.description
			arg1_2:dispatch(resolvePromptState_upvr(tbl, arg1_3.accountInfo, arg1_3.balanceInfo, false, true, arg4))
		end):catch(function(arg1_4) -- Line 50
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: ErrorOccurred_upvr (copied, readonly)
			]]
			arg1_2:dispatch(ErrorOccurred_upvr(arg1_4))
		end)
	end)
end