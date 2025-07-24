-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:58
-- Luau version 6, Types version 3
-- Time taken: 0.011672 seconds

local ContextActionService_upvr = game:GetService("ContextActionService")
local CorePackages = game:GetService("CorePackages")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Promise_upvr = require(CorePackages.Packages.Promise)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local CoreScriptsRootProvider_upvr = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local BlockingAnalytics_upvr = require(script.Parent.Analytics.BlockingAnalytics)
local BlockingModalScreen_upvr = require(script.Parent.Components.Blocking.BlockingModalScreen)
local FFlagNavigateToBlockingModal_upvr = require(RobloxGui_upvr.Modules.Common.Flags.FFlagNavigateToBlockingModal)
local FFlagEnableNewBlockingModal_upvr = require(RobloxGui_upvr.Modules.Common.Flags.FFlagEnableNewBlockingModal)
local FFlagEnableToastForBlockingModal_upvr = require(RobloxGui_upvr.Modules.Common.Flags.FFlagEnableToastForBlockingModal)
local var13_upvw
local function _() -- Line 24
	--[[ Upvalues[4]:
		[1]: var13_upvw (read and write)
		[2]: Roact_upvr (readonly)
		[3]: FFlagEnableToastForBlockingModal_upvr (readonly)
		[4]: ContextActionService_upvr (readonly)
	]]
	if var13_upvw ~= nil then
		Roact_upvr.unmount(var13_upvw)
		var13_upvw = nil
		if FFlagEnableToastForBlockingModal_upvr then
			ContextActionService_upvr:UnbindCoreAction("BlockingModalScreen")
		end
	end
