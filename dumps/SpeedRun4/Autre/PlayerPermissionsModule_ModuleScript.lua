-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:29
-- Luau version 6, Types version 3
-- Time taken: 0.010013 seconds

local module = {}
local Players_upvr = game:GetService("Players")
local FFlagInExperienceUserProfileSettingsEnabled_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Common.Flags.FFlagInExperienceUserProfileSettingsEnabled)
local tbl_upvr_2 = {}
tbl_upvr_2.__index = tbl_upvr_2
function tbl_upvr_2.new(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr_2)
	setmetatable_result1.player = arg1
	setmetatable_result1.pendingGroupData = {}
	setmetatable_result1.pendingCanManage = {}
	setmetatable_result1.pendingProfileSettings = {}
	setmetatable_result1.groupData = nil
	setmetatable_result1.canManage = nil
	setmetatable_result1.profileSettings = nil
	return setmetatable_result1
end
function tbl_upvr_2.getGroupDataAsync(arg1) -- Line 26
	if arg1.groupData then
		return arg1.groupData
	end
	table.insert(arg1.pendingGroupData, coroutine.running())
	coroutine.yield()
	return arg1.groupData
end
function tbl_upvr_2.getCanManageAsync(arg1) -- Line 37
	if arg1.canManage ~= nil then
		return arg1.canManage
	end
	table.insert(arg1.pendingCanManage, coroutine.running())
	coroutine.yield()
	return arg1.canManage
end
function tbl_upvr_2.getProfileSettingsAsync(arg1) -- Line 48
	if arg1.profileSettings ~= nil then
		return arg1.profileSettings
	end
	table.insert(arg1.pendingProfileSettings, coroutine.running())
	coroutine.yield()
	return arg1.profileSettings
end
function tbl_upvr_2.setGroupData(arg1, arg2) -- Line 59
	arg1.groupData = arg2
	arg1.pendingGroupData = {}
	for _, v in pairs(arg1.pendingGroupData) do
		coroutine.resume(v)
	end
end
function tbl_upvr_2.setCanManage(arg1, arg2) -- Line 68
	if arg2 then
	else
	end
	arg1.canManage = false
	arg1.pendingCanManage = {}
	for _, v_2 in pairs(arg1.pendingCanManage) do
		coroutine.resume(v_2)
	end
end
function tbl_upvr_2.setProfileSettings(arg1, arg2) -- Line 78
	arg1.profileSettings = arg2
	arg1.pendingProfileSettings = {}
	for _, v_3 in pairs(arg1.pendingProfileSettings) do
		coroutine.resume(v_3)
	end
end
function tbl_upvr_2.destroy(arg1) -- Line 87
	--[[ Upvalues[1]:
		[1]: FFlagInExperienceUserProfileSettingsEnabled_upvr (readonly)
	]]
	for _, v_4 in pairs(arg1.pendingGroupData) do
		coroutine.resume(v_4)
	end
	for _, v_5 in pairs(arg1.pendingCanManage) do
		coroutine.resume(v_5)
	end
	if FFlagInExperienceUserProfileSettingsEnabled_upvr then
		for _, v_6 in pairs(arg1.pendingProfileSettings) do
			coroutine.resume(v_6)
		end
	end
end
local tbl_upvr_3 = {}
local function _(arg1) -- Line 105, Named "getPlayerInfo"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	local var40
	if not var40 and arg1.Parent ~= nil then
		var40 = tbl_upvr_2.new(arg1)
		tbl_upvr_3[arg1] = var40
	end
	return var40
