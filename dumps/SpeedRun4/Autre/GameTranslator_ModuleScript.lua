-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:43
-- Luau version 6, Types version 3
-- Time taken: 0.004000 seconds

local LocalizationService_upvr = game:GetService("LocalizationService")
local Players_upvr = game:GetService("Players")
local var3_upvw
local var4_upvw
local var5_upvw
local var6_upvw
local BindableEvent_upvr = Instance.new("BindableEvent")
local function handlePlayerOrLocaleChanged_upvr() -- Line 12, Named "handlePlayerOrLocaleChanged"
	--[[ Upvalues[3]:
		[1]: var4_upvw (read and write)
		[2]: var5_upvw (read and write)
		[3]: BindableEvent_upvr (readonly)
	]]
	if var4_upvw and var4_upvw.LocaleId ~= var5_upvw then
		var5_upvw = var4_upvw.LocaleId
		BindableEvent_upvr:Fire(var5_upvw)
	end
end
local function _() -- Line 19, Named "reset"
	--[[ Upvalues[3]:
		[1]: var3_upvw (read and write)
		[2]: var4_upvw (read and write)
		[3]: var6_upvw (read and write)
	]]
	var3_upvw = nil
	var4_upvw = nil
	if var6_upvw then
		var6_upvw:Disconnect()
		var6_upvw = nil
	end
end
local function _() -- Line 29, Named "getTranslator"
	--[[ Upvalues[8]:
		[1]: var3_upvw (read and write)
		[2]: var4_upvw (read and write)
		[3]: Players_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
		[5]: var5_upvw (read and write)
		[6]: BindableEvent_upvr (readonly)
		[7]: var6_upvw (read and write)
		[8]: handlePlayerOrLocaleChanged_upvr (readonly)
	]]
	if not var3_upvw then
		var4_upvw = Players_upvr.LocalPlayer
		if var4_upvw then
			var3_upvw = LocalizationService_upvr:GetTranslatorForPlayer(var4_upvw)
			if var4_upvw and var4_upvw.LocaleId ~= var5_upvw then
				var5_upvw = var4_upvw.LocaleId
				BindableEvent_upvr:Fire(var5_upvw)
			end
			var6_upvw = var4_upvw:GetPropertyChangedSignal("LocaleId"):Connect(handlePlayerOrLocaleChanged_upvr)
		end
	end
	return var3_upvw
end
local tbl_upvr = {}
local function _(arg1) -- Line 44, Named "unregisterGui"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var9 = tbl_upvr[arg1]
	if not var9 then
	else
		var9.connection:Disconnect()
		tbl_upvr[arg1] = nil
	end
end
local function _(arg1, arg2) -- Line 53, Named "makeAncestryChangedHandler"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	return function(arg1_2, arg2_2) -- Line 54
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: tbl_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 9. Error Block 9 start (CF ANALYSIS FAILED)
		local var11 = arg1
		local var12 = tbl_upvr[var11]
		if not var12 then return end
		var12.connection:Disconnect()
		tbl_upvr[var11] = nil
		do
			return
		end
		-- KONSTANTERROR: [11] 9. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 21. Error Block 6 start (CF ANALYSIS FAILED)
		arg2.hasBeenAdded = true
		-- KONSTANTERROR: [25] 21. Error Block 6 end (CF ANALYSIS FAILED)
	end
end
local function _(arg1, arg2, arg3) -- Line 65, Named "updateRegistryInfo"
	arg1.context = arg2
	arg1.text = arg3
end
local function makeRegistryInfo_upvr(arg1, arg2, arg3) -- Line 70, Named "makeRegistryInfo"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local module_upvr = {
		hasBeenAdded = game:IsAncestorOf(arg1);
	}
	module_upvr.context = arg2
	module_upvr.text = arg3
	module_upvr.connection = arg1.AncestryChanged:Connect(function(arg1_3, arg2_3) -- Line 54
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: module_upvr (readonly)
			[3]: tbl_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 9. Error Block 9 start (CF ANALYSIS FAILED)
		local var15 = arg1
		local var16 = tbl_upvr[var15]
		if not var16 then return end
		var16.connection:Disconnect()
		tbl_upvr[var15] = nil
		do
			return
		end
		-- KONSTANTERROR: [11] 9. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 21. Error Block 6 start (CF ANALYSIS FAILED)
		module_upvr.hasBeenAdded = true
		-- KONSTANTERROR: [25] 21. Error Block 6 end (CF ANALYSIS FAILED)
	end)
	return module_upvr
