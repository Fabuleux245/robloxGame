-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:36
-- Luau version 6, Types version 3
-- Time taken: 0.106865 seconds

local TweenService_upvr = game:GetService("TweenService")
local UserInputService_upvr = game:GetService("UserInputService")
local HttpService_upvr = game:GetService("HttpService")
local TextService_upvr = game:GetService("TextService")
local GuiService_upvr = game:GetService("GuiService")
local script = script
local TopbarPlusReference = require(script.TopbarPlusReference)
local any_getObject_result1 = TopbarPlusReference.getObject()
local var9
if var9 then
	var9 = any_getObject_result1.Value
end
if var9 and var9 ~= script then
	return require(var9)
end
if not any_getObject_result1 then
	TopbarPlusReference.addToReplicatedStorage()
end
local module_upvr_2 = {}
module_upvr_2.__index = module_upvr_2
local IconController_upvr = require(script.IconController)
local Signal_upvr = require(script.Signal)
local Maid_upvr = require(script.Maid)
local TopbarPlusGui_upvr = require(script.TopbarPlusGui)
local Themes_upvr = require(script.Themes)
local ActiveItems_upvr = TopbarPlusGui_upvr.ActiveItems
local TopbarContainer_upvr = TopbarPlusGui_upvr.TopbarContainer
local New_RobloxTopbar_upvw = Themes_upvr.New_RobloxTopbar
local tbl_6_upvr = {}
local any_new_result1_7_upvr = Signal_upvr.new()
local function topbarInsetChanged() -- Line 39
	--[[ Upvalues[4]:
		[1]: GuiService_upvr (readonly)
		[2]: Themes_upvr (readonly)
		[3]: New_RobloxTopbar_upvw (read and write)
		[4]: any_new_result1_7_upvr (readonly)
	]]
	local var22
	if var22 == 0 then
	else
		var22 = nil
		if 36 < GuiService_upvr.TopbarInset.Height then
			var22 = Themes_upvr.New_RobloxTopbar
		else
			var22 = Themes_upvr.Old_RobloxTopbar
		end
		if var22 ~= nil and New_RobloxTopbar_upvw ~= var22 then
			New_RobloxTopbar_upvw = var22
			any_new_result1_7_upvr:Fire(New_RobloxTopbar_upvw, var22)
		end
	end
