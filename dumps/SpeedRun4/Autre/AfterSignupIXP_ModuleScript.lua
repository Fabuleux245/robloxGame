-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:37
-- Luau version 6, Types version 3
-- Time taken: 0.001304 seconds

local Parent = script.Parent.Parent
local FStringPVCIAfterSignupLayer_upvr = require(Parent.Flags.FStringPVCIAfterSignupLayer)
local FStringPVCIAfterSignupVariantKey_upvr = require(Parent.Flags.FStringPVCIAfterSignupVariantKey)
local function var3_upvr(arg1) -- Line 12
	--[[ Upvalues[2]:
		[1]: FStringPVCIAfterSignupLayer_upvr (readonly)
		[2]: FStringPVCIAfterSignupVariantKey_upvr (readonly)
	]]
	local var5 = arg1[FStringPVCIAfterSignupLayer_upvr]
	if not var5 then
		var5 = {}
	end
	return var5[FStringPVCIAfterSignupVariantKey_upvr]
end
local module = {}
local useUserExperiment_upvr = require(Parent.Parent.RoactAppExperiment).useUserExperiment
function module.usePVAndCIAfterSignupVariant(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: useUserExperiment_upvr (readonly)
		[2]: FStringPVCIAfterSignupLayer_upvr (readonly)
		[3]: var3_upvr (readonly)
	]]
	local var8 = arg1
	if not var8 then
		var8 = {}
		var8.isExposureEnabled = false
	end
	return useUserExperiment_upvr({FStringPVCIAfterSignupLayer_upvr}, var3_upvr, var8.isExposureEnabled)
end
local IXPService_upvr = game:GetService("IXPService")
function module.logExposure() -- Line 26
	--[[ Upvalues[2]:
		[1]: IXPService_upvr (readonly)
		[2]: FStringPVCIAfterSignupLayer_upvr (readonly)
	]]
	IXPService_upvr:LogUserLayerExposure(FStringPVCIAfterSignupLayer_upvr)
end
return module