-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:01
-- Luau version 6, Types version 3
-- Time taken: 0.005234 seconds

local ChromeShared = script:FindFirstAncestor("ChromeShared")
local CorePackages = game:GetService("CorePackages")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local React_upvr = require(CorePackages.Packages.React)
local useTokens_upvr = require(CorePackages.Packages.Foundation).Hooks.useTokens
local useObservableValue_upvr = require(ChromeShared.Hooks.useObservableValue)
local ViewportUtil_upvr = require(ChromeShared.Service.ViewportUtil)
local FFlagShortcutBarUseTokens_upvr = SharedFlags.FFlagShortcutBarUseTokens
local Service_upvr = require(ChromeShared.Service)
local GamepadConnector_upvr = require(ChromeShared.Parent.Parent.TopBar.Components.GamepadConnector)
local FFlagChromeUnbindShortcutBarOnHide_upvr = SharedFlags.FFlagChromeUnbindShortcutBarOnHide
local FFlagChromeShortcutBarInitHide_upvr = SharedFlags.FFlagChromeShortcutBarInitHide
local ReactRoblox_upvr = require(CorePackages.Packages.ReactRoblox)
local Constants_upvr = require(ChromeShared.Unibar.Constants)
local ShortcutBar_upvr = require(CorePackages.Packages.UIBlox).App.Navigation.ShortcutBar
local CoreGui_upvr = game:GetService("CoreGui")
function ChromeShortcutBar(arg1) -- Line 25
	--[[ Upvalues[13]:
		[1]: React_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: useObservableValue_upvr (readonly)
		[4]: ViewportUtil_upvr (readonly)
		[5]: FFlagShortcutBarUseTokens_upvr (readonly)
		[6]: Service_upvr (readonly)
		[7]: GamepadConnector_upvr (readonly)
		[8]: FFlagChromeUnbindShortcutBarOnHide_upvr (readonly)
		[9]: FFlagChromeShortcutBarInitHide_upvr (readonly)
		[10]: ReactRoblox_upvr (readonly)
		[11]: Constants_upvr (readonly)
		[12]: ShortcutBar_upvr (readonly)
		[13]: CoreGui_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useState_result1_2_upvr, any_useState_result2_upvr = React_upvr.useState({})
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState({})
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(false)
	local var5_result1 = useTokens_upvr()
	local useObservableValue_upvr_result1_upvr = useObservableValue_upvr(ViewportUtil_upvr.screenSize)
	local any_useRef_result1_upvr = React_upvr.useRef(0)
	local function checkOverflow_upvr() -- Line 34, Named "checkOverflow"
		--[[ Upvalues[5]:
			[1]: FFlagShortcutBarUseTokens_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: useObservableValue_upvr_result1_upvr (readonly)
			[4]: any_useState_result1_2_upvr (readonly)
			[5]: any_useState_result2_upvr_2 (readonly)
		]]
		if not FFlagShortcutBarUseTokens_upvr then
		else
			local var38
			if useObservableValue_upvr_result1_upvr.X < var38 then
				var38 = 1
				for i_2, v_2 in any_useState_result1_2_upvr do
					if v_2.displayPriority <= any_useState_result1_2_upvr[var38].displayPriority then
						var38 = i_2
					end
				end
				local clone = table.clone(any_useState_result1_2_upvr)
				table.remove(clone, var38)
				any_useState_result2_upvr_2(clone)
			end
		end
	end
	local var40
	if FFlagShortcutBarUseTokens_upvr then
		React_upvr.useEffect(function() -- Line 56
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_2 (readonly)
				[2]: checkOverflow_upvr (readonly)
			]]
			any_useState_result2_upvr_2({})
			checkOverflow_upvr()
		end, {useObservableValue_upvr_result1_upvr})
	end
	React_upvr.useEffect(function() -- Line 62
		--[[ Upvalues[8]:
			[1]: Service_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: FFlagShortcutBarUseTokens_upvr (copied, readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
			[5]: GamepadConnector_upvr (copied, readonly)
			[6]: FFlagChromeUnbindShortcutBarOnHide_upvr (copied, readonly)
			[7]: FFlagChromeShortcutBarInitHide_upvr (copied, readonly)
			[8]: any_useBinding_result2_upvr (readonly)
		]]
		Service_upvr:onShortcutBarChanged():connect(function() -- Line 63
			--[[ Upvalues[4]:
				[1]: Service_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
				[3]: FFlagShortcutBarUseTokens_upvr (copied, readonly)
				[4]: any_useState_result2_upvr_2 (copied, readonly)
			]]
			any_useState_result2_upvr(Service_upvr:getCurrentShortcuts())
			if FFlagShortcutBarUseTokens_upvr then
				any_useState_result2_upvr_2({})
			end
		end)
		local any_getShowTopBar_result1_upvr = GamepadConnector_upvr:getShowTopBar()
		local any_getGamepadActive_result1_upvr = GamepadConnector_upvr:getGamepadActive()
		if FFlagChromeUnbindShortcutBarOnHide_upvr then
			local function shouldHideShortcutBar() -- Line 75
				--[[ Upvalues[3]:
					[1]: any_getShowTopBar_result1_upvr (readonly)
					[2]: any_getGamepadActive_result1_upvr (readonly)
					[3]: Service_upvr (copied, readonly)
				]]
				local var47 = not any_getShowTopBar_result1_upvr:get()
				if not var47 then
					var47 = not any_getGamepadActive_result1_upvr:get()
				end
				Service_upvr:setHideShortcutBar("TopBar", var47)
			end
			if FFlagChromeShortcutBarInitHide_upvr then
				local var48 = not any_getShowTopBar_result1_upvr:get()
				if not var48 then
					var48 = not any_getGamepadActive_result1_upvr:get()
				end
				Service_upvr:setHideShortcutBar("TopBar", var48)
			end
			any_getShowTopBar_result1_upvr:connect(shouldHideShortcutBar)
			any_getGamepadActive_result1_upvr:connect(shouldHideShortcutBar)
		else
			local function shouldShowShortcutBar() -- Line 86
				--[[ Upvalues[3]:
					[1]: any_getShowTopBar_result1_upvr (readonly)
					[2]: any_getGamepadActive_result1_upvr (readonly)
					[3]: any_useBinding_result2_upvr (copied, readonly)
				]]
				local any_get_result1 = any_getShowTopBar_result1_upvr:get()
				if any_get_result1 then
					any_get_result1 = any_getGamepadActive_result1_upvr:get()
				end
				any_useBinding_result2_upvr(any_get_result1)
			end
			any_getShowTopBar_result1_upvr:connect(shouldShowShortcutBar)
			any_getGamepadActive_result1_upvr:connect(shouldShowShortcutBar)
		end
	end, {})
	local var50
	if FFlagShortcutBarUseTokens_upvr and 0 < #any_useState_result1 then
		var50 = any_useState_result1
	else
		var50 = any_useState_result1_2_upvr
	end
	for _, v in var50 do
		if v.label then
			local tbl_3 = {
				icon = "";
				text = "";
			}
			if v.icon then
				tbl_3.icon = v.icon
			end
			tbl_3.text = v.label
			table.insert({}, tbl_3)
		end
	end
	local module = {}
	local tbl_6 = {
		Name = "ShortcutBar";
		DisplayOrder = Constants_upvr.SHORTCUTBAR_DISPLAYORDER;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}
	if FFlagChromeUnbindShortcutBarOnHide_upvr then
	else
	end
	tbl_6.Enabled = any_useBinding_result1
	if FFlagShortcutBarUseTokens_upvr then
		local tbl = {
			Name = "ShortcutBarWrapper";
			AutomaticSize = Enum.AutomaticSize.XY;
		}
		if var5_result1 then
			var40 = -var5_result1.Gap.Medium
		else
			var40 = 0
		end
		tbl.Position = UDim2.new(0.5, 0, 1, var40)
		tbl.AnchorPoint = Vector2.new(0.5, 1)
		tbl.BorderSizePixel = 0
		tbl.BackgroundTransparency = 1
		if FFlagShortcutBarUseTokens_upvr then
			local function _(arg1_2) -- Line 133
				--[[ Upvalues[2]:
					[1]: any_useRef_result1_upvr (readonly)
					[2]: checkOverflow_upvr (readonly)
				]]
				any_useRef_result1_upvr.current = arg1_2.AbsoluteSize.X
				checkOverflow_upvr()
			end
		else
		end
		tbl[React_upvr.Change.AbsoluteSize] = nil
		local tbl_5 = {
			Layout = React_upvr.createElement("UIListLayout");
		}
		local tbl_2 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_2.items = {}
		tbl_5[1] = React_upvr.createElement(ShortcutBar_upvr, tbl_2)
		;({})[1] = React_upvr.createElement("Frame", tbl, tbl_5)
	else
		local tbl_4 = {
			position = UDim2.fromScale(0.5, 0.9);
			anchorPoint = Vector2.new(0.5, 0);
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_4.items = {}
		;({})[1] = React_upvr.createElement(ShortcutBar_upvr, tbl_4)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.Name = React_upvr.createElement("ScreenGui", tbl_6, {})
	return ReactRoblox_upvr.createPortal(module, CoreGui_upvr)
end
return ChromeShortcutBar