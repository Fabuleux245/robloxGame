-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:49
-- Luau version 6, Types version 3
-- Time taken: 0.000908 seconds

local GetFFlagAXEnableAvatarHeadShotSidebarRefresh_upvr = require(script:FindFirstAncestor("UserLib").Parent.SharedFlags).GetFFlagAXEnableAvatarHeadShotSidebarRefresh
return function(arg1, arg2, arg3, arg4, arg5) -- Line 9
	--[[ Upvalues[1]:
		[1]: GetFFlagAXEnableAvatarHeadShotSidebarRefresh_upvr (readonly)
	]]
	local var3
	if arg4 then
		var3 = var3.."&filters=circular"
	end
	if GetFFlagAXEnableAvatarHeadShotSidebarRefresh_upvr() and arg5 then
		var3 = var3.."&timestamp="..os.time()
	end
	return var3
end