end
local function _(arg1, arg2, arg3) -- Line 78, Named "registerGui"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: makeRegistryInfo_upvr (readonly)
	]]
	if tbl_upvr[arg1] == nil then
		tbl_upvr[arg1] = makeRegistryInfo_upvr(arg1, arg2, arg3)
	else
		local var17 = tbl_upvr[arg1]
		var17.context = arg2
		var17.text = arg3
	end
end
Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Connect(function() -- Line 86
	--[[ Upvalues[8]:
		[1]: var3_upvw (read and write)
		[2]: var4_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: Players_upvr (readonly)
		[5]: LocalizationService_upvr (readonly)
		[6]: var5_upvw (read and write)
		[7]: BindableEvent_upvr (readonly)
		[8]: handlePlayerOrLocaleChanged_upvr (readonly)
	]]
	var3_upvw = nil
	var4_upvw = nil
	if var6_upvw then
		var6_upvw:Disconnect()
		var6_upvw = nil
	end
	if not var3_upvw then
		var4_upvw = Players_upvr.LocalPlayer
		if var4_upvw then
			var3_upvw = LocalizationService_upvr:GetTranslatorForPlayer(var4_upvw)
			if var4_upvw and var4_upvw.LocaleId ~= var5_upvw then
				var5_upvw = var4_upvw.LocaleId
				BindableEvent_upvr:Fire(var5_upvw)
			end
			var6_upvw = var4_upvw:GetPropertyChangedSignal("LocaleId"):Connect(handlePlayerOrLocaleChanged_upvr)
		end
	end
end)
local module_upvr_2 = {
	LocaleChanged = BindableEvent_upvr.Event;
	TranslateGameText = function(arg1, arg2, arg3) -- Line 102, Named "TranslateGameText"
		--[[ Upvalues[8]:
			[1]: var3_upvw (read and write)
			[2]: var4_upvw (read and write)
			[3]: Players_upvr (readonly)
			[4]: LocalizationService_upvr (readonly)
			[5]: var5_upvw (read and write)
			[6]: BindableEvent_upvr (readonly)
			[7]: var6_upvw (read and write)
			[8]: handlePlayerOrLocaleChanged_upvr (readonly)
		]]
		if not var3_upvw then
			var4_upvw = Players_upvr.LocalPlayer
			if var4_upvw then
				var3_upvw = LocalizationService_upvr:GetTranslatorForPlayer(var4_upvw)
				if var4_upvw and var4_upvw.LocaleId ~= var5_upvw then
					var5_upvw = var4_upvw.LocaleId
					BindableEvent_upvr:Fire(var5_upvw)
				end
				var6_upvw = var4_upvw:GetPropertyChangedSignal("LocaleId"):Connect(handlePlayerOrLocaleChanged_upvr)
			end
		end
		local var20 = var3_upvw
		if var20 then
			return var20:RobloxOnlyTranslate(arg2, arg3)
		end
		return arg3
	end;
}
LocalizationService_upvr.AutoTranslateWillRun:Connect(function() -- Line 111, Named "retranslateAll"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	for i, v in pairs(tbl_upvr) do
		i.Text = module_upvr_2:TranslateGameText(v.context, v.text)
	end
end)
function module_upvr_2.TranslateAndRegister(arg1, arg2, arg3, arg4) -- Line 119
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: makeRegistryInfo_upvr (readonly)
	]]
	arg2.Text = arg1:TranslateGameText(arg3, arg4)
	if tbl_upvr[arg2] == nil then
		tbl_upvr[arg2] = makeRegistryInfo_upvr(arg2, arg3, arg4)
		return arg4
	end
	local var26 = tbl_upvr[arg2]
	var26.context = arg3
	var26.text = arg4
	return arg4
end
return module_upvr_2