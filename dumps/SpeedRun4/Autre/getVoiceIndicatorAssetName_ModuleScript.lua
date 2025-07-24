-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:55
-- Luau version 6, Types version 3
-- Time taken: 0.000693 seconds

local getFFlagEnableShimmeringIconLegacyChatService_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Flags.getFFlagEnableShimmeringIconLegacyChatService)
return function(arg1, arg2, arg3) -- Line 5
	--[[ Upvalues[1]:
		[1]: getFFlagEnableShimmeringIconLegacyChatService_upvr (readonly)
	]]
	if getFFlagEnableShimmeringIconLegacyChatService_upvr() and arg1 == "Connecting" then
		return "icons/controls/voice/"..arg3.."_0_dark"
	end
	if arg1 == "Muted" or arg1 == "LOCAL_MUTED" then
		return "icons/controls/voice/"..arg3.."_off_light"
	end
	if arg1 == "Inactive" or arg1 == "Connecting" then
		return "icons/controls/voice/"..arg3.."_0_light"
	end
	if arg1 == "Talking" then
		return "icons/controls/voice/"..arg3..'_'..tostring(math.floor(arg2 * 5 + 0.5) * 20).."_light"
	end
	return "icons/controls/voice/"..arg3.."_error_light"
end