end
spawn(function() -- Line 114
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: tbl_upvr_2 (readonly)
	]]
	game:GetService("RobloxReplicatedStorage"):WaitForChild("NewPlayerGroupDetails", math.huge).OnClientEvent:Connect(function(...) -- Line 118
		--[[ Upvalues[3]:
			[1]: Players_upvr (copied, readonly)
			[2]: tbl_upvr_3 (copied, readonly)
			[3]: tbl_upvr_2 (copied, readonly)
		]]
		local args_list = {...}
		if #args_list == 1 then
			for i_7, v_7 in pairs(args_list[1]) do
				local any_GetPlayerByUserId_result1_2 = Players_upvr:GetPlayerByUserId(tonumber(i_7))
				if any_GetPlayerByUserId_result1_2 then
					local var52
					if not var52 and any_GetPlayerByUserId_result1_2.Parent ~= nil then
						var52 = tbl_upvr_2.new(any_GetPlayerByUserId_result1_2)
						tbl_upvr_3[any_GetPlayerByUserId_result1_2] = var52
					end
					local var53 = var52
					if var53 then
						var52 = var53:setGroupData
						var52(v_7)
					end
				end
			end
		else
			local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(tonumber(args_list[1]))
			if any_GetPlayerByUserId_result1 then
				local var55
				if not var55 and any_GetPlayerByUserId_result1.Parent ~= nil then
					var55 = tbl_upvr_2.new(any_GetPlayerByUserId_result1)
					tbl_upvr_3[any_GetPlayerByUserId_result1] = var55
				end
				local var56 = var55
				if var56 then
					var55 = var56:setGroupData
					var55(args_list[2])
				end
			end
		end
	end)
end)
coroutine.wrap(function() -- Line 149
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: tbl_upvr_2 (readonly)
	]]
	game:GetService("RobloxReplicatedStorage"):WaitForChild("NewPlayerCanManageDetails", math.huge).OnClientEvent:Connect(function(arg1, arg2) -- Line 155
		--[[ Upvalues[3]:
			[1]: Players_upvr (copied, readonly)
			[2]: tbl_upvr_3 (copied, readonly)
			[3]: tbl_upvr_2 (copied, readonly)
		]]
		local any_GetPlayerByUserId_result1_4 = Players_upvr:GetPlayerByUserId(tonumber(arg1))
		if any_GetPlayerByUserId_result1_4 then
			local var60
			if not var60 and any_GetPlayerByUserId_result1_4.Parent ~= nil then
				var60 = tbl_upvr_2.new(any_GetPlayerByUserId_result1_4)
				tbl_upvr_3[any_GetPlayerByUserId_result1_4] = var60
			end
			local var61 = var60
			if var61 then
				var60 = var61:setCanManage
				var60(arg2)
			end
		end
	end)
end)()
if FFlagInExperienceUserProfileSettingsEnabled_upvr then
	coroutine.wrap(function() -- Line 167
		--[[ Upvalues[3]:
			[1]: Players_upvr (readonly)
			[2]: tbl_upvr_3 (readonly)
			[3]: tbl_upvr_2 (readonly)
		]]
		game:GetService("RobloxReplicatedStorage"):WaitForChild("SendPlayerProfileSettings", math.huge).OnClientEvent:Connect(function(arg1, arg2) -- Line 173
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: tbl_upvr_3 (copied, readonly)
				[3]: tbl_upvr_2 (copied, readonly)
			]]
			local any_GetPlayerByUserId_result1_3 = Players_upvr:GetPlayerByUserId(tonumber(arg1))
			if any_GetPlayerByUserId_result1_3 then
				local var65
				if not var65 and any_GetPlayerByUserId_result1_3.Parent ~= nil then
					var65 = tbl_upvr_2.new(any_GetPlayerByUserId_result1_3)
					tbl_upvr_3[any_GetPlayerByUserId_result1_3] = var65
				end
				local var66 = var65
				if var66 then
					var65 = var66:setProfileSettings
					var65(arg2)
				end
			end
		end)
	end)()
end
Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 185
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	if tbl_upvr_3[arg1] then
		tbl_upvr_3[arg1] = nil
		tbl_upvr_3[arg1]:destroy()
	end
