-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:02
-- Luau version 6, Types version 3
-- Time taken: 0.001084 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Services.Analytics)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local PlatformInterface_upvr = require(Parent.Services.PlatformInterface)
local module_upvr = {Analytics_upvr, ExternalSettings_upvr, require(Parent.Services.Network), PlatformInterface_upvr}
local Thunk_upvr = require(Parent.Thunk)
local getUpsellFlow_upvr = require(Parent.NativeUpsell.getUpsellFlow)
local UpsellFlow_upvr = require(Parent.Enums.UpsellFlow)
local hideWindow_upvr = require(Parent.Thunks.hideWindow)
return function(arg1) -- Line 26, Named "openSecuritySettings"
	--[[ Upvalues[8]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: ExternalSettings_upvr (readonly)
		[5]: PlatformInterface_upvr (readonly)
		[6]: getUpsellFlow_upvr (readonly)
		[7]: UpsellFlow_upvr (readonly)
		[8]: hideWindow_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2) -- Line 27
		--[[ Upvalues[7]:
			[1]: Analytics_upvr (copied, readonly)
			[2]: ExternalSettings_upvr (copied, readonly)
			[3]: PlatformInterface_upvr (copied, readonly)
			[4]: getUpsellFlow_upvr (copied, readonly)
			[5]: UpsellFlow_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: hideWindow_upvr (copied, readonly)
		]]
		local any_getState_result1 = arg1_2:getState()
		if getUpsellFlow_upvr(arg2[ExternalSettings_upvr].getPlatform()) == UpsellFlow_upvr.Web then
			arg2[Analytics_upvr].signalTwoSVSettingsErrorConfirmed(any_getState_result1.productInfo.productId, any_getState_result1.requestType)
			if arg1 then
				arg2[PlatformInterface_upvr].openSecuritySettings(arg1)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg2[PlatformInterface_upvr].openSecuritySettings()
			end
		end
		arg1_2:dispatch(hideWindow_upvr())
	end)
end