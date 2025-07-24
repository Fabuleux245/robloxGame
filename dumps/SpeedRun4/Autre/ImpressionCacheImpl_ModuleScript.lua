-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:19
-- Luau version 6, Types version 3
-- Time taken: 0.007092 seconds

local Players_upvr = game:GetService("Players")
local AppStorageService_upvr_2 = game:GetService("AppStorageService")
local HttpService_upvr = game:GetService("HttpService")
local Cryo_upvr = require(script:FindFirstAncestor("SocialCommon").Parent.Cryo)
return function(arg1) -- Line 23, Named "ImpressionCacheImpl"
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: AppStorageService_upvr_2 (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	local isKeyAvailableInEngine_upvr = arg1.isKeyAvailableInEngine
	local dismissedValue_upvr = arg1.dismissedValue
	local appStorageKey_upvr = arg1.appStorageKey
	local PlayersService_upvr = arg1.PlayersService
	if not PlayersService_upvr then
		PlayersService_upvr = Players_upvr
	end
	local AppStorageService_upvr = arg1.AppStorageService
	if not AppStorageService_upvr then
		AppStorageService_upvr = AppStorageService_upvr_2
	end
	local function _() -- Line 31, Named "getLocalUserId"
		--[[ Upvalues[1]:
			[1]: PlayersService_upvr (readonly)
		]]
		local LocalPlayer = PlayersService_upvr.LocalPlayer
		if LocalPlayer and LocalPlayer.UserId and 0 < LocalPlayer.UserId then
			return tostring(LocalPlayer.UserId)
		end
		return nil
	end
	local function _(arg1_2) -- Line 40, Named "updateStoredValue"
		--[[ Upvalues[3]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: AppStorageService_upvr (readonly)
			[3]: appStorageKey_upvr (readonly)
		]]
		local pcall_result1_4, pcall_result2_3 = pcall(function() -- Line 41
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			return HttpService_upvr:JSONEncode(arg1_2)
		end)
		if pcall_result1_4 then
			AppStorageService_upvr:SetItem(appStorageKey_upvr, pcall_result2_3)
			AppStorageService_upvr:Flush()
		end
	end
	local function _() -- Line 50, Named "getStoredValue"
		--[[ Upvalues[3]:
			[1]: AppStorageService_upvr (readonly)
			[2]: appStorageKey_upvr (readonly)
			[3]: HttpService_upvr (copied, readonly)
		]]
		local var15_upvr = AppStorageService_upvr:GetItem(appStorageKey_upvr) or ""
		local pcall_result1_3, pcall_result2_7 = pcall(function() -- Line 53
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: var15_upvr (readonly)
			]]
			return HttpService_upvr:JSONDecode(var15_upvr)
		end)
		if pcall_result1_3 and type(pcall_result2_7) == "table" then
			return pcall_result2_7
		end
		return nil
	end
	local function setImpressionCountPerUser_upvr(arg1_3, arg2) -- Line 60, Named "setImpressionCountPerUser"
		--[[ Upvalues[4]:
			[1]: AppStorageService_upvr (readonly)
			[2]: appStorageKey_upvr (readonly)
			[3]: HttpService_upvr (copied, readonly)
			[4]: Cryo_upvr (copied, readonly)
		]]
		local var19_upvr = AppStorageService_upvr:GetItem(appStorageKey_upvr) or ""
		local pcall_result1_6, pcall_result2_4 = pcall(function() -- Line 53
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: var19_upvr (readonly)
			]]
			return HttpService_upvr:JSONDecode(var19_upvr)
		end)
		local var22
		if pcall_result1_6 and type(pcall_result2_4) == "table" then
			var22 = pcall_result2_4
		else
			var22 = nil
		end
		var19_upvr = Cryo_upvr.Dictionary.join
		local var23 = var22
		if not var23 then
			var23 = {}
		end
		local tbl = {}
		tbl[arg1_3] = arg2
		var19_upvr = var19_upvr(var23, tbl)
		local pcall_result1_2, pcall_result2_6 = pcall(function() -- Line 41
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: var19_upvr (readonly)
			]]
			return HttpService_upvr:JSONEncode(var19_upvr)
		end)
		if pcall_result1_2 then
			AppStorageService_upvr:SetItem(appStorageKey_upvr, pcall_result2_6)
			AppStorageService_upvr:Flush()
		end
	end
	local function _(arg1_4) -- Line 68, Named "getImpressionCountPerUser"
		--[[ Upvalues[3]:
			[1]: AppStorageService_upvr (readonly)
			[2]: appStorageKey_upvr (readonly)
			[3]: HttpService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var29_upvr = AppStorageService_upvr:GetItem(appStorageKey_upvr) or ""
		local pcall_result1_7, pcall_result2_2 = pcall(function() -- Line 53
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: var29_upvr (readonly)
			]]
			return HttpService_upvr:JSONDecode(var29_upvr)
		end)
		local var32
		if pcall_result1_7 and type(pcall_result2_2) == "table" then
			var32 = pcall_result2_2
		else
			var32 = nil
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var29_upvr = tonumber(var32[arg1_4])
			return var29_upvr
		end
		if not var32 or not var32[arg1_4] or not INLINED() then
			var29_upvr = 0
		end
		return var29_upvr
	end
	local function _(arg1_5) -- Line 76, Named "setValue"
		--[[ Upvalues[3]:
			[1]: PlayersService_upvr (readonly)
			[2]: isKeyAvailableInEngine_upvr (readonly)
			[3]: setImpressionCountPerUser_upvr (readonly)
		]]
		local LocalPlayer_4 = PlayersService_upvr.LocalPlayer
		local var34
		if LocalPlayer_4 and LocalPlayer_4.UserId and 0 < LocalPlayer_4.UserId then
			var34 = tostring(LocalPlayer_4.UserId)
		else
			var34 = nil
		end
		if isKeyAvailableInEngine_upvr and var34 then
			setImpressionCountPerUser_upvr(var34, arg1_5)
		end
	end
	return {
		getValue = function() -- Line 83, Named "getValue"
			--[[ Upvalues[6]:
				[1]: PlayersService_upvr (readonly)
				[2]: isKeyAvailableInEngine_upvr (readonly)
				[3]: AppStorageService_upvr (readonly)
				[4]: appStorageKey_upvr (readonly)
				[5]: HttpService_upvr (copied, readonly)
				[6]: dismissedValue_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local LocalPlayer_3 = PlayersService_upvr.LocalPlayer
			local var36
			if LocalPlayer_3 and LocalPlayer_3.UserId and 0 < LocalPlayer_3.UserId then
				var36 = tostring(LocalPlayer_3.UserId)
			else
				var36 = nil
			end
			if isKeyAvailableInEngine_upvr and var36 then
				local var38_upvr = AppStorageService_upvr:GetItem(appStorageKey_upvr) or ""
				local pcall_result1_8, pcall_result2_5 = pcall(function() -- Line 53
					--[[ Upvalues[2]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: var38_upvr (readonly)
					]]
					return HttpService_upvr:JSONDecode(var38_upvr)
				end)
				local var41
				if pcall_result1_8 and type(pcall_result2_5) == "table" then
					var41 = pcall_result2_5
				else
					var41 = nil
				end
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var38_upvr = tonumber(var41[var36])
					return var38_upvr
				end
				if not var41 or not var41[var36] or not INLINED_2() then
					var38_upvr = 0
				end
				return var38_upvr
			end
			return dismissedValue_upvr
		end;
		incrementValue = function() -- Line 93, Named "incrementValue"
			--[[ Upvalues[7]:
				[1]: PlayersService_upvr (readonly)
				[2]: isKeyAvailableInEngine_upvr (readonly)
				[3]: AppStorageService_upvr (readonly)
				[4]: appStorageKey_upvr (readonly)
				[5]: HttpService_upvr (copied, readonly)
				[6]: dismissedValue_upvr (readonly)
				[7]: setImpressionCountPerUser_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local LocalPlayer_5 = PlayersService_upvr.LocalPlayer
			local var51
			if LocalPlayer_5 and LocalPlayer_5.UserId and 0 < LocalPlayer_5.UserId then
				var51 = tostring(LocalPlayer_5.UserId)
			else
				var51 = nil
			end
			if isKeyAvailableInEngine_upvr and var51 then
				local var53_upvr = AppStorageService_upvr:GetItem(appStorageKey_upvr) or ""
				local pcall_result1_5, pcall_result2_8 = pcall(function() -- Line 53
					--[[ Upvalues[2]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: var53_upvr (readonly)
					]]
					return HttpService_upvr:JSONDecode(var53_upvr)
				end)
				local var56
				if pcall_result1_5 and type(pcall_result2_8) == "table" then
					var56 = pcall_result2_8
				else
					var56 = nil
				end
				local function INLINED_4() -- Internal function, doesn't exist in bytecode
					var53_upvr = tonumber(var56[var51])
					return var53_upvr
				end
				if not var56 or not var56[var51] or not INLINED_4() then
					var53_upvr = 0
				end
			else
			end
			var51 = PlayersService_upvr.LocalPlayer
			if var51 and var51.UserId then
				var56 = 0
				if var56 < var51.UserId then
					var56 = var51.UserId
					-- KONSTANTWARNING: GOTO [84] #68
				end
			end
			local var57
			var51 = isKeyAvailableInEngine_upvr
			if var51 and var57 then
				var51 = setImpressionCountPerUser_upvr
				var56 = dismissedValue_upvr + 1
				var51(var57, var56)
			end
		end;
		dismissValue = function() -- Line 97, Named "dismissValue"
			--[[ Upvalues[4]:
				[1]: dismissedValue_upvr (readonly)
				[2]: PlayersService_upvr (readonly)
				[3]: isKeyAvailableInEngine_upvr (readonly)
				[4]: setImpressionCountPerUser_upvr (readonly)
			]]
			local LocalPlayer_2 = PlayersService_upvr.LocalPlayer
			local var59
			if LocalPlayer_2 and LocalPlayer_2.UserId and 0 < LocalPlayer_2.UserId then
				var59 = tostring(LocalPlayer_2.UserId)
			else
				var59 = nil
			end
			if isKeyAvailableInEngine_upvr and var59 then
				setImpressionCountPerUser_upvr(var59, dismissedValue_upvr)
			end
		end;
	}
end