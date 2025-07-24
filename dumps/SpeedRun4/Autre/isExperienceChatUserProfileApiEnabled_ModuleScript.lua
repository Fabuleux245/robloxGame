-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:58
-- Luau version 6, Types version 3
-- Time taken: 0.006315 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local AppStorageService_upvr = game:GetService("AppStorageService")
game:DefineFastInt("ExperienceChatUserProfileApiRollout_v1", 0)
game:DefineFastFlag("ExperienceChatUserProfileApiEnabledForAll_v1", false)
local function _(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: AppStorageService_upvr (readonly)
	]]
	local var3 = AppStorageService_upvr
	if arg1 then
		var3 = arg1
	end
	local any_GetItem_result1 = var3:GetItem("AppInstallationId")
	local typeof_result1_2 = typeof(any_GetItem_result1)
	if typeof_result1_2 == "number" then
		return any_GetItem_result1
	end
	if typeof_result1_2 == "string" then
		if string.len(any_GetItem_result1) <= 0 then
			return nil
		end
		return tonumber(string.sub(any_GetItem_result1, -2))
	end
	return nil
end
local function _(arg1, arg2) -- Line 35
	--[[ Upvalues[1]:
		[1]: AppStorageService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local arg1_result1 = arg1()
	local var8 = AppStorageService_upvr
	if arg2 then
		var8 = arg2
	end
	local any_GetItem_result1_4 = var8:GetItem("AppInstallationId")
	local typeof_result1 = typeof(any_GetItem_result1_4)
	if typeof_result1 == "number" then
		local _ = any_GetItem_result1_4
	elseif typeof_result1 == "string" then
		if string.len(any_GetItem_result1_4) <= 0 then
		else
		end
	else
		local var12
	end
	if nil == nil then
		if 100 > arg1_result1 then
			var12 = false
		else
			var12 = true
		end
		return var12
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var13 = nil % 100
	if var13 + 1 > arg1_result1 then
	else
	end
	return true
end
local function _(arg1, arg2) -- Line 51
	--[[ Upvalues[1]:
		[1]: AppStorageService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local var15 = AppStorageService_upvr
	if arg2 then
		var15 = arg2
	end
	local any_GetItem_result1_3 = var15:GetItem("AppInstallationId")
	local typeof_result1_4 = typeof(any_GetItem_result1_3)
	if typeof_result1_4 == "number" then
		-- KONSTANTWARNING: GOTO [44] #36
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 16. Error Block 34 start (CF ANALYSIS FAILED)
	if typeof_result1_4 == "string" then
		if string.len(any_GetItem_result1_3) <= 0 then
			local _
		else
		end
	else
	end
	if nil == nil then
		if 100 > arg1() then
		else
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if nil % 100 + 1 > arg1() then
		else
		end
	end
	local var20_upvr = true
	do
		return function() -- Line 57
			--[[ Upvalues[1]:
				[1]: var20_upvr (readonly)
			]]
			return var20_upvr
		end
	end
	-- KONSTANTERROR: [18] 16. Error Block 34 end (CF ANALYSIS FAILED)
end
local function var21() -- Line 62
	return game:GetFastInt("ExperienceChatUserProfileApiRollout_v1")
end
local function _() -- Line 66
	return game:GetFastFlag("ExperienceChatUserProfileApiEnabledForAll_v1")
end
local any_GetItem_result1_2 = AppStorageService_upvr:GetItem("AppInstallationId")
local typeof_result1_3 = typeof(any_GetItem_result1_2)
local var25
if typeof_result1_3 == "number" then
	var25 = any_GetItem_result1_2
elseif typeof_result1_3 == "string" then
	if string.len(any_GetItem_result1_2) <= 0 then
		var25 = nil
	else
		var25 = tonumber(string.sub(any_GetItem_result1_2, -2))
	end
else
	var25 = nil
end
if var25 == nil then
	if 100 > var21() then
	else
	end
else
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if var25 % 100 + 1 > var21() then
	else
	end
end
local var28_upvr = true
local function var26_upvr() -- Line 57
	--[[ Upvalues[1]:
		[1]: var28_upvr (readonly)
	]]
	return var28_upvr
end
function var28_upvr() -- Line 72
	--[[ Upvalues[1]:
		[1]: var26_upvr (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("ExperienceChatUserProfileApiEnabledForAll_v1")
	if not game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = var26_upvr()
	end
	return game_GetFastFlag_result1
end
return var28_upvr