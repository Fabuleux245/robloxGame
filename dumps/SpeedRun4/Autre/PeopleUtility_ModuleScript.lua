-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:11
-- Luau version 6, Types version 3
-- Time taken: 0.006454 seconds

local Parent = script.Parent.Parent
local Signals_upvr = require(Parent.Signals)
local UserProfiles_upvr = require(Parent.UserProfiles)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnablePlatformName", false)
local GetFFlagUseUserProfileStore_upvr = require(Parent.SharedFlags).GetFFlagUseUserProfileStore
local pcall_result1, pcall_result2_upvr = pcall(function() -- Line 18
	return game:GetService("PlatformFriendsService")
end)
local var9_upvw
local var10_upvw
local var11_upvw
if not GetFFlagUseUserProfileStore_upvr() then
	var9_upvw = require(Parent.RobloxApolloClient).initializeApolloClient({})
	var10_upvw = UserProfiles_upvr.Selectors.getInExperienceCombinedNameFromId
else
	var11_upvw = UserProfiles_upvr.Stores.UserProfileStore
end
local Players_upvr = game:GetService("Players")
local function comparePeople_upvr(arg1, arg2) -- Line 178, Named "comparePeople"
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local LocalPlayer = Players_upvr.LocalPlayer
	local any_lower_result1 = arg1.Name:lower()
	local var87
	if arg1 == LocalPlayer then
		any_lower_result1 = ' '
	end
	if arg2 == LocalPlayer then
		var87 = ' '
	end
	if any_lower_result1 >= var87 then
	else
	end
	return true
