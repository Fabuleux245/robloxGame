-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:01
-- Luau version 6, Types version 3
-- Time taken: 0.001386 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local isStringEmail_upvr = require(AuthCommon.Utils.isStringEmail)
local any_IsTenFootInterface_result1_upvr = game:GetService("GuiService"):IsTenFootInterface()
local LoginByEmail_upvr = require(AuthCommon.Thunks.LoginByEmail)
local isStringPhone_upvr = require(AuthCommon.Utils.isStringPhone)
local LoginByPhone_upvr = require(AuthCommon.Thunks.LoginByPhone)
local LoginByUsername_upvr = require(AuthCommon.Thunks.LoginByUsername)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 14
	--[[ Upvalues[6]:
		[1]: isStringEmail_upvr (readonly)
		[2]: any_IsTenFootInterface_result1_upvr (readonly)
		[3]: LoginByEmail_upvr (readonly)
		[4]: isStringPhone_upvr (readonly)
		[5]: LoginByPhone_upvr (readonly)
		[6]: LoginByUsername_upvr (readonly)
	]]
	return function(arg1_2) -- Line 25
		--[[ Upvalues[15]:
			[1]: isStringEmail_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg9 (readonly)
			[4]: any_IsTenFootInterface_result1_upvr (copied, readonly)
			[5]: LoginByEmail_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: arg3 (readonly)
			[8]: arg4 (readonly)
			[9]: arg5 (readonly)
			[10]: arg6 (readonly)
			[11]: arg7 (readonly)
			[12]: arg8 (readonly)
			[13]: isStringPhone_upvr (copied, readonly)
			[14]: LoginByPhone_upvr (copied, readonly)
			[15]: LoginByUsername_upvr (copied, readonly)
		]]
		if isStringEmail_upvr(arg2) and not arg9 and not any_IsTenFootInterface_result1_upvr then
			return arg1_2:dispatch(LoginByEmail_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
		end
		if isStringPhone_upvr(arg2) and not arg9 and not any_IsTenFootInterface_result1_upvr then
			return arg1_2:dispatch(LoginByPhone_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
		end
		return arg1_2:dispatch(LoginByUsername_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
	end
end