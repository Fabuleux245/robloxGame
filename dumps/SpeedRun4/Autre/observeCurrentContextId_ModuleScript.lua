-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:01
-- Luau version 6, Types version 3
-- Time taken: 0.001087 seconds

local var1_upvw
local var2_upvw = false
local function _() -- Line 3
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: var1_upvw (read and write)
	]]
	if not var2_upvw then
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 5
			return game:GetService("AudioFocusService")
		end)
		if pcall_result1 and pcall_result2_2 then
			var1_upvw = pcall_result2_2
		end
		var2_upvw = true
	end
	return var1_upvw
end
return function(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: var1_upvw (read and write)
	]]
	if not var2_upvw then
		local pcall_result1_2, pcall_result2 = pcall(function() -- Line 5
			return game:GetService("AudioFocusService")
		end)
		if pcall_result1_2 and pcall_result2 then
			var1_upvw = pcall_result2
		end
		var2_upvw = true
	end
	local var11_upvr = var1_upvw
	if var11_upvr then
		local any_GetFocusedContextId_result1_2_upvw = var11_upvr:GetFocusedContextId()
		arg1(any_GetFocusedContextId_result1_2_upvw)
		local function var13() -- Line 21
			--[[ Upvalues[3]:
				[1]: var11_upvr (readonly)
				[2]: any_GetFocusedContextId_result1_2_upvw (read and write)
				[3]: arg1 (readonly)
			]]
			local any_GetFocusedContextId_result1 = var11_upvr:GetFocusedContextId()
			if any_GetFocusedContextId_result1_2_upvw ~= any_GetFocusedContextId_result1 then
				any_GetFocusedContextId_result1_2_upvw = any_GetFocusedContextId_result1
				arg1(any_GetFocusedContextId_result1_2_upvw)
			end
		end
		var11_upvr.OnContextRegistered:Connect(var13)
		var11_upvr.OnContextUnregistered:Connect(var13)
		var11_upvr.OnDeafenVoiceAudio:Connect(var13)
		var11_upvr.OnUndeafenVoiceAudio:Connect(var13)
	end
end