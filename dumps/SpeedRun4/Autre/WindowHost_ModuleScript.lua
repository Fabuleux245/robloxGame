-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:04
-- Luau version 6, Types version 3
-- Time taken: 0.016690 seconds

local ChromeShared = script:FindFirstAncestor("ChromeShared")
local CorePackages = game:GetService("CorePackages")
local tbl_2_upvr = {
	dampingRatio = 1;
	frequency = 3;
}
local tbl_upvr = {
	INTEGRATION = 1;
	CLOSE_BUTTON = 2;
	INPUT_SHIELD = 3;
	INPUT_WRAPPER = 4;
}
local useWindowSize_upvr = require(ChromeShared.Hooks.useWindowSize)
local React_upvr = require(CorePackages.Packages.React)
local any_GetFFlagSelfViewFixes_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSelfViewFixes()
local useSelector_upvr = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector
local ReactOtter_upvr = require(CorePackages.Packages.ReactOtter)
local Service_upvr = require(ChromeShared.Service)
local any_GetFFlagWindowFixes_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagWindowFixes()
local Constants_upvr = require(ChromeShared.Unibar.Constants)
local any_GetFFlagEnableChromeAnalytics_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromeAnalytics()
local ChromeAnalytics_upvr = require(ChromeShared.Analytics.ChromeAnalytics)
local UserInputService_upvr = game:GetService("UserInputService")
local shouldRejectMultiTouch_upvr = require(ChromeShared.Utility.shouldRejectMultiTouch)
local GetFFlagSelfieViewMoreFixMigration_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSelfieViewMoreFixMigration
local VRService_upvr = game:GetService("VRService")
local var20_upvw = false
local MouseIconOverrideService_upvr = require(CorePackages.InGameServices.MouseIconOverrideService)
local any_named_result1_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol.named("SelfieViewCursorOverride")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("WindowDragDetection", false)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("WindowMinDragDistance", 25)
local GetFFlagSelfViewAssertFix_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSelfViewAssertFix
local TweenService_upvr = game:GetService("TweenService")
local game_DefineFastInt_result1_upvr = game:DefineFastInt("ChromeWindowLayoutOrder", 2)
local ReactRoblox_upvr = require(CorePackages.Packages.ReactRoblox)
local debounce_upvr = require(ChromeShared.Utility.debounce)
local Interactable_upvr = require(CorePackages.Packages.UIBlox).Core.Control.Interactable
local CoreGui_upvr = game:GetService("CoreGui")
return function(arg1) -- Line 62
	--[[ Upvalues[28]:
		[1]: useWindowSize_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: any_GetFFlagSelfViewFixes_result1_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: ReactOtter_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: Service_upvr (readonly)
		[8]: any_GetFFlagWindowFixes_result1_upvr (readonly)
		[9]: Constants_upvr (readonly)
		[10]: any_GetFFlagEnableChromeAnalytics_result1_upvr (readonly)
		[11]: ChromeAnalytics_upvr (readonly)
		[12]: UserInputService_upvr (readonly)
		[13]: shouldRejectMultiTouch_upvr (readonly)
		[14]: GetFFlagSelfieViewMoreFixMigration_upvr (readonly)
		[15]: VRService_upvr (readonly)
		[16]: var20_upvw (read and write)
		[17]: MouseIconOverrideService_upvr (readonly)
		[18]: any_named_result1_upvr (readonly)
		[19]: game_DefineFastFlag_result1_upvr (readonly)
		[20]: game_DefineFastInt_result1_upvr_2 (readonly)
		[21]: GetFFlagSelfViewAssertFix_upvr (readonly)
		[22]: TweenService_upvr (readonly)
		[23]: game_DefineFastInt_result1_upvr (readonly)
		[24]: ReactRoblox_upvr (readonly)
		[25]: debounce_upvr (readonly)
		[26]: Interactable_upvr (readonly)
		[27]: tbl_upvr (readonly)
		[28]: CoreGui_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 52 start (CF ANALYSIS FAILED)
	local useWindowSize_upvr_result1_upvr = useWindowSize_upvr(arg1.integration.integration)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useRef_result1_upvw = React_upvr.useRef(nil)
	local _, any_useBinding_result2_upvr_2 = React_upvr.useBinding(false)
	local var37_upvw = 0
	local var39
	if any_GetFFlagSelfViewFixes_result1_upvr then
		var39 = useSelector_upvr
		var39 = var39(function(arg1_2) -- Line 73
			local menuOpen = arg1_2.displayOptions.menuOpen
			if not menuOpen then
				menuOpen = arg1_2.displayOptions.inspectMenuOpen
			end
			return menuOpen
		end)
	else
		var39 = nil
	end
	local any_useBinding_result1_upvr, any_useBinding_result2_upvr = React_upvr.useBinding(false)
	local any_useAnimatedBinding_result1_upvr_2, any_useAnimatedBinding_result2_upvr_2 = ReactOtter_upvr.useAnimatedBinding(useWindowSize_upvr_result1_upvr.X.Offset)
	local any_useAnimatedBinding_result1_upvr, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(useWindowSize_upvr_result1_upvr.Y.Offset)
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 84
		--[[ Upvalues[3]:
			[1]: any_useAnimatedBinding_result1_upvr_2 (readonly)
			[2]: any_useAnimatedBinding_result1_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		local windowAnchorPoint = arg1.integration.integration.windowAnchorPoint
		if not windowAnchorPoint then
			windowAnchorPoint = Vector2.zero
		end
		return Vector2.new(any_useAnimatedBinding_result1_upvr_2:getValue(), any_useAnimatedBinding_result1_upvr:getValue()) * windowAnchorPoint
	end, {any_useAnimatedBinding_result1_upvr_2, any_useAnimatedBinding_result1_upvr, arg1.integration})
	React_upvr.useEffect(function() -- Line 89
		--[[ Upvalues[5]:
			[1]: any_useAnimatedBinding_result1_upvr_2 (readonly)
			[2]: any_useAnimatedBinding_result2_upvr_2 (readonly)
			[3]: ReactOtter_upvr (copied, readonly)
			[4]: useWindowSize_upvr_result1_upvr (readonly)
			[5]: tbl_2_upvr (copied, readonly)
		]]
		if any_useAnimatedBinding_result1_upvr_2:getValue() == 0 then
			any_useAnimatedBinding_result2_upvr_2(ReactOtter_upvr.instant(useWindowSize_upvr_result1_upvr.X.Offset))
		else
			any_useAnimatedBinding_result2_upvr_2(ReactOtter_upvr.spring(useWindowSize_upvr_result1_upvr.X.Offset, tbl_2_upvr))
		end
	end, {useWindowSize_upvr_result1_upvr.X.Offset})
	React_upvr.useEffect(function() -- Line 97
		--[[ Upvalues[5]:
			[1]: any_useAnimatedBinding_result1_upvr (readonly)
			[2]: any_useAnimatedBinding_result2_upvr (readonly)
			[3]: ReactOtter_upvr (copied, readonly)
			[4]: useWindowSize_upvr_result1_upvr (readonly)
			[5]: tbl_2_upvr (copied, readonly)
		]]
		if any_useAnimatedBinding_result1_upvr:getValue() == 0 then
			any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.instant(useWindowSize_upvr_result1_upvr.Y.Offset))
		else
			any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(useWindowSize_upvr_result1_upvr.Y.Offset, tbl_2_upvr))
		end
	end, {useWindowSize_upvr_result1_upvr.Y.Offset})
	React_upvr.useEffect(function() -- Line 109
		--[[ Upvalues[16]:
			[1]: Service_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_GetFFlagWindowFixes_result1_upvr (copied, readonly)
			[4]: any_useRef_result1_upvr (readonly)
			[5]: any_useRef_result1_upvw (read and write)
			[6]: any_useBinding_result2_upvr_2 (readonly)
			[7]: any_useAnimatedBinding_result2_upvr_2 (readonly)
			[8]: ReactOtter_upvr (copied, readonly)
			[9]: Constants_upvr (copied, readonly)
			[10]: any_useAnimatedBinding_result2_upvr (readonly)
			[11]: useWindowSize_upvr_result1_upvr (readonly)
			[12]: tbl_2_upvr (copied, readonly)
			[13]: any_GetFFlagEnableChromeAnalytics_result1_upvr (copied, readonly)
			[14]: ChromeAnalytics_upvr (copied, readonly)
			[15]: UserInputService_upvr (copied, readonly)
			[16]: shouldRejectMultiTouch_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 59 start (CF ANALYSIS FAILED)
		local var57
		local any_dragConnection_result1 = Service_upvr:dragConnection(arg1.integration.id)
		local var59
		if not any_GetFFlagWindowFixes_result1_upvr or any_dragConnection_result1 then
			var57 = any_dragConnection_result1.connection
		end
		if any_useRef_result1_upvr.current == nil then
			var59 = false
		else
			var59 = true
		end
		assert(var59)
		if any_useRef_result1_upvr.current.Parent == nil then
			var59 = false
		else
			var59 = true
		end
		assert(var59)
		var59 = any_useRef_result1_upvr
		var59 = any_useRef_result1_upvr.current:FindFirstAncestorWhichIsA("ScreenGui")
		if var57 ~= nil then
			any_useRef_result1_upvw = var57
			any_useBinding_result2_upvr_2(true)
			if any_useRef_result1_upvw then
				any_useAnimatedBinding_result2_upvr_2(ReactOtter_upvr.instant(Constants_upvr.WINDOW_ICON_SIZE))
				any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.instant(Constants_upvr.WINDOW_ICON_SIZE))
				task.defer(any_useAnimatedBinding_result2_upvr_2, ReactOtter_upvr.spring(useWindowSize_upvr_result1_upvr.X.Offset, tbl_2_upvr))
				task.defer(any_useAnimatedBinding_result2_upvr, ReactOtter_upvr.spring(useWindowSize_upvr_result1_upvr.Y.Offset, tbl_2_upvr))
				local vector3_upvr = Vector3.new(any_useRef_result1_upvr.current.AbsolutePosition.X, any_useRef_result1_upvr.current.AbsolutePosition.Y, 0)
				if any_GetFFlagEnableChromeAnalytics_result1_upvr then
					ChromeAnalytics_upvr.default:setWindowDefaultPosition(arg1.integration.id, Vector2.new(vector3_upvr.X, vector3_upvr.Y))
				end
				local inputObject_upvw = any_dragConnection_result1.inputObject
				local AbsoluteSize_upvr = var59.AbsoluteSize
				local current_upvr = var59.current
				any_useRef_result1_upvw.current = UserInputService_upvr.InputChanged:Connect(function(arg1_3, arg2) -- Line 147
					--[[ Upvalues[6]:
						[1]: shouldRejectMultiTouch_upvr (copied, readonly)
						[2]: inputObject_upvw (read and write)
						[3]: vector3_upvr (readonly)
						[4]: vector3_upvr (readonly)
						[5]: AbsoluteSize_upvr (readonly)
						[6]: current_upvr (readonly)
					]]
					if shouldRejectMultiTouch_upvr(inputObject_upvw, arg1_3) then
					else
						local var65 = arg1_3.Position - vector3_upvr
						local tbl_5 = {
							X = math.clamp((var65 + vector3_upvr).X, 0, AbsoluteSize_upvr.X);
							Y = math.clamp((var65 + vector3_upvr).Y, 0, AbsoluteSize_upvr.Y);
						}
						current_upvr.Position = UDim2.fromOffset(tbl_5.X, tbl_5.Y)
					end
				end)
				-- KONSTANTWARNING: GOTO [246] #172
			end
		else
			vector3_upvr = arg1.position
			if not vector3_upvr then
				vector3_upvr = UDim2.new()
				local var67 = vector3_upvr
			end
			local cachePosition = arg1.integration.integration.cachePosition
			if cachePosition then
				cachePosition = Service_upvr:windowPosition(arg1.integration.id)
				if not cachePosition then
					cachePosition = UDim2.new()
				end
				if cachePosition.X.Scale == 1 then
				else
				end
				current_upvr.Position = UDim2.new(0, 0 + cachePosition.X.Offset, 0, cachePosition.Y.Offset)
			else
				if var67.X.Scale == 1 then
				else
				end
				current_upvr.Position = UDim2.new(0, 0 + var67.X.Offset, 0, var67.Y.Offset)
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 59 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [246] 172. Error Block 35 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [246] 172. Error Block 35 end (CF ANALYSIS FAILED)
	end, {})
	if GetFFlagSelfieViewMoreFixMigration_upvr() then
		local function _() -- Line 186
			--[[ Upvalues[4]:
				[1]: VRService_upvr (copied, readonly)
				[2]: var20_upvw (copied, read and write)
				[3]: MouseIconOverrideService_upvr (copied, readonly)
				[4]: any_named_result1_upvr (copied, readonly)
			]]
			if not VRService_upvr.VREnabled then
				var20_upvw = true
				MouseIconOverrideService_upvr.push(any_named_result1_upvr, Enum.OverrideMouseIconBehavior.ForceShow)
			end
		end
		-- KONSTANTWARNING: GOTO [159] #125
	end
	-- KONSTANTERROR: [0] 1. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [158] 124. Error Block 60 start (CF ANALYSIS FAILED)
	if GetFFlagSelfieViewMoreFixMigration_upvr() then
		local function _() -- Line 198
			--[[ Upvalues[3]:
				[1]: var20_upvw (copied, read and write)
				[2]: MouseIconOverrideService_upvr (copied, readonly)
				[3]: any_named_result1_upvr (copied, readonly)
			]]
			if var20_upvw then
				var20_upvw = false
				MouseIconOverrideService_upvr.pop(any_named_result1_upvr)
			end
		end
	else
	end
	local function _(arg1_5, arg2) -- Line 206
		--[[ Upvalues[15]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useCallback_result1_upvr_2 (readonly)
			[3]: any_GetFFlagEnableChromeAnalytics_result1_upvr (copied, readonly)
			[4]: ChromeAnalytics_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: any_useRef_result1_upvw (read and write)
			[7]: any_useBinding_result1_upvr (readonly)
			[8]: any_useAnimatedBinding_result1_upvr_2 (readonly)
			[9]: any_useAnimatedBinding_result1_upvr (readonly)
			[10]: UserInputService_upvr (copied, readonly)
			[11]: shouldRejectMultiTouch_upvr (copied, readonly)
			[12]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[13]: var37_upvw (read and write)
			[14]: game_DefineFastInt_result1_upvr_2 (copied, readonly)
			[15]: any_useBinding_result2_upvr_2 (readonly)
		]]
		local var74
		if any_useRef_result1_upvr.current == nil then
			var74 = false
		else
			var74 = true
		end
		assert(var74)
		if any_useRef_result1_upvr.current.Parent == nil then
			var74 = false
		else
			var74 = true
		end
		assert(var74)
		var74 = any_useRef_result1_upvr
		local current_2_upvr = var74.current
		var74 = any_useRef_result1_upvr.current:FindFirstAncestorWhichIsA("ScreenGui")
		local AbsoluteSize_5_upvr = var74.AbsoluteSize
		local var51_result1_3_upvr = any_useCallback_result1_upvr_2()
		local vector3_upvr_2 = Vector3.new(any_useRef_result1_upvr.current.AbsolutePosition.X + var51_result1_3_upvr.X, any_useRef_result1_upvr.current.AbsolutePosition.Y + var51_result1_3_upvr.Y, 0)
		if arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.Touch then
			if any_GetFFlagEnableChromeAnalytics_result1_upvr then
				ChromeAnalytics_upvr.default:onWindowTouchBegan(arg1.integration.id, Vector2.new(any_useRef_result1_upvr.current.AbsolutePosition.X, any_useRef_result1_upvr.current.AbsolutePosition.Y))
			end
			if not any_useRef_result1_upvw.current and not any_useBinding_result1_upvr:getValue() then
				local tbl_3 = {
					X = math.clamp(vector3_upvr_2.X, 0, (AbsoluteSize_5_upvr.X) - (any_useAnimatedBinding_result1_upvr_2:getValue() - var51_result1_3_upvr.X));
					Y = math.clamp(vector3_upvr_2.Y, 0, (AbsoluteSize_5_upvr.Y) - (any_useAnimatedBinding_result1_upvr:getValue() - var51_result1_3_upvr.Y));
				}
				current_2_upvr.Position = UDim2.fromOffset(tbl_3.X, tbl_3.Y)
				local Position_upvr = arg2.Position
				any_useRef_result1_upvw.current = UserInputService_upvr.InputChanged:Connect(function(arg1_6, arg2_2) -- Line 253
					--[[ Upvalues[16]:
						[1]: shouldRejectMultiTouch_upvr (copied, readonly)
						[2]: arg2 (readonly)
						[3]: Position_upvr (readonly)
						[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
						[5]: var37_upvw (copied, read and write)
						[6]: game_DefineFastInt_result1_upvr_2 (copied, readonly)
						[7]: any_useBinding_result2_upvr_2 (copied, readonly)
						[8]: vector3_upvr_2 (readonly)
						[9]: var51_result1_3_upvr (readonly)
						[10]: AbsoluteSize_5_upvr (readonly)
						[11]: any_useAnimatedBinding_result1_upvr_2 (copied, readonly)
						[12]: any_useAnimatedBinding_result1_upvr (copied, readonly)
						[13]: current_2_upvr (readonly)
						[14]: any_GetFFlagEnableChromeAnalytics_result1_upvr (copied, readonly)
						[15]: ChromeAnalytics_upvr (copied, readonly)
						[16]: arg1 (copied, readonly)
					]]
					if shouldRejectMultiTouch_upvr(arg2, arg1_6) then
					else
						local Position = arg1_6.Position
						local var83 = Position - Position_upvr
						if game_DefineFastFlag_result1_upvr then
							var37_upvw += var83.Magnitude
						end
						if not game_DefineFastFlag_result1_upvr or game_DefineFastInt_result1_upvr_2 < var37_upvw then
							any_useBinding_result2_upvr_2(true)
							local tbl_4 = {
								X = math.clamp((var83 + vector3_upvr_2).X, var51_result1_3_upvr.X, (AbsoluteSize_5_upvr.X) - (any_useAnimatedBinding_result1_upvr_2:getValue() - var51_result1_3_upvr.X));
								Y = math.clamp((var83 + vector3_upvr_2).Y, var51_result1_3_upvr.Y, (AbsoluteSize_5_upvr.Y) - (any_useAnimatedBinding_result1_upvr:getValue() - var51_result1_3_upvr.Y));
							}
							current_2_upvr.Position = UDim2.fromOffset(tbl_4.X, tbl_4.Y)
							if any_GetFFlagEnableChromeAnalytics_result1_upvr then
								ChromeAnalytics_upvr.default:onWindowDrag(arg1.integration.id, Position)
							end
						end
					end
				end)
			end
		end
	end
	local _ = {any_useCallback_result1_upvr_2}
	local function var86_upvr(arg1_7) -- Line 291
		--[[ Upvalues[3]:
			[1]: any_useCallback_result1_upvr_2 (readonly)
			[2]: any_useAnimatedBinding_result1_upvr_2 (readonly)
			[3]: any_useAnimatedBinding_result1_upvr (readonly)
		]]
		local Offset_3 = arg1_7.Position.X.Offset
		local Offset_2 = arg1_7.Position.Y.Offset
		local var51_result1 = any_useCallback_result1_upvr_2()
		local AbsoluteSize_3 = arg1_7.Parent.AbsoluteSize
		local var100 = true
		if Offset_3 >= var51_result1.X then
			var100 = true
			if (AbsoluteSize_3.X) - (any_useAnimatedBinding_result1_upvr_2:getValue() - var51_result1.X) >= Offset_3 then
				var100 = true
				if Offset_2 >= var51_result1.Y then
					if (AbsoluteSize_3.Y) - (any_useAnimatedBinding_result1_upvr:getValue() - var51_result1.Y) >= Offset_2 then
						var100 = false
					else
						var100 = true
					end
				end
			end
		end
		return var100
	end
	local any_useMemo_result1_upvw = React_upvr.useMemo(function() -- Line 68
		return nil
	end, {})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function(arg1_4) -- Line 179
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Service_upvr (copied, readonly)
		]]
		if arg1.integration.integration.cachePosition then
			Service_upvr:updateWindowPosition(arg1.integration.id, arg1_4)
		end
	end, {arg1.integration})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_8) -- Line 308
		--[[ Upvalues[10]:
			[1]: GetFFlagSelfViewAssertFix_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: any_useMemo_result1_upvw (read and write)
			[4]: var86_upvr (readonly)
			[5]: any_useCallback_result1_upvr_2 (readonly)
			[6]: any_useAnimatedBinding_result1_upvr_2 (readonly)
			[7]: any_useAnimatedBinding_result1_upvr (readonly)
			[8]: any_useCallback_result1_upvr_3 (readonly)
			[9]: any_useBinding_result2_upvr (readonly)
			[10]: TweenService_upvr (copied, readonly)
		]]
		local var104
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var104 = any_useRef_result1_upvr
			return var104.current == nil
		end
		if GetFFlagSelfViewAssertFix_upvr() and (any_useRef_result1_upvr == nil or INLINED()) then
		else
			if any_useRef_result1_upvr.current == nil then
				var104 = false
			else
				var104 = true
			end
			assert(var104)
			if any_useRef_result1_upvr.current.Parent == nil then
				var104 = false
			else
				var104 = true
			end
			assert(var104)
			var104 = any_useRef_result1_upvr
			local current = var104.current
			var104 = current.Position.X.Offset
			if any_useMemo_result1_upvw and any_useMemo_result1_upvw.PlaybackState == Enum.PlaybackState.Playing then
				any_useMemo_result1_upvw:Cancel()
			end
			local var106
			if var86_upvr(current) then
				if current == nil then
				else
					local var51_result1_2 = any_useCallback_result1_upvr_2()
					local AbsoluteSize = any_useRef_result1_upvr.current.Parent.AbsoluteSize
					local var109 = 0
					var106 = 0
					if any_useAnimatedBinding_result1_upvr_2:getValue() < AbsoluteSize.X then
						var109 = math.clamp(var104, var51_result1_2.X, (AbsoluteSize.X) - (any_useAnimatedBinding_result1_upvr_2:getValue() - var51_result1_2.X))
					end
					if any_useAnimatedBinding_result1_upvr:getValue() < AbsoluteSize.Y then
						var106 = math.clamp(current.Position.Y.Offset, var51_result1_2.Y, (AbsoluteSize.Y) - (any_useAnimatedBinding_result1_upvr:getValue() - var51_result1_2.Y))
					end
					local udim2 = UDim2.new(0, var109, 0, var106)
					any_useCallback_result1_upvr_3(udim2)
					local var111
					if not arg1_8 then
						any_useBinding_result2_upvr(true)
						var111 = Enum.EasingStyle.Quad
						any_useMemo_result1_upvw = TweenService_upvr:Create(current, TweenInfo.new(0.35, var111, Enum.EasingDirection.InOut), {
							Position = udim2;
						})
						if any_useMemo_result1_upvw == nil then
							var111 = false
						else
							var111 = true
						end
						assert(var111)
						var111 = any_useMemo_result1_upvw
						var111.Completed:Connect(function(arg1_9) -- Line 364
							--[[ Upvalues[2]:
								[1]: any_useBinding_result2_upvr (copied, readonly)
								[2]: any_useMemo_result1_upvw (copied, read and write)
							]]
							any_useBinding_result2_upvr(false)
							any_useMemo_result1_upvw = nil
						end)
						any_useMemo_result1_upvw:Play()
						return
					end
					current.Position = udim2
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			any_useCallback_result1_upvr_3(UDim2.new(0, var104, 0, current.Position.Y.Offset))
		end
	end, {any_useCallback_result1_upvr_2})
	local function _(arg1_10, arg2) -- Line 377
		--[[ Upvalues[11]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: var37_upvw (read and write)
			[3]: any_useRef_result1_upvr (readonly)
			[4]: any_GetFFlagEnableChromeAnalytics_result1_upvr (copied, readonly)
			[5]: ChromeAnalytics_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: var86_upvr (readonly)
			[8]: any_useRef_result1_upvw (read and write)
			[9]: any_useBinding_result2_upvr_2 (readonly)
			[10]: Service_upvr (copied, readonly)
			[11]: any_useCallback_result1_upvr (readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			var37_upvw = 0
		end
		if arg2.UserInputType == Enum.UserInputType.MouseButton1 or arg2.UserInputType == Enum.UserInputType.Touch then
			if any_useRef_result1_upvr.current then
				if any_GetFFlagEnableChromeAnalytics_result1_upvr then
					ChromeAnalytics_upvr.default:onWindowTouchEnded(arg1.integration.id, Vector2.new(any_useRef_result1_upvr.current.AbsolutePosition.X, any_useRef_result1_upvr.current.AbsolutePosition.Y), var86_upvr(any_useRef_result1_upvr.current))
				end
			end
			if any_useRef_result1_upvw.current then
				any_useRef_result1_upvw.current:Disconnect()
				any_useRef_result1_upvw.current = nil
				any_useBinding_result2_upvr_2(false)
				Service_upvr:gesture(arg1.integration.id, nil)
				any_useCallback_result1_upvr()
			end
		end
	end
	local tbl = {
		Name = Constants_upvr.WINDOW_HOST_GUI_NAME..':'..arg1.integration.id;
		[React_upvr.Change.AbsoluteSize] = debounce_upvr(function() -- Line 412
			--[[ Upvalues[1]:
				[1]: any_useCallback_result1_upvr (readonly)
			]]
			any_useCallback_result1_upvr()
		end, 0.2);
	}
	if not any_GetFFlagSelfViewFixes_result1_upvr then
	elseif var39 then
	else
	end
	tbl.DisplayOrder = game_DefineFastInt_result1_upvr
	tbl.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	local tbl_6 = {
		Size = React_upvr.joinBindings({any_useAnimatedBinding_result1_upvr_2, any_useAnimatedBinding_result1_upvr}):map(function(arg1_11) -- Line 419
			--[[ Upvalues[1]:
				[1]: any_useCallback_result1_upvr (readonly)
			]]
			any_useCallback_result1_upvr(true)
			return UDim2.fromOffset(arg1_11[1], arg1_11[2])
		end);
		LayoutOrder = 1;
		ref = any_useRef_result1_upvr;
		BorderSizePixel = 0;
	}
	if arg1.integration.integration.windowAnchorPoint then
		-- KONSTANTWARNING: GOTO [332] #262
	end
	-- KONSTANTERROR: [158] 124. Error Block 60 end (CF ANALYSIS FAILED)
end