-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:06
-- Luau version 6, Types version 3
-- Time taken: 0.006983 seconds

local AppStorageService_upvr = game:GetService("AppStorageService")
local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagUnibarMenuOpenSelectionIXP_upvr = SharedFlags.FFlagUnibarMenuOpenSelectionIXP
local IsExperienceMenuABTestEnabled_upvr = require(script.Parent.IsExperienceMenuABTestEnabled)
local var6
if SharedFlags.GetFFlagSetupSongbirdWindowExperimentFeb2025() then
	var6 = "s3"
else
	var6 = "s2"
end
local var7_upvr = "v1".."t10"
local var8_upvr = "v2".."t10"
local var9_upvr = "v3".."t10"
local var10_upvr = "ARv2".."art2"
local tbl_upvr_2 = {
	SONGBIRD = "v9.1"..var6;
	SONGBIRD_UNIBAR = "v9.2"..var6;
	SONGBIRD_PEEK = "v9.3"..var6;
	SONGBIRD_SCENE_ANALYSIS = "v9.4"..var6;
}
local tbl_upvr_4 = {
	BASELINE = "v10.1";
	CLOSED_SELF_VIEW = "v10.2";
}
local tbl_upvr = {
	HAMBURGER = "hamburger";
	SUBMENU = "submenu";
	NOT_AVAILABLE = "not_available";
}
local tbl_upvr_3 = {
	[var7_upvr] = true;
	[var8_upvr] = false;
	[var9_upvr] = false;
	[var10_upvr] = false;
	[tbl_upvr_2.SONGBIRD] = true;
	[tbl_upvr_2.SONGBIRD_UNIBAR] = true;
	[tbl_upvr_2.SONGBIRD_PEEK] = true;
	[tbl_upvr.HAMBURGER] = FFlagUnibarMenuOpenSelectionIXP_upvr;
	[tbl_upvr.SUBMENU] = FFlagUnibarMenuOpenSelectionIXP_upvr;
	[tbl_upvr.NOT_AVAILABLE] = true;
	["v10.0"] = true;
	[tbl_upvr_4.BASELINE] = not require(script.Parent.Flags.GetFFlagDisableChromeV4Baseline)();
	[tbl_upvr_4.CLOSED_SELF_VIEW] = not require(script.Parent.Flags.GetFFlagDisableChromeV4ClosedSelfView)();
}
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.getCachedVersion() -- Line 81
	--[[ Upvalues[2]:
		[1]: AppStorageService_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 83
		--[[ Upvalues[1]:
			[1]: AppStorageService_upvr (copied, readonly)
		]]
		return AppStorageService_upvr:GetItem("ExperienceMenuVersion")
	end)
	if pcall_result1 and pcall_result2 ~= "" and tbl_upvr_3[pcall_result2] then
		return pcall_result2
	end
	return nil
end
local game_DefineFastInt_result1_upvr = game:DefineFastInt("CSATV3MenuActionThreshold", 7)
function module_2_upvr.getCSATQualificationThreshold() -- Line 96
	--[[ Upvalues[1]:
		[1]: game_DefineFastInt_result1_upvr (readonly)
	]]
	return game_DefineFastInt_result1_upvr
end
function module_2_upvr.v1VersionId() -- Line 100
	--[[ Upvalues[1]:
		[1]: var7_upvr (readonly)
	]]
	return var7_upvr
end
function module_2_upvr.v2VersionId() -- Line 104
	--[[ Upvalues[1]:
		[1]: var8_upvr (readonly)
	]]
	return var8_upvr
end
function module_2_upvr.v3VersionId() -- Line 108
	--[[ Upvalues[1]:
		[1]: var9_upvr (readonly)
	]]
	return var9_upvr
end
function module_2_upvr.reportAbuseMenuV2VersionId() -- Line 112
	--[[ Upvalues[1]:
		[1]: var10_upvr (readonly)
	]]
	return var10_upvr
end
function module_2_upvr.chromeV4ControlVersionId() -- Line 116
	return "v10.0"
end
function module_2_upvr.chromeV4BaselineVersionId() -- Line 120
	--[[ Upvalues[1]:
		[1]: tbl_upvr_4 (readonly)
	]]
	return tbl_upvr_4.BASELINE
end
function module_2_upvr.chromeV4ClosedSelfViewVersionId() -- Line 124
	--[[ Upvalues[1]:
		[1]: tbl_upvr_4 (readonly)
	]]
	return tbl_upvr_4.CLOSED_SELF_VIEW
end
function module_2_upvr.chromeSongbirdVersionId() -- Line 128
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	return tbl_upvr_2.SONGBIRD
end
function module_2_upvr.chromeSongbirdUnibarVersionId() -- Line 132
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	return tbl_upvr_2.SONGBIRD_UNIBAR
end
function module_2_upvr.chromeSongbirdPeekVersionId() -- Line 136
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	return tbl_upvr_2.SONGBIRD_PEEK
end
function parseCountData(arg1) -- Line 140
	if not arg1 or typeof(arg1) ~= "string" then
		return nil, nil
	end
	local any_split_result1 = arg1:split(':')
	return any_split_result1[1], any_split_result1[2]
end
local IXPServiceWrapper_upvr = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
function module_2_upvr.new(arg1) -- Line 148
	--[[ Upvalues[2]:
		[1]: IXPServiceWrapper_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local module = {
		_currentMenuVersion = nil;
		_currentMenuVersionIsDefault = false;
		_isCSATQualified = nil;
	}
	local var23 = arg1
	if not var23 then
		var23 = IXPServiceWrapper_upvr
	end
	module._ixpServiceWrapper = var23
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.getVersion(arg1) -- Line 159
	--[[ Upvalues[2]:
		[1]: IsExperienceMenuABTestEnabled_upvr (readonly)
		[2]: var7_upvr (readonly)
	]]
	if not IsExperienceMenuABTestEnabled_upvr() then
		return var7_upvr
	end
	if not arg1._currentMenuVersion then
		local any_getCachedVersion_result1 = arg1.getCachedVersion()
		if any_getCachedVersion_result1 ~= nil and any_getCachedVersion_result1 ~= "" then
			arg1._currentMenuVersion = any_getCachedVersion_result1
		else
			arg1._currentMenuVersionIsDefault = true
			arg1._currentMenuVersion = var7_upvr
		end
	end
	return arg1._currentMenuVersion
end
function module_2_upvr.isV2MenuEnabled(arg1) -- Line 178
	--[[ Upvalues[1]:
		[1]: var8_upvr (readonly)
	]]
	local var25
	if arg1:getVersion() ~= var8_upvr then
		var25 = false
	else
		var25 = true
	end
	return var25
end
function module_2_upvr.isV3MenuEnabled(arg1) -- Line 182
	--[[ Upvalues[1]:
		[1]: var9_upvr (readonly)
	]]
	local var26
	if arg1:getVersion() ~= var9_upvr then
		var26 = false
	else
		var26 = true
	end
	return var26
end
function module_2_upvr.isReportAbuseMenuV2Enabled(arg1) -- Line 186
	--[[ Upvalues[1]:
		[1]: var10_upvr (readonly)
	]]
	local var27
	if arg1:getVersion() ~= var10_upvr then
		var27 = false
	else
		var27 = true
	end
	return var27
end
function module_2_upvr.isChromeEnabled(arg1) -- Line 190
	--[[ Upvalues[4]:
		[1]: tbl_upvr_4 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: FFlagUnibarMenuOpenSelectionIXP_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	if arg1:getVersion() == "v10.0" then
		return false
	end
	for _, v in tbl_upvr_4 do
		if arg1:getVersion() == v then
			return true
		end
	end
	for _, v_2 in tbl_upvr_2 do
		if arg1:getVersion() == v_2 then
			return true
		end
	end
	if FFlagUnibarMenuOpenSelectionIXP_upvr and (arg1:getVersion() == tbl_upvr.HAMBURGER or arg1:getVersion() == tbl_upvr.SUBMENU) then
		return true
	end
	return false
end
function module_2_upvr.shouldCloseSelfViewAtStartup(arg1) -- Line 218
	--[[ Upvalues[1]:
		[1]: tbl_upvr_4 (readonly)
	]]
	local var32
	if arg1:getVersion() ~= tbl_upvr_4.CLOSED_SELF_VIEW then
		var32 = false
	else
		var32 = true
	end
	return var32
end
function module_2_upvr.shouldShowSongbirdUnibar(arg1) -- Line 222
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local any_getVersion_result1_2 = arg1:getVersion()
	local var34 = true
	if any_getVersion_result1_2 ~= tbl_upvr_2.SONGBIRD then
		if any_getVersion_result1_2 ~= tbl_upvr_2.SONGBIRD_UNIBAR then
			var34 = false
		else
			var34 = true
		end
	end
	return var34
end
function module_2_upvr.shouldShowSongbirdPeek(arg1) -- Line 227
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local any_getVersion_result1 = arg1:getVersion()
	local var36 = true
	if any_getVersion_result1 ~= tbl_upvr_2.SONGBIRD then
		if any_getVersion_result1 ~= tbl_upvr_2.SONGBIRD_PEEK then
			var36 = false
		else
			var36 = true
		end
	end
	return var36
end
function module_2_upvr.showConsoleExpControlsMenuOpenHamburger(arg1) -- Line 232
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var37
	if arg1:getVersion() ~= tbl_upvr.HAMBURGER then
		var37 = false
	else
		var37 = true
	end
	return var37
end
function module_2_upvr.showConsoleExpControlsMenuOpenSubmenu(arg1) -- Line 236
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var38
	if arg1:getVersion() ~= tbl_upvr.SUBMENU then
		var38 = false
	else
		var38 = true
	end
	return var38
end
function module_2_upvr.showConsoleExpControlsMenuNotAvailable(arg1) -- Line 240
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var39
	if arg1:getVersion() ~= tbl_upvr.NOT_AVAILABLE then
		var39 = false
	else
		var39 = true
	end
	return var39
end
local GetFStringLuaAppExperienceMenuLayer_upvr = SharedFlags.GetFStringLuaAppExperienceMenuLayer
local GetFStringLuaAppConsoleExperienceMenuLayer_upvr = require(script.Parent.Flags.GetFStringLuaAppConsoleExperienceMenuLayer)
function module_2_upvr.initialize(arg1) -- Line 245
	--[[ Upvalues[4]:
		[1]: IsExperienceMenuABTestEnabled_upvr (readonly)
		[2]: GetFStringLuaAppExperienceMenuLayer_upvr (readonly)
		[3]: GetFStringLuaAppConsoleExperienceMenuLayer_upvr (readonly)
		[4]: AppStorageService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 4. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [3] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 3 start (CF ANALYSIS FAILED)
	local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 251
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GetFStringLuaAppExperienceMenuLayer_upvr (copied, readonly)
		]]
		return arg1._ixpServiceWrapper:GetLayerData(GetFStringLuaAppExperienceMenuLayer_upvr())
	end)
	local _, _ = pcall(function() -- Line 254
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GetFStringLuaAppConsoleExperienceMenuLayer_upvr (copied, readonly)
		]]
		return arg1._ixpServiceWrapper:GetLayerData(GetFStringLuaAppConsoleExperienceMenuLayer_upvr())
	end)
	-- KONSTANTERROR: [4] 5. Error Block 3 end (CF ANALYSIS FAILED)
end
module_2_upvr.default = module_2_upvr.new()
return module_2_upvr