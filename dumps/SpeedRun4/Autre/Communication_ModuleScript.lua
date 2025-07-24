-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:51
-- Luau version 6, Types version 3
-- Time taken: 0.002355 seconds

local HttpService_upvr = game:GetService("HttpService")
local function var2_upvr() -- Line 13
end
local ExperienceService_upvr = game:GetService("ExperienceService")
local function var3_upvr(arg1, arg2, arg3, arg4) -- Line 15
	--[[ Upvalues[1]:
		[1]: ExperienceService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 16
		--[[ Upvalues[5]:
			[1]: ExperienceService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg4 (readonly)
		]]
		ExperienceService_upvr:ExecuteCrossExperienceCall(arg1, arg2, function(arg1_4) -- Line 17
			--[[ Upvalues[1]:
				[1]: arg3 (copied, readonly)
			]]
			if arg3 then
				arg3(arg1_4)
			end
		end, function(arg1_5) -- Line 21
			--[[ Upvalues[1]:
				[1]: arg4 (copied, readonly)
			]]
			print("[CrossExperience] Error executing call", arg1_5)
			if arg4 then
				arg4(arg1_5)
			end
		end)
	end)
	if not pcall_result1 then
		print("[CrossExperience] Error executing call pcall", arg1, pcall_result2_2)
		if arg4 then
			arg4("[CrossExperience] Error executing call pcall")
		end
	end
end
local function var23_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 71
	--[[ Upvalues[1]:
		[1]: var3_upvr (readonly)
	]]
	local tbl_3 = {}
	tbl_3.observerId = arg3
	tbl_3.experienceType = arg1
	var3_upvr(arg2.REMOVE_OBSERVER, tbl_3, arg4, arg5)
end
return {
	execute = var3_upvr;
	notify = function(arg1, arg2) -- Line 47
		--[[ Upvalues[2]:
			[1]: var2_upvr (readonly)
			[2]: var3_upvr (readonly)
		]]
		var3_upvr(arg1.NOTIFY, arg2, var2_upvr, var2_upvr)
	end;
	notifyWithCallbacks = function(arg1, arg2, arg3, arg4) -- Line 38
		--[[ Upvalues[1]:
			[1]: var3_upvr (readonly)
		]]
		var3_upvr(arg1.NOTIFY, arg2, arg3, arg4)
	end;
	addObserver = function(arg1, arg2, arg3) -- Line 67
		--[[ Upvalues[3]:
			[1]: var2_upvr (readonly)
			[2]: HttpService_upvr (readonly)
			[3]: var3_upvr (readonly)
		]]
		local any_GenerateGUID_result1_2 = HttpService_upvr:GenerateGUID(false)
		local tbl = {
			observerId = any_GenerateGUID_result1_2;
		}
		tbl.experienceType = arg1
		var3_upvr(arg2.ADD_OBSERVER, tbl, arg3, var2_upvr)
		return any_GenerateGUID_result1_2
	end;
	addObserverWithCallbacks = function(arg1, arg2, arg3, arg4, arg5) -- Line 51
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (readonly)
			[2]: var3_upvr (readonly)
		]]
		local any_GenerateGUID_result1 = HttpService_upvr:GenerateGUID(false)
		local tbl_2 = {
			observerId = any_GenerateGUID_result1;
		}
		tbl_2.experienceType = arg1
		var3_upvr(arg2.ADD_OBSERVER, tbl_2, arg3, arg5)
		return any_GenerateGUID_result1
	end;
	removeObserver = function(arg1, arg2, arg3) -- Line 85
		--[[ Upvalues[2]:
			[1]: var23_upvr (readonly)
			[2]: var2_upvr (readonly)
		]]
		return var23_upvr(arg1, arg2, arg3, var2_upvr, var2_upvr)
	end;
	removeObserverWithCallbacks = var23_upvr;
}