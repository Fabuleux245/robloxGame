-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:58
-- Luau version 6, Types version 3
-- Time taken: 0.102515 seconds

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
local tbl_9_upvr = {}
local any_new_result1_5_upvr = Signal_upvr.new()
local function topbarInsetChanged() -- Line 39
	--[[ Upvalues[4]:
		[1]: GuiService_upvr (readonly)
		[2]: Themes_upvr (readonly)
		[3]: New_RobloxTopbar_upvw (read and write)
		[4]: any_new_result1_5_upvr (readonly)
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
			any_new_result1_5_upvr:Fire(New_RobloxTopbar_upvw, var22)
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
		[5]: tbl_9_upvr (readonly)
		[6]: StarterGui_upvr (readonly)
		[7]: IconController_upvr (readonly)
		[8]: TweenService_upvr (readonly)
		[9]: Signal_upvr (readonly)
		[10]: HttpService_upvr (readonly)
		[11]: New_RobloxTopbar_upvw (read and write)
		[12]: any_new_result1_5_upvr (readonly)
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
				v_2.forcedGroupValue = tbl_9_upvr[group]
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
						local dropdownFrame = module_upvr.instances.dropdownFrame
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
							local any_get_result1_7 = module_upvr:get("dropdownSize")
							local function INLINED_5() -- Internal function, doesn't exist in bytecode
								var236 = any_get_result1_7.X.Offset / 1
								return var236
							end
							if not any_get_result1_7 or not INLINED_5() then
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
							module_upvr._dropdownCanvasPos = dropdownFrame.CanvasPosition
						end
						dropdownFrame.ScrollingEnabled = var238
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
						local any_get_result1_5 = module_upvr:get("menuSlideInfo")
						local menuFrame_2 = module_upvr.instances.menuFrame
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
							if any_get_result1_5.EasingDirection == var260_upvw then
								var260_upvw = any_get_result1_5.Time
							end
						end
						local any_Create_result1_4 = TweenService_upvr:Create(arg2, TweenInfo.new(var260_upvw, any_get_result1_5.EasingStyle, Enum.EasingDirection.In), {
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
								menuFrame_2.CanvasPosition = module_upvr._menuCanvasPos
								-- KONSTANTWARNING: GOTO [137] #100
							end
						else
							module_upvr._menuCanvasPos = menuFrame_2.CanvasPosition
						end
						-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [137] 100. Error Block 26 start (CF ANALYSIS FAILED)
						menuFrame_2.ScrollingEnabled = var262
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
	any_new_result1:give(any_new_result1_5_upvr:Connect(function(arg1, arg2) -- Line 443
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
	local any_new_result1_4 = module_upvr_2.new()
	any_new_result1_4:setName(var307)
	if arg1 == "Chat" then
		any_new_result1_4:setOrder(-1)
		any_new_result1_4:setImage("rbxasset://textures/ui/TopBar/chatOff.png", "deselected")
		any_new_result1_4:setImage("rbxasset://textures/ui/TopBar/chatOn.png", "selected")
		any_new_result1_4:setImageYScale(0.625)
	end
	return any_new_result1_4
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
		local pairs_result1_11, pairs_result2_32, pairs_result3_34 = pairs(var374.callMethods)
		for _, v_6 in pairs_result1_11, pairs_result2_32, pairs_result3_34 do
			i_5 = arg1
			v_5 = arg3
			v_6(i_5, v_5, any_lower_result1_2)
		end
	end
	pairs_result1_11 = var374.callSignals
	if pairs_result1_11 then
		pairs_result1_11 = pairs(var374.callSignals)
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
	-- KONSTANTERROR: [0] 1. Error Block 51 start (CF ANALYSIS FAILED)
	local var427 = arg1._settingsDictionary[arg2]
	local var428
	if var427 == nil then
		var428 = false
	else
		var428 = true
	end
	assert(var428, "setting '%s' does not exist":format(arg2))
	-- KONSTANTERROR: [0] 1. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 17. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 17. Error Block 7 end (CF ANALYSIS FAILED)
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
	local var440 = arg3
	if not var440 then
		var440 = Color3.new(1, 1, 1)
	end
	iconOverlay.BackgroundColor3 = var440
end
local tbl_5_upvr = {"iconSize"}
function module_upvr_2.setTheme(arg1, arg2, arg3, arg4, arg5) -- Line 963
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 63 start (CF ANALYSIS FAILED)
	arg1._updateAfterSettingAll = arg3
	local pairs_result1_31, pairs_result2_21, pairs_result3_27 = pairs(arg2)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [7.8]
	if nil == "toggleable" then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [11.9]
		for i_11_upvr, v_11 in pairs(nil.deselected) do
			local var477_upvw = false
			if arg5 and table.find(tbl_5_upvr, i_11_upvr) == nil then
				local var479_upvr
				pcall(function() -- Line 971
					--[[ Upvalues[5]:
						[1]: arg1 (readonly)
						[2]: i_11_upvr (readonly)
						[3]: arg5 (readonly)
						[4]: var479_upvr (readonly)
						[5]: var477_upvw (read and write)
					]]
					if arg1:get(i_11_upvr, "deselected") ~= arg5[var479_upvr].deselected[i_11_upvr] then
						var477_upvw = true
					end
				end)
			end
			if not arg1.lockedSettings[i_11_upvr] and var477_upvw == false then
				local var480_upvw = "both"
				local var482_upvr
				pcall(function() -- Line 980
					--[[ Upvalues[3]:
						[1]: var482_upvr (readonly)
						[2]: i_11_upvr (readonly)
						[3]: var480_upvw (read and write)
					]]
					if var482_upvr.selected[i_11_upvr] then
						var480_upvw = "deselected"
					end
				end)
				arg1:set(i_11_upvr, v_11, var480_upvw)
			end
		end
		local pairs_result1_9, pairs_result2_3, pairs_result3_3 = pairs(var482_upvr.selected)
		for i_12_upvr, v_12 in pairs_result1_9, pairs_result2_3, pairs_result3_3 do
			local var486_upvw = false
			if arg5 and table.find(tbl_5_upvr, i_12_upvr) == nil then
				pcall(function() -- Line 992
					--[[ Upvalues[5]:
						[1]: arg1 (readonly)
						[2]: i_12_upvr (readonly)
						[3]: arg5 (readonly)
						[4]: var479_upvr (readonly)
						[5]: var486_upvw (read and write)
					]]
					if arg1:get(i_12_upvr, "selected") ~= arg5[var479_upvr].selected[i_12_upvr] then
						var486_upvw = true
					end
				end)
			end
			if not arg1.lockedSettings[i_12_upvr] and var486_upvw == false then
				arg1:set(i_12_upvr, v_12, "selected")
			end
		end
		-- KONSTANTWARNING: GOTO [7] #6
	end
	-- KONSTANTERROR: [0] 1. Error Block 63 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [97] 76. Error Block 50 start (CF ANALYSIS FAILED)
	for _, _ in pairs_result1_9, pairs_result2_3, pairs_result3_3 do
		if arg5 and arg1:set(i_12_upvr, v_12, "selected") == nil then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not arg1:set(i_12_upvr, v_12, "selected") and var486_upvw == false then
			if var479_upvr == "action" then
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
	local var488 = arg1.instances[arg2]
	arg1.instances[arg2] = arg3
	if var488 then
		var488:Destroy()
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
	local tbl_11 = {}
	setmetatable(tbl_11, {
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
	arg1:setInstance("iconLabel", tbl_11)
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
				local any_new_result1_3_upvr = Maid_upvr.new()
				GuiService_upvr:AddSelectionTuple(arg1.UID, unpack(v_19))
				GuiService_upvr.SelectedObject = v_19[1]
				local var532 = IconController_upvr
				var532.activeButtonBCallbacks += 1
				any_new_result1_3_upvr:give(UserInputService_upvr.InputEnded:Connect(function(arg1_4, arg2_4) -- Line 1149
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: GuiService_upvr (copied, readonly)
					]]
					-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
					local pairs_result1, pairs_result2_2, pairs_result3 = pairs(arg1.blockBackBehaviourChecks)
					-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [14] 12. Error Block 4 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [14] 12. Error Block 4 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [14.8]
					-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
				end))
				any_new_result1_3_upvr:give(arg1.deselected:Connect(function() -- Line 1162
					--[[ Upvalues[1]:
						[1]: any_new_result1_3_upvr (readonly)
					]]
					any_new_result1_3_upvr:clean()
				end))
				any_new_result1_3_upvr:give(function() -- Line 1165
					--[[ Upvalues[1]:
						[1]: IconController_upvr (copied, readonly)
					]]
					local var539 = IconController_upvr
					var539.activeButtonBCallbacks -= 1
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
		local any_new_result1_upvr = Signal_upvr.new()
		local function var542() -- Line 1207
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:Fire()
		end
		var542 = arg3
		local var544 = var542
		if not var544 then
			var544 = HttpService_upvr:GenerateGUID(true)
		end
		arg3 = var544
		local tbl_16 = {
			completeSignal = any_new_result1_upvr;
		}
		tbl_16.clearNoticeEvent = arg2
		arg1.notices[arg3] = tbl_16
		local var546 = arg1
		var546.totalNotices += 1
		arg1:_updateNotice()
		arg1.notified:Fire(arg3)
		any_new_result1_upvr:Wait()
		arg1._endNotices:Connect(var542):Disconnect()
		arg2:Connect(function() -- Line 1210
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:Fire()
		end):Disconnect()
		any_new_result1_upvr:Disconnect()
		local var547 = arg1
		var547.totalNotices -= 1
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
	local var548
	if arg1.isSelected and (0 < #arg1.dropdownIcons or 0 < #arg1.menuIcons) then
		var548 = false
	end
	if var548 then
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
	local var551 = arg2
	if not var551 then
		var551 = CornerRadius.Scale
	end
	local var552 = arg3
	if not var552 then
		var552 = CornerRadius.Offset
	end
	arg1:set("iconCornerRadius", UDim.new(var551, var552), arg4)
	return arg1
end
function module_upvr_2.setImage(arg1, arg2, arg3) -- Line 1289
	local var553
	local function INLINED_16() -- Internal function, doesn't exist in bytecode
		var553 = "http://www.roblox.com/asset/?id="..arg2
		return var553
	end
	if not tonumber(arg2) or not INLINED_16() then
		var553 = arg2
		if not var553 then
			var553 = ""
		end
	end
	return arg1:set("iconImage", var553, arg3)
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
	local iconContainer_2 = arg1.instances.iconContainer
	local tonumber_result1 = tonumber(arg2)
	if not tonumber_result1 then
		tonumber_result1 = iconContainer_2.ZIndex
	end
	local var560 = tonumber_result1 - iconContainer_2.ZIndex
	if var560 == 0 then
		return "The baseValue is the same"
	end
	for _, v_20 in pairs(arg1.instances) do
		if v_20:IsA("GuiObject") then
			v_20.ZIndex += var560
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
	local var564
	local function INLINED_17() -- Internal function, doesn't exist in bytecode
		var564 = tonumber(arg2) or 32
		return var564
	end
	if not var564 and (arg3 == "_NIL" or not INLINED_17()) then
		var564 = 32
	end
	arg1:set("iconSize", UDim2.new(0, tonumber(arg2) or 32, 0, var564), arg4)
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
	local var566 = false
	if typeof(arg1.instances.iconLabel) == "Instance" then
		var566 = IconController_upvr.translator:Translate(arg1.instances.iconLabel, ContentText)
	end
	if typeof(var566) ~= "string" or var566 == "" then
		var566 = ContentText
	end
	arg1.instances.fakeIconLabel.Text = ""
	return var566
end
function module_upvr_2._updateIconSize(arg1, arg2, arg3) -- Line 1392
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 90 start (CF ANALYSIS FAILED)
	local var601
	if var601 then
	else
		var601 = {}
		var601.iconImage = arg1:get("iconImage", arg3) or "_NIL"
		var601.iconText = arg1:get("iconText", arg3) or "_NIL"
		var601.iconFont = arg1:get("iconFont", arg3) or "_NIL"
		var601.iconSize = arg1:get("iconSize", arg3) or "_NIL"
		var601.forcedIconSizeX = arg1:get("forcedIconSizeX", arg3) or "_NIL"
		var601.iconImageYScale = arg1:get("iconImageYScale", arg3) or "_NIL"
		var601.iconImageRatio = arg1:get("iconImageRatio", arg3) or "_NIL"
		var601.iconLabelYScale = arg1:get("iconLabelYScale", arg3) or "_NIL"
		if arg3 == "hovering" and arg1._usingDefaultTheme then
			var601 = {
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
		for _, v_36 in pairs(var601) do
			if v_36 == "_NIL" then return end
		end
		local iconContainer_4 = arg1.instances.iconContainer
		if not iconContainer_4.Parent then return end
		local Scale = var601.iconSize.X.Scale
		if 0 >= Scale or not (var601.iconSize.X.Offset + Scale * iconContainer_4.Parent.AbsoluteSize.X) then
			if not arg1.forcefullyAppliedXSize or not var601.forcedIconSizeX then
			end
		end
		local var608 = var601.iconSize.Y.Offset + var601.iconSize.Y.Scale * iconContainer_4.Parent.AbsoluteSize.Y
		local var609 = var608 * var601.iconLabelYScale
		local var610 = var608 * var601.iconImageYScale * var601.iconImageRatio
		if var601.iconImage == "" then
			-- KONSTANTWARNING: GOTO [246] #174
		end
		local var611 = true
		if var601.iconText == "" then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		if var611 and not true then
			arg1:set("iconImageVisible", true, arg3)
			arg1:set("iconImageAnchorPoint", Vector2.new(0.5, 0.5), arg3)
			arg1:set("iconImagePosition", UDim2.new(0.5, 0, 0.5, 0), arg3)
			arg1:set("iconImageSize", UDim2.new(var601.iconImageYScale * var601.iconImageRatio, 0, var601.iconImageYScale, 0), arg3)
			arg1:set("iconLabelVisible", false, arg3)
			-- KONSTANTWARNING: GOTO [466] #352
		end
		-- KONSTANTERROR: [0] 1. Error Block 90 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [311] 226. Error Block 91 start (CF ANALYSIS FAILED)
		if not var611 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true then
				arg1:set("iconLabelVisible", true, arg3)
				arg1:set("iconLabelAnchorPoint", Vector2.new(0, 0.5), arg3)
				arg1:set("iconLabelPosition", UDim2.new(0, 12, 0.5, 0), arg3)
				arg1:set("iconLabelSize", UDim2.new(1, -24, var601.iconLabelYScale, var609 / 2), arg3)
				arg1:set("iconLabelTextXAlignment", Enum.TextXAlignment.Center, arg3)
				arg1:set("iconImageVisible", false, arg3)
				-- KONSTANTWARNING: GOTO [466] #352
			end
		end
		if var611 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true then
				local var613 = 12 + var610 + 8
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local var614 = var613 + TextService_upvr:GetTextSize(arg1:_getContentText(var601.iconText), var609, var601.iconFont, Vector2.new(10000, var609)).X + 12
				arg1:set("iconImageVisible", true, arg3)
				arg1:set("iconImageAnchorPoint", Vector2.new(0, 0.5), arg3)
				arg1:set("iconImagePosition", UDim2.new(0, 12, 0.5, 0), arg3)
				arg1:set("iconImageSize", UDim2.new(0, var610, var601.iconImageYScale, 0), arg3)
				arg1:set("iconLabelVisible", true, arg3)
				arg1:set("iconLabelAnchorPoint", Vector2.new(0, 0.5), arg3)
				arg1:set("iconLabelPosition", UDim2.new(0, var613, 0.5, 0), arg3)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg1:set("iconLabelSize", UDim2.new(1, -var613 - 12, var601.iconLabelYScale, var609 / 2), arg3)
				arg1:set("iconLabelTextXAlignment", Enum.TextXAlignment.Left, arg3)
			end
		end
		if var614 then
			var613 = arg1._updatingIconSize
			local var615
			if not var615 then
				var615 = true
				arg1._updatingIconSize = var615
				local var616 = 0
				local function INLINED_19() -- Internal function, doesn't exist in bytecode
					var615 = Scale
					return var615
				end
				if var616 >= Scale or not INLINED_19() then
					var615 = 0
				end
				if 0 < Scale then
					var616 = 0
				else
					var616 = math.clamp
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var616 = var616(var614, var601.forcedIconSizeX, 9999)
				end
				arg1:set("iconSize", UDim2.new(var615, var616, var601.iconSize.Y.Scale, var601.iconSize.Y.Offset), arg3, "_ignorePrevious")
				local _parentIcon_2 = arg1._parentIcon
				if _parentIcon_2 then
					local udim2 = UDim2.new(0, var614, 0, var601.iconSize.Y.Offset)
					if 0 < #_parentIcon_2.dropdownIcons then
						arg1:setAdditionalValue("iconSize", "beforeDropdown", udim2, arg3)
						_parentIcon_2:_updateDropdown()
					end
					if 0 < #_parentIcon_2.menuIcons then
						arg1:setAdditionalValue("iconSize", "beforeMenu", udim2, arg3)
						_parentIcon_2:_updateMenu()
					end
				end
				arg1._updatingIconSize = false
			end
		end
		arg1:set("iconLabelTextSize", var609, arg3)
		arg1:set("noticeFramePosition", UDim2.new(0.45, 0, 0, -2), arg3)
		arg1._updatingIconSize = false
		-- KONSTANTERROR: [311] 226. Error Block 91 end (CF ANALYSIS FAILED)
	end
end
function module_upvr_2.bindEvent(arg1, arg2, arg3) -- Line 1515
	local var622 = arg1[arg2]
	local var623
	if var623 then
		var623 = false
		if typeof(var622) == "table" then
			var623 = var622.Connect
		end
	end
	assert(var623, "argument[1] must be a valid topbarplus icon event name!")
	if typeof(arg3) ~= "function" then
		var623 = false
	else
		var623 = true
	end
	assert(var623, "argument[2] must be a function!")
	var623 = var622:Connect(function(...) -- Line 1519
		--[[ Upvalues[2]:
			[1]: arg3 (readonly)
			[2]: arg1 (readonly)
		]]
		arg3(arg1, ...)
	end)
	arg1._bindedEvents[arg2] = var623
	return arg1
end
function module_upvr_2.unbindEvent(arg1, arg2) -- Line 1525
	local var625 = arg1._bindedEvents[arg2]
	if var625 then
		var625:Disconnect()
		arg1._bindedEvents[arg2] = nil
	end
	return arg1
end
function module_upvr_2.bindToggleKey(arg1, arg2) -- Line 1534
	local var626
	if typeof(arg2) ~= "EnumItem" then
		var626 = false
	else
		var626 = true
	end
	assert(var626, "argument[1] must be a KeyCode EnumItem!")
	var626 = true
	arg1._bindedToggleKeys[arg2] = var626
	return arg1
end
function module_upvr_2.unbindToggleKey(arg1, arg2) -- Line 1540
	local var627
	if typeof(arg2) ~= "EnumItem" then
		var627 = false
	else
		var627 = true
	end
	assert(var627, "argument[1] must be a KeyCode EnumItem!")
	var627 = nil
	arg1._bindedToggleKeys[arg2] = var627
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
	local var629 = arg2
	if not var629 then
		if GuiService_upvr.TopbarInset.Height == 36 then
			var629 = 4
		else
			var629 = 12
		end
	end
	arg1.topPadding = UDim.new(arg3 or 0, var629)
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
	local var652 = arg2
	if typeof(arg2) == "function" then
		if typeof(arg2) ~= "function" then
			var652 = arg2(arg1)
		else
			var652 = nil
		end
	end
	if var652 ~= nil then
		arg1._maid:give(var652)
	end
	return arg1
end
tbl_9_upvr.tip = 1
function module_upvr_2.setTip(arg1, arg2) -- Line 1667
	--[[ Upvalues[2]:
		[1]: ActiveItems_upvr (readonly)
		[2]: Maid_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var653 = true
	if typeof(arg2) ~= "string" then
		if arg2 ~= nil then
			var653 = false
		else
			var653 = true
		end
	end
	assert(var653, "Expected string, got "..typeof(arg2))
	local var654 = arg2 or ""
	if var654 == "" then
		var653 = false
	else
		var653 = true
	end
	arg1.tipText = arg2
	arg1.instances.tipLabel.Text = var654
	if not var653 or not ActiveItems_upvr then
	end
	arg1.instances.tipFrame.Parent = arg1.instances.iconContainer
	arg1._maid.tipFrame = arg1.instances.tipFrame
	arg1:_updateTipSize()
	local any_new_result1_2 = Maid_upvr.new()
	arg1._maid.tipMaid = any_new_result1_2
	if var653 then
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
	arg1:displayTip(arg1.hovering and var653)
	return arg1
end
function module_upvr_2._updateTipSize(arg1) -- Line 1698
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	local tipText = arg1.tipText
	local var661
	if tipText or "" == "" then
		tipText = false
	else
		tipText = true
	end
	var661 = arg1:_getContentText(tipText or "")
	var661 = arg1.instances
	local function INLINED_20() -- Internal function, doesn't exist in bytecode
		var661 = UDim2.new(0, TextService_upvr:GetTextSize(var661, 12, Enum.Font.GothamSemibold, Vector2.new(1000, 14)).X + 6, 0, 20)
		return var661
	end
	if not tipText or not INLINED_20() then
		var661 = UDim2.new(0, 0, 0, 0)
	end
	var661.tipFrame.Size = var661
end
function module_upvr_2.displayTip(arg1, arg2) -- Line 1706
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: IconController_upvr (readonly)
		[3]: TopbarPlusGui_upvr (readonly)
	]]
	local var666
	if var666 then
		var666 = arg1._draggingFinger
		if not var666 then return end
	end
	var666 = arg1.tipVisible or false
	if typeof(arg2) == "boolean" then
		var666 = arg2
	end
	arg1.tipVisible = var666
	if var666 then
		local tipFrame_upvr = arg1.instances.tipFrame
		local function updateTipPositon(arg1_5, arg2_5) -- Line 1720
			--[[ Upvalues[4]:
				[1]: UserInputService_upvr (copied, readonly)
				[2]: tipFrame_upvr (readonly)
				[3]: IconController_upvr (copied, readonly)
				[4]: TopbarPlusGui_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
			local var669
			if var669 then
				var669 = workspace.CurrentCamera.ViewportSize
			end
			if UserInputService_upvr.TouchEnabled then
				-- KONSTANTWARNING: GOTO [143] #101
			end
			-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [72] 52. Error Block 13 start (CF ANALYSIS FAILED)
			if IconController_upvr.controllerModeEnabled then
				local _ = TopbarPlusGui_upvr.Indicator.AbsolutePosition
			else
			end
			-- KONSTANTERROR: [72] 52. Error Block 13 end (CF ANALYSIS FAILED)
		end
		local any_GetMouseLocation_result1 = UserInputService_upvr:GetMouseLocation()
		if any_GetMouseLocation_result1 then
			updateTipPositon(any_GetMouseLocation_result1.X, any_GetMouseLocation_result1.Y)
		end
		arg1._hoveringMaid:give(arg1.instances.iconButton.MouseMoved:Connect(updateTipPositon))
	end
	for _, v_24 in pairs(arg1._groupSettings.tip) do
		arg1._settingsDictionary[v_24].useForcedGroupValue = not var666
		arg1:_update(v_24)
	end
end
tbl_9_upvr.caption = 1
function module_upvr_2.setCaption(arg1, arg2) -- Line 1775
	--[[ Upvalues[2]:
		[1]: ActiveItems_upvr (readonly)
		[2]: Maid_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var676 = true
	if typeof(arg2) ~= "string" then
		if arg2 ~= nil then
			var676 = false
		else
			var676 = true
		end
	end
	assert(var676, "Expected string, got "..typeof(arg2))
	local var677 = arg2 or ""
	if var677 == "" then
		var676 = false
	else
		var676 = true
	end
	arg1.captionText = arg2
	arg1.instances.captionLabel.Text = var677
	if not var676 or not ActiveItems_upvr then
	end
	arg1.instances.captionContainer.Parent = arg1.instances.iconContainer
	arg1._maid.captionContainer = arg1.instances.captionContainer
	arg1:_updateIconSize(nil, arg1:getIconState())
	local any_new_result1_6 = Maid_upvr.new()
	arg1._maid.captionMaid = any_new_result1_6
	if var676 then
		any_new_result1_6:give(arg1.hoverStarted:Connect(function() -- Line 1787
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not arg1.isSelected then
				arg1:displayCaption(true)
			end
		end))
		any_new_result1_6:give(arg1.hoverEnded:Connect(function() -- Line 1792
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:displayCaption(false)
		end))
		any_new_result1_6:give(arg1.selected:Connect(function() -- Line 1795
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.hovering then
				arg1:displayCaption(false)
			end
		end))
		local iconContainer_3 = arg1.instances.iconContainer
		any_new_result1_6:give(iconContainer_3:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 1801
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.hovering then
				arg1:displayCaption()
			end
		end))
		any_new_result1_6:give(iconContainer_3:GetPropertyChangedSignal("AbsolutePosition"):Connect(function() -- Line 1806
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.hovering then
				arg1:displayCaption()
			end
		end))
	end
	arg1:_updateCaptionSize()
	arg1:displayCaption(arg1.hovering and var676)
	return arg1
end
function module_upvr_2._updateCaptionSize(arg1) -- Line 1817
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	local any_get_result1_3 = arg1:get("iconSize")
	if any_get_result1_3 and arg1:get("captionFont") then
		local captionContainer = arg1.instances.captionContainer
		local captionText = arg1.captionText
		if (captionText or "") == "" then
			captionText = false
		else
			captionText = true
		end
		if captionText then
			local var688 = any_get_result1_3.Y.Offset + any_get_result1_3.Y.Scale * arg1.instances.iconContainer.Parent.AbsoluteSize.Y
			local captionLabel = arg1.instances.captionLabel
			local var690 = var688 * 0.8 * 0.58
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local X = TextService_upvr:GetTextSize(arg1:_getContentText(arg1.captionText), var690, arg1:get("captionFont"), Vector2.new(10000, var690)).X
			captionLabel.TextSize = var690
			captionLabel.Size = UDim2.new(0, X, 0.58, 0)
			captionContainer.Size = UDim2.new(0, X + 12, 0, var688 * 0.8)
			return
		end
		captionContainer.Size = UDim2.new(0, 0, 0, 0)
	end
end
function module_upvr_2.displayCaption(arg1, arg2) -- Line 1847
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local var696
	if UserInputService_upvr.TouchEnabled then
		if not arg1._draggingFinger then return end
	end
	local var697 = 8
	if arg1._draggingFinger then
		var697 += 55
	end
	local iconContainer_5 = arg1.instances.iconContainer
	local captionContainer_2 = arg1.instances.captionContainer
	var696 = 0
	captionContainer_2.Position = UDim2.new(var696, iconContainer_5.AbsolutePosition.X + iconContainer_5.AbsoluteSize.X / 2 - captionContainer_2.AbsoluteSize.X / 2, 0, iconContainer_5.AbsolutePosition.Y + iconContainer_5.AbsoluteSize.Y * 2 + var697)
	var696 = arg1.captionVisible or false
	if typeof(arg2) == "boolean" then
		var696 = arg2
	end
	arg1.captionVisible = var696
	for _, v_25 in pairs(arg1._groupSettings.caption) do
		arg1._settingsDictionary[v_25].useForcedGroupValue = not var696
		arg1:_update(v_25)
	end
end
function module_upvr_2.join(arg1, arg2, arg3, arg4) -- Line 1877
	--[[ Upvalues[1]:
		[1]: IconController_upvr (readonly)
	]]
	local var707
	if var707 then
		var707 = arg1:leave
		var707()
	end
	local function INLINED_21() -- Internal function, doesn't exist in bytecode
		var707 = arg3:lower()
		return var707
	end
	if not arg3 or not INLINED_21() then
		var707 = "dropdown"
	end
	local var708 = "before"..arg3:sub(1, 1):upper()..arg3:sub(2)
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
		arg1:set(i_26, v_26, "deselected", var708)
		i_26 = "iconSize"
		v_26 = UDim2.new(1, 0, 0, arg1:get("iconSize", "selected").Y.Offset)
		arg1:set(i_26, v_26, "selected", var708)
		if arg2:get("dropdownSquareCorners") then
			i_26 = "iconCornerRadius"
			v_26 = UDim.new(0, 0)
			arg1:set(i_26, v_26, "deselected", var708)
			i_26 = "iconCornerRadius"
			v_26 = UDim.new(0, 0)
			arg1:set(i_26, v_26, "selected", var708)
		end
		i_26 = "captionBlockerTransparency"
		v_26 = 0.4
		arg1:set(i_26, v_26, nil, var708)
	end
	table.insert(arg2[var707.."Icons"], arg1)
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
	local tbl_2_upvr = {"iconSize", "captionBlockerTransparency", "iconCornerRadius"}
	local _parentIcon_3_upvr = arg1._parentIcon
	arg1.instances.iconContainer.Parent = TopbarContainer_upvr
	arg1.presentOnTopbar = true
	arg1.joinedFeatureName = nil
	local function scanFeature(arg1_6, arg2, arg3) -- Line 1930
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: _parentIcon_3_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local pairs_result1_26, pairs_result2_20, pairs_result3_8 = pairs(arg1_6)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [61] 48. Error Block 11 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [61] 48. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [61.7]
		-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
	end
	scanFeature(_parentIcon_3_upvr.dropdownIcons, "beforeDropdown", _parentIcon_3_upvr._updateDropdown)
	scanFeature(_parentIcon_3_upvr.menuIcons, "beforeMenu", _parentIcon_3_upvr._updateMenu)
	for i_27, _ in pairs(arg1.notices) do
		local var722 = _parentIcon_3_upvr.notices[i_27]
		if var722 then
			var722.completeSignal:Fire()
		end
	end
	arg1._parentIcon = nil
	IconController_upvr:_updateSelectionGroup()
	arg1:_decideToCallSignal("dropdown")
	arg1:_decideToCallSignal("menu")
	return arg1
end
function module_upvr_2._decideToCallSignal(arg1, arg2) -- Line 1970
	local var723 = arg1[arg2.."Open"]
	local var724 = "_previous"..string.sub(arg2, 1, 1):upper()..arg2:sub(2).."Open"
	if var723 and 0 < #arg1[arg2.."Icons"] and arg1[var724] == false then
		arg1[var724] = true
		arg1[arg2.."Opened"]:Fire()
	else
		local function INLINED_22() -- Internal function, doesn't exist in bytecode
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return #arg1[arg2.."Icons"] == 0
		end
		local function INLINED_23() -- Internal function, doesn't exist in bytecode
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return arg1[var724] == true
		end
		if not var723 or INLINED_22() or INLINED_23() then
			arg1[var724] = false
			arg1[arg2.."Closed"]:Fire()
		end
	end
end
function module_upvr_2._ignoreClipping(arg1, arg2) -- Line 1984
	--[[ Upvalues[1]:
		[1]: ActiveItems_upvr (readonly)
	]]
	local any_get_result1_4 = arg1:get(arg2.."IgnoreClipping")
	if arg1._parentIcon then
		local var755 = arg1['_'..arg2.."ClippingMaid"]
		local var756_upvr = arg1.instances[arg2.."Container"]
		var755:clean()
		if any_get_result1_4 then
			local Frame_2 = Instance.new("Frame")
			Frame_2.Name = var756_upvr.Name.."FakeFrame"
			Frame_2.ClipsDescendants = true
			Frame_2.BackgroundTransparency = 1
			Frame_2.Size = var756_upvr.Size
			Frame_2.Position = var756_upvr.Position
			Frame_2.Parent = ActiveItems_upvr
			for _, v_28 in pairs(var756_upvr:GetChildren()) do
				v_28.Parent = Frame_2
				local var761_upvr
			end
			local function _() -- Line 2003, Named "updateSize"
				--[[ Upvalues[2]:
					[1]: var756_upvr (readonly)
					[2]: var761_upvr (readonly)
				]]
				local AbsoluteSize_5 = var756_upvr.AbsoluteSize
				var761_upvr.Size = UDim2.new(0, AbsoluteSize_5.X, 0, AbsoluteSize_5.Y)
			end
			var755:give(var756_upvr:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 2007
				--[[ Upvalues[2]:
					[1]: var756_upvr (readonly)
					[2]: var761_upvr (readonly)
				]]
				local AbsoluteSize_4 = var756_upvr.AbsoluteSize
				var761_upvr.Size = UDim2.new(0, AbsoluteSize_4.X, 0, AbsoluteSize_4.Y)
			end))
			local AbsoluteSize = var756_upvr.AbsoluteSize
			var761_upvr.Size = UDim2.new(0, AbsoluteSize.X, 0, AbsoluteSize.Y)
			local function _() -- Line 2011, Named "updatePos"
				--[[ Upvalues[2]:
					[1]: var756_upvr (readonly)
					[2]: var761_upvr (readonly)
				]]
				local absolutePosition_3 = var756_upvr.absolutePosition
				var761_upvr.Position = UDim2.new(0, absolutePosition_3.X, 0, absolutePosition_3.Y + 36)
			end
			var755:give(var756_upvr:GetPropertyChangedSignal("AbsolutePosition"):Connect(function() -- Line 2015
				--[[ Upvalues[2]:
					[1]: var756_upvr (readonly)
					[2]: var761_upvr (readonly)
				]]
				local absolutePosition_2 = var756_upvr.absolutePosition
				var761_upvr.Position = UDim2.new(0, absolutePosition_2.X, 0, absolutePosition_2.Y + 36)
			end))
			local absolutePosition = var756_upvr.absolutePosition
			var761_upvr.Position = UDim2.new(0, absolutePosition.X, 0, absolutePosition.Y + 36)
			var755:give(function() -- Line 2019
				--[[ Upvalues[2]:
					[1]: var761_upvr (readonly)
					[2]: var756_upvr (readonly)
				]]
				for _, v_29 in pairs(var761_upvr:GetChildren()) do
					v_29.Parent = var756_upvr
				end
				var761_upvr.Name = "Destroying..."
				var761_upvr:Destroy()
			end)
		end
	end
	var761_upvr = arg2
	arg1._ignoreClippingChanged:Fire(var761_upvr, any_get_result1_4)
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
	local tbl_12 = {
		maxIconsBeforeScroll = arg1:get("dropdownMaxIconsBeforeScroll") or "_NIL";
		minWidth = arg1:get("dropdownMinWidth") or "_NIL";
		padding = arg1:get("dropdownListPadding") or "_NIL";
		dropdownAlignment = arg1:get("dropdownAlignment") or "_NIL";
		iconAlignment = arg1:get("alignment") or "_NIL";
		scrollBarThickness = arg1:get("dropdownScrollBarThickness") or "_NIL";
	}
	local var802
	for _, v_32 in pairs(tbl_12) do
		if v_32 == "_NIL" then return end
	end
	local Offset_2 = tbl_12.padding.Offset
	local dropdownContainer = arg1.instances.dropdownContainer
	local dropdownFrame_2 = arg1.instances.dropdownFrame
	var802 = arg1.dropdownIcons
	local len_2 = #var802
	local function INLINED_24() -- Internal function, doesn't exist in bytecode
		var802 = tbl_12.maxIconsBeforeScroll
		return var802
	end
	if tbl_12.maxIconsBeforeScroll >= len_2 or not INLINED_24() then
		var802 = len_2
	end
	table.sort(arg1.dropdownIcons, function(arg1_7, arg2) -- Line 2069
		local var808
		if arg1_7:get("order") >= arg2:get("order") then
			var808 = false
		else
			var808 = true
		end
		return var808
	end)
	for i_33 = 1, len_2 do
		local var809 = arg1.dropdownIcons[i_33]
		local _, any_get_result2 = var809:get("iconSize", nil, "beforeDropdown")
		local var812 = any_get_result2.Y.Offset + Offset_2
		local var813
		if i_33 <= var802 then
			var813 += var812
		end
		if i_33 == len_2 then
			var813 += var812 / 4
		end
		local Offset = any_get_result2.X.Offset
		if tbl_12.minWidth < Offset then
		end
		if i_33 ~= 1 or not arg1 then
			local var815 = arg1.dropdownIcons[i_33 - 1]
		end
		local var816 = arg1.dropdownIcons[i_33 + 1]
		local var817 = var815
		if var817 then
			var817 = var815.instances.iconButton
		end
		var809.instances.iconButton.NextSelectionUp = var817
		local var818 = var816
		if var818 then
			var818 = var816.instances.iconButton
		end
		var809.instances.iconButton.NextSelectionDown = var818
	end
	if var802 == len_2 then
	else
	end
	arg1:set("dropdownCanvasSize", UDim2.new(0, 0, 0, -Offset_2 + var812))
	arg1:set("dropdownSize", UDim2.new(0, (Offset + 4) * 2, 0, var813))
	local tbl_4 = {
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
	local tbl_13 = {
		AnchorPoint = Vector2.new(0.5, 0);
		PositionXScale = 1;
		FrameAnchorPoint = Vector2.new(0, 0);
		FramePositionXScale = 0;
		ThicknessMultiplier = 1;
	}
	tbl_4.right = tbl_13
	tbl_13 = tbl_4[tbl_12.dropdownAlignment:lower()]
	local var823 = tbl_13
	if not var823 then
		var823 = tbl_4[tbl_12.iconAlignment:lower()]
	end
	dropdownContainer.AnchorPoint = var823.AnchorPoint
	dropdownContainer.Position = UDim2.new(var823.PositionXScale, 0, 1, Offset_2 + 0)
	local var824 = tbl_12.scrollBarThickness * var823.ThicknessMultiplier
	if dropdownFrame_2.VerticalScrollBarPosition ~= Enum.VerticalScrollBarPosition.Right or not var824 then
	end
	if not var823.FrameAnchorPoint then
	end
	dropdownFrame_2.AnchorPoint = var823.AnchorPoint
	local FramePositionXScale = var823.FramePositionXScale
	if not FramePositionXScale then
		FramePositionXScale = var823.PositionXScale
	end
	dropdownFrame_2.Position = UDim2.new(FramePositionXScale, -var824, 0, 0)
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
	local var836
	local var837
	if var836 ~= "left" and var836 ~= "right" then
		if arg1:get("alignment") or "_NIL":lower() == "left" then
			var837 = "right"
		else
			var837 = "left"
		end
		var836 = var837
	end
	return var836
end
function module_upvr_2._updateMenu(arg1) -- Line 2162
	--[[ Upvalues[1]:
		[1]: IconController_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_10 = {
		maxIconsBeforeScroll = arg1:get("menuMaxIconsBeforeScroll") or "_NIL";
		direction = arg1:get("menuDirection") or "_NIL";
		iconAlignment = arg1:get("alignment") or "_NIL";
		scrollBarThickness = arg1:get("menuScrollBarThickness") or "_NIL";
	}
	local var862
	for _, v_35 in pairs(tbl_10) do
		if v_35 == "_NIL" then return end
	end
	local var855 = IconController_upvr[tbl_10.iconAlignment.."Gap"]
	local menuContainer = arg1.instances.menuContainer
	local len = #arg1.menuIcons
	local any__getMenuDirection_result1 = arg1:_getMenuDirection()
	if tbl_10.maxIconsBeforeScroll >= len or not tbl_10.maxIconsBeforeScroll then
		local var859 = len
	end
	local function INLINED_25() -- Internal function, doesn't exist in bytecode
		function var862(arg1_8, arg2) -- Line 2182
			local var861
			if arg1_8:get("order") >= arg2:get("order") then
				var861 = false
			else
				var861 = true
			end
			return var861
		end
		return var862
	end
	if any__getMenuDirection_result1 ~= "right" or not INLINED_25() then
		function var862(arg1_9, arg2) -- Line 2182
			local var863
			if arg2:get("order") >= arg1_9:get("order") then
				var863 = false
			else
				var863 = true
			end
			return var863
		end
	end
	table.sort(arg1.menuIcons, var862)
	for i_37 = 1, len do
		local var864 = arg1.menuIcons[i_37]
		local any_get_result1_6 = var864:get("iconSize")
		local var866
		if i_37 <= var859 then
			var866 += any_get_result1_6.X.Offset + var855
		end
		if i_37 == var859 and i_37 ~= len then
			var866 -= 2
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local Offset_3 = any_get_result1_6.Y.Offset
		if 0 < Offset_3 then
		end
		local var868 = arg1.menuIcons[i_37 - 1]
		local var869 = arg1.menuIcons[i_37 + 1]
		local var870 = var868
		if var870 then
			var870 = var868.instances.iconButton
		end
		var864.instances.iconButton.NextSelectionRight = var870
		local var871 = var869
		if var871 then
			var871 = var869.instances.iconButton
		end
		var864.instances.iconButton.NextSelectionLeft = var871
	end
	if var859 == len then
		local _ = 0
	else
	end
	arg1:set("menuCanvasSize", UDim2.new(0, (-var855) + (any_get_result1_6.X.Offset + var855) + var855, 0, 0))
	arg1:set("menuSize", UDim2.new(0, var866, 0, Offset_3 + tbl_10.scrollBarThickness + 3))
	local tbl_7 = {}
	local tbl_6 = {
		containerAnchorPoint = Vector2.new(1, 0);
		containerPosition = UDim2.new(0, -4, 0, 0);
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_6.canvasPosition = Vector2.new((-var855) + (any_get_result1_6.X.Offset + var855) + var855, 0)
	tbl_7.left = tbl_6
	tbl_7.right = {
		containerAnchorPoint = Vector2.new(0, 0);
		containerPosition = UDim2.new(1, var855 - 2, 0, 0);
		canvasPosition = Vector2.new(0, 0);
	}
	local var876 = tbl_7[any__getMenuDirection_result1]
	menuContainer.AnchorPoint = var876.containerAnchorPoint
	menuContainer.Position = var876.containerPosition
	arg1.instances.menuFrame.CanvasPosition = var876.canvasPosition
	arg1._menuCanvasPos = var876.canvasPosition
	arg1.instances.menuList.Padding = UDim.new(0, var855)
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