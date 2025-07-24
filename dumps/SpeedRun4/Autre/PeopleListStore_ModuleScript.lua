-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:10
-- Luau version 6, Types version 3
-- Time taken: 0.002974 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local Signals_upvr = require(Parent.Signals)
local Players_upvr = game:GetService("Players")
local PeopleUtility_upvr = require(Parent_2.PeopleUtility)
local Cryo_upvr = require(Parent.Cryo)
local module = {}
local any_createComputed_result1_upvr = Signals_upvr.createComputed(function(arg1) -- Line 16
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: PeopleUtility_upvr (readonly)
		[3]: Signals_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	local any_sortPeople_result1_upvw = PeopleUtility_upvr.sortPeople(Players_upvr:GetPlayers())
	local any_createSignal_result1, any_createSignal_result2_upvr = Signals_upvr.createSignal(any_sortPeople_result1_upvw)
	local any_createSignal_result1_2, any_createSignal_result2_upvr_2 = Signals_upvr.createSignal({})
	local module_2_upvw = {}
	local module_upvw = {}
	local any_map_result1_upvw = Cryo_upvr.List.map(any_sortPeople_result1_upvw, function(arg1_2) -- Line 31
		return arg1_2.UserId
	end)
	local function fetchProfiles_upvr(arg1_3) -- Line 36, Named "fetchProfiles"
		--[[ Upvalues[4]:
			[1]: module_2_upvw (read and write)
			[2]: PeopleUtility_upvr (copied, readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: any_createSignal_result2_upvr_2 (readonly)
		]]
		local tbl_5 = {}
		for i, v in arg1_3 do
			local tostring_result1_5 = tostring(v)
			if not module_2_upvw[tostring_result1_5] then
				table.insert(tbl_5, tostring_result1_5)
			end
		end
		if 0 < #tbl_5 then
			i = Cryo_upvr
			i = PeopleUtility_upvr.getInExperienceCombinedName(tbl_5)
			module_2_upvw = i.Dictionary.join(module_2_upvw, i)
			any_createSignal_result2_upvr_2(module_2_upvw)
		end
	end
	local function fetchPlatformData_upvr(arg1_4) -- Line 59, Named "fetchPlatformData"
		--[[ Upvalues[3]:
			[1]: module_upvw (read and write)
			[2]: PeopleUtility_upvr (copied, readonly)
			[3]: Cryo_upvr (copied, readonly)
		]]
		local tbl_4 = {}
		for i_2, v_2 in arg1_4 do
			local tostring_result1_4 = tostring(v_2)
			if not module_upvw[tostring_result1_4] then
				table.insert(tbl_4, tostring_result1_4)
			end
		end
		if 0 < #tbl_4 then
			i_2 = Cryo_upvr
			i_2 = PeopleUtility_upvr.getPlatformData(tbl_4)
			module_upvw = i_2.Dictionary.join(module_upvw, i_2)
		end
	end
	fetchProfiles_upvr(any_map_result1_upvw)
	fetchPlatformData_upvr(any_map_result1_upvw)
	Players_upvr.PlayerAdded:Connect(function(arg1_5) -- Line 80, Named "addPerson"
		--[[ Upvalues[7]:
			[1]: any_sortPeople_result1_upvw (read and write)
			[2]: PeopleUtility_upvr (copied, readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: any_createSignal_result2_upvr (readonly)
			[5]: any_map_result1_upvw (read and write)
			[6]: fetchProfiles_upvr (readonly)
			[7]: fetchPlatformData_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [14] 14. Error Block 14 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [14.5]
		-- KONSTANTERROR: [14] 14. Error Block 14 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 6. Error Block 17 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [15.7]
		if nil then
			if #any_sortPeople_result1_upvw < nil + 1 then
				({})[1] = arg1_5
				-- KONSTANTWARNING: GOTO [67] #53
			end
			-- KONSTANTWARNING: GOTO [36] #30
		end
		-- KONSTANTERROR: [5] 6. Error Block 17 end (CF ANALYSIS FAILED)
	end)
	Players_upvr.PlayerRemoving:Connect(function(arg1_6) -- Line 115, Named "removePerson"
		--[[ Upvalues[7]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: any_sortPeople_result1_upvw (read and write)
			[3]: any_createSignal_result2_upvr (readonly)
			[4]: any_map_result1_upvw (read and write)
			[5]: module_2_upvw (read and write)
			[6]: module_upvw (read and write)
			[7]: any_createSignal_result2_upvr_2 (readonly)
		]]
		local any_filter_result1 = Cryo_upvr.List.filter(any_sortPeople_result1_upvw, function(arg1_7) -- Line 116
			--[[ Upvalues[1]:
				[1]: arg1_6 (readonly)
			]]
			local var27
			if arg1_7 == arg1_6 then
				var27 = false
			else
				var27 = true
			end
			return var27
		end)
		if #any_filter_result1 == #any_sortPeople_result1_upvw then
		else
			any_sortPeople_result1_upvw = any_filter_result1
			any_createSignal_result2_upvr(any_sortPeople_result1_upvw)
			local UserId_upvr = arg1_6.UserId
			any_map_result1_upvw = Cryo_upvr.List.filter(any_map_result1_upvw, function(arg1_8) -- Line 131
				--[[ Upvalues[1]:
					[1]: UserId_upvr (readonly)
				]]
				local var31
				if arg1_8 == UserId_upvr then
					var31 = false
				else
					var31 = true
				end
				return var31
			end)
			local tostring_result1_6 = tostring(UserId_upvr)
			module_2_upvw[tostring_result1_6] = nil
			module_upvw[tostring_result1_6] = nil
			any_createSignal_result2_upvr_2(module_2_upvw)
		end
	end)
	return {
		people = any_createSignal_result1;
		peopleProfiles = any_createSignal_result1_2;
		getProfile = function(arg1_9) -- Line 143, Named "getProfile"
			--[[ Upvalues[2]:
				[1]: module_2_upvw (read and write)
				[2]: fetchProfiles_upvr (readonly)
			]]
			local tostring_result1 = tostring(arg1_9)
			if not module_2_upvw[tostring_result1] then
				local tbl = {}
				tbl[1] = arg1_9
				fetchProfiles_upvr(tbl)
			end
			return module_2_upvw[tostring_result1]
		end;
		getPlatformName = function(arg1_10) -- Line 155, Named "getPlatformName"
			--[[ Upvalues[2]:
				[1]: module_upvw (read and write)
				[2]: fetchPlatformData_upvr (readonly)
			]]
			local tostring_result1_2 = tostring(arg1_10)
			if not module_upvw[tostring_result1_2] then
				local tbl_3 = {}
				tbl_3[1] = arg1_10
				fetchPlatformData_upvr(tbl_3)
			end
			return module_upvw[tostring_result1_2].platformName
		end;
		getPlatformProfileId = function(arg1_11) -- Line 167, Named "getPlatformProfileId"
			--[[ Upvalues[2]:
				[1]: module_upvw (read and write)
				[2]: fetchPlatformData_upvr (readonly)
			]]
			local tostring_result1_3 = tostring(arg1_11)
			if not module_upvw[tostring_result1_3] then
				local tbl_2 = {}
				tbl_2[1] = arg1_11
				fetchPlatformData_upvr(tbl_2)
			end
			return module_upvw[tostring_result1_3].platformProfileId
		end;
	}
end)
function module.get() -- Line 195
	--[[ Upvalues[1]:
		[1]: any_createComputed_result1_upvr (readonly)
	]]
	return any_createComputed_result1_upvr(false)
end
return module