end
if FFlagEnableToastForBlockingModal_upvr then
	return function(arg1, arg2, arg3, arg4) -- Line 35
		--[[ Upvalues[12]:
			[1]: Promise_upvr (readonly)
			[2]: FFlagNavigateToBlockingModal_upvr (readonly)
			[3]: BlockingAnalytics_upvr (readonly)
			[4]: var13_upvw (read and write)
			[5]: Roact_upvr (readonly)
			[6]: FFlagEnableToastForBlockingModal_upvr (readonly)
			[7]: ContextActionService_upvr (readonly)
			[8]: BlockingModalScreen_upvr (readonly)
			[9]: FFlagEnableNewBlockingModal_upvr (readonly)
			[10]: RobloxTranslator_upvr (readonly)
			[11]: CoreScriptsRootProvider_upvr (readonly)
			[12]: RobloxGui_upvr (readonly)
		]]
		return Promise_upvr.new(function(arg1_2) -- Line 36
			--[[ Upvalues[15]:
				[1]: FFlagNavigateToBlockingModal_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: BlockingAnalytics_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: arg3 (readonly)
				[6]: var13_upvw (copied, read and write)
				[7]: Roact_upvr (copied, readonly)
				[8]: FFlagEnableToastForBlockingModal_upvr (copied, readonly)
				[9]: ContextActionService_upvr (copied, readonly)
				[10]: BlockingModalScreen_upvr (copied, readonly)
				[11]: FFlagEnableNewBlockingModal_upvr (copied, readonly)
				[12]: arg4 (readonly)
				[13]: RobloxTranslator_upvr (copied, readonly)
				[14]: CoreScriptsRootProvider_upvr (copied, readonly)
				[15]: RobloxGui_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var25
			if FFlagNavigateToBlockingModal_upvr then
				local var26 = arg2
				if not var26 then
					var26 = BlockingAnalytics_upvr.new()
				end
				var25 = var26
				local tbl_5 = {
					blockeeUserId = arg1.UserId;
				}
				tbl_5.source = arg3
				var25:action("SettingsHub", "blockUserButtonClick", tbl_5)
			else
				local tbl_4 = {
					blockeeUserId = arg1.UserId;
				}
				tbl_4.source = arg3
				arg2:action("SettingsHub", "blockUserButtonClick", tbl_4)
			end
			if var13_upvw ~= nil then
				Roact_upvr.unmount(var13_upvw)
				var13_upvw = nil
				if FFlagEnableToastForBlockingModal_upvr then
					ContextActionService_upvr:UnbindCoreAction("BlockingModalScreen")
				end
			end
			local function var29() -- Line 54
				--[[ Upvalues[5]:
					[1]: var13_upvw (copied, read and write)
					[2]: Roact_upvr (copied, readonly)
					[3]: FFlagEnableToastForBlockingModal_upvr (copied, readonly)
					[4]: ContextActionService_upvr (copied, readonly)
					[5]: arg1_2 (readonly)
				]]
				if var13_upvw ~= nil then
					Roact_upvr.unmount(var13_upvw)
					var13_upvw = nil
					if FFlagEnableToastForBlockingModal_upvr then
						ContextActionService_upvr:UnbindCoreAction("BlockingModalScreen")
					end
				end
				arg1_2()
			end
			local tbl_13 = {}
			tbl_13.player = arg1
			tbl_13.closeModal = var29
			if FFlagNavigateToBlockingModal_upvr then
			else
			end
			tbl_13.analytics = arg2
			if FFlagEnableNewBlockingModal_upvr then
				local _
			elseif not arg4 or not arg4.RobloxTranslator then
			end
			tbl_13.translator = RobloxTranslator_upvr
			tbl_13.source = arg3
			if FFlagNavigateToBlockingModal_upvr then
				if not arg4 or not arg4.onBlockingSuccess then
					-- KONSTANTWARNING: GOTO [107] #88
				end
			else
			end
			tbl_13.onBlockingSuccess = nil
			var13_upvw = Roact_upvr.mount(Roact_upvr.createElement(CoreScriptsRootProvider_upvr, {}, {
				BlockingModalScreen = Roact_upvr.createElement(BlockingModalScreen_upvr, tbl_13);
			}), RobloxGui_upvr, "BlockingContainer")
			ContextActionService_upvr:BindCoreAction("BlockingModalScreen", var29, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Escape)
		end)
	end
end
return function(arg1, arg2, arg3, arg4) -- Line 82
	--[[ Upvalues[12]:
		[1]: FFlagNavigateToBlockingModal_upvr (readonly)
		[2]: BlockingAnalytics_upvr (readonly)
		[3]: var13_upvw (read and write)
		[4]: Roact_upvr (readonly)
		[5]: FFlagEnableToastForBlockingModal_upvr (readonly)
		[6]: ContextActionService_upvr (readonly)
		[7]: BlockingModalScreen_upvr (readonly)
		[8]: FFlagEnableNewBlockingModal_upvr (readonly)
		[9]: RobloxTranslator_upvr (readonly)
		[10]: CoreScriptsRootProvider_upvr (readonly)
		[11]: RobloxGui_upvr (readonly)
		[12]: Promise_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var45
	if FFlagNavigateToBlockingModal_upvr then
		local var46 = arg2
		if not var46 then
			var46 = BlockingAnalytics_upvr.new()
		end
		var45 = var46
		local tbl = {
			blockeeUserId = arg1.UserId;
		}
		tbl.source = arg3
		var45:action("SettingsHub", "blockUserButtonClick", tbl)
	else
		local tbl_14 = {
			blockeeUserId = arg1.UserId;
		}
		tbl_14.source = arg3
		arg2:action("SettingsHub", "blockUserButtonClick", tbl_14)
	end
	if var13_upvw ~= nil then
		Roact_upvr.unmount(var13_upvw)
		var13_upvw = nil
		if FFlagEnableToastForBlockingModal_upvr then
			ContextActionService_upvr:UnbindCoreAction("BlockingModalScreen")
		end
	end
	local var49_upvw = false
	local function var50() -- Line 101
		--[[ Upvalues[5]:
			[1]: var49_upvw (read and write)
			[2]: var13_upvw (copied, read and write)
			[3]: Roact_upvr (copied, readonly)
			[4]: FFlagEnableToastForBlockingModal_upvr (copied, readonly)
			[5]: ContextActionService_upvr (copied, readonly)
		]]
		var49_upvw = true
		if var13_upvw ~= nil then
			Roact_upvr.unmount(var13_upvw)
			var13_upvw = nil
			if FFlagEnableToastForBlockingModal_upvr then
				ContextActionService_upvr:UnbindCoreAction("BlockingModalScreen")
			end
		end
	end
	local tbl_3 = {}
	tbl_3.player = arg1
	tbl_3.closeModal = var50
	if FFlagNavigateToBlockingModal_upvr then
	else
	end
	tbl_3.analytics = arg2
	if FFlagEnableNewBlockingModal_upvr then
		local _
	elseif not arg4 or not arg4.RobloxTranslator then
	end
	tbl_3.translator = RobloxTranslator_upvr
	tbl_3.source = arg3
	if FFlagNavigateToBlockingModal_upvr then
		if not arg4 or not arg4.onBlockingSuccess then
			-- KONSTANTWARNING: GOTO [97] #78
		end
	else
	end
	tbl_3.onBlockingSuccess = nil
	var13_upvw = Roact_upvr.mount(Roact_upvr.createElement(CoreScriptsRootProvider_upvr, {}, {
		BlockingModalScreen = Roact_upvr.createElement(BlockingModalScreen_upvr, tbl_3);
	}), RobloxGui_upvr, "BlockingContainer")
	ContextActionService_upvr:BindCoreAction("BlockingModalScreen", var50, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Escape)
	return Promise_upvr.new(function(arg1_4) -- Line 126
		--[[ Upvalues[2]:
			[1]: var49_upvw (read and write)
			[2]: ContextActionService_upvr (copied, readonly)
		]]
		coroutine.wrap(function() -- Line 127
			--[[ Upvalues[3]:
				[1]: var49_upvw (copied, read and write)
				[2]: ContextActionService_upvr (copied, readonly)
				[3]: arg1_4 (readonly)
			]]
			while not var49_upvw do
				wait()
			end
			ContextActionService_upvr:UnbindCoreAction("BlockingModalScreen")
			arg1_4()
		end)()
	end)
end