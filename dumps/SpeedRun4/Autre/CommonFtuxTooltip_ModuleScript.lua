-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:34
-- Luau version 6, Types version 3
-- Time taken: 0.010266 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local module_upvr = {
	id = nil;
	priority = 1;
	showDelay = 3000;
	dismissDelay = 5000;
	onDismissed = function(arg1, arg2) -- Line 43, Named "onDismissed"
	end;
}
local setTimeout_upvr = LuauPolyfill.setTimeout
local var8_upvr = require(Chrome.Flags.FFlagEnableUnibarTooltipQueue)()
local TooltipContext_upvr = require(Chrome.ChromeShared.Unibar.Tooltips.TooltipContext)
local useIsTooltipTurn_upvr = require(Chrome.ChromeShared.Unibar.Tooltips.useIsTooltipTurn)
local LocalStore_upvr = require(Chrome.ChromeShared.Service.LocalStore)
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local UserInputService_upvr = game:GetService("UserInputService")
local dependencyArray_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.dependencyArray
local Service_upvr = require(Chrome.Service)
local GuiService_upvr = game:GetService("GuiService")
local menuIconHoveredSignal_upvr = require(Chrome.Parent.TopBar.Components.Presentation.menuIconHoveredSignal)
local clearTimeout_upvr = LuauPolyfill.clearTimeout
local FtuxTooltipAnchor_upvr = require(Chrome.Integrations.FtuxTooltipAnchor)
local function var6_upvr(arg1) -- Line 46
	--[[ Upvalues[15]:
		[1]: React_upvr (readonly)
		[2]: setTimeout_upvr (readonly)
		[3]: var8_upvr (readonly)
		[4]: TooltipContext_upvr (readonly)
		[5]: useIsTooltipTurn_upvr (readonly)
		[6]: LocalStore_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
		[9]: module_upvr (readonly)
		[10]: dependencyArray_upvr (readonly)
		[11]: Service_upvr (readonly)
		[12]: GuiService_upvr (readonly)
		[13]: menuIconHoveredSignal_upvr (readonly)
		[14]: clearTimeout_upvr (readonly)
		[15]: FtuxTooltipAnchor_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useRef_result1_upvr_3 = React_upvr.useRef(nil)
	local any_useState_result1_upvr_3, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useState_result1_upvr_4, any_useState_result2_upvr_3 = React_upvr.useState(false)
	local any_useRef_result1_upvr_6 = React_upvr.useRef(setTimeout_upvr(function() -- Line 50
	end, arg1.showDelay))
	local any_useRef_result1_upvr_4 = React_upvr.useRef(setTimeout_upvr(function() -- Line 51
	end, arg1.dismissDelay))
	local var81_upvw
	local var83_upvr
	if var8_upvr then
		var83_upvr = React_upvr
		var83_upvr = TooltipContext_upvr
		var81_upvw = var83_upvr.useContext(var83_upvr)
		var83_upvr = arg1.id
	end
	var83_upvr = React_upvr
	function var83_upvr() -- Line 60
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: LocalStore_upvr (copied, readonly)
		]]
		local var84 = false
		if arg1.localStorageKey then
			var84 = LocalStore_upvr.getValue(arg1.localStorageKey) or false
		end
		return var84
	end
	var83_upvr = arg1.isIconVisible
	if var83_upvr then
		var83_upvr = not var83_upvr.useMemo(var83_upvr, {arg1.localStorageKey})
		if var83_upvr then
			var83_upvr = not any_useState_result1_upvr_4
		end
	end
	if var8_upvr then
	else
	end
	local useLocalization_upvr_result1_2 = useLocalization_upvr({
		headerText = arg1.headerKey;
		bodyText = arg1.bodyKey;
	})
	local var89_upvr = var83_upvr and any_useState_result1_upvr_3
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_5) -- Line 79
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: var89_upvr (readonly)
			[3]: any_useState_result2_upvr_3 (readonly)
			[4]: var81_upvw (read and write)
		]]
		if arg1.onDismissed then
			arg1.onDismissed(var89_upvr, arg1_5)
		end
		any_useState_result2_upvr_3(true)
		if var81_upvw and arg1.id then
			var81_upvw.dismissTooltip(arg1.id, arg1_5)
		end
	end, {any_useState_result2_upvr_3, var89_upvr})
	React_upvr.useEffect(function() -- Line 91
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: any_useState_result1_upvr_3 (readonly)
			[3]: any_useState_result1_upvr_4 (readonly)
			[4]: UserInputService_upvr (copied, readonly)
			[5]: any_useRef_result1_upvr_3 (readonly)
			[6]: var83_upvr (readonly)
			[7]: any_useCallback_result1_upvr (readonly)
		]]
		local var93_upvw
		if arg1.dismissOnOutsideInput and any_useState_result1_upvr_3 and not any_useState_result1_upvr_4 then
			var93_upvw = UserInputService_upvr.InputBegan:Connect(function(arg1_6) -- Line 94
				--[[ Upvalues[3]:
					[1]: any_useRef_result1_upvr_3 (copied, readonly)
					[2]: var83_upvr (copied, readonly)
					[3]: any_useCallback_result1_upvr (copied, readonly)
				]]
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					local AbsoluteSize_2 = any_useRef_result1_upvr_3.current.AbsoluteSize
					local AbsolutePosition_2 = any_useRef_result1_upvr_3.current.AbsolutePosition
					local Position_2 = arg1_6.Position
					return var83_upvr
				end
				if arg1_6.UserInputType == Enum.UserInputType.Touch or arg1_6.UserInputType == Enum.UserInputType.MouseButton1 or any_useRef_result1_upvr_3.current ~= nil and INLINED_2() and (AbsolutePosition_2.X > Position_2.X or Position_2.X > AbsolutePosition_2.X + AbsoluteSize_2.X or AbsolutePosition_2.Y > Position_2.Y or Position_2.Y > AbsolutePosition_2.Y + AbsoluteSize_2.Y) then
					any_useCallback_result1_upvr("outsideInput")
				end
			end)
		end
		return function() -- Line 121
			--[[ Upvalues[1]:
				[1]: var93_upvw (read and write)
			]]
			if var93_upvw then
				var93_upvw:Disconnect()
				var93_upvw = nil
			end
		end
	end, {any_useState_result1_upvr_4, any_useState_result1_upvr_3, var83_upvr})
	React_upvr.useEffect(function() -- Line 129
		--[[ Upvalues[4]:
			[1]: var81_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: var83_upvr (readonly)
			[4]: module_upvr (copied, readonly)
		]]
		if var81_upvw and arg1.id and var83_upvr then
			local showDelay = arg1.showDelay
			if not showDelay then
				showDelay = module_upvr.showDelay
			end
			local dismissDelay_2 = arg1.dismissDelay
			if not dismissDelay_2 then
				dismissDelay_2 = module_upvr.dismissDelay
			end
			var81_upvw.registerTooltip(arg1.id, arg1.priority, showDelay, dismissDelay_2)
		end
		return function() -- Line 138
			--[[ Upvalues[3]:
				[1]: var81_upvw (copied, read and write)
				[2]: arg1 (copied, readonly)
				[3]: var83_upvr (copied, readonly)
			]]
			if var81_upvw and arg1.id and var83_upvr then
				var81_upvw.unregisterTooltip(arg1.id)
			end
		end
	end, dependencyArray_upvr(var83_upvr, arg1.id))
	React_upvr.useEffect(function() -- Line 145
		--[[ Upvalues[5]:
			[1]: Service_upvr (copied, readonly)
			[2]: var83_upvr (readonly)
			[3]: any_useCallback_result1_upvr (readonly)
			[4]: GuiService_upvr (copied, readonly)
			[5]: menuIconHoveredSignal_upvr (copied, readonly)
		]]
		local tbl_6_upvr = {Service_upvr:onIntegrationActivated():connect(function() -- Line 149
			--[[ Upvalues[2]:
				[1]: var83_upvr (copied, readonly)
				[2]: any_useCallback_result1_upvr (copied, readonly)
			]]
			if var83_upvr then
				any_useCallback_result1_upvr("unibarActivated")
			end
		end), Service_upvr:onIntegrationHovered():connect(function() -- Line 154
			--[[ Upvalues[2]:
				[1]: var83_upvr (copied, readonly)
				[2]: any_useCallback_result1_upvr (copied, readonly)
			]]
			if var83_upvr then
				any_useCallback_result1_upvr("unibarHovered")
			end
		end), GuiService_upvr.MenuOpened:Connect(function() -- Line 159
			--[[ Upvalues[2]:
				[1]: var83_upvr (copied, readonly)
				[2]: any_useCallback_result1_upvr (copied, readonly)
			]]
			if var83_upvr then
				any_useCallback_result1_upvr("menuOpened")
			end
		end), menuIconHoveredSignal_upvr:connect(function(arg1_7) -- Line 164
			--[[ Upvalues[2]:
				[1]: var83_upvr (copied, readonly)
				[2]: any_useCallback_result1_upvr (copied, readonly)
			]]
			if var83_upvr and arg1_7 then
				any_useCallback_result1_upvr("menuIconHovered")
			end
		end)}
		return function() -- Line 171
			--[[ Upvalues[1]:
				[1]: tbl_6_upvr (readonly)
			]]
			for _, v in tbl_6_upvr do
				if v.disconnect then
					v:disconnect()
				elseif v.Disconnect then
					v:Disconnect()
				end
			end
		end
	end, {Service_upvr, GuiService_upvr, menuIconHoveredSignal_upvr, var83_upvr, any_useCallback_result1_upvr})
	if not var8_upvr then
		React_upvr.useEffect(function() -- Line 185
			--[[ Upvalues[6]:
				[1]: clearTimeout_upvr (copied, readonly)
				[2]: any_useRef_result1_upvr_6 (readonly)
				[3]: var83_upvr (readonly)
				[4]: setTimeout_upvr (copied, readonly)
				[5]: any_useState_result2_upvr_2 (readonly)
				[6]: arg1 (readonly)
			]]
			clearTimeout_upvr(any_useRef_result1_upvr_6.current)
			if var83_upvr then
				any_useRef_result1_upvr_6.current = setTimeout_upvr(function() -- Line 188
					--[[ Upvalues[2]:
						[1]: var83_upvr (copied, readonly)
						[2]: any_useState_result2_upvr_2 (copied, readonly)
					]]
					if var83_upvr then
						any_useState_result2_upvr_2(true)
					end
				end, arg1.showDelay)
			end
		end, {var83_upvr, any_useRef_result1_upvr_6})
		React_upvr.useEffect(function() -- Line 197
			--[[ Upvalues[6]:
				[1]: clearTimeout_upvr (copied, readonly)
				[2]: any_useRef_result1_upvr_4 (readonly)
				[3]: any_useState_result1_upvr_3 (readonly)
				[4]: setTimeout_upvr (copied, readonly)
				[5]: any_useCallback_result1_upvr (readonly)
				[6]: arg1 (readonly)
			]]
			clearTimeout_upvr(any_useRef_result1_upvr_4.current)
			if any_useState_result1_upvr_3 then
				any_useRef_result1_upvr_4.current = setTimeout_upvr(function() -- Line 200
					--[[ Upvalues[1]:
						[1]: any_useCallback_result1_upvr (copied, readonly)
					]]
					any_useCallback_result1_upvr("timeout")
				end, arg1.dismissDelay)
			end
		end, {any_useState_result1_upvr_3, any_useRef_result1_upvr_4})
	end
	React_upvr.useEffect(function() -- Line 207
		--[[ Upvalues[3]:
			[1]: var89_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: LocalStore_upvr (copied, readonly)
		]]
		if var89_upvr and arg1.localStorageKey then
			LocalStore_upvr.storeForLocalPlayer(arg1.localStorageKey, true)
		end
	end, {var89_upvr, arg1.localStorageKey})
	return React_upvr.createElement(FtuxTooltipAnchor_upvr, {
		ref = any_useRef_result1_upvr_3;
		bodyText = useLocalization_upvr_result1_2.bodyText;
		headerText = useLocalization_upvr_result1_2.headerText;
		shouldShowTooltip = var89_upvr;
	})
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return function(arg1) -- Line 235
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: var6_upvr (readonly)
	]]
	return React_upvr.createElement(var6_upvr, Cryo_upvr.Dictionary.union(module_upvr, arg1))
end