end)
local function _(arg1) -- Line 193, Named "NewInGroupFunctionFactory"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	return function(arg1_2) -- Line 194
		--[[ Upvalues[3]:
			[1]: tbl_upvr_3 (copied, readonly)
			[2]: tbl_upvr_2 (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local var71
		if not var71 and arg1_2.Parent ~= nil then
			var71 = tbl_upvr_2.new(arg1_2)
			tbl_upvr_3[arg1_2] = var71
		end
		if var71 then
			var71 = var71:getGroupDataAsync()
			if var71 and var71[arg1] then
				return true
			end
		end
		var71 = false
		return var71
	end
end
local tbl_upvr = {}
local IsPlaceOwnerFunctionFactory_upvr = "SpanishLocalizationExpert"
local CanPlayerManagePlace_upvr = "BrazilianLocalizationExpert"
function IsPlaceOwnerFunctionFactory_upvr(arg1) -- Line 194
	--[[ Upvalues[3]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: CanPlayerManagePlace_upvr (readonly)
	]]
	local var80
	if not var80 and arg1.Parent ~= nil then
		var80 = tbl_upvr_2.new(arg1)
		tbl_upvr_3[arg1] = var80
	end
	if var80 then
		var80 = var80:getGroupDataAsync()
		if var80 and var80[CanPlayerManagePlace_upvr] then
			return true
		end
	end
	var80 = false
	return var80
end
local IsPlayerInExperienceNameEnabled_upvr = "FrenchLocalizationExpert"
function CanPlayerManagePlace_upvr(arg1) -- Line 194
	--[[ Upvalues[3]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: IsPlayerInExperienceNameEnabled_upvr (readonly)
	]]
	local var84
	if not var84 and arg1.Parent ~= nil then
		var84 = tbl_upvr_2.new(arg1)
		tbl_upvr_3[arg1] = var84
	end
	if var84 then
		var84 = var84:getGroupDataAsync()
		if var84 and var84[IsPlayerInExperienceNameEnabled_upvr] then
			return true
		end
	end
	var84 = false
	return var84
end
local var112_upvr = "GermanLocalizationExpert"
function IsPlayerInExperienceNameEnabled_upvr(arg1) -- Line 194
	--[[ Upvalues[3]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: var112_upvr (readonly)
	]]
	local var88
	if not var88 and arg1.Parent ~= nil then
		var88 = tbl_upvr_2.new(arg1)
		tbl_upvr_3[arg1] = var88
	end
	if var88 then
		var88 = var88:getGroupDataAsync()
		if var88 and var88[var112_upvr] then
			return true
		end
	end
	var88 = false
	return var88
end
tbl_upvr[1] = function(arg1) -- Line 194
	--[[ Upvalues[3]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: IsPlaceOwnerFunctionFactory_upvr (readonly)
	]]
	local var76
	if not var76 and arg1.Parent ~= nil then
		var76 = tbl_upvr_2.new(arg1)
		tbl_upvr_3[arg1] = var76
	end
	if var76 then
		var76 = var76:getGroupDataAsync()
		if var76 and var76[IsPlaceOwnerFunctionFactory_upvr] then
			return true
		end
	end
	var76 = false
	return var76
end
tbl_upvr[2] = IsPlaceOwnerFunctionFactory_upvr
tbl_upvr[3] = CanPlayerManagePlace_upvr
tbl_upvr[4] = IsPlayerInExperienceNameEnabled_upvr
local function _() -- Line 213, Named "NewIsLocalizationExpertFunctionFactory"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	return function(arg1) -- Line 214
		--[[ Upvalues[1]:
			[1]: tbl_upvr (copied, readonly)
		]]
		for i_8 = 1, #tbl_upvr do
			if tbl_upvr[i_8](arg1) then
				return true
			end
		end
		return false
	end
end
function IsPlaceOwnerFunctionFactory_upvr() -- Line 224, Named "IsPlaceOwnerFunctionFactory"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	if game.CreatorType == Enum.CreatorType.Group then
		local const_string_upvr = "PlaceCreator"
		return function(arg1) -- Line 194
			--[[ Upvalues[3]:
				[1]: tbl_upvr_3 (copied, readonly)
				[2]: tbl_upvr_2 (copied, readonly)
				[3]: const_string_upvr (readonly)
			]]
			local var94
			if not var94 and arg1.Parent ~= nil then
				var94 = tbl_upvr_2.new(arg1)
				tbl_upvr_3[arg1] = var94
			end
			if var94 then
				var94 = var94:getGroupDataAsync()
				if var94 and var94[const_string_upvr] then
					return true
				end
			end
			var94 = false
			return var94
		end
	end
	return function(arg1) -- Line 228
		local var97
		if arg1.UserId ~= game.CreatorId then
			var97 = false
		else
			var97 = true
		end
		return var97
	end
end
function CanPlayerManagePlace_upvr(arg1) -- Line 233, Named "CanPlayerManagePlace"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	local var98
	if not var98 and arg1.Parent ~= nil then
		var98 = tbl_upvr_2.new(arg1)
		tbl_upvr_3[arg1] = var98
	end
	if var98 then
		var98 = var98:getCanManageAsync()
		return var98 or false
	end
	var98 = false
	return var98
end
function IsPlayerInExperienceNameEnabled_upvr(arg1) -- Line 242, Named "IsPlayerInExperienceNameEnabled"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	local var100
	if not var100 and arg1.Parent ~= nil then
		var100 = tbl_upvr_2.new(arg1)
		tbl_upvr_3[arg1] = var100
	end
	if var100 then
		var100 = var100:getProfileSettingsAsync()
		if var100 then
			return var100.isInExperienceNameEnabled
		end
	end
	var100 = false
	return var100
end
local var103_upvr = "Admin"
function var112_upvr(arg1) -- Line 194
	--[[ Upvalues[3]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: var103_upvr (readonly)
	]]
	local var104
	if not var104 and arg1.Parent ~= nil then
		var104 = tbl_upvr_2.new(arg1)
		tbl_upvr_3[arg1] = var104
	end
	if var104 then
		var104 = var104:getGroupDataAsync()
		if var104 and var104[var103_upvr] then
			return true
		end
	end
	var104 = false
	return var104
end
module.IsPlayerAdminAsync = var112_upvr
var103_upvr = "Intern"
function var112_upvr(arg1) -- Line 194
	--[[ Upvalues[3]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: var103_upvr (readonly)
	]]
	local var107
	if not var107 and arg1.Parent ~= nil then
		var107 = tbl_upvr_2.new(arg1)
		tbl_upvr_3[arg1] = var107
	end
	if var107 then
		var107 = var107:getGroupDataAsync()
		if var107 and var107[var103_upvr] then
			return true
		end
	end
	var107 = false
	return var107
end
module.IsPlayerInternAsync = var112_upvr
var103_upvr = "Star"
function var112_upvr(arg1) -- Line 194
	--[[ Upvalues[3]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: var103_upvr (readonly)
	]]
	local var110
	if not var110 and arg1.Parent ~= nil then
		var110 = tbl_upvr_2.new(arg1)
		tbl_upvr_3[arg1] = var110
	end
	if var110 then
		var110 = var110:getGroupDataAsync()
		if var110 and var110[var103_upvr] then
			return true
		end
	end
	var110 = false
	return var110
end
module.IsPlayerStarAsync = var112_upvr
function var112_upvr(arg1) -- Line 214
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	for i_9 = 1, #tbl_upvr do
		if tbl_upvr[i_9](arg1) then
			return true
		end
	end
	return false
end
local var115 = var112_upvr
module.IsPlayerLocalizationExpertAsync = var115
var103_upvr = game.CreatorType
if var103_upvr == Enum.CreatorType.Group then
	var103_upvr = "PlaceCreator"
	function var115(arg1) -- Line 194
		--[[ Upvalues[3]:
			[1]: tbl_upvr_3 (readonly)
			[2]: tbl_upvr_2 (readonly)
			[3]: var103_upvr (readonly)
		]]
		local var116
		if not var116 and arg1.Parent ~= nil then
			var116 = tbl_upvr_2.new(arg1)
			tbl_upvr_3[arg1] = var116
		end
		if var116 then
			var116 = var116:getGroupDataAsync()
			if var116 and var116[var103_upvr] then
				return true
			end
		end
		var116 = false
		return var116
	end
else
	var115 = function(arg1) -- Line 228
		local var119
		if arg1.UserId ~= game.CreatorId then
			var119 = false
		else
			var119 = true
		end
		return var119
	end
end
module.IsPlayerPlaceOwnerAsync = var115
module.CanPlayerManagePlaceAsync = CanPlayerManagePlace_upvr
if FFlagInExperienceUserProfileSettingsEnabled_upvr then
	module.IsPlayerInExperienceNameEnabledAsync = IsPlayerInExperienceNameEnabled_upvr
end
return module