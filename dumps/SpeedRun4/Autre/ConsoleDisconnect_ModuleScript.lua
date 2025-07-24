-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:57
-- Luau version 6, Types version 3
-- Time taken: 0.001242 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local AuthPlatformDisconnect_upvr = require(AuthCommon.Http.Requests.AuthPlatformDisconnect)
local Promise_upvr = require(Parent.Promise)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableConsoleDisconnectNetworkingErrorToast", false)
local SetNetworkingErrorToast_upvr = require(Parent.RobloxAppToastsRodux).Thunks.SetNetworkingErrorToast
return function(arg1, arg2, arg3) -- Line 12, Named "ConsoleDisconnect"
	--[[ Upvalues[4]:
		[1]: AuthPlatformDisconnect_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: SetNetworkingErrorToast_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[7]:
			[1]: AuthPlatformDisconnect_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg3 (readonly)
			[4]: arg2 (readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[7]: SetNetworkingErrorToast_upvr (copied, readonly)
		]]
		return AuthPlatformDisconnect_upvr(arg1):andThen(function() -- Line 14
			--[[ Upvalues[5]:
				[1]: arg1_2 (readonly)
				[2]: arg3 (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: arg2 (copied, readonly)
				[5]: Promise_upvr (copied, readonly)
			]]
			arg1_2:dispatch(arg3(arg1, arg2))
			return Promise_upvr.resolve()
		end, function(arg1_3) -- Line 19
			--[[ Upvalues[4]:
				[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: SetNetworkingErrorToast_upvr (copied, readonly)
				[4]: Promise_upvr (copied, readonly)
			]]
			if game_DefineFastFlag_result1_upvr then
				arg1_2:dispatch(SetNetworkingErrorToast_upvr(arg1_3))
			end
			return Promise_upvr.reject(arg1_3)
		end)
	end
end