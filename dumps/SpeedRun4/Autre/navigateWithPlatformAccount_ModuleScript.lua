-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:23
-- Luau version 6, Types version 3
-- Time taken: 0.000607 seconds

local Parent = script:FindFirstAncestor("AppStartup").Parent
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DebugTenFootForceShowAuthScreen", false)
local FFlagLuaAppUnifyLandingPages_upvr = require(Parent.SharedFlags).FFlagLuaAppUnifyLandingPages
return function(arg1, arg2) -- Line 10, Named "navigateWithPlatformAccount"
	--[[ Upvalues[3]:
		[1]: AppPage_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: FFlagLuaAppUnifyLandingPages_upvr (readonly)
	]]
	if arg1 then
		arg2(AppPage_upvr.SingleSignOnContainer)
	else
		local var5
		if game_DefineFastFlag_result1_upvr then
			if FFlagLuaAppUnifyLandingPages_upvr then
				var5 = AppPage_upvr.Landing
			else
				var5 = AppPage_upvr.Authentication
			end
			arg2(var5)
			return
		end
		arg2(AppPage_upvr.Startup)
	end
end