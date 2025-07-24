-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:03
-- Luau version 6, Types version 3
-- Time taken: 0.000646 seconds

local Parent = script.Parent.Parent
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local PlatformInterface_upvr = require(Parent.Services.PlatformInterface)
local module_upvr = {ExternalSettings_upvr, PlatformInterface_upvr}
local Thunk_upvr = require(Parent.Thunk)
local getUpsellFlow_upvr = require(Parent.NativeUpsell.getUpsellFlow)
local UpsellFlow_upvr = require(Parent.Enums.UpsellFlow)
return function() -- Line 15, Named "openTermsOfUse"
	--[[ Upvalues[6]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: ExternalSettings_upvr (readonly)
		[4]: PlatformInterface_upvr (readonly)
		[5]: getUpsellFlow_upvr (readonly)
		[6]: UpsellFlow_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1, arg2) -- Line 16
		--[[ Upvalues[4]:
			[1]: ExternalSettings_upvr (copied, readonly)
			[2]: PlatformInterface_upvr (copied, readonly)
			[3]: getUpsellFlow_upvr (copied, readonly)
			[4]: UpsellFlow_upvr (copied, readonly)
		]]
		if getUpsellFlow_upvr(arg2[ExternalSettings_upvr].getPlatform()) == UpsellFlow_upvr.Web then
			arg2[PlatformInterface_upvr].openTermsOfUse()
		end
	end)
end