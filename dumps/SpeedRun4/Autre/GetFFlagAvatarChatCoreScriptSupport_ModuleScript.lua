-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:24:29
-- Luau version 6, Types version 3
-- Time taken: 0.002142 seconds

local var1_upvw
local var2_upvw = false
local function FindSelfieViewEnabled_upvr() -- Line 8, Named "FindSelfieViewEnabled"
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: var1_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var3
	if var2_upvw then
		return var1_upvw
	end
	var2_upvw = true
	var3 = "CoreGui"
	if game:GetService(var3):FindFirstChild("RobloxGui") then
		var3 = game:GetService(var3):FindFirstChild("RobloxGui"):FindFirstChild("Modules")
	else
		var3 = nil
	end
	if var3 then
		local _ = var3:FindFirstChild("SelfieView")
	else
	end
	if nil then
		local _ = nil:FindFirstChild("Flags")
	else
	end
	if nil then
	else
	end
	var1_upvw = nil
	return var1_upvw
end
local function _() -- Line 27, Named "GetFFlagSelfieViewEnabled"
	--[[ Upvalues[2]:
		[1]: FindSelfieViewEnabled_upvr (readonly)
		[2]: var1_upvw (read and write)
	]]
	if FindSelfieViewEnabled_upvr() and var1_upvw ~= nil then
		return require(var1_upvw)()
	end
	return false
end
return function() -- Line 36
	--[[ Upvalues[2]:
		[1]: FindSelfieViewEnabled_upvr (readonly)
		[2]: var1_upvw (read and write)
	]]
	local game_GetEngineFeature_result1 = game:GetEngineFeature("FacialAnimationStreaming2")
	if game_GetEngineFeature_result1 then
		local var9
		if FindSelfieViewEnabled_upvr() and var1_upvw ~= nil then
			var9 = require(var1_upvw)()
		else
			var9 = false
		end
		game_GetEngineFeature_result1 = not var9
	end
	return game_GetEngineFeature_result1
end