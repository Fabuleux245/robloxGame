-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:00
-- Luau version 6, Types version 3
-- Time taken: 0.001526 seconds

local var1_upvw
local var2_upvw = false
local function _() -- Line 7
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: var1_upvw (read and write)
	]]
	if not var2_upvw then
		local pcall_result1, pcall_result2 = pcall(function() -- Line 9
			return game:GetService("AudioFocusService")
		end)
		if pcall_result1 and pcall_result2 then
			var1_upvw = pcall_result2
		end
		var2_upvw = true
	end
	return var1_upvw
end
local Constants_upvr = require(script:FindFirstAncestor("CrossExperience").Constants)
return function() -- Line 20
	--[[ Upvalues[3]:
		[1]: var2_upvw (read and write)
		[2]: var1_upvw (read and write)
		[3]: Constants_upvr (readonly)
	]]
	local var9
	if not var9 then
		var9 = pcall
		local function var10() -- Line 9
			return game:GetService("AudioFocusService")
		end
		var9 = var9(var10)
		local var9_result1, var9_result2 = var9(var10)
		if var9_result1 and var9_result2 then
			var1_upvw = var9_result2
		end
		var2_upvw = true
	end
	local var13 = var1_upvw
	if not var13 then
		var9_result1 = false
		return var9_result1
	end
	if var13:GetFocusedContextId() ~= Constants_upvr.AUDIO_FOCUS_MANAGEMENT.CEV.CONTEXT_ID then
		var9_result1 = false
	else
		var9_result1 = true
	end
	return var9_result1
end