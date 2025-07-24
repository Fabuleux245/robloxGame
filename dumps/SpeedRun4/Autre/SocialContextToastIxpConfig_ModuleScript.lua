-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:34
-- Luau version 6, Types version 3
-- Time taken: 0.001193 seconds

local IXPService_upvr = game:GetService("IXPService")
game:DefineFastFlag("FallbackPlaceIdParamEnabledForAll", false)
game:DefineFastFlag("ActionableSocialContextToastEnabledForAll", false)
local module = {}
local function waitForIxpInitialization_upvr() -- Line 9, Named "waitForIxpInitialization"
	--[[ Upvalues[1]:
		[1]: IXPService_upvr (readonly)
	]]
	local var3
	while not (var3 == Enum.IXPLoadingStatus.None or var3 ~= Enum.IXPLoadingStatus.Pending) do
		IXPService_upvr.OnUserLayerLoadingStatusChanged:Wait()
		var3 = IXPService_upvr:GetUserLayerLoadingStatus()
	end
	return var3
end
function module.CheckIsFallbackPlaceIdParamEnabled() -- Line 19
	--[[ Upvalues[2]:
		[1]: waitForIxpInitialization_upvr (readonly)
		[2]: IXPService_upvr (readonly)
	]]
	if game:GetFastFlag("FallbackPlaceIdParamEnabledForAll") then
		return true
	end
	waitForIxpInitialization_upvr()
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 26
		--[[ Upvalues[1]:
			[1]: IXPService_upvr (copied, readonly)
		]]
		return IXPService_upvr:GetUserLayerVariables("PlayerApp.GameJoin.UX")
	end)
	if pcall_result1 and pcall_result2_2 and pcall_result2_2.IsJoinWithUserIdParamEnabled then
		return true
	end
	return false
end
function module.CheckIsActionableToastEnabled() -- Line 37
	--[[ Upvalues[2]:
		[1]: waitForIxpInitialization_upvr (readonly)
		[2]: IXPService_upvr (readonly)
	]]
	if game:GetFastFlag("ActionableSocialContextToastEnabledForAll") then
		return true
	end
	waitForIxpInitialization_upvr()
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 44
		--[[ Upvalues[1]:
			[1]: IXPService_upvr (copied, readonly)
		]]
		return IXPService_upvr:GetUserLayerVariables("PlayerApp.GameJoin.UX")
	end)
	if pcall_result1_2 and pcall_result2 and pcall_result2.IsActionableToastsEnabled then
		return true
	end
	return false
end
return module