end
pcall(topbarInsetChanged)
GuiService_upvr:GetPropertyChangedSignal("TopbarInset"):Connect(topbarInsetChanged)
local IconContainer_upvr = TopbarContainer_upvr.IconContainer
local StarterGui_upvr = game:GetService("StarterGui")
local RunService_upvr = game:GetService("RunService")
function module_upvr_2.new() -- Line 60
	--[[ Upvalues[15]:
		[1]: module_upvr_2 (readonly)
		[2]: Maid_upvr (readonly)
		[3]: IconContainer_upvr (readonly)
		[4]: TopbarContainer_upvr (readonly)
		[5]: tbl_6_upvr (readonly)
		[6]: StarterGui_upvr (readonly)
		[7]: IconController_upvr (readonly)
		[8]: TweenService_upvr (readonly)
		[9]: Signal_upvr (readonly)
		[10]: HttpService_upvr (readonly)
		[11]: New_RobloxTopbar_upvw (read and write)
		[12]: any_new_result1_7_upvr (readonly)
		[13]: GuiService_upvr (readonly)
		[14]: UserInputService_upvr (readonly)
		[15]: RunService_upvr (readonly)
	]]
	local module_upvr = {}
	setmetatable(module_upvr, module_upvr_2)
	local any_new_result1 = Maid_upvr.new()
	module_upvr._maid = any_new_result1
	module_upvr._hoveringMaid = any_new_result1:give(Maid_upvr.new())
	module_upvr._dropdownClippingMaid = any_new_result1:give(Maid_upvr.new())
	module_upvr._menuClippingMaid = any_new_result1:give(Maid_upvr.new())
	local tbl_upvr = {}
	module_upvr.instances = tbl_upvr
	local any_give_result1 = any_new_result1:give(IconContainer_upvr:Clone())
	any_give_result1.Visible = true
	any_give_result1.Parent = TopbarContainer_upvr
	tbl_upvr.iconContainer = any_give_result1
	tbl_upvr.iconButton = any_give_result1.IconButton
	tbl_upvr.iconImage = tbl_upvr.iconButton.IconImage
	tbl_upvr.iconLabel = tbl_upvr.iconButton.IconLabel
	tbl_upvr.fakeIconLabel = tbl_upvr.iconButton.FakeIconLabel
	tbl_upvr.iconGradient = tbl_upvr.iconButton.IconGradient
	tbl_upvr.iconCorner = tbl_upvr.iconButton.IconCorner
	tbl_upvr.iconOverlay = any_give_result1.IconOverlay
	tbl_upvr.iconOverlayCorner = tbl_upvr.iconOverlay.IconOverlayCorner
	tbl_upvr.noticeFrame = tbl_upvr.iconButton.NoticeFrame
	tbl_upvr.noticeLabel = tbl_upvr.noticeFrame.NoticeLabel
	tbl_upvr.captionContainer = any_give_result1.CaptionContainer
	tbl_upvr.captionFrame = tbl_upvr.captionContainer.CaptionFrame
	tbl_upvr.captionLabel = tbl_upvr.captionContainer.CaptionLabel
	tbl_upvr.captionCorner = tbl_upvr.captionFrame.CaptionCorner
	tbl_upvr.captionOverlineContainer = tbl_upvr.captionContainer.CaptionOverlineContainer
	tbl_upvr.captionOverline = tbl_upvr.captionOverlineContainer.CaptionOverline
	tbl_upvr.captionOverlineCorner = tbl_upvr.captionOverline.CaptionOverlineCorner
	tbl_upvr.captionVisibilityBlocker = tbl_upvr.captionFrame.CaptionVisibilityBlocker
	tbl_upvr.captionVisibilityCorner = tbl_upvr.captionVisibilityBlocker.CaptionVisibilityCorner
	tbl_upvr.tipFrame = any_give_result1.TipFrame
	tbl_upvr.tipLabel = tbl_upvr.tipFrame.TipLabel
	tbl_upvr.tipCorner = tbl_upvr.tipFrame.TipCorner
	tbl_upvr.dropdownContainer = any_give_result1.DropdownContainer
	tbl_upvr.dropdownFrame = tbl_upvr.dropdownContainer.DropdownFrame
	tbl_upvr.dropdownList = tbl_upvr.dropdownFrame.DropdownList
	tbl_upvr.menuContainer = any_give_result1.MenuContainer
	tbl_upvr.menuFrame = tbl_upvr.menuContainer.MenuFrame
	tbl_upvr.menuList = tbl_upvr.menuFrame.MenuList
	tbl_upvr.clickSound = any_give_result1.ClickSound
	module_upvr._settings = {
		action = {
			toggleTransitionInfo = {};
			resizeInfo = {};
			repositionInfo = {};
			captionFadeInfo = {};
			tipFadeInfo = {};
			dropdownSlideInfo = {};
			menuSlideInfo = {};
		};
		toggleable = {
			iconBackgroundColor = {
				instanceNames = {"iconButton"};
				propertyName = "BackgroundColor3";
			};
			iconBackgroundTransparency = {
				instanceNames = {"iconButton"};
				propertyName = "BackgroundTransparency";
			};
			iconCornerRadius = {
				instanceNames = {"iconCorner", "iconOverlayCorner"};
				propertyName = "CornerRadius";
			};
			iconGradientColor = {
				instanceNames = {"iconGradient"};
				propertyName = "Color";
			};
			iconGradientRotation = {
				instanceNames = {"iconGradient"};
				propertyName = "Rotation";
			};
			iconImage = {
				callMethods = {module_upvr._updateIconSize};
				instanceNames = {"iconImage"};
				propertyName = "Image";
			};
			iconImageColor = {
				instanceNames = {"iconImage"};
				propertyName = "ImageColor3";
			};
			iconImageTransparency = {
				instanceNames = {"iconImage"};
				propertyName = "ImageTransparency";
			};
			iconScale = {
				instanceNames = {"iconButton"};
				propertyName = "Size";
			};
			forcedIconSizeX = {};
			forcedIconSizeY = {};
			iconSize = {
				callSignals = {module_upvr.updated};
				callMethods = {module_upvr._updateIconSize};
				instanceNames = {"iconContainer"};
				propertyName = "Size";
				tweenAction = "resizeInfo";
			};
			iconOffset = {
				instanceNames = {"iconButton"};
				propertyName = "Position";
			};
			iconText = {
				callMethods = {module_upvr._updateIconSize};
				instanceNames = {"iconLabel"};
				propertyName = "Text";
			};
			iconTextColor = {
				instanceNames = {"iconLabel"};
				propertyName = "TextColor3";
			};
			iconFont = {
				callMethods = {module_upvr._updateIconSize};
				instanceNames = {"iconLabel"};
				propertyName = "Font";
			};
			iconImageYScale = {
				callMethods = {module_upvr._updateIconSize};
			};
			iconImageRatio = {
				callMethods = {module_upvr._updateIconSize};
			};
			iconLabelYScale = {
				callMethods = {module_upvr._updateIconSize};
			};
			noticeCircleColor = {
				instanceNames = {"noticeFrame"};
				propertyName = "ImageColor3";
			};
			noticeCircleImage = {
				instanceNames = {"noticeFrame"};
				propertyName = "Image";
			};
			noticeTextColor = {
				instanceNames = {"noticeLabel"};
				propertyName = "TextColor3";
			};
			noticeImageTransparency = {
				instanceNames = {"noticeFrame"};
				propertyName = "ImageTransparency";
			};
			noticeTextTransparency = {
				instanceNames = {"noticeLabel"};
				propertyName = "TextTransparency";
			};
			baseZIndex = {
				callMethods = {module_upvr._updateBaseZIndex};
			};
			order = {
				callSignals = {module_upvr.updated};
				instanceNames = {"iconContainer"};
				propertyName = "LayoutOrder";
			};
			alignment = {
				callSignals = {module_upvr.updated};
				callMethods = {module_upvr._updateDropdown};
			};
			iconImageVisible = {
				instanceNames = {"iconImage"};
				propertyName = "Visible";
			};
			iconImageAnchorPoint = {
				instanceNames = {"iconImage"};
				propertyName = "AnchorPoint";
			};
			iconImagePosition = {
				instanceNames = {"iconImage"};
				propertyName = "Position";
				tweenAction = "resizeInfo";
			};
			iconImageSize = {
				instanceNames = {"iconImage"};
				propertyName = "Size";
				tweenAction = "resizeInfo";
			};
			iconImageTextXAlignment = {
				instanceNames = {"iconImage"};
				propertyName = "TextXAlignment";
			};
			iconLabelVisible = {
				instanceNames = {"iconLabel"};
				propertyName = "Visible";
			};
			iconLabelAnchorPoint = {
				instanceNames = {"iconLabel"};
				propertyName = "AnchorPoint";
			};
			iconLabelPosition = {
				instanceNames = {"iconLabel"};
				propertyName = "Position";
				tweenAction = "resizeInfo";
			};
			iconLabelSize = {
				instanceNames = {"iconLabel"};
				propertyName = "Size";
				tweenAction = "resizeInfo";
			};
			iconLabelTextXAlignment = {
				instanceNames = {"iconLabel"};
				propertyName = "TextXAlignment";
			};
			iconLabelTextSize = {
				instanceNames = {"iconLabel"};
				propertyName = "TextSize";
			};
			noticeFramePosition = {
				instanceNames = {"noticeFrame"};
				propertyName = "Position";
			};
			clickSoundId = {
				instanceNames = {"clickSound"};
				propertyName = "SoundId";
			};
			clickVolume = {
				instanceNames = {"clickSound"};
				propertyName = "Volume";
			};
			clickPlaybackSpeed = {
				instanceNames = {"clickSound"};
				propertyName = "PlaybackSpeed";
			};
			clickTimePosition = {
				instanceNames = {"clickSound"};
				propertyName = "TimePosition";
			};
		};
		other = {
			captionBackgroundColor = {
				instanceNames = {"captionFrame"};
				propertyName = "BackgroundColor3";
			};
			captionBackgroundTransparency = {
				instanceNames = {"captionFrame"};
				propertyName = "BackgroundTransparency";
				group = "caption";
			};
			captionBlockerTransparency = {
				instanceNames = {"captionVisibilityBlocker"};
				propertyName = "BackgroundTransparency";
				group = "caption";
			};
			captionOverlineColor = {
				instanceNames = {"captionOverline"};
				propertyName = "BackgroundColor3";
			};
			captionOverlineTransparency = {
				instanceNames = {"captionOverline"};
				propertyName = "BackgroundTransparency";
				group = "caption";
			};
			captionTextColor = {
				instanceNames = {"captionLabel"};
				propertyName = "TextColor3";
			};
			captionTextTransparency = {
				instanceNames = {"captionLabel"};
				propertyName = "TextTransparency";
				group = "caption";
			};
			captionFont = {
				instanceNames = {"captionLabel"};
				propertyName = "Font";
			};
			captionCornerRadius = {
				instanceNames = {"captionCorner", "captionOverlineCorner", "captionVisibilityCorner"};
				propertyName = "CornerRadius";
			};
			tipBackgroundColor = {
				instanceNames = {"tipFrame"};
				propertyName = "BackgroundColor3";
			};
			tipBackgroundTransparency = {
				instanceNames = {"tipFrame"};
				propertyName = "BackgroundTransparency";
				group = "tip";
			};
			tipTextColor = {
				instanceNames = {"tipLabel"};
				propertyName = "TextColor3";
			};
			tipTextTransparency = {
				instanceNames = {"tipLabel"};
				propertyName = "TextTransparency";
				group = "tip";
			};
			tipFont = {
				instanceNames = {"tipLabel"};
				propertyName = "Font";
			};
			tipCornerRadius = {
				instanceNames = {"tipCorner"};
				propertyName = "CornerRadius";
			};
			dropdownSize = {
				instanceNames = {"dropdownContainer"};
				propertyName = "Size";
				unique = "dropdown";
			};
			dropdownCanvasSize = {
				instanceNames = {"dropdownFrame"};
				propertyName = "CanvasSize";
			};
			dropdownMaxIconsBeforeScroll = {
				callMethods = {module_upvr._updateDropdown};
			};
			dropdownMinWidth = {
				callMethods = {module_upvr._updateDropdown};
			};
			dropdownSquareCorners = {
				callMethods = {module_upvr._updateDropdown};
			};
			dropdownBindToggleToIcon = {};
			dropdownToggleOnLongPress = {};
			dropdownToggleOnRightClick = {};
			dropdownCloseOnTapAway = {};
			dropdownHidePlayerlistOnOverlap = {};
			dropdownListPadding = {
				callMethods = {module_upvr._updateDropdown};
				instanceNames = {"dropdownList"};
				propertyName = "Padding";
			};
			dropdownAlignment = {
				callMethods = {module_upvr._updateDropdown};
			};
			dropdownScrollBarColor = {
				instanceNames = {"dropdownFrame"};
				propertyName = "ScrollBarImageColor3";
			};
			dropdownScrollBarTransparency = {
				instanceNames = {"dropdownFrame"};
				propertyName = "ScrollBarImageTransparency";
			};
			dropdownScrollBarThickness = {
				instanceNames = {"dropdownFrame"};
				propertyName = "ScrollBarThickness";
			};
			dropdownIgnoreClipping = {
				callMethods = {module_upvr._dropdownIgnoreClipping};
			};
			menuSize = {
				instanceNames = {"menuContainer"};
				propertyName = "Size";
				unique = "menu";
			};
			menuCanvasSize = {
				instanceNames = {"menuFrame"};
				propertyName = "CanvasSize";
			};
			menuMaxIconsBeforeScroll = {
				callMethods = {module_upvr._updateMenu};
			};
			menuBindToggleToIcon = {};
			menuToggleOnLongPress = {};
			menuToggleOnRightClick = {};
			menuCloseOnTapAway = {};
			menuListPadding = {
				callMethods = {module_upvr._updateMenu};
				instanceNames = {"menuList"};
				propertyName = "Padding";
			};
			menuDirection = {
				callMethods = {module_upvr._updateMenu};
			};
			menuScrollBarColor = {
				instanceNames = {"menuFrame"};
				propertyName = "ScrollBarImageColor3";
			};
			menuScrollBarTransparency = {
				instanceNames = {"menuFrame"};
				propertyName = "ScrollBarImageTransparency";
			};
			menuScrollBarThickness = {
				instanceNames = {"menuFrame"};
				propertyName = "ScrollBarThickness";
			};
			menuIgnoreClipping = {
				callMethods = {module_upvr._menuIgnoreClipping};
			};
		};
	}
	module_upvr._groupSettings = {}
	for _, v in pairs(module_upvr._settings) do
		for i_2, v_2 in pairs(v) do
			local group = v_2.group
			if group then
				local var218 = module_upvr._groupSettings[group]
				if not var218 then
					var218 = {}
					module_upvr._groupSettings[group] = var218
				end
				table.insert(var218, i_2)
				v_2.forcedGroupValue = tbl_6_upvr[group]
				v_2.useForcedGroupValue = true
			end
		end
	end
	module_upvr._settingsDictionary = {}
	module_upvr._uniqueSettings = {}
	module_upvr._uniqueSettingsDictionary = {}
	module_upvr.uniqueValues = {}
	for i_3, v_3 in pairs(module_upvr._settings) do
		for i_4, v_4 in pairs(v_3) do
			if i_3 == "toggleable" then
				if not v_4.values then
				end
				v_4.values = {
					deselected = nil;
					selected = nil;
				}
			else
				v_4.value = nil
			end
			v_4.additionalValues = {}
			v_4.type = i_3
			module_upvr._settingsDictionary[i_4] = v_4
			local unique = v_4.unique
			if unique then
				local var274 = module_upvr._uniqueSettings[unique]
				if not var274 then
					var274 = {}
				end
				table.insert(var274, i_4)
				module_upvr._uniqueSettings[unique] = var274
				module_upvr._uniqueSettingsDictionary[i_4] = ({
					dropdown = function(arg1, arg2, arg3, arg4) -- Line 240
						--[[ Upvalues[4]:
							[1]: module_upvr (readonly)
							[2]: StarterGui_upvr (copied, readonly)
							[3]: IconController_upvr (copied, readonly)
							[4]: TweenService_upvr (copied, readonly)
						]]
						-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
						local var233
						if module_upvr:get("dropdownHidePlayerlistOnOverlap") == true then
							if module_upvr:get("alignment") ~= "right" then
							else
							end
						end
						local dropdownFrame_3 = module_upvr.instances.dropdownFrame
						var233 = not module_upvr.isSelected
						if module_upvr:get("dropdownBindToggleToIcon") == false then
							var233 = not module_upvr.dropdownOpen
						end
						if not module_upvr._longPressing then
							local _rightClicking_2 = module_upvr._rightClicking
						end
						local var236
						local function INLINED_4() -- Internal function, doesn't exist in bytecode
							var236 = module_upvr
							return var236.dropdownOpen
						end
						if module_upvr._tappingAway or var233 and not _rightClicking_2 or _rightClicking_2 and INLINED_4() then
							local any_get_result1_4 = module_upvr:get("dropdownSize")
							local function INLINED_5() -- Internal function, doesn't exist in bytecode
								var236 = any_get_result1_4.X.Offset / 1
								return var236
							end
							if not any_get_result1_4 or not INLINED_5() then
								var236 = 0
							end
							local var238 = false
						end
						var236 = module_upvr.dropdownIcons
						var236 = 0
						if var236 < #var236 and var238 and true then
							local var239
							if StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList) then
								local function INLINED_6() -- Internal function, doesn't exist in bytecode
									var239 = IconController_upvr._bringBackPlayerlist + 1
									return var239
								end
								if not IconController_upvr._bringBackPlayerlist or not INLINED_6() then
									var239 = 1
								end
								IconController_upvr._bringBackPlayerlist = var239
								var239 = true
								module_upvr._bringBackPlayerlist = var239
								StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
								-- KONSTANTWARNING: GOTO [166] #126
							end
						else
							var239 = module_upvr
							if var239._bringBackPlayerlist and not var238 then
								var239 = IconController_upvr
								if var239._bringBackPlayerlist then
									var239 = IconController_upvr._bringBackPlayerlist
									var239 -= 1
									IconController_upvr._bringBackPlayerlist = var239
									var239 = IconController_upvr
									var239 = 0
									if var239._bringBackPlayerlist <= var239 then
										var239 = nil
										IconController_upvr._bringBackPlayerlist = var239
										StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
									end
									var239 = nil
									module_upvr._bringBackPlayerlist = var239
								end
							end
						end
						local any_Create_result1_3 = TweenService_upvr:Create(arg2, module_upvr:get("dropdownSlideInfo"), {
							[arg3] = UDim2.new(0, var236, 0, 0);
						})
						local var244_upvw
						var244_upvw = any_Create_result1_3.Completed:Connect(function() -- Line 276
							--[[ Upvalues[1]:
								[1]: var244_upvw (read and write)
							]]
							var244_upvw:Disconnect()
						end)
						any_Create_result1_3:Play()
						if var238 then
						else
							module_upvr._dropdownCanvasPos = dropdownFrame_3.CanvasPosition
						end
						dropdownFrame_3.ScrollingEnabled = var238
						module_upvr.dropdownOpen = var238
						module_upvr:_decideToCallSignal("dropdown")
					end;
					menu = function(arg1, arg2, arg3, arg4) -- Line 290
						--[[ Upvalues[2]:
							[1]: module_upvr (readonly)
							[2]: TweenService_upvr (copied, readonly)
						]]
						-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
						-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
						local any_get_result1_2 = module_upvr:get("menuSlideInfo")
						local menuFrame = module_upvr.instances.menuFrame
						local var258
						if module_upvr:get("menuBindToggleToIcon") == false then
							var258 = not module_upvr.menuOpen
						end
						if not module_upvr._longPressing then
							local _rightClicking_3 = module_upvr._rightClicking
						end
						local var260_upvw
						local function INLINED_9() -- Internal function, doesn't exist in bytecode
							var260_upvw = module_upvr
							return var260_upvw.menuOpen
						end
						if module_upvr._tappingAway or var258 and not _rightClicking_3 or _rightClicking_3 and INLINED_9() then
							local any_get_result1 = module_upvr:get("menuSize")
							local function INLINED_10() -- Internal function, doesn't exist in bytecode
								var260_upvw = any_get_result1.Y.Offset / 1
								return var260_upvw
							end
							if not any_get_result1 or not INLINED_10() then
								var260_upvw = 0
							end
							local var262 = false
						end
						var260_upvw = module_upvr
						if var262 ~= var260_upvw.menuOpen then
							var260_upvw = module_upvr
							var260_upvw.updated:Fire()
						end
						if var262 then
							var260_upvw = Enum.EasingDirection.Out
							if any_get_result1_2.EasingDirection == var260_upvw then
								var260_upvw = any_get_result1_2.Time
							end
						end
						local any_Create_result1_4 = TweenService_upvr:Create(arg2, TweenInfo.new(var260_upvw, any_get_result1_2.EasingStyle, Enum.EasingDirection.In), {
							[arg3] = UDim2.new(0, 0, 0, var260_upvw);
						})
						var260_upvw = nil
						var260_upvw = any_Create_result1_4.Completed:Connect(function() -- Line 316
							--[[ Upvalues[1]:
								[1]: var260_upvw (read and write)
							]]
							var260_upvw:Disconnect()
						end)
						any_Create_result1_4:Play()
						if var262 then
							if module_upvr._menuCanvasPos then
								menuFrame.CanvasPosition = module_upvr._menuCanvasPos
								-- KONSTANTWARNING: GOTO [137] #100
							end
						else
							module_upvr._menuCanvasPos = menuFrame.CanvasPosition
						end
						-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [137] 100. Error Block 26 start (CF ANALYSIS FAILED)
						menuFrame.ScrollingEnabled = var262
						module_upvr.menuOpen = var262
						module_upvr:_decideToCallSignal("menu")
						-- KONSTANTERROR: [137] 100. Error Block 26 end (CF ANALYSIS FAILED)
					end;
				})[unique]
			end
		end
	end
	module_upvr.updated = any_new_result1:give(Signal_upvr.new())
	module_upvr.selected = any_new_result1:give(Signal_upvr.new())
	module_upvr.deselected = any_new_result1:give(Signal_upvr.new())
	module_upvr.toggled = any_new_result1:give(Signal_upvr.new())
	module_upvr.userSelected = any_new_result1:give(Signal_upvr.new())
	module_upvr.userDeselected = any_new_result1:give(Signal_upvr.new())
	module_upvr.userToggled = any_new_result1:give(Signal_upvr.new())
	module_upvr.hoverStarted = any_new_result1:give(Signal_upvr.new())
	module_upvr.hoverEnded = any_new_result1:give(Signal_upvr.new())
	module_upvr.dropdownOpened = any_new_result1:give(Signal_upvr.new())
	module_upvr.dropdownClosed = any_new_result1:give(Signal_upvr.new())
	module_upvr.menuOpened = any_new_result1:give(Signal_upvr.new())
	module_upvr.menuClosed = any_new_result1:give(Signal_upvr.new())
	module_upvr.notified = any_new_result1:give(Signal_upvr.new())
	module_upvr._endNotices = any_new_result1:give(Signal_upvr.new())
	module_upvr._ignoreClippingChanged = any_new_result1:give(Signal_upvr.new())
	local function setFeatureChange_upvr(arg1, arg2) -- Line 378, Named "setFeatureChange"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		local _parentIcon_4 = module_upvr._parentIcon
		module_upvr:set(arg1.."IgnoreClipping", arg2)
		if arg2 == true and _parentIcon_4 then
			local var278_upvw
			local any_Connect_result1_upvr = _parentIcon_4._ignoreClippingChanged:Connect(function(arg1_2, arg2_2) -- Line 382
				--[[ Upvalues[2]:
					[1]: module_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				module_upvr:set(arg1.."IgnoreClipping", arg2_2)
			end)
			var278_upvw = module_upvr[arg1.."Closed"]:Connect(function() -- Line 386
				--[[ Upvalues[2]:
					[1]: var278_upvw (read and write)
					[2]: any_Connect_result1_upvr (readonly)
				]]
				var278_upvw:Disconnect()
				any_Connect_result1_upvr:Disconnect()
			end)
		end
	end
	module_upvr.dropdownOpened:Connect(function() -- Line 392
		--[[ Upvalues[1]:
			[1]: setFeatureChange_upvr (readonly)
		]]
		setFeatureChange_upvr("dropdown", true)
	end)
	module_upvr.dropdownClosed:Connect(function() -- Line 395
		--[[ Upvalues[1]:
			[1]: setFeatureChange_upvr (readonly)
		]]
		setFeatureChange_upvr("dropdown", false)
	end)
	module_upvr.menuOpened:Connect(function() -- Line 398
		--[[ Upvalues[1]:
			[1]: setFeatureChange_upvr (readonly)
		]]
		setFeatureChange_upvr("menu", true)
	end)
	module_upvr.menuClosed:Connect(function() -- Line 401
		--[[ Upvalues[1]:
			[1]: setFeatureChange_upvr (readonly)
		]]
		setFeatureChange_upvr("menu", false)
	end)
	module_upvr.deselectWhenOtherIconSelected = true
	module_upvr.name = ""
	module_upvr.isSelected = false
	module_upvr.presentOnTopbar = true
	module_upvr.accountForWhenDisabled = false
	module_upvr.enabled = true
	module_upvr.hovering = false
	module_upvr.tipText = nil
	module_upvr.captionText = nil
	module_upvr.totalNotices = 0
	module_upvr.notices = {}
	module_upvr.dropdownIcons = {}
	module_upvr.menuIcons = {}
	module_upvr.dropdownOpen = false
	module_upvr.menuOpen = false
	module_upvr.locked = false
	module_upvr.topPaddingChanged = false
	module_upvr.topPadding = UDim.new(0, 4)
	module_upvr.targetPosition = nil
	module_upvr.toggleItems = {}
	module_upvr.lockedSettings = {}
	module_upvr.UID = HttpService_upvr:GenerateGUID(true)
	module_upvr.blockBackBehaviourChecks = {}
	module_upvr._draggingFinger = false
	module_upvr._updatingIconSize = true
	module_upvr._previousDropdownOpen = false
	module_upvr._previousMenuOpen = false
	module_upvr._bindedToggleKeys = {}
	module_upvr._bindedEvents = {}
	module_upvr._usingDefaultTheme = true
	module_upvr:setName("UnnamedIcon")
	module_upvr:setTheme(New_RobloxTopbar_upvw, true, true)
	any_new_result1:give(any_new_result1_7_upvr:Connect(function(arg1, arg2) -- Line 443
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if arg1 == arg2 then
		else
			module_upvr:setTheme(arg2, true, true, arg1)
		end
	end))
	local function iconTopbarInsetChanged() -- Line 450
		--[[ Upvalues[2]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		if module_upvr.topPaddingChanged == false then
			local topPadding = module_upvr.topPadding
			if GuiService_upvr.TopbarInset.Height == 36 then
				topPadding = 4
			else
				topPadding = 12
			end
			module_upvr.topPadding = UDim.new(topPadding.Scale, topPadding)
		end
	end
	pcall(iconTopbarInsetChanged)
	any_new_result1:give(GuiService_upvr:GetPropertyChangedSignal("TopbarInset"):Connect(iconTopbarInsetChanged))
	tbl_upvr.iconButton.MouseButton1Click:Connect(function() -- Line 475
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if module_upvr.locked then
		else
			if module_upvr.isSelected then
				module_upvr:deselect()
				module_upvr.userDeselected:Fire()
				module_upvr.userToggled:Fire(false)
				return true
			end
			module_upvr:select()
			module_upvr.userSelected:Fire()
			module_upvr.userToggled:Fire(true)
		end
	end)
	tbl_upvr.iconButton.MouseButton2Click:Connect(function() -- Line 487
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr._rightClicking = true
		if module_upvr:get("dropdownToggleOnRightClick") == true then
			module_upvr:_update("dropdownSize")
		end
		if module_upvr:get("menuToggleOnRightClick") == true then
			module_upvr:_update("menuSize")
		end
		module_upvr._rightClicking = false
	end)
	tbl_upvr.iconButton.MouseButton1Down:Connect(function() -- Line 499
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if module_upvr.locked then
		else
			module_upvr:_updateStateOverlay(0.7, Color3.new(0, 0, 0))
		end
	end)
	tbl_upvr.iconButton.MouseButton1Up:Connect(function() -- Line 503
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if module_upvr.overlayLocked then
		else
			module_upvr:_updateStateOverlay(0.9, Color3.new(1, 1, 1))
		end
	end)
	UserInputService_upvr.InputBegan:Connect(function(arg1, arg2) -- Line 509
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if not arg2 and ({
			[Enum.UserInputType.MouseButton1] = true;
			[Enum.UserInputType.MouseButton2] = true;
			[Enum.UserInputType.MouseButton3] = true;
			[Enum.UserInputType.Touch] = true;
		})[arg1.UserInputType] then
			module_upvr._tappingAway = true
			if module_upvr.dropdownOpen and module_upvr:get("dropdownCloseOnTapAway") == true then
				module_upvr:_update("dropdownSize")
			end
			if module_upvr.menuOpen and module_upvr:get("menuCloseOnTapAway") == true then
				module_upvr:_update("menuSize")
			end
			module_upvr._tappingAway = false
		end
		if module_upvr._bindedToggleKeys[arg1.KeyCode] and not arg2 and not module_upvr.locked then
			if module_upvr.isSelected then
				module_upvr:deselect()
				module_upvr.userDeselected:Fire()
				module_upvr.userToggled:Fire(false)
				return
			end
			module_upvr:select()
			module_upvr.userSelected:Fire()
			module_upvr.userToggled:Fire(true)
		end
	end)
	module_upvr.hoverStarted:Connect(function(arg1, arg2) -- Line 544
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.hovering = true
		if not module_upvr.locked then
			module_upvr:_updateStateOverlay(0.9, Color3.fromRGB(255, 255, 255))
		end
		module_upvr:_updateHovering()
	end)
	module_upvr.hoverEnded:Connect(function() -- Line 551
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.hovering = false
		module_upvr:_updateStateOverlay(1)
		module_upvr._hoveringMaid:clean()
		module_upvr:_updateHovering()
	end)
	tbl_upvr.iconButton.MouseEnter:Connect(function(arg1, arg2) -- Line 557
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.hoverStarted:Fire(arg1, arg2)
	end)
	tbl_upvr.iconButton.MouseLeave:Connect(function() -- Line 560
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.hoverEnded:Fire()
	end)
	tbl_upvr.iconButton.SelectionGained:Connect(function() -- Line 563
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.hoverStarted:Fire()
	end)
	tbl_upvr.iconButton.SelectionLost:Connect(function() -- Line 566
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr.hoverEnded:Fire()
	end)
	tbl_upvr.iconButton.MouseButton1Down:Connect(function() -- Line 569
		--[[ Upvalues[3]:
			[1]: module_upvr (readonly)
			[2]: RunService_upvr (copied, readonly)
			[3]: tbl_upvr (readonly)
		]]
		if module_upvr._draggingFinger then
			module_upvr.hoverStarted:Fire()
		end
		local var299_upvw
		local var301_upvr = tick() + 0.7
		local var302_upvw
		var302_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 578
			--[[ Upvalues[4]:
				[1]: var301_upvr (readonly)
				[2]: var299_upvw (read and write)
				[3]: var302_upvw (read and write)
				[4]: module_upvr (copied, readonly)
			]]
			if var301_upvr <= tick() then
				var299_upvw:Disconnect()
				var302_upvw:Disconnect()
				module_upvr._longPressing = true
				if module_upvr:get("dropdownToggleOnLongPress") == true then
					module_upvr:_update("dropdownSize")
				end
				if module_upvr:get("menuToggleOnLongPress") == true then
					module_upvr:_update("menuSize")
				end
				module_upvr._longPressing = false
			end
		end)
		var299_upvw = tbl_upvr.iconButton.MouseButton1Up:Connect(function() -- Line 592
			--[[ Upvalues[2]:
				[1]: var299_upvw (read and write)
				[2]: var302_upvw (read and write)
			]]
			var299_upvw:Disconnect()
			var302_upvw:Disconnect()
		end)
	end)
	if UserInputService_upvr.TouchEnabled then
		tbl_upvr.iconButton.MouseButton1Up:Connect(function() -- Line 598
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			if module_upvr.hovering then
				module_upvr.hoverEnded:Fire()
			end
		end)
		UserInputService_upvr.TouchMoved:Connect(function(arg1, arg2) -- Line 606
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			if arg2 then
			else
				module_upvr._draggingFinger = true
			end
		end)
		UserInputService_upvr.TouchEnded:Connect(function() -- Line 612
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			module_upvr._draggingFinger = false
		end)
	end
	module_upvr._updatingIconSize = false
	module_upvr:_updateIconSize()
	IconController_upvr.iconAdded:Fire(module_upvr)
	return module_upvr
end
function module_upvr_2.mimic(arg1) -- Line 626
	--[[ Upvalues[2]:
		[1]: IconController_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local var307 = arg1.."Mimic"
	local any_getIcon_result1 = IconController_upvr.getIcon(var307)
	if any_getIcon_result1 then
		return any_getIcon_result1
	end
	local any_new_result1_6 = module_upvr_2.new()
	any_new_result1_6:setName(var307)
	if arg1 == "Chat" then
		any_new_result1_6:setOrder(-1)
		any_new_result1_6:setImage("rbxasset://textures/ui/TopBar/chatOff.png", "deselected")
		any_new_result1_6:setImage("rbxasset://textures/ui/TopBar/chatOn.png", "selected")
		any_new_result1_6:setImageYScale(0.625)
	end
	return any_new_result1_6
end
function module_upvr_2.set(arg1, arg2, arg3, arg4, arg5) -- Line 737
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 105 start (CF ANALYSIS FAILED)
	local var374 = arg1._settingsDictionary[arg2]
	local var375
	if var374 == nil then
		var375 = false
	else
		var375 = true
	end
	assert(var375, "setting '%s' does not exist":format(arg2))
	var375 = arg4
	if type(var375) == "string" then
		local any_lower_result1_2 = arg4:lower()
	end
	local any_get_result1_10 = arg1:get(arg2, any_lower_result1_2)
	if any_lower_result1_2 == "hovering" then
		var374.hoveringValue = arg3
		if arg5 ~= "_ignorePrevious" then
			var375 = var374.additionalValues
			var375["previous_"..any_lower_result1_2] = any_get_result1_10
		end
		var375 = type(arg5)
		if var375 == "string" then
			var375 = var374.additionalValues
			var375[arg5..'_'..any_lower_result1_2] = any_get_result1_10
		end
		var375 = arg1:_update
		var375(arg2)
		-- KONSTANTWARNING: GOTO [199] #143
	end
	-- KONSTANTERROR: [0] 1. Error Block 105 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 48. Error Block 103 start (CF ANALYSIS FAILED)
	var375 = any_lower_result1_2
	if var374.type == "toggleable" then
		local tbl_18 = {}
		if var375 == "deselected" or var375 == "selected" then
			table.insert(tbl_18, var375)
		else
			table.insert(tbl_18, "deselected")
			table.insert(tbl_18, "selected")
			var375 = nil
		end
		for i_5, v_5 in pairs(tbl_18) do
			var374.values[v_5] = arg3
			if arg5 ~= "_ignorePrevious" then
				var374.additionalValues["previous_"..v_5] = any_get_result1_10
			end
			if type(arg5) == "string" then
				var374.additionalValues[arg5..'_'..v_5] = any_get_result1_10
			end
		end
	else
		var374.value = arg3
		if type(arg5) == "string" then
			if arg5 ~= "_ignorePrevious" then
				var374.additionalValues.previous = any_get_result1_10
			end
			var374.additionalValues[arg5] = any_get_result1_10
		end
	end
	if any_get_result1_10 == arg3 then
		return arg1, "Value was already set"
	end
	local function INLINED_12() -- Internal function, doesn't exist in bytecode
		local var382
		return var374.instanceNames
	end
	if not arg1._updateAfterSettingAll and INLINED_12() and (arg1:getToggleState() == var375 or var375 == nil) then
		local var383 = false
		if arg2 == "iconSize" then
			var383 = any_get_result1_10
			if var383 then
				var382 = any_get_result1_10.X.Scale
				if var382 ~= 1 then
					var383 = false
				else
					var383 = true
				end
			end
		end
		local function INLINED_13() -- Internal function, doesn't exist in bytecode
			var382 = arg1:get(i_5)
			i_5 = var374.tweenAction
			return var382
		end
		if not var374.tweenAction or var383 or not INLINED_13() then
			var382 = TweenInfo.new(0)
		end
		v_5 = arg2
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1:_update(v_5, arg1:getToggleState(), var382)
	end
	var375 = var374.callMethods
	if var375 then
		var375 = pairs(var374.callMethods)
		local pairs_result1_23, pairs_result2_21, pairs_result3_40 = pairs(var374.callMethods)
		for _, v_6 in pairs_result1_23, pairs_result2_21, pairs_result3_40 do
			i_5 = arg1
			v_5 = arg3
			v_6(i_5, v_5, any_lower_result1_2)
		end
	end
	pairs_result1_23 = var374.callSignals
	if pairs_result1_23 then
		pairs_result1_23 = pairs(var374.callSignals)
		for _, v_7 in pairs(var374.callSignals) do
			v_7:Fire()
		end
	end
	do
		return arg1
	end
	-- KONSTANTERROR: [63] 48. Error Block 103 end (CF ANALYSIS FAILED)
end
function module_upvr_2.setAdditionalValue(arg1, arg2, arg3, arg4, arg5) -- Line 818
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var398 = arg1._settingsDictionary[arg2]
	local var399
	if var398 == nil then
		var399 = false
	else
		var399 = true
	end
	assert(var399, "setting '%s' does not exist":format(arg2))
	var399 = arg3
	if arg5 then
		var399 = var399..'_'
	end
	var399 = pairs(var398.additionalValues)
	for i_8, _ in pairs(var398.additionalValues) do
		if string.match(i_8, var399..arg5) then
			var398.additionalValues[i_8] = arg4
		end
	end
end
function module_upvr_2.get(arg1, arg2, arg3, arg4) -- Line 832
	-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
	local var403
	if arg1._settingsDictionary[arg2] == nil then
		var403 = false
	else
		var403 = true
	end
	assert(var403, "setting '%s' does not exist":format(arg2))
	var403 = nil
	-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 20. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 20. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 23. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 23. Error Block 7 end (CF ANALYSIS FAILED)
end
function module_upvr_2.getHovering(arg1, arg2) -- Line 868
	local var404 = arg1._settingsDictionary[arg2]
	local var405
	if var404 == nil then
		var405 = false
	else
		var405 = true
	end
	assert(var405, "setting '%s' does not exist":format(arg2))
	return var404.hoveringValue
end
function module_upvr_2.getToggleState(arg1, arg2) -- Line 874
	local var406 = arg2
	if not var406 then
		var406 = arg1.isSelected
	end
	if var406 then
		return "selected"
	end
	return "deselected"
end
function module_upvr_2.getIconState(arg1) -- Line 879
	if arg1.hovering then
		return "hovering"
	end
	return arg1:getToggleState()
end
function module_upvr_2._update(arg1, arg2, arg3, arg4) -- Line 887
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var435 = arg1._settingsDictionary[arg2]
	local var436
	if var435 == nil then
		var436 = false
	else
		var436 = true
	end
	assert(var436, "setting '%s' does not exist":format(arg2))
	if not arg3 then
	end
	if not var435.value and var435.values then
		var436 = var435.values
	end
	var436 = arg1.hovering
	if var436 then
		var436 = var435.hoveringValue
		if var436 then
			local hoveringValue_2 = var435.hoveringValue
		end
	end
	if hoveringValue_2 == nil then
	else
		var436 = arg4
		local function INLINED_16() -- Internal function, doesn't exist in bytecode
			var436 = arg1:get(var435.tweenAction)
			return var436
		end
		local function INLINED_17() -- Internal function, doesn't exist in bytecode
			var436 = arg1:get("toggleTransitionInfo")
			return var436
		end
		if not var436 and (not var435.tweenAction or var435.tweenAction == "" or not INLINED_16()) or not INLINED_17() then
			var436 = TweenInfo.new(0.15)
		end
		local propertyName = var435.propertyName
		local var440 = arg1._uniqueSettingsDictionary[arg2]
		if var435.useForcedGroupValue then
		end
		if var435.instanceNames then
			for _, v_36 in pairs(var435.instanceNames) do
				local var444 = arg1.instances[v_36]
				local var445 = ({
					string = true;
					NumberSequence = true;
					Text = true;
					EnumItem = true;
					ColorSequence = true;
				})[typeof(var444[propertyName])]
				if not var445 then
					if typeof(var444) ~= "table" then
						var445 = false
					else
						var445 = true
					end
				end
				if var440 then
					var440(arg2, var444, propertyName, var435.forcedGroupValue)
				elseif var445 then
					var444[propertyName] = hoveringValue_2
				else
					local tbl_3 = {}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl_3[propertyName] = var435.forcedGroupValue
					TweenService_upvr:Create(var444, var436, tbl_3):Play()
				end
				if arg2 == "iconSize" then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if var444[propertyName] ~= var435.forcedGroupValue then
						arg1.updated:Fire()
					end
				end
			end
		end
	end
end
function module_upvr_2._updateAll(arg1, arg2, arg3) -- Line 931
	for i_9, v_9 in pairs(arg1._settingsDictionary) do
		if v_9.instanceNames then
			arg1:_update(i_9, arg2, arg3)
		end
	end
	arg1:_updateIconSize()
	arg1:_updateCaptionSize()
	arg1:_updateTipSize()
end
function module_upvr_2._updateHovering(arg1, arg2) -- Line 945
	for i_10, v_10 in pairs(arg1._settingsDictionary) do
		if v_10.instanceNames and v_10.hoveringValue ~= nil then
			arg1:_update(i_10, nil, arg2)
		end
	end
end
function module_upvr_2._updateStateOverlay(arg1, arg2, arg3) -- Line 953
	local iconOverlay = arg1.instances.iconOverlay
	iconOverlay.BackgroundTransparency = arg2 or 1
	local var458 = arg3
	if not var458 then
		var458 = Color3.new(1, 1, 1)
	end
	iconOverlay.BackgroundColor3 = var458
end
local tbl_upvr_2 = {"iconSize"}
function module_upvr_2.setTheme(arg1, arg2, arg3, arg4, arg5) -- Line 963
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 63 start (CF ANALYSIS FAILED)
	arg1._updateAfterSettingAll = arg3
	local pairs_result1_27, pairs_result2_31, pairs_result3_18 = pairs(arg2)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [7.8]
	if nil == "toggleable" then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [11.9]
		for i_11_upvr, v_11 in pairs(nil.deselected) do
			local var495_upvw = false
			if arg5 and table.find(tbl_upvr_2, i_11_upvr) == nil then
				local var497_upvr
				pcall(function() -- Line 971
					--[[ Upvalues[5]:
						[1]: arg1 (readonly)
						[2]: i_11_upvr (readonly)
						[3]: arg5 (readonly)
						[4]: var497_upvr (readonly)
						[5]: var495_upvw (read and write)
					]]
					if arg1:get(i_11_upvr, "deselected") ~= arg5[var497_upvr].deselected[i_11_upvr] then
						var495_upvw = true
					end
				end)
			end
			if not arg1.lockedSettings[i_11_upvr] and var495_upvw == false then
				local var498_upvw = "both"
				local var500_upvr
				pcall(function() -- Line 980
					--[[ Upvalues[3]:
						[1]: var500_upvr (readonly)
						[2]: i_11_upvr (readonly)
						[3]: var498_upvw (read and write)
					]]
					if var500_upvr.selected[i_11_upvr] then
						var498_upvw = "deselected"
					end
				end)
				arg1:set(i_11_upvr, v_11, var498_upvw)
			end
		end
		local pairs_result1_3, pairs_result2_4, pairs_result3_26 = pairs(var500_upvr.selected)
		for i_12_upvr, v_12 in pairs_result1_3, pairs_result2_4, pairs_result3_26 do
			local var504_upvw = false
			if arg5 and table.find(tbl_upvr_2, i_12_upvr) == nil then
				pcall(function() -- Line 992
					--[[ Upvalues[5]:
						[1]: arg1 (readonly)
						[2]: i_12_upvr (readonly)
						[3]: arg5 (readonly)
						[4]: var497_upvr (readonly)
						[5]: var504_upvw (read and write)
					]]
					if arg1:get(i_12_upvr, "selected") ~= arg5[var497_upvr].selected[i_12_upvr] then
						var504_upvw = true
					end
				end)
			end
			if not arg1.lockedSettings[i_12_upvr] and var504_upvw == false then
				arg1:set(i_12_upvr, v_12, "selected")
			end
		end
		-- KONSTANTWARNING: GOTO [7] #6
	end
	-- KONSTANTERROR: [0] 1. Error Block 63 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [97] 76. Error Block 50 start (CF ANALYSIS FAILED)
	for _, _ in pairs_result1_3, pairs_result2_4, pairs_result3_26 do
		if arg5 and arg1:set(i_12_upvr, v_12, "selected") == nil then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not arg1:set(i_12_upvr, v_12, "selected") and var504_upvw == false then
			if var497_upvr == "action" then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if arg1:set(i_12_upvr, v_12, "selected") == nil then
				end
			end
		end
	end
	-- KONSTANTERROR: [97] 76. Error Block 50 end (CF ANALYSIS FAILED)
end
function module_upvr_2.getInstance(arg1, arg2) -- Line 1037
	return arg1.instances[arg2]
end
function module_upvr_2.setInstance(arg1, arg2, arg3) -- Line 1041
	local var506 = arg1.instances[arg2]
	arg1.instances[arg2] = arg3
	if var506 then
		var506:Destroy()
	end
	return arg1
end
function module_upvr_2.getSettingDetail(arg1, arg2) -- Line 1050
	for _, v_14 in pairs(arg1._settings) do
		for i_15, v_15 in pairs(v_14) do
			if i_15 == arg2 then
				return v_15
			end
		end
	end
	return false
end
function module_upvr_2.modifySetting(arg1, arg2, arg3) -- Line 1061
	local any_getSettingDetail_result1 = arg1:getSettingDetail(arg2)
	for i_16, v_16 in pairs(arg3) do
		any_getSettingDetail_result1[i_16] = v_16
	end
	return arg1
end
function module_upvr_2.convertLabelToNumberSpinner(arg1, arg2) -- Line 1069
	arg1:set("iconLabelSize", UDim2.new(1, 0, 1, 0))
	arg2.Parent = arg1:getInstance("iconButton")
	local tbl_10 = {}
	setmetatable(tbl_10, {
		__newindex = function(arg1_3, arg2_3, arg3) -- Line 1076, Named "__newindex"
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			for _, v_17 in pairs(arg2.Frame:GetDescendants()) do
				if v_17:IsA("TextLabel") then
					v_17[arg2_3] = arg3
				end
			end
		end;
	})
	arg1:getInstance("iconButton").ZIndex = 0
	arg1:setInstance("iconLabel", tbl_10)
	arg1:modifySetting("iconText", {
		instanceNames = {};
	})
	arg1:setInstance("iconLabelSpinner", arg2.Frame)
	for _, v_18 in pairs({"iconLabelVisible", "iconLabelAnchorPoint", "iconLabelPosition", "iconLabelSize"}) do
		arg1:modifySetting(v_18, {
			instanceNames = {"iconLabelSpinner"};
		})
	end
	arg1:_updateAll()
	return arg1
end
function module_upvr_2.setEnabled(arg1, arg2) -- Line 1100
	arg1.enabled = arg2
	arg1.instances.iconContainer.Visible = arg2
	arg1.updated:Fire()
	return arg1
end
function module_upvr_2.setName(arg1, arg2) -- Line 1107
	arg1.name = arg2
	arg1.instances.iconContainer.Name = arg2
	return arg1
end
function module_upvr_2.setProperty(arg1, arg2, arg3) -- Line 1113
	arg1[arg2] = arg3
	return arg1
end
local Debris_upvr = game:GetService("Debris")
function module_upvr_2._playClickSound(arg1) -- Line 1118
	--[[ Upvalues[1]:
		[1]: Debris_upvr (readonly)
	]]
	local clickSound = arg1.instances.clickSound
	if clickSound.SoundId ~= nil and 0 < #clickSound.SoundId and 0 < clickSound.Volume then
		local clone = clickSound:Clone()
		clone.Parent = clickSound.Parent
		clone:Play()
		Debris_upvr:AddItem(clone, clickSound.TimeLength)
	end
end
function module_upvr_2.select(arg1, arg2) -- Line 1128
	--[[ Upvalues[4]:
		[1]: IconController_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: Maid_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	arg1.isSelected = true
	arg1:_setToggleItemsVisible(true, arg2)
	arg1:_updateNotice()
	arg1:_updateAll()
	arg1:_playClickSound()
	if 0 < #arg1.dropdownIcons or 0 < #arg1.menuIcons then
		IconController_upvr:_updateSelectionGroup()
	end
	if UserInputService_upvr.GamepadEnabled then
		for _, v_19 in pairs(arg1.toggleItems) do
			if 0 < #v_19 then
				local any_new_result1_5_upvr = Maid_upvr.new()
				GuiService_upvr:AddSelectionTuple(arg1.UID, unpack(v_19))
				GuiService_upvr.SelectedObject = v_19[1]
				local var550 = IconController_upvr
				var550.activeButtonBCallbacks += 1
				any_new_result1_5_upvr:give(UserInputService_upvr.InputEnded:Connect(function(arg1_4, arg2_4) -- Line 1149
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: GuiService_upvr (copied, readonly)
					]]
					-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
					local pairs_result1_29, pairs_result2_8, pairs_result3_6 = pairs(arg1.blockBackBehaviourChecks)
					-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [14] 12. Error Block 4 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [14] 12. Error Block 4 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [14.8]
					-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
				end))
				any_new_result1_5_upvr:give(arg1.deselected:Connect(function() -- Line 1162
					--[[ Upvalues[1]:
						[1]: any_new_result1_5_upvr (readonly)
					]]
					any_new_result1_5_upvr:clean()
				end))
				any_new_result1_5_upvr:give(function() -- Line 1165
					--[[ Upvalues[1]:
						[1]: IconController_upvr (copied, readonly)
					]]
					local var557 = IconController_upvr
					var557.activeButtonBCallbacks -= 1
					if IconController_upvr.activeButtonBCallbacks < 0 then
						IconController_upvr.activeButtonBCallbacks = 0
					end
				end)
			end
		end
	end
	arg1.selected:Fire()
	arg1.toggled:Fire(arg1.isSelected)
	return arg1
end
function module_upvr_2.deselect(arg1, arg2) -- Line 1179
	--[[ Upvalues[3]:
		[1]: IconController_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	arg1.isSelected = false
	arg1:_setToggleItemsVisible(false, arg2)
	arg1:_updateNotice()
	arg1:_updateAll()
	arg1:_playClickSound()
	if 0 < #arg1.dropdownIcons or 0 < #arg1.menuIcons then
		IconController_upvr:_updateSelectionGroup()
	end
	arg1.deselected:Fire()
	arg1.toggled:Fire(arg1.isSelected)
	if UserInputService_upvr.GamepadEnabled then
		GuiService_upvr:RemoveSelectionGroup(arg1.UID)
	end
	return arg1
end
function module_upvr_2.notify(arg1, arg2, arg3) -- Line 1197
	--[[ Upvalues[2]:
		[1]: Signal_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	coroutine.wrap(function() -- Line 1198
		--[[ Upvalues[5]:
			[1]: arg2 (read and write)
			[2]: arg1 (readonly)
			[3]: Signal_upvr (copied, readonly)
			[4]: arg3 (read and write)
			[5]: HttpService_upvr (copied, readonly)
		]]
		if not arg2 then
			arg2 = arg1.deselected
		end
		if arg1._parentIcon then
			arg1._parentIcon:notify(arg2)
		end
		local any_new_result1_3_upvr = Signal_upvr.new()
		local function var560() -- Line 1207
			--[[ Upvalues[1]:
				[1]: any_new_result1_3_upvr (readonly)
			]]
			any_new_result1_3_upvr:Fire()
		end
		var560 = arg3
		local var562 = var560
		if not var562 then
			var562 = HttpService_upvr:GenerateGUID(true)
		end
		arg3 = var562
		local tbl_12 = {
			completeSignal = any_new_result1_3_upvr;
		}
		tbl_12.clearNoticeEvent = arg2
		arg1.notices[arg3] = tbl_12
		local var564 = arg1
		var564.totalNotices += 1
		arg1:_updateNotice()
		arg1.notified:Fire(arg3)
		any_new_result1_3_upvr:Wait()
		arg1._endNotices:Connect(var560):Disconnect()
		arg2:Connect(function() -- Line 1210
			--[[ Upvalues[1]:
				[1]: any_new_result1_3_upvr (readonly)
			]]
			any_new_result1_3_upvr:Fire()
		end):Disconnect()
		any_new_result1_3_upvr:Disconnect()
		local var565 = arg1
		var565.totalNotices -= 1
		arg1.notices[arg3] = nil
		arg1:_updateNotice()
	end)()
	return arg1
end
function module_upvr_2._updateNotice(arg1) -- Line 1236
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1.totalNotices < 1 then
	end
	if not arg1.isSelected and (0 < #arg1.dropdownIcons or 0 < #arg1.menuIcons) or 0 < arg1.totalNotices then
	end
	local var566
	if arg1.isSelected and (0 < #arg1.dropdownIcons or 0 < #arg1.menuIcons) then
		var566 = false
	end
	if var566 then
		local _ = 0
	else
	end
	arg1:set("noticeImageTransparency", 1)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	arg1:set("noticeTextTransparency", 1)
	if arg1.totalNotices >= 100 or not arg1.totalNotices then
	end
	arg1.instances.noticeLabel.Text = "99+"
end
function module_upvr_2.clearNotices(arg1) -- Line 1259
	arg1._endNotices:Fire()
	return arg1
end
function module_upvr_2.disableStateOverlay(arg1, arg2) -- Line 1264
	if arg2 == nil then
	end
	arg1.instances.iconOverlay.Visible = not true
	return arg1
end
function module_upvr_2.setLabel(arg1, arg2, arg3) -- Line 1276
	arg1:set("iconText", arg2 or "", arg3)
	return arg1
end
function module_upvr_2.setCornerRadius(arg1, arg2, arg3, arg4) -- Line 1282
	local CornerRadius = arg1.instances.iconCorner.CornerRadius
	local var569 = arg2
	if not var569 then
		var569 = CornerRadius.Scale
	end
	local var570 = arg3
	if not var570 then
		var570 = CornerRadius.Offset
	end
	arg1:set("iconCornerRadius", UDim.new(var569, var570), arg4)
	return arg1
end
function module_upvr_2.setImage(arg1, arg2, arg3) -- Line 1289
	local var571
	local function INLINED_18() -- Internal function, doesn't exist in bytecode
		var571 = "http://www.roblox.com/asset/?id="..arg2
		return var571
	end
	if not tonumber(arg2) or not INLINED_18() then
		var571 = arg2
		if not var571 then
			var571 = ""
		end
	end
	return arg1:set("iconImage", var571, arg3)
end
function module_upvr_2.setOrder(arg1, arg2, arg3) -- Line 1294
	return arg1:set("order", tonumber(arg2) or 1, arg3)
end
function module_upvr_2.setLeft(arg1, arg2) -- Line 1299
	return arg1:set("alignment", "left", arg2)
end
function module_upvr_2.setMid(arg1, arg2) -- Line 1303
	return arg1:set("alignment", "mid", arg2)
end
function module_upvr_2.setRight(arg1, arg2) -- Line 1307
	--[[ Upvalues[1]:
		[1]: IconController_upvr (readonly)
	]]
	if not arg1.internalIcon then
		IconController_upvr.setupHealthbar()
	end
	return arg1:set("alignment", "right", arg2)
end
function module_upvr_2.setImageYScale(arg1, arg2, arg3) -- Line 1314
	return arg1:set("iconImageYScale", tonumber(arg2) or 0.63, arg3)
end
function module_upvr_2.setImageRatio(arg1, arg2, arg3) -- Line 1319
	return arg1:set("iconImageRatio", tonumber(arg2) or 1, arg3)
end
function module_upvr_2.setLabelYScale(arg1, arg2, arg3) -- Line 1324
	return arg1:set("iconLabelYScale", tonumber(arg2) or 0.45, arg3)
end
function module_upvr_2.setBaseZIndex(arg1, arg2, arg3) -- Line 1329
	return arg1:set("baseZIndex", tonumber(arg2) or 1, arg3)
end
function module_upvr_2._updateBaseZIndex(arg1, arg2) -- Line 1334
	local iconContainer_3 = arg1.instances.iconContainer
	local tonumber_result1 = tonumber(arg2)
	if not tonumber_result1 then
		tonumber_result1 = iconContainer_3.ZIndex
	end
	local var578 = tonumber_result1 - iconContainer_3.ZIndex
	if var578 == 0 then
		return "The baseValue is the same"
	end
	for _, v_20 in pairs(arg1.instances) do
		if v_20:IsA("GuiObject") then
			v_20.ZIndex += var578
		end
	end
	return true
end
function module_upvr_2.setSize(arg1, arg2, arg3, arg4) -- Line 1347
	if tonumber(arg2) then
		arg1.forcefullyAppliedXSize = true
		arg1:set("forcedIconSizeX", tonumber(arg2), arg4)
	else
		arg1.forcefullyAppliedXSize = false
		arg1:set("forcedIconSizeX", 32, arg4)
	end
	if tonumber(arg3) then
		arg1.forcefullyAppliedYSize = true
		arg1:set("forcedIconSizeY", tonumber(arg3), arg4)
	else
		arg1.forcefullyAppliedYSize = false
		arg1:set("forcedIconSizeY", 32, arg4)
	end
	local var582
	local function INLINED_19() -- Internal function, doesn't exist in bytecode
		var582 = tonumber(arg2) or 32
		return var582
	end
	if not var582 and (arg3 == "_NIL" or not INLINED_19()) then
		var582 = 32
	end
	arg1:set("iconSize", UDim2.new(0, tonumber(arg2) or 32, 0, var582), arg4)
	return arg1
end
function module_upvr_2.setXSize(arg1, arg2, arg3) -- Line 1368
	arg1:setSize(arg2, "_NIL", arg3)
	return arg1
end
function module_upvr_2.setYSize(arg1, arg2, arg3) -- Line 1373
	arg1:setSize("_NIL", arg2, arg3)
	return arg1
end
function module_upvr_2._getContentText(arg1, arg2) -- Line 1378
	--[[ Upvalues[1]:
		[1]: IconController_upvr (readonly)
	]]
	arg1.instances.fakeIconLabel.Text = arg2
	local ContentText = arg1.instances.fakeIconLabel.ContentText
	local var584 = false
	if typeof(arg1.instances.iconLabel) == "Instance" then
		var584 = IconController_upvr.translator:Translate(arg1.instances.iconLabel, ContentText)
	end
	if typeof(var584) ~= "string" or var584 == "" then
		var584 = ContentText
	end
	arg1.instances.fakeIconLabel.Text = ""
	return var584
end
function module_upvr_2._updateIconSize(arg1, arg2, arg3) -- Line 1392
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 90 start (CF ANALYSIS FAILED)
	local var619
	if var619 then
	else
		var619 = {}
		var619.iconImage = arg1:get("iconImage", arg3) or "_NIL"
		var619.iconText = arg1:get("iconText", arg3) or "_NIL"
		var619.iconFont = arg1:get("iconFont", arg3) or "_NIL"
		var619.iconSize = arg1:get("iconSize", arg3) or "_NIL"
		var619.forcedIconSizeX = arg1:get("forcedIconSizeX", arg3) or "_NIL"
		var619.iconImageYScale = arg1:get("iconImageYScale", arg3) or "_NIL"
		var619.iconImageRatio = arg1:get("iconImageRatio", arg3) or "_NIL"
		var619.iconLabelYScale = arg1:get("iconLabelYScale", arg3) or "_NIL"
		if arg3 == "hovering" and arg1._usingDefaultTheme then
			var619 = {
				iconImage = arg1:get("iconImage", arg3) or "_NIL";
				iconText = arg1:get("iconText", arg3) or "_NIL";
				iconFont = arg1:get("iconFont", arg3) or "_NIL";
				iconSize = arg1:get("iconSize", nil) or "_NIL";
				forcedIconSizeX = arg1:get("forcedIconSizeX", nil) or "_NIL";
				iconImageYScale = arg1:get("iconImageYScale", nil) or "_NIL";
				iconImageRatio = arg1:get("iconImageRatio", nil) or "_NIL";
				iconLabelYScale = arg1:get("iconLabelYScale", nil) or "_NIL";
			}
		end
		for _, v_37 in pairs(var619) do
			if v_37 == "_NIL" then return end
		end
		local iconContainer = arg1.instances.iconContainer
		if not iconContainer.Parent then return end
		local Scale = var619.iconSize.X.Scale
		if 0 >= Scale or not (var619.iconSize.X.Offset + Scale * iconContainer.Parent.AbsoluteSize.X) then
			if not arg1.forcefullyAppliedXSize or not var619.forcedIconSizeX then
			end
		end
		local var626 = var619.iconSize.Y.Offset + var619.iconSize.Y.Scale * iconContainer.Parent.AbsoluteSize.Y
		local var627 = var626 * var619.iconLabelYScale
		local var628 = var626 * var619.iconImageYScale * var619.iconImageRatio
		if var619.iconImage == "" then
			-- KONSTANTWARNING: GOTO [246] #174
		end
		local var629 = true
		if var619.iconText == "" then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		if var629 and not true then
			arg1:set("iconImageVisible", true, arg3)
			arg1:set("iconImageAnchorPoint", Vector2.new(0.5, 0.5), arg3)
			arg1:set("iconImagePosition", UDim2.new(0.5, 0, 0.5, 0), arg3)
			arg1:set("iconImageSize", UDim2.new(var619.iconImageYScale * var619.iconImageRatio, 0, var619.iconImageYScale, 0), arg3)
			arg1:set("iconLabelVisible", false, arg3)
			-- KONSTANTWARNING: GOTO [466] #352
		end
		-- KONSTANTERROR: [0] 1. Error Block 90 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [311] 226. Error Block 91 start (CF ANALYSIS FAILED)
		if not var629 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true then
				arg1:set("iconLabelVisible", true, arg3)
				arg1:set("iconLabelAnchorPoint", Vector2.new(0, 0.5), arg3)
				arg1:set("iconLabelPosition", UDim2.new(0, 12, 0.5, 0), arg3)
				arg1:set("iconLabelSize", UDim2.new(1, -24, var619.iconLabelYScale, var627 / 2), arg3)
				arg1:set("iconLabelTextXAlignment", Enum.TextXAlignment.Center, arg3)
				arg1:set("iconImageVisible", false, arg3)
				-- KONSTANTWARNING: GOTO [466] #352
			end
		end
		if var629 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true then
				local var631 = 12 + var628 + 8
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local var632 = var631 + TextService_upvr:GetTextSize(arg1:_getContentText(var619.iconText), var627, var619.iconFont, Vector2.new(10000, var627)).X + 12
				arg1:set("iconImageVisible", true, arg3)
				arg1:set("iconImageAnchorPoint", Vector2.new(0, 0.5), arg3)
				arg1:set("iconImagePosition", UDim2.new(0, 12, 0.5, 0), arg3)
				arg1:set("iconImageSize", UDim2.new(0, var628, var619.iconImageYScale, 0), arg3)
				arg1:set("iconLabelVisible", true, arg3)
				arg1:set("iconLabelAnchorPoint", Vector2.new(0, 0.5), arg3)
				arg1:set("iconLabelPosition", UDim2.new(0, var631, 0.5, 0), arg3)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg1:set("iconLabelSize", UDim2.new(1, -var631 - 12, var619.iconLabelYScale, var627 / 2), arg3)
				arg1:set("iconLabelTextXAlignment", Enum.TextXAlignment.Left, arg3)
			end
		end
		if var632 then
			var631 = arg1._updatingIconSize
			local var633
			if not var633 then
				var633 = true
				arg1._updatingIconSize = var633
				local var634 = 0
				local function INLINED_21() -- Internal function, doesn't exist in bytecode
					var633 = Scale
					return var633
				end
				if var634 >= Scale or not INLINED_21() then
					var633 = 0
				end
				if 0 < Scale then
					var634 = 0
				else
					var634 = math.clamp
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var634 = var634(var632, var619.forcedIconSizeX, 9999)
				end
				arg1:set("iconSize", UDim2.new(var633, var634, var619.iconSize.Y.Scale, var619.iconSize.Y.Offset), arg3, "_ignorePrevious")
				local _parentIcon = arg1._parentIcon
				if _parentIcon then
					local udim2 = UDim2.new(0, var632, 0, var619.iconSize.Y.Offset)
					if 0 < #_parentIcon.dropdownIcons then
						arg1:setAdditionalValue("iconSize", "beforeDropdown", udim2, arg3)
						_parentIcon:_updateDropdown()
					end
					if 0 < #_parentIcon.menuIcons then
						arg1:setAdditionalValue("iconSize", "beforeMenu", udim2, arg3)
						_parentIcon:_updateMenu()
					end
				end
				arg1._updatingIconSize = false
			end
		end
		arg1:set("iconLabelTextSize", var627, arg3)
		arg1:set("noticeFramePosition", UDim2.new(0.45, 0, 0, -2), arg3)
		arg1._updatingIconSize = false
		-- KONSTANTERROR: [311] 226. Error Block 91 end (CF ANALYSIS FAILED)
	end
end
function module_upvr_2.bindEvent(arg1, arg2, arg3) -- Line 1515
	local var640 = arg1[arg2]
	local var641
	if var641 then
		var641 = false
		if typeof(var640) == "table" then
			var641 = var640.Connect
		end
	end
	assert(var641, "argument[1] must be a valid topbarplus icon event name!")
	if typeof(arg3) ~= "function" then
		var641 = false
	else
		var641 = true
	end
	assert(var641, "argument[2] must be a function!")
	var641 = var640:Connect(function(...) -- Line 1519
		--[[ Upvalues[2]:
			[1]: arg3 (readonly)
			[2]: arg1 (readonly)
		]]
		arg3(arg1, ...)
	end)
	arg1._bindedEvents[arg2] = var641
	return arg1
end
function module_upvr_2.unbindEvent(arg1, arg2) -- Line 1525
	local var643 = arg1._bindedEvents[arg2]
	if var643 then
		var643:Disconnect()
		arg1._bindedEvents[arg2] = nil
	end
	return arg1
end
function module_upvr_2.bindToggleKey(arg1, arg2) -- Line 1534
	local var644
	if typeof(arg2) ~= "EnumItem" then
		var644 = false
	else
		var644 = true
	end
	assert(var644, "argument[1] must be a KeyCode EnumItem!")
	var644 = true
	arg1._bindedToggleKeys[arg2] = var644
	return arg1
end
function module_upvr_2.unbindToggleKey(arg1, arg2) -- Line 1540
	local var645
	if typeof(arg2) ~= "EnumItem" then
		var645 = false
	else
		var645 = true
	end
	assert(var645, "argument[1] must be a KeyCode EnumItem!")
	var645 = nil
	arg1._bindedToggleKeys[arg2] = var645
	return arg1
end
function module_upvr_2.lock(arg1) -- Line 1546
	arg1.instances.iconButton.Active = false
	arg1.locked = true
	task.defer(function() -- Line 1549
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.locked then
			arg1.overlayLocked = true
		end
	end)
	return arg1
end
function module_upvr_2.unlock(arg1) -- Line 1558
	arg1.instances.iconButton.Active = true
	arg1.locked = false
	arg1.overlayLocked = false
	return arg1
end
function module_upvr_2.debounce(arg1, arg2) -- Line 1565
	arg1:lock()
	task.wait(arg2)
	arg1:unlock()
	return arg1
end
function module_upvr_2.autoDeselect(arg1, arg2) -- Line 1572
	if arg2 == nil then
	end
	arg1.deselectWhenOtherIconSelected = true
	return arg1
end
function module_upvr_2.setTopPadding(arg1, arg2, arg3) -- Line 1580
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	local var647 = arg2
	if not var647 then
		if GuiService_upvr.TopbarInset.Height == 36 then
			var647 = 4
		else
			var647 = 12
		end
	end
	arg1.topPadding = UDim.new(arg3 or 0, var647)
	arg1.updated:Fire()
	if not arg2 then
		arg1.topPaddingChanged = false
		return arg1
	end
	arg1.topPaddingChanged = true
	return arg1
end
function module_upvr_2.bindToggleItem(arg1, arg2) -- Line 1595
	if not arg2:IsA("GuiObject") and not arg2:IsA("LayerCollector") then
		error("Toggle item must be a GuiObject or LayerCollector!")
	end
	arg1.toggleItems[arg2] = true
	arg1:updateSelectionInstances()
	return arg1
end
function module_upvr_2.updateSelectionInstances(arg1) -- Line 1604
	for i_21, _ in pairs(arg1.toggleItems) do
		for _, v_22 in pairs(i_21:GetDescendants()) do
			if v_22:IsA("TextButton") or v_22:IsA("ImageButton") then
				if v_22.Active then
					table.insert({}, v_22)
				end
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.toggleItems[i_21] = {}
	end
end
function module_upvr_2.addBackBlocker(arg1, arg2) -- Line 1617
	table.insert(arg1.blockBackBehaviourChecks, arg2)
	return arg1
end
function module_upvr_2.unbindToggleItem(arg1, arg2) -- Line 1626
	arg1.toggleItems[arg2] = nil
	return arg1
end
function module_upvr_2._setToggleItemsVisible(arg1, arg2, arg3) -- Line 1631
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local _
	for i_23, _ in pairs(arg1.toggleItems) do
		if not arg3 or arg3.toggleItems[i_23] == nil then
			if i_23:IsA("LayerCollector") then
			end
			i_23.Enabled = arg2
		end
	end
end
function module_upvr_2.call(arg1, arg2) -- Line 1643
	task.spawn(arg2, arg1)
	return arg1
end
function module_upvr_2.give(arg1, arg2) -- Line 1648
	local var670 = arg2
	if typeof(arg2) == "function" then
		if typeof(arg2) ~= "function" then
			var670 = arg2(arg1)
		else
			var670 = nil
		end
	end
	if var670 ~= nil then
		arg1._maid:give(var670)
	end
	return arg1
end
tbl_6_upvr.tip = 1
function module_upvr_2.setTip(arg1, arg2) -- Line 1667
	--[[ Upvalues[2]:
		[1]: ActiveItems_upvr (readonly)
		[2]: Maid_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var671 = true
	if typeof(arg2) ~= "string" then
		if arg2 ~= nil then
			var671 = false
		else
			var671 = true
		end
	end
	assert(var671, "Expected string, got "..typeof(arg2))
	local var672 = arg2 or ""
	if var672 == "" then
		var671 = false
	else
		var671 = true
	end
	arg1.tipText = arg2
	arg1.instances.tipLabel.Text = var672
	if not var671 or not ActiveItems_upvr then
	end
	arg1.instances.tipFrame.Parent = arg1.instances.iconContainer
	arg1._maid.tipFrame = arg1.instances.tipFrame
	arg1:_updateTipSize()
	local any_new_result1_2 = Maid_upvr.new()
	arg1._maid.tipMaid = any_new_result1_2
	if var671 then
		any_new_result1_2:give(arg1.hoverStarted:Connect(function() -- Line 1680
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not arg1.isSelected then
				arg1:displayTip(true)
			end
		end))
		any_new_result1_2:give(arg1.hoverEnded:Connect(function() -- Line 1685
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:displayTip(false)
		end))
		any_new_result1_2:give(arg1.selected:Connect(function() -- Line 1688
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.hovering then
				arg1:displayTip(false)
			end
		end))
	end
	arg1:displayTip(arg1.hovering and var671)
	return arg1
end
function module_upvr_2._updateTipSize(arg1) -- Line 1698
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	local tipText = arg1.tipText
	local var679
	if tipText or "" == "" then
		tipText = false
	else
		tipText = true
	end
	var679 = arg1:_getContentText(tipText or "")
	var679 = arg1.instances
	local function INLINED_22() -- Internal function, doesn't exist in bytecode
		var679 = UDim2.new(0, TextService_upvr:GetTextSize(var679, 12, Enum.Font.GothamSemibold, Vector2.new(1000, 14)).X + 6, 0, 20)
		return var679
	end
	if not tipText or not INLINED_22() then
		var679 = UDim2.new(0, 0, 0, 0)
	end
	var679.tipFrame.Size = var679
end
function module_upvr_2.displayTip(arg1, arg2) -- Line 1706
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: IconController_upvr (readonly)
		[3]: TopbarPlusGui_upvr (readonly)
	]]
	local var684
	if var684 then
		var684 = arg1._draggingFinger
		if not var684 then return end
	end
	var684 = arg1.tipVisible or false
	if typeof(arg2) == "boolean" then
		var684 = arg2
	end
	arg1.tipVisible = var684
	if var684 then
		local tipFrame_upvr = arg1.instances.tipFrame
		local function updateTipPositon(arg1_5, arg2_5) -- Line 1720
			--[[ Upvalues[4]:
				[1]: UserInputService_upvr (copied, readonly)
				[2]: tipFrame_upvr (readonly)
				[3]: IconController_upvr (copied, readonly)
				[4]: TopbarPlusGui_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var687
			if var687 then
				var687 = workspace.CurrentCamera.ViewportSize
			end
			local var688
			if UserInputService_upvr.TouchEnabled then
				var688 = math.clamp(var688 - tipFrame_upvr.Size.X.Offset / 2, 0, var687.X - tipFrame_upvr.Size.X.Offset)
			elseif IconController_upvr.controllerModeEnabled then
				local Indicator = TopbarPlusGui_upvr.Indicator
				local AbsolutePosition = Indicator.AbsolutePosition
				var688 = AbsolutePosition.X - tipFrame_upvr.Size.X.Offset / 2 + Indicator.AbsoluteSize.X / 2
			else
				var688 = math.clamp(var688, 0, var687.X - tipFrame_upvr.Size.X.Offset - 48)
			end
			tipFrame_upvr.Position = UDim2.new(0, var688, 0, math.clamp(AbsolutePosition.Y + 90, tipFrame_upvr.Size.Y.Offset + 3, var687.Y) - 20)
		end
		local any_GetMouseLocation_result1 = UserInputService_upvr:GetMouseLocation()
		if any_GetMouseLocation_result1 then
			updateTipPositon(any_GetMouseLocation_result1.X, any_GetMouseLocation_result1.Y)
		end
		arg1._hoveringMaid:give(arg1.instances.iconButton.MouseMoved:Connect(updateTipPositon))
	end
	for _, v_24 in pairs(arg1._groupSettings.tip) do
		arg1._settingsDictionary[v_24].useForcedGroupValue = not var684
		arg1:_update(v_24)
	end
end
tbl_6_upvr.caption = 1
function module_upvr_2.setCaption(arg1, arg2) -- Line 1775
	--[[ Upvalues[2]:
		[1]: ActiveItems_upvr (readonly)
		[2]: Maid_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var695 = true
	if typeof(arg2) ~= "string" then
		if arg2 ~= nil then
			var695 = false
		else
			var695 = true
		end
	end
	assert(var695, "Expected string, got "..typeof(arg2))
	local var696 = arg2 or ""
	if var696 == "" then
		var695 = false
	else
		var695 = true
	end
	arg1.captionText = arg2
	arg1.instances.captionLabel.Text = var696
	if not var695 or not ActiveItems_upvr then
	end
	arg1.instances.captionContainer.Parent = arg1.instances.iconContainer
	arg1._maid.captionContainer = arg1.instances.captionContainer
	arg1:_updateIconSize(nil, arg1:getIconState())
	local any_new_result1_4 = Maid_upvr.new()
	arg1._maid.captionMaid = any_new_result1_4
	if var695 then
		any_new_result1_4:give(arg1.hoverStarted:Connect(function() -- Line 1787
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not arg1.isSelected then
				arg1:displayCaption(true)
			end
		end))
		any_new_result1_4:give(arg1.hoverEnded:Connect(function() -- Line 1792
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:displayCaption(false)
		end))
		any_new_result1_4:give(arg1.selected:Connect(function() -- Line 1795
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.hovering then
				arg1:displayCaption(false)
			end
		end))
		local iconContainer_4 = arg1.instances.iconContainer
		any_new_result1_4:give(iconContainer_4:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 1801
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.hovering then
				arg1:displayCaption()
			end
		end))
		any_new_result1_4:give(iconContainer_4:GetPropertyChangedSignal("AbsolutePosition"):Connect(function() -- Line 1806
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.hovering then
				arg1:displayCaption()
			end
		end))
	end
	arg1:_updateCaptionSize()
	arg1:displayCaption(arg1.hovering and var695)
	return arg1
end
function module_upvr_2._updateCaptionSize(arg1) -- Line 1817
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	local any_get_result1_8 = arg1:get("iconSize")
	if any_get_result1_8 and arg1:get("captionFont") then
		local captionContainer = arg1.instances.captionContainer
		local captionText = arg1.captionText
		if (captionText or "") == "" then
			captionText = false
		else
			captionText = true
		end
		if captionText then
			local var707 = any_get_result1_8.Y.Offset + any_get_result1_8.Y.Scale * arg1.instances.iconContainer.Parent.AbsoluteSize.Y
			local captionLabel = arg1.instances.captionLabel
			local var709 = var707 * 0.8 * 0.58
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local X = TextService_upvr:GetTextSize(arg1:_getContentText(arg1.captionText), var709, arg1:get("captionFont"), Vector2.new(10000, var709)).X
			captionLabel.TextSize = var709
			captionLabel.Size = UDim2.new(0, X, 0.58, 0)
			captionContainer.Size = UDim2.new(0, X + 12, 0, var707 * 0.8)
			return
		end
		captionContainer.Size = UDim2.new(0, 0, 0, 0)
	end
end
function module_upvr_2.displayCaption(arg1, arg2) -- Line 1847
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local var715
	if UserInputService_upvr.TouchEnabled then
		if not arg1._draggingFinger then return end
	end
	local var716 = 8
	if arg1._draggingFinger then
		var716 += 55
	end
	local iconContainer_2 = arg1.instances.iconContainer
	local captionContainer_2 = arg1.instances.captionContainer
	var715 = 0
	captionContainer_2.Position = UDim2.new(var715, iconContainer_2.AbsolutePosition.X + iconContainer_2.AbsoluteSize.X / 2 - captionContainer_2.AbsoluteSize.X / 2, 0, iconContainer_2.AbsolutePosition.Y + iconContainer_2.AbsoluteSize.Y * 2 + var716)
	var715 = arg1.captionVisible or false
	if typeof(arg2) == "boolean" then
		var715 = arg2
	end
	arg1.captionVisible = var715
	for _, v_25 in pairs(arg1._groupSettings.caption) do
		arg1._settingsDictionary[v_25].useForcedGroupValue = not var715
		arg1:_update(v_25)
	end
end
function module_upvr_2.join(arg1, arg2, arg3, arg4) -- Line 1877
	--[[ Upvalues[1]:
		[1]: IconController_upvr (readonly)
	]]
	local var726
	if var726 then
		var726 = arg1:leave
		var726()
	end
	local function INLINED_23() -- Internal function, doesn't exist in bytecode
		var726 = arg3:lower()
		return var726
	end
	if not arg3 or not INLINED_23() then
		var726 = "dropdown"
	end
	local var727 = "before"..arg3:sub(1, 1):upper()..arg3:sub(2)
	arg1.presentOnTopbar = false
	arg1.joinedFeatureName = arg3
	arg1._parentIcon = arg2
	arg1.instances.iconContainer.Parent = arg2.instances[arg3.."Frame"]
	for i_26, v_26 in pairs(arg1.notices) do
		arg2:notify(v_26.clearNoticeEvent, i_26)
	end
	if arg3 == "dropdown" then
		i_26 = "iconSize"
		v_26 = UDim2.new(1, 0, 0, arg1:get("iconSize", "deselected").Y.Offset)
		arg1:set(i_26, v_26, "deselected", var727)
		i_26 = "iconSize"
		v_26 = UDim2.new(1, 0, 0, arg1:get("iconSize", "selected").Y.Offset)
		arg1:set(i_26, v_26, "selected", var727)
		if arg2:get("dropdownSquareCorners") then
			i_26 = "iconCornerRadius"
			v_26 = UDim.new(0, 0)
			arg1:set(i_26, v_26, "deselected", var727)
			i_26 = "iconCornerRadius"
			v_26 = UDim.new(0, 0)
			arg1:set(i_26, v_26, "selected", var727)
		end
		i_26 = "captionBlockerTransparency"
		v_26 = 0.4
		arg1:set(i_26, v_26, nil, var727)
	end
	table.insert(arg2[var726.."Icons"], arg1)
	if not arg4 then
		if arg3 == "dropdown" then
			arg2:_updateDropdown()
		elseif arg3 == "menu" then
			arg2:_updateMenu()
		end
	end
	arg2.deselectWhenOtherIconSelected = false
	IconController_upvr:_updateSelectionGroup()
	arg1:_decideToCallSignal("dropdown")
	arg1:_decideToCallSignal("menu")
	return arg1
end
function module_upvr_2.leave(arg1) -- Line 1921
	--[[ Upvalues[2]:
		[1]: TopbarContainer_upvr (readonly)
		[2]: IconController_upvr (readonly)
	]]
	if arg1._destroyed or arg1.instances.iconContainer.Parent == nil then return end
	local tbl_14_upvr = {"iconSize", "captionBlockerTransparency", "iconCornerRadius"}
	local _parentIcon_2_upvr = arg1._parentIcon
	arg1.instances.iconContainer.Parent = TopbarContainer_upvr
	arg1.presentOnTopbar = true
	arg1.joinedFeatureName = nil
	local function scanFeature(arg1_6, arg2, arg3) -- Line 1930
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: tbl_14_upvr (readonly)
			[3]: _parentIcon_2_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local pairs_result1_18, pairs_result2_3, pairs_result3_4 = pairs(arg1_6)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [61] 48. Error Block 11 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [61] 48. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [61.7]
		-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
	end
	scanFeature(_parentIcon_2_upvr.dropdownIcons, "beforeDropdown", _parentIcon_2_upvr._updateDropdown)
	scanFeature(_parentIcon_2_upvr.menuIcons, "beforeMenu", _parentIcon_2_upvr._updateMenu)
	for i_27, _ in pairs(arg1.notices) do
		local var741 = _parentIcon_2_upvr.notices[i_27]
		if var741 then
			var741.completeSignal:Fire()
		end
	end
	arg1._parentIcon = nil
	IconController_upvr:_updateSelectionGroup()
	arg1:_decideToCallSignal("dropdown")
	arg1:_decideToCallSignal("menu")
	return arg1
end
function module_upvr_2._decideToCallSignal(arg1, arg2) -- Line 1970
	local var742 = arg1[arg2.."Open"]
	local var743 = "_previous"..string.sub(arg2, 1, 1):upper()..arg2:sub(2).."Open"
	if var742 and 0 < #arg1[arg2.."Icons"] and arg1[var743] == false then
		arg1[var743] = true
		arg1[arg2.."Opened"]:Fire()
	else
		local function INLINED_24() -- Internal function, doesn't exist in bytecode
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return #arg1[arg2.."Icons"] == 0
		end
		local function INLINED_25() -- Internal function, doesn't exist in bytecode
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return arg1[var743] == true
		end
		if not var742 or INLINED_24() or INLINED_25() then
			arg1[var743] = false
			arg1[arg2.."Closed"]:Fire()
		end
	end
end
function module_upvr_2._ignoreClipping(arg1, arg2) -- Line 1984
	--[[ Upvalues[1]:
		[1]: ActiveItems_upvr (readonly)
	]]
	local any_get_result1_9 = arg1:get(arg2.."IgnoreClipping")
	if arg1._parentIcon then
		local var774 = arg1['_'..arg2.."ClippingMaid"]
		local var775_upvr = arg1.instances[arg2.."Container"]
		var774:clean()
		if any_get_result1_9 then
			local Frame_2 = Instance.new("Frame")
			Frame_2.Name = var775_upvr.Name.."FakeFrame"
			Frame_2.ClipsDescendants = true
			Frame_2.BackgroundTransparency = 1
			Frame_2.Size = var775_upvr.Size
			Frame_2.Position = var775_upvr.Position
			Frame_2.Parent = ActiveItems_upvr
			for _, v_28 in pairs(var775_upvr:GetChildren()) do
				v_28.Parent = Frame_2
				local var780_upvr
			end
			local function _() -- Line 2003, Named "updateSize"
				--[[ Upvalues[2]:
					[1]: var775_upvr (readonly)
					[2]: var780_upvr (readonly)
				]]
				local AbsoluteSize_6 = var775_upvr.AbsoluteSize
				var780_upvr.Size = UDim2.new(0, AbsoluteSize_6.X, 0, AbsoluteSize_6.Y)
			end
			var774:give(var775_upvr:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 2007
				--[[ Upvalues[2]:
					[1]: var775_upvr (readonly)
					[2]: var780_upvr (readonly)
				]]
				local AbsoluteSize = var775_upvr.AbsoluteSize
				var780_upvr.Size = UDim2.new(0, AbsoluteSize.X, 0, AbsoluteSize.Y)
			end))
			local AbsoluteSize_3 = var775_upvr.AbsoluteSize
			var780_upvr.Size = UDim2.new(0, AbsoluteSize_3.X, 0, AbsoluteSize_3.Y)
			local function _() -- Line 2011, Named "updatePos"
				--[[ Upvalues[2]:
					[1]: var775_upvr (readonly)
					[2]: var780_upvr (readonly)
				]]
				local absolutePosition_2 = var775_upvr.absolutePosition
				var780_upvr.Position = UDim2.new(0, absolutePosition_2.X, 0, absolutePosition_2.Y + 36)
			end
			var774:give(var775_upvr:GetPropertyChangedSignal("AbsolutePosition"):Connect(function() -- Line 2015
				--[[ Upvalues[2]:
					[1]: var775_upvr (readonly)
					[2]: var780_upvr (readonly)
				]]
				local absolutePosition_6 = var775_upvr.absolutePosition
				var780_upvr.Position = UDim2.new(0, absolutePosition_6.X, 0, absolutePosition_6.Y + 36)
			end))
			local absolutePosition_5 = var775_upvr.absolutePosition
			var780_upvr.Position = UDim2.new(0, absolutePosition_5.X, 0, absolutePosition_5.Y + 36)
			var774:give(function() -- Line 2019
				--[[ Upvalues[2]:
					[1]: var780_upvr (readonly)
					[2]: var775_upvr (readonly)
				]]
				for _, v_29 in pairs(var780_upvr:GetChildren()) do
					v_29.Parent = var775_upvr
				end
				var780_upvr.Name = "Destroying..."
				var780_upvr:Destroy()
			end)
		end
	end
	var780_upvr = arg2
	arg1._ignoreClippingChanged:Fire(var780_upvr, any_get_result1_9)
end
function module_upvr_2.setDropdown(arg1, arg2) -- Line 2032
	for _, v_30 in pairs(arg1.dropdownIcons) do
		v_30:leave()
	end
	if type(arg2) == "table" then
		for _, v_31 in pairs(arg2) do
			v_31:join(arg1, "dropdown", true)
		end
	end
	arg1:_updateDropdown()
	return arg1
end
function module_upvr_2._updateDropdown(arg1) -- Line 2048
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_16 = {
		maxIconsBeforeScroll = arg1:get("dropdownMaxIconsBeforeScroll") or "_NIL";
		minWidth = arg1:get("dropdownMinWidth") or "_NIL";
		padding = arg1:get("dropdownListPadding") or "_NIL";
		dropdownAlignment = arg1:get("dropdownAlignment") or "_NIL";
		iconAlignment = arg1:get("alignment") or "_NIL";
		scrollBarThickness = arg1:get("dropdownScrollBarThickness") or "_NIL";
	}
	local var821
	for _, v_32 in pairs(tbl_16) do
		if v_32 == "_NIL" then return end
	end
	local Offset_2 = tbl_16.padding.Offset
	local dropdownContainer = arg1.instances.dropdownContainer
	local dropdownFrame = arg1.instances.dropdownFrame
	var821 = arg1.dropdownIcons
	local len = #var821
	local function INLINED_26() -- Internal function, doesn't exist in bytecode
		var821 = tbl_16.maxIconsBeforeScroll
		return var821
	end
	if tbl_16.maxIconsBeforeScroll >= len or not INLINED_26() then
		var821 = len
	end
	table.sort(arg1.dropdownIcons, function(arg1_7, arg2) -- Line 2069
		local var827
		if arg1_7:get("order") >= arg2:get("order") then
			var827 = false
		else
			var827 = true
		end
		return var827
	end)
	for i_33 = 1, len do
		local var828 = arg1.dropdownIcons[i_33]
		local _, any_get_result2 = var828:get("iconSize", nil, "beforeDropdown")
		local var831 = any_get_result2.Y.Offset + Offset_2
		local var832
		if i_33 <= var821 then
			var832 += var831
		end
		if i_33 == len then
			var832 += var831 / 4
		end
		local Offset = any_get_result2.X.Offset
		if tbl_16.minWidth < Offset then
		end
		if i_33 ~= 1 or not arg1 then
			local var834 = arg1.dropdownIcons[i_33 - 1]
		end
		local var835 = arg1.dropdownIcons[i_33 + 1]
		local var836 = var834
		if var836 then
			var836 = var834.instances.iconButton
		end
		var828.instances.iconButton.NextSelectionUp = var836
		local var837 = var835
		if var837 then
			var837 = var835.instances.iconButton
		end
		var828.instances.iconButton.NextSelectionDown = var837
	end
	if var821 == len then
	else
	end
	arg1:set("dropdownCanvasSize", UDim2.new(0, 0, 0, -Offset_2 + var831))
	arg1:set("dropdownSize", UDim2.new(0, (Offset + 4) * 2, 0, var832))
	local tbl_15 = {
		left = {
			AnchorPoint = Vector2.new(0, 0);
			PositionXScale = 0;
			ThicknessMultiplier = 0;
		};
		mid = {
			AnchorPoint = Vector2.new(0.5, 0);
			PositionXScale = 0.5;
			ThicknessMultiplier = 0.5;
		};
	}
	local tbl_5 = {
		AnchorPoint = Vector2.new(0.5, 0);
		PositionXScale = 1;
		FrameAnchorPoint = Vector2.new(0, 0);
		FramePositionXScale = 0;
		ThicknessMultiplier = 1;
	}
	tbl_15.right = tbl_5
	tbl_5 = tbl_15[tbl_16.dropdownAlignment:lower()]
	local var842 = tbl_5
	if not var842 then
		var842 = tbl_15[tbl_16.iconAlignment:lower()]
	end
	dropdownContainer.AnchorPoint = var842.AnchorPoint
	dropdownContainer.Position = UDim2.new(var842.PositionXScale, 0, 1, Offset_2 + 0)
	local var843 = tbl_16.scrollBarThickness * var842.ThicknessMultiplier
	if dropdownFrame.VerticalScrollBarPosition ~= Enum.VerticalScrollBarPosition.Right or not var843 then
	end
	if not var842.FrameAnchorPoint then
	end
	dropdownFrame.AnchorPoint = var842.AnchorPoint
	local FramePositionXScale = var842.FramePositionXScale
	if not FramePositionXScale then
		FramePositionXScale = var842.PositionXScale
	end
	dropdownFrame.Position = UDim2.new(FramePositionXScale, -var843, 0, 0)
	arg1._dropdownCanvasPos = Vector2.new(0, 0)
end
function module_upvr_2._dropdownIgnoreClipping(arg1) -- Line 2131
	arg1:_ignoreClipping("dropdown")
end
function module_upvr_2.setMenu(arg1, arg2) -- Line 2137
	for _, v_33 in pairs(arg1.menuIcons) do
		v_33:leave()
	end
	if type(arg2) == "table" then
		for _, v_34 in pairs(arg2) do
			v_34:join(arg1, "menu", true)
		end
	end
	arg1:_updateMenu()
	return arg1
end
function module_upvr_2._getMenuDirection(arg1) -- Line 2153
	local var855
	local var856
	if var855 ~= "left" and var855 ~= "right" then
		if arg1:get("alignment") or "_NIL":lower() == "left" then
			var856 = "right"
		else
			var856 = "left"
		end
		var855 = var856
	end
	return var855
end
function module_upvr_2._updateMenu(arg1) -- Line 2162
	--[[ Upvalues[1]:
		[1]: IconController_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_11 = {
		maxIconsBeforeScroll = arg1:get("menuMaxIconsBeforeScroll") or "_NIL";
		direction = arg1:get("menuDirection") or "_NIL";
		iconAlignment = arg1:get("alignment") or "_NIL";
		scrollBarThickness = arg1:get("menuScrollBarThickness") or "_NIL";
	}
	local var881
	for _, v_35 in pairs(tbl_11) do
		if v_35 == "_NIL" then return end
	end
	local var874 = IconController_upvr[tbl_11.iconAlignment.."Gap"]
	local menuContainer = arg1.instances.menuContainer
	local len_2 = #arg1.menuIcons
	local any__getMenuDirection_result1 = arg1:_getMenuDirection()
	if tbl_11.maxIconsBeforeScroll >= len_2 or not tbl_11.maxIconsBeforeScroll then
		local var878 = len_2
	end
	local function INLINED_27() -- Internal function, doesn't exist in bytecode
		function var881(arg1_8, arg2) -- Line 2182
			local var880
			if arg1_8:get("order") >= arg2:get("order") then
				var880 = false
			else
				var880 = true
			end
			return var880
		end
		return var881
	end
	if any__getMenuDirection_result1 ~= "right" or not INLINED_27() then
		function var881(arg1_9, arg2) -- Line 2182
			local var882
			if arg2:get("order") >= arg1_9:get("order") then
				var882 = false
			else
				var882 = true
			end
			return var882
		end
	end
	table.sort(arg1.menuIcons, var881)
	for i_37 = 1, len_2 do
		local var883 = arg1.menuIcons[i_37]
		local any_get_result1_5 = var883:get("iconSize")
		local var885
		if i_37 <= var878 then
			var885 += any_get_result1_5.X.Offset + var874
		end
		if i_37 == var878 and i_37 ~= len_2 then
			var885 -= 2
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local Offset_3 = any_get_result1_5.Y.Offset
		if 0 < Offset_3 then
		end
		local var887 = arg1.menuIcons[i_37 - 1]
		local var888 = arg1.menuIcons[i_37 + 1]
		local var889 = var887
		if var889 then
			var889 = var887.instances.iconButton
		end
		var883.instances.iconButton.NextSelectionRight = var889
		local var890 = var888
		if var890 then
			var890 = var888.instances.iconButton
		end
		var883.instances.iconButton.NextSelectionLeft = var890
	end
	if var878 == len_2 then
		local _ = 0
	else
	end
	arg1:set("menuCanvasSize", UDim2.new(0, (-var874) + (any_get_result1_5.X.Offset + var874) + var874, 0, 0))
	arg1:set("menuSize", UDim2.new(0, var885, 0, Offset_3 + tbl_11.scrollBarThickness + 3))
	local tbl_9 = {}
	local tbl_4 = {
		containerAnchorPoint = Vector2.new(1, 0);
		containerPosition = UDim2.new(0, -4, 0, 0);
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_4.canvasPosition = Vector2.new((-var874) + (any_get_result1_5.X.Offset + var874) + var874, 0)
	tbl_9.left = tbl_4
	tbl_9.right = {
		containerAnchorPoint = Vector2.new(0, 0);
		containerPosition = UDim2.new(1, var874 - 2, 0, 0);
		canvasPosition = Vector2.new(0, 0);
	}
	local var895 = tbl_9[any__getMenuDirection_result1]
	menuContainer.AnchorPoint = var895.containerAnchorPoint
	menuContainer.Position = var895.containerPosition
	arg1.instances.menuFrame.CanvasPosition = var895.canvasPosition
	arg1._menuCanvasPos = var895.canvasPosition
	arg1.instances.menuList.Padding = UDim.new(0, var874)
end
function module_upvr_2._menuIgnoreClipping(arg1) -- Line 2232
	arg1:_ignoreClipping("menu")
end
function module_upvr_2.destroy(arg1) -- Line 2239
	--[[ Upvalues[1]:
		[1]: IconController_upvr (readonly)
	]]
	if arg1._destroyed then
	else
		IconController_upvr.iconRemoved:Fire(arg1)
		arg1:clearNotices()
		if arg1._parentIcon then
			arg1:leave()
		end
		arg1:setDropdown()
		arg1:setMenu()
		arg1._destroyed = true
		arg1._maid:clean()
	end
end
module_upvr_2.Destroy = module_upvr_2.destroy
return module_upvr_2