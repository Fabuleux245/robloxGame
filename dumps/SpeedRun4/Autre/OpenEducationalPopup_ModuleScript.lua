-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:34
-- Luau version 6, Types version 3
-- Time taken: 0.000864 seconds

local OpenNativeClosePrompt_upvr = require(script.Parent.Parent.Actions.OpenNativeClosePrompt)
return function(arg1, arg2, arg3) -- Line 6
	--[[ Upvalues[1]:
		[1]: OpenNativeClosePrompt_upvr (readonly)
	]]
	local function _() -- Line 7, Named "getDisplayCount"
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		return tonumber(arg2:GetItem("NativeCloseLuaPromptDisplayCount")) or 0
	end
	local function _(arg1_2) -- Line 11, Named "setDisplayCount"
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		arg2:SetItem("NativeCloseLuaPromptDisplayCount", tostring(arg1_2))
		arg2:flush()
	end
	local any_GetNotificationTypeList_result1_upvr = arg1:GetNotificationTypeList()
	return function(arg1_3) -- Line 18
		--[[ Upvalues[5]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
			[3]: arg1 (readonly)
			[4]: any_GetNotificationTypeList_result1_upvr (readonly)
			[5]: OpenNativeClosePrompt_upvr (copied, readonly)
		]]
		local var5 = tonumber(arg2:GetItem("NativeCloseLuaPromptDisplayCount")) or 0
		if arg1_3:getState().nativeClosePrompt.closingApp or arg3 <= var5 then
			arg1:BroadcastNotification("", any_GetNotificationTypeList_result1_upvr.NATIVE_EXIT)
		else
			arg1_3:dispatch(OpenNativeClosePrompt_upvr())
			arg2:SetItem("NativeCloseLuaPromptDisplayCount", tostring(var5 + 1))
			arg2:flush()
		end
	end
end