-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:58
-- Luau version 6, Types version 3
-- Time taken: 0.006197 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local AppStorageService_upvr = game:GetService("AppStorageService")
local HttpService_upvr = game:GetService("HttpService")
local Players = game:GetService("Players")
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("InGameMenuStateStorageKey")
local var5_upvw
local var6_upvw = false
local var7
while not var7 do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	var7 = Players.LocalPlayer
end
if var7 then
else
end
local var8_upvr = "player_"..tostring(0)
local function initStore_upvr() -- Line 27, Named "initStore"
	--[[ Upvalues[2]:
		[1]: var5_upvw (read and write)
		[2]: var8_upvr (readonly)
	]]
	if var5_upvw.LocalPlayer == nil then
		var5_upvw.LocalPlayer = {}
	end
	if var5_upvw.LocalPlayer[var8_upvr] == nil then
		var5_upvw.LocalPlayer[var8_upvr] = {}
	end
	if var5_upvw.AnyPlayer == nil then
		var5_upvw.AnyPlayer = {}
	end
end
local function localPlayerSelector_upvr(arg1) -- Line 39, Named "localPlayerSelector"
	--[[ Upvalues[1]:
		[1]: var8_upvr (readonly)
	]]
	if arg1 and arg1.LocalPlayer and arg1.LocalPlayer[var8_upvr] then
		return arg1.LocalPlayer[var8_upvr]
	end
	return arg1
end
local function anyPlayerSelector_upvr(arg1) -- Line 46, Named "anyPlayerSelector"
	if arg1 and arg1.AnyPlayer then
		return arg1.AnyPlayer
	end
	return arg1
end
local function loadStore_upvr() -- Line 53, Named "loadStore"
	--[[ Upvalues[6]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: AppStorageService_upvr (readonly)
		[3]: var6_upvw (read and write)
		[4]: HttpService_upvr (readonly)
		[5]: var5_upvw (read and write)
		[6]: initStore_upvr (readonly)
	]]
	if not game_GetEngineFeature_result1_upvr then
	else
		local pcall_result1, pcall_result2_upvr = pcall(function() -- Line 57
			--[[ Upvalues[1]:
				[1]: AppStorageService_upvr (copied, readonly)
			]]
			return AppStorageService_upvr:GetItem("InGameMenuState")
		end)
		if pcall_result1 then
			var6_upvw = true
			if 0 < #pcall_result2_upvr then
				local pcall_result1_2, pcall_result2 = pcall(function() -- Line 63
					--[[ Upvalues[2]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: pcall_result2_upvr (readonly)
					]]
					return HttpService_upvr:JSONDecode(pcall_result2_upvr)
				end)
				if pcall_result1_2 then
					var5_upvw = pcall_result2
				else
					var5_upvw = {}
				end
			else
				var5_upvw = {}
			end
			initStore_upvr()
		end
	end
end
local function saveStore_upvr() -- Line 78, Named "saveStore"
	--[[ Upvalues[5]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: var6_upvw (read and write)
		[3]: HttpService_upvr (readonly)
		[4]: var5_upvw (read and write)
		[5]: AppStorageService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 4. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 4. Error Block 3 end (CF ANALYSIS FAILED)
end
local function deepCopy_upvr(arg1) -- Line 101, Named "deepCopy"
	--[[ Upvalues[1]:
		[1]: deepCopy_upvr (readonly)
	]]
	if type(arg1) ~= "table" then
		return arg1
	end
	for i, v in pairs(arg1) do
		({})[i] = deepCopy_upvr(v)
		local var23
	end
	return var23
end
local function _(arg1, arg2, arg3) -- Line 113, Named "store"
	--[[ Upvalues[5]:
		[1]: var6_upvw (read and write)
		[2]: loadStore_upvr (readonly)
		[3]: var5_upvw (read and write)
		[4]: deepCopy_upvr (readonly)
		[5]: saveStore_upvr (readonly)
	]]
	if not var6_upvw then
		loadStore_upvr()
	end
	local var24
	if var24 then
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var24 = arg3(var5_upvw)
			return var24
		end
		if not arg3 or not INLINED() then
			var24 = var5_upvw
		end
		var24[arg1] = deepCopy_upvr(arg2)
		if var24[arg1] ~= var24[arg1] then
			saveStore_upvr()
		end
	end
end
local function _(arg1, arg2) -- Line 127, Named "load"
	--[[ Upvalues[4]:
		[1]: var6_upvw (read and write)
		[2]: loadStore_upvr (readonly)
		[3]: var5_upvw (read and write)
		[4]: deepCopy_upvr (readonly)
	]]
	if not var6_upvw then
		loadStore_upvr()
	end
	local var25
	if var25 then
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var25 = arg2(var5_upvw)
			return var25
		end
		if not arg2 or not INLINED_2() then
			var25 = var5_upvw
		end
		if var25 then
			return deepCopy_upvr(var25[arg1])
		end
	end
	return nil
end
local FFlagEnableUnibarFtuxTooltips_upvr = require(game:GetService("CorePackages").Workspace.Packages.SharedFlags).FFlagEnableUnibarFtuxTooltips
local Constants_upvr = require(script:FindFirstAncestor("ChromeShared").Unibar.Constants)
return {
	isEnabled = function() -- Line 171, Named "isEnabled"
		--[[ Upvalues[1]:
			[1]: game_GetEngineFeature_result1_upvr (readonly)
		]]
		return game_GetEngineFeature_result1_upvr
	end;
	storeForLocalPlayer = function(arg1, arg2) -- Line 174, Named "storeForLocalPlayer"
		--[[ Upvalues[6]:
			[1]: localPlayerSelector_upvr (readonly)
			[2]: var6_upvw (read and write)
			[3]: loadStore_upvr (readonly)
			[4]: var5_upvw (read and write)
			[5]: deepCopy_upvr (readonly)
			[6]: saveStore_upvr (readonly)
		]]
		if not var6_upvw then
			loadStore_upvr()
		end
		local var32
		if var32 then
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var32 = localPlayerSelector_upvr(var5_upvw)
				return var32
			end
			if not localPlayerSelector_upvr or not INLINED_4() then
				var32 = var5_upvw
			end
			var32[arg1] = deepCopy_upvr(arg2)
			if var32[arg1] ~= var32[arg1] then
				saveStore_upvr()
			end
		end
	end;
	loadForLocalPlayer = function(arg1) -- Line 177, Named "loadForLocalPlayer"
		--[[ Upvalues[5]:
			[1]: localPlayerSelector_upvr (readonly)
			[2]: var6_upvw (read and write)
			[3]: loadStore_upvr (readonly)
			[4]: var5_upvw (read and write)
			[5]: deepCopy_upvr (readonly)
		]]
		if not var6_upvw then
			loadStore_upvr()
		end
		local var34
		if var34 then
			local function INLINED_5() -- Internal function, doesn't exist in bytecode
				var34 = localPlayerSelector_upvr(var5_upvw)
				return var34
			end
			if not localPlayerSelector_upvr or not INLINED_5() then
				var34 = var5_upvw
			end
			if var34 then
				return deepCopy_upvr(var34[arg1])
			end
		end
		return nil
	end;
	storeForAnyPlayer = function(arg1, arg2) -- Line 181, Named "storeForAnyPlayer"
		--[[ Upvalues[6]:
			[1]: anyPlayerSelector_upvr (readonly)
			[2]: var6_upvw (read and write)
			[3]: loadStore_upvr (readonly)
			[4]: var5_upvw (read and write)
			[5]: deepCopy_upvr (readonly)
			[6]: saveStore_upvr (readonly)
		]]
		if not var6_upvw then
			loadStore_upvr()
		end
		local var36
		if var36 then
			local function INLINED_6() -- Internal function, doesn't exist in bytecode
				var36 = anyPlayerSelector_upvr(var5_upvw)
				return var36
			end
			if not anyPlayerSelector_upvr or not INLINED_6() then
				var36 = var5_upvw
			end
			var36[arg1] = deepCopy_upvr(arg2)
			if var36[arg1] ~= var36[arg1] then
				saveStore_upvr()
			end
		end
	end;
	loadForAnyPlayer = function(arg1) -- Line 184, Named "loadForAnyPlayer"
		--[[ Upvalues[5]:
			[1]: anyPlayerSelector_upvr (readonly)
			[2]: var6_upvw (read and write)
			[3]: loadStore_upvr (readonly)
			[4]: var5_upvw (read and write)
			[5]: deepCopy_upvr (readonly)
		]]
		if not var6_upvw then
			loadStore_upvr()
		end
		local var38
		if var38 then
			local function INLINED_7() -- Internal function, doesn't exist in bytecode
				var38 = anyPlayerSelector_upvr(var5_upvw)
				return var38
			end
			if not anyPlayerSelector_upvr or not INLINED_7() then
				var38 = var5_upvw
			end
			if var38 then
				return deepCopy_upvr(var38[arg1])
			end
		end
		return nil
	end;
	clearCache = function() -- Line 188, Named "clearCache"
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: var5_upvw (read and write)
		]]
		var6_upvw = false
		var5_upvw = nil
	end;
	getValue = function(arg1) -- Line 140, Named "getValue"
		--[[ Upvalues[6]:
			[1]: FFlagEnableUnibarFtuxTooltips_upvr (readonly)
			[2]: localPlayerSelector_upvr (readonly)
			[3]: var6_upvw (read and write)
			[4]: loadStore_upvr (readonly)
			[5]: var5_upvw (read and write)
			[6]: deepCopy_upvr (readonly)
		]]
		if FFlagEnableUnibarFtuxTooltips_upvr then
			if not var6_upvw then
				loadStore_upvr()
			end
			local var28
			if var28 then
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var28 = localPlayerSelector_upvr(var5_upvw)
					return var28
				end
				if not localPlayerSelector_upvr or not INLINED_3() then
					var28 = var5_upvw
				end
				if var28 then
					return deepCopy_upvr(var28[arg1])
				end
			end
			return nil
		end
		return nil
	end;
	getUniversesExposedTo = function(arg1) -- Line 148, Named "getUniversesExposedTo"
		--[[ Upvalues[5]:
			[1]: localPlayerSelector_upvr (readonly)
			[2]: var6_upvw (read and write)
			[3]: loadStore_upvr (readonly)
			[4]: var5_upvw (read and write)
			[5]: deepCopy_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 2 start (CF ANALYSIS FAILED)
		loadStore_upvr()
		-- KONSTANTERROR: [3] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 6. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 6. Error Block 3 end (CF ANALYSIS FAILED)
	end;
	getNumUniversesExposedTo = function(arg1) -- Line 165, Named "getNumUniversesExposedTo"
		--[[ Upvalues[5]:
			[1]: localPlayerSelector_upvr (readonly)
			[2]: var6_upvw (read and write)
			[3]: loadStore_upvr (readonly)
			[4]: var5_upvw (read and write)
			[5]: deepCopy_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 2 start (CF ANALYSIS FAILED)
		loadStore_upvr()
		-- KONSTANTERROR: [3] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 6. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 6. Error Block 3 end (CF ANALYSIS FAILED)
	end;
	addUniverseToExposureList = function(arg1, arg2) -- Line 156, Named "addUniverseToExposureList"
		--[[ Upvalues[7]:
			[1]: localPlayerSelector_upvr (readonly)
			[2]: var6_upvw (read and write)
			[3]: loadStore_upvr (readonly)
			[4]: var5_upvw (read and write)
			[5]: deepCopy_upvr (readonly)
			[6]: Constants_upvr (readonly)
			[7]: saveStore_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [3] 4. Error Block 2 start (CF ANALYSIS FAILED)
		loadStore_upvr()
		-- KONSTANTERROR: [3] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 6. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 6. Error Block 3 end (CF ANALYSIS FAILED)
	end;
}