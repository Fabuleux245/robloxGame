-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:10
-- Luau version 6, Types version 3
-- Time taken: 0.001530 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local RoactUtils = require(Parent.RoactUtils)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useMemo_upvr = require(Parent.React).useMemo
local EnumScreens_upvr = require(AppChat.EnumScreens)
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
return function() -- Line 16
	--[[ Upvalues[4]:
		[1]: useDispatch_upvr (readonly)
		[2]: useMemo_upvr (readonly)
		[3]: EnumScreens_upvr (readonly)
		[4]: dependencyArray_upvr (readonly)
	]]
	return useMemo_upvr(function() -- Line 19
		--[[ Upvalues[1]:
			[1]: EnumScreens_upvr (copied, readonly)
		]]
		return {
			[EnumScreens_upvr.GameDetail] = function() -- Line 21
			end;
			[EnumScreens_upvr.Notifications] = function() -- Line 22
			end;
			[EnumScreens_upvr.PrivacySettings] = function() -- Line 23
			end;
			[EnumScreens_upvr.ReportAbuse] = function() -- Line 24
			end;
			[EnumScreens_upvr.ViewUserProfile] = function() -- Line 25
			end;
			[EnumScreens_upvr.Groups] = function() -- Line 26
			end;
			[EnumScreens_upvr.Home] = function() -- Line 27
			end;
		}
	end, dependencyArray_upvr(useDispatch_upvr()))
end