end
return {
	getInExperienceCombinedName = function(arg1) -- Line 34, Named "getInExperienceCombinedName"
		--[[ Upvalues[6]:
			[1]: GetFFlagUseUserProfileStore_upvr (readonly)
			[2]: var11_upvw (read and write)
			[3]: Signals_upvr (readonly)
			[4]: var9_upvw (read and write)
			[5]: UserProfiles_upvr (readonly)
			[6]: var10_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if GetFFlagUseUserProfileStore_upvr() then
			for i, v in var11_upvw.get().fetchNamesByUserIds(arg1)(false).data do
				({})[arg1[i]] = v.names.getInExperienceCombinedName
				local var29
			end
			return var29
		end
		local tbl_4_upvr = {}
		for _, _ in arg1 do
			local any_createSignal_result1_3, any_createSignal_result2_2 = Signals_upvr.createSignal("")
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[i] = any_createSignal_result1_3
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_4_upvr[i] = any_createSignal_result2_2
			local var34
		end
		local tbl_3 = {
			query = UserProfiles_upvr.Queries.userProfilesInExperienceNamesByUserIds;
		}
		local tbl_5 = {}
		tbl_5.userIds = arg1
		tbl_3.variables = tbl_5
		var9_upvw:query(tbl_3):andThen(function(arg1_2) -- Line 66
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: var10_upvw (copied, read and write)
				[3]: tbl_4_upvr (readonly)
			]]
			for _, v_3 in arg1 do
				if tbl_4_upvr[v_3] then
					tbl_4_upvr[v_3](var10_upvw(arg1_2.data, v_3))
				end
			end
		end):catch(function() -- Line 74
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: tbl_4_upvr (readonly)
			]]
			for _, v_4 in arg1 do
				if tbl_4_upvr[v_4] then
					tbl_4_upvr[v_4]("")
				end
			end
		end)
		return var34
	end;
	getPlatformData = function(arg1) -- Line 86, Named "getPlatformData"
		--[[ Upvalues[6]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
			[2]: Signals_upvr (readonly)
			[3]: GetFFlagUseUserProfileStore_upvr (readonly)
			[4]: var11_upvw (read and write)
			[5]: var9_upvw (read and write)
			[6]: UserProfiles_upvr (readonly)
		]]
		if not game_DefineFastFlag_result1_upvr then
			for _, v_5 in arg1 do
				({})[v_5] = {
					platformName = Signals_upvr.createSignal("");
					platformProfileId = Signals_upvr.createSignal("");
				}
				local var57
			end
			return var57
		end
		if GetFFlagUseUserProfileStore_upvr() then
			for i_6, v_6 in var11_upvw.get().fetchNamesByUserIds(arg1)(false).data do
				({})[arg1[i_6]] = {
					platformName = v_6.names.getPlatformName;
					platformProfileId = v_6.getPlatformProfileId;
				}
				local var60
			end
			return var60
		end
		local tbl_6_upvr = {}
		local tbl = {
			query = UserProfiles_upvr.Queries.userProfilesInExperienceNamesByUserIds;
		}
		local tbl_2 = {}
		tbl_2.userIds = arg1
		tbl.variables = tbl_2
		var9_upvw:query(tbl):andThen(function(arg1_3) -- Line 125
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: tbl_6_upvr (readonly)
			]]
			for i_7, v_7 in arg1 do
				local var67 = arg1_3.data.userProfiles[i_7]
				if var67 and tbl_6_upvr[v_7] then
					tbl_6_upvr[v_7].platformNameSetter(var67.names.platformName or "")
					tbl_6_upvr[v_7].platformProfileIdSetter(var67.platformProfileId or "")
				end
			end
		end):catch(function() -- Line 136
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: tbl_6_upvr (readonly)
			]]
			for _, v_8 in arg1 do
				if tbl_6_upvr[v_8] then
					tbl_6_upvr[v_8].platformNameSetter("")
					tbl_6_upvr[v_8].platformProfileIdSetter("")
				end
			end
		end)
		for _, v_9 in arg1 do
			local any_createSignal_result1_2, any_createSignal_result2 = Signals_upvr.createSignal("")
			local any_createSignal_result1, any_createSignal_result2_3 = Signals_upvr.createSignal("")
			tbl_6_upvr[v_9] = {
				platformName = any_createSignal_result1_2;
				platformProfileId = any_createSignal_result1;
				platformNameSetter = any_createSignal_result2;
				platformProfileIdSetter = any_createSignal_result2_3;
			}
			local var76
		end
		return var76
	end;
	canShowPlatformProfile = function(arg1) -- Line 162, Named "canShowPlatformProfile"
		--[[ Upvalues[2]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
			[2]: pcall_result2_upvr (readonly)
		]]
		local var82 = game_DefineFastFlag_result1_upvr
		if var82 then
			var82 = game:GetEngineFeature("PlatformFriendsService")
			if var82 then
				var82 = game:GetEngineFeature("PlatformFriendsProfile")
				if var82 then
					var82 = pcall_result2_upvr
					if var82 then
						var82 = pcall_result2_upvr:IsProfileEnabled()
						if var82 then
							var82 = arg1
							if var82 then
								if arg1 == "" then
									var82 = false
								else
									var82 = true
								end
							end
						end
					end
				end
			end
		end
		return var82
	end;
	showPlatformProfile = function(arg1) -- Line 172, Named "showPlatformProfile"
		--[[ Upvalues[2]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
			[2]: pcall_result2_upvr (readonly)
		]]
		local var83 = game_DefineFastFlag_result1_upvr
		if var83 then
			var83 = game:GetEngineFeature("PlatformFriendsService")
			if var83 then
				var83 = game:GetEngineFeature("PlatformFriendsProfile")
				if var83 then
					var83 = pcall_result2_upvr
					if var83 then
						var83 = pcall_result2_upvr:IsProfileEnabled()
						if var83 then
							var83 = arg1
							if var83 then
								if arg1 == "" then
									var83 = false
								else
									var83 = true
								end
							end
						end
					end
				end
			end
		end
		if var83 then
			pcall_result2_upvr:ShowProfile(arg1)
		end
	end;
	comparePeople = comparePeople_upvr;
	sortPeople = function(arg1) -- Line 195, Named "sortPeople"
		--[[ Upvalues[1]:
			[1]: comparePeople_upvr (readonly)
		]]
		table.sort(arg1, comparePeople_upvr)
		return arg1
	end;
}