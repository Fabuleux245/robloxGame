-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:45
-- Luau version 6, Types version 3
-- Time taken: 0.014125 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui_upvr = CoreGui_upvr:WaitForChild("RobloxGui")
local GuiService_upvr = game:GetService("GuiService")
local LocalizationService_upvr = game:GetService("LocalizationService")
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local MouseIconOverrideService_upvr = require(CorePackages.InGameServices.MouseIconOverrideService)
local Constants_upvr = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Constants
local var9_upvw
var9_upvw = CoreGui_upvr.CoreScriptLocalization:GetTranslator(LocalizationService_upvr.RobloxLocaleId)
local var10_upvw = var9_upvw
LocalizationService_upvr:GetPropertyChangedSignal("RobloxLocaleId"):connect(function() -- Line 29, Named "onLocaleIdChanged"
	--[[ Upvalues[3]:
		[1]: var9_upvw (read and write)
		[2]: CoreGui_upvr (readonly)
		[3]: LocalizationService_upvr (readonly)
	]]
	var9_upvw = CoreGui_upvr.CoreScriptLocalization:GetTranslator(LocalizationService_upvr.RobloxLocaleId)
end)
local function _(arg1, arg2, arg3) -- Line 38, Named "attemptTranslate"
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	local var11
	if not var10_upvw then
		return arg2
	end
	local pcall_result1_3, pcall_result2_3 = pcall(function() -- Line 43
		--[[ Upvalues[3]:
			[1]: var10_upvw (copied, read and write)
			[2]: arg1 (readonly)
			[3]: arg3 (readonly)
		]]
		return var10_upvw:FormatByKey(arg1, arg3)
	end)
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11 = pcall_result2_3
		return var11
	end
	if not pcall_result1_3 or not INLINED() then
		var11 = arg2
	end
	return var11
end
local tbl_upvr_2 = {
	Default = function() -- Line 51
		--[[ Upvalues[2]:
			[1]: Create_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		return Create_upvr("Frame")({
			Name = "ErrorPrompt";
			BackgroundTransparency = 0;
			BorderSizePixel = 0;
			BackgroundColor3 = Constants_upvr.COLORS.FLINT;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			Size = UDim2.new(0, Constants_upvr.ERROR_PROMPT_MAX_WIDTH.Default, 0, Constants_upvr.ERROR_PROMPT_HEIGHT.Default);
			Visible = false;
			AutoLocalize = false;
			ZIndex = 8;
			
			Create_upvr("UIListLayout")({
				Name = "PromptLayout";
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			}), Create_upvr("UIScale")({
				Name = "PromptScale";
				Scale = 0;
			}), Create_upvr("Frame")({
				Name = "TitleFrame";
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, Constants_upvr.ERROR_TITLE_FRAME_HEIGHT.Default);
				BorderSizePixel = 0;
				ZIndex = 8;
				
				Create_upvr("UIPadding")({
					Name = "TitleFramePadding";
					PaddingBottom = UDim.new(0, 11);
					PaddingTop = UDim.new(0, 11);
				}), Create_upvr("TextLabel")({
					Name = "ErrorTitle";
					TextColor3 = Constants_upvr.COLORS.WHITE;
					TextSize = 25;
					Size = UDim2.new(1, 0, 0, 28);
					BackgroundTransparency = 1;
					Font = Enum.Font.SourceSansSemibold;
					TextXAlignment = Enum.TextXAlignment.Center;
					TextYAlignment = Enum.TextYAlignment.Center;
					ZIndex = 8;
				})
			}), Create_upvr("Frame")({
				Name = "SplitLine";
				LayoutOrder = 2;
				Size = UDim2.new(1, -2 * Constants_upvr.SIDE_PADDING, 0, Constants_upvr.SPLIT_LINE_THICKNESS);
				BackgroundColor3 = Constants_upvr.COLORS.PUMICE;
				BorderSizePixel = 0;
				ZIndex = 8;
			}), Create_upvr("Frame")({
				Name = "MessageArea";
				LayoutOrder = 3;
				Size = UDim2.new(1, 0, 1, -Constants_upvr.ERROR_TITLE_FRAME_HEIGHT.Default - Constants_upvr.SPLIT_LINE_THICKNESS);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				ZIndex = 8;
				
				Create_upvr("UIPadding")({
					Name = "MessageAreaPadding";
					PaddingBottom = UDim.new(0, Constants_upvr.SIDE_PADDING);
					PaddingLeft = UDim.new(0, Constants_upvr.SIDE_PADDING);
					PaddingRight = UDim.new(0, Constants_upvr.SIDE_PADDING);
					PaddingTop = UDim.new(0, Constants_upvr.SIDE_PADDING);
				}), Create_upvr("Frame")({
					Name = "ErrorFrame";
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 1, 0);
					ZIndex = 8;
					
					Create_upvr("UIListLayout")({
						Name = "ErrorFrameLayout";
						Padding = UDim.new(0, Constants_upvr.LAYOUT_PADDING);
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						SortOrder = Enum.SortOrder.LayoutOrder;
					}), Create_upvr("TextLabel")({
						Name = "ErrorMessage";
						LayoutOrder = 1;
						Size = UDim2.new(1, 0, 1, -Constants_upvr.BUTTON_HEIGHT - Constants_upvr.LAYOUT_PADDING);
						TextSize = 20;
						TextColor3 = Constants_upvr.COLORS.PUMICE;
						ZIndex = 8;
						BackgroundTransparency = 1;
						TextWrapped = true;
						Font = Enum.Font.SourceSans;
					}), Create_upvr("Frame")({
						Name = "ButtonArea";
						BackgroundTransparency = 1;
						Size = UDim2.new(1, 0, 0, Constants_upvr.BUTTON_HEIGHT);
						ZIndex = 8;
						LayoutOrder = 2;
						SelectionGroup = true;
						SelectionBehaviorUp = Enum.SelectionBehavior.Stop;
						SelectionBehaviorDown = Enum.SelectionBehavior.Stop;
						SelectionBehaviorLeft = Enum.SelectionBehavior.Stop;
						SelectionBehaviorRight = Enum.SelectionBehavior.Stop;
						
						Create_upvr("UIGridLayout")({
							Name = "ButtonLayout";
							CellPadding = UDim2.new(0, Constants_upvr.BUTTON_CELL_PADDING, 0, 0);
							CellSize = UDim2.new(1, 0, 0, Constants_upvr.BUTTON_HEIGHT);
							HorizontalAlignment = Enum.HorizontalAlignment.Center;
							VerticalAlignment = Enum.VerticalAlignment.Center;
							SortOrder = Enum.SortOrder.LayoutOrder;
						})
					})
				})
			})
		})
	end;
}
local tbl_upvr = {
	Default = function(arg1, arg2, arg3) -- Line 167
		--[[ Upvalues[2]:
			[1]: Create_upvr (readonly)
			[2]: Constants_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module = {
			Name = arg1.."Button";
			BackgroundTransparency = 1;
		}
		local var34
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var34 = Constants_upvr.COLORS.WHITE
			return var34
		end
		if not arg3 or not INLINED_2() then
			var34 = Constants_upvr.COLORS.PUMICE
		end
		module.ImageColor3 = var34
		var34 = Vector2.new(0.5, 0.5)
		module.AnchorPoint = var34
		var34 = UDim2.new(1, 0, 1, 0)
		module.Size = var34
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var34 = Constants_upvr.PRIMARY_BUTTON_TEXTURE
			return var34
		end
		if not arg3 or not INLINED_3() then
			var34 = Constants_upvr.SECONDARY_BUTTON_TEXTURE
		end
		module.Image = var34
		var34 = Enum.ScaleType.Slice
		module.ScaleType = var34
		var34 = Rect.new(8, 8, 9, 9)
		module.SliceCenter = var34
		module.LayoutOrder = arg2
		var34 = 8
		module.ZIndex = var34
		var34 = "TextLabel"
		var34 = {}
		var34.Name = "ButtonText"
		var34.Text = arg1
		var34.Size = UDim2.new(1, 0, 1, 0)
		if not arg3 or not Constants_upvr.COLORS.SLATE then
		end
		var34.TextColor3 = Constants_upvr.COLORS.PUMICE
		var34.BackgroundTransparency = 1
		var34.TextXAlignment = Enum.TextXAlignment.Center
		var34.TextYAlignment = Enum.TextYAlignment.Center
		var34.Font = Enum.Font.SourceSans
		var34.TextSize = 20
		var34.ZIndex = 8
		module[1] = Create_upvr(var34)(var34)
		return Create_upvr("ImageButton")(module)
	end;
}
local module_upvr = {}
module_upvr.__index = module_upvr
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, 0, false, 0)
local UserInputService_upvr = game:GetService("UserInputService")
function module_upvr.new(arg1, arg2) -- Line 205
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: TweenInfo_new_result1_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: GuiService_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	local var40
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var40 = tbl_upvr_2[arg1]()
		return var40
	end
	if not arg1 or not INLINED_4() then
		var40 = tbl_upvr_2.Default()
	end
	setmetatable_result1_upvr._frame = var40
	var40 = false
	setmetatable_result1_upvr._isOpen = var40
	var40 = TweenService_upvr
	var40 = var40:Create(setmetatable_result1_upvr._frame.PromptScale, TweenInfo_new_result1_upvr, {
		Scale = 1;
	})
	setmetatable_result1_upvr._openAnimation = var40
	var40 = TweenService_upvr
	var40 = var40:Create(setmetatable_result1_upvr._frame.PromptScale, TweenInfo_new_result1_upvr, {
		Scale = 0;
	})
	setmetatable_result1_upvr._closeAnimation = var40
	var40 = 0
	setmetatable_result1_upvr._buttonCount = var40
	var40 = true
	setmetatable_result1_upvr._playAnimation = var40
	var40 = false
	setmetatable_result1_upvr._hideErrorCode = var40
	var40 = "ErrorPrompt"
	setmetatable_result1_upvr._menuIsOpenKey = var40
	if arg2 then
		var40 = arg2.PlayAnimation
		if var40 ~= nil then
			var40 = arg2.PlayAnimation
			setmetatable_result1_upvr._playAnimation = var40
		end
		var40 = arg2.HideErrorCode
		if var40 ~= nil then
			var40 = arg2.HideErrorCode
			setmetatable_result1_upvr._hideErrorCode = var40
		end
		var40 = arg2.MenuIsOpenKey
		if var40 ~= nil then
			var40 = arg2.MenuIsOpenKey
			setmetatable_result1_upvr._menuIsOpenKey = var40
		end
		var40 = setmetatable_result1_upvr._frame.MessageArea.ErrorFrame.ErrorMessage
		var40.TextScaled = arg2.MessageTextScaled or false
	end
	var40 = UserInputService_upvr.GamepadEnabled
	if var40 then
		var40 = GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject")
		var40 = var40:Connect
		var40(function() -- Line 238
			--[[ Upvalues[2]:
				[1]: setmetatable_result1_upvr (readonly)
				[2]: GuiService_upvr (copied, readonly)
			]]
			if setmetatable_result1_upvr._isOpen and GuiService_upvr.SelectedCoreObject == nil then
				GuiService_upvr:Select(setmetatable_result1_upvr._frame.MessageArea.ErrorFrame.ButtonArea)
			end
		end)
	end
	return setmetatable_result1_upvr
end
local VRService_upvr = game:GetService("VRService")
function module_upvr._open(arg1, arg2, arg3, arg4) -- Line 248
	--[[ Upvalues[4]:
		[1]: RobloxGui_upvr (readonly)
		[2]: MouseIconOverrideService_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: VRService_upvr (readonly)
	]]
	arg1:setErrorText(arg2, arg3, arg4)
	arg1:_resizeHeight(RobloxGui_upvr.AbsoluteSize.Y)
	if not arg1._isOpen then
		MouseIconOverrideService_upvr.push("ErrorPromptOverride", Enum.OverrideMouseIconBehavior.ForceShow)
		GuiService_upvr:SetMenuIsOpen(true, arg1._menuIsOpenKey)
		arg1._frame.Visible = true
		arg1._isOpen = true
		if arg1._playAnimation then
			arg1._openAnimation:Play()
			arg1._openAnimation.Completed:wait()
			arg1._frame.PromptScale.Scale = 1
		else
			arg1._frame.PromptScale.Scale = 1
		end
	end
	if arg1._isOpen and (VRService_upvr.VREnabled or GuiService_upvr:IsTenFootInterface()) then
		GuiService_upvr:Select(arg1._frame.MessageArea.ErrorFrame.ButtonArea)
	end
end
function module_upvr._close(arg1) -- Line 270
	--[[ Upvalues[2]:
		[1]: MouseIconOverrideService_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	if arg1._isOpen then
		MouseIconOverrideService_upvr.pop("ErrorPromptOverride")
		GuiService_upvr:SetMenuIsOpen(false, arg1._menuIsOpenKey)
		arg1._isOpen = false
		if arg1._playAnimation then
			arg1._closeAnimation:Play()
			arg1._closeAnimation.Completed:wait()
		else
			arg1._frame.PromptScale.Scale = 0
		end
		arg1._frame.Visible = false
	end
end
function module_upvr.setParent(arg1, arg2) -- Line 285
	arg1._frame.Parent = arg2
end
local RunService_upvr = game:GetService("RunService")
local any_GetFFlag_result1_upvr = settings():GetFFlag("LocalizeErrorCodeString")
local GetFFlagDisplayChannelNameOnErrorPrompt_upvr = require(RobloxGui_upvr.Modules.Flags.GetFFlagDisplayChannelNameOnErrorPrompt)
local any_new_result1_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization.new(LocalizationService_upvr.RobloxLocaleId)
function module_upvr.setErrorText(arg1, arg2, arg3, arg4) -- Line 289
	--[[ Upvalues[5]:
		[1]: RunService_upvr (readonly)
		[2]: any_GetFFlag_result1_upvr (readonly)
		[3]: var10_upvw (read and write)
		[4]: GetFFlagDisplayChannelNameOnErrorPrompt_upvr (readonly)
		[5]: any_new_result1_upvr (readonly)
	]]
	local ErrorMessage = arg1._frame.MessageArea.ErrorFrame.ErrorMessage
	local any_GetRobloxClientChannel_result1 = RunService_upvr:GetRobloxClientChannel()
	if arg1._hideErrorCode then
		ErrorMessage.Text = arg2
	else
		local var51
		if any_GetFFlag_result1_upvr then
			local var52 = -1
			if arg3 then
				var52 = arg3.Value
			end
			local module_2_upvr = {
				ERROR_CODE = tostring(var52);
			}
			if not var10_upvw then
				var51 = "Error Code: %d":format(var52)
			else
				local var55_upvr = "InGame.ConnectionError.Message.ErrorCode"
				local pcall_result1_4, pcall_result2_4 = pcall(function() -- Line 43
					--[[ Upvalues[3]:
						[1]: var10_upvw (copied, read and write)
						[2]: var55_upvr (readonly)
						[3]: module_2_upvr (readonly)
					]]
					return var10_upvw:FormatByKey(var55_upvr, module_2_upvr)
				end)
				local function INLINED_5() -- Internal function, doesn't exist in bytecode
					var51 = pcall_result2_4
					return var51
				end
				if not pcall_result1_4 or not INLINED_5() then
					var51 = "Error Code: %d":format(var52)
				end
			end
			module_2_upvr = nil
			local var58
			if GetFFlagDisplayChannelNameOnErrorPrompt_upvr() and arg4 and any_GetRobloxClientChannel_result1 then
				var55_upvr = "InGame.ConnectionError.Message.ChannelName"
				local any_Format_result1 = any_new_result1_upvr:Format(var55_upvr, {
					CHANNEL_NAME = any_GetRobloxClientChannel_result1;
				})
				if not any_Format_result1 then
					any_Format_result1 = "Channel: %s":format(any_GetRobloxClientChannel_result1)
				end
				var58 = "%s\n(%s, %s)":format(arg2, var51, any_Format_result1)
			end
			if not var58 then
				var55_upvr = arg2
				var58 = "%s\n(%s)":format(var55_upvr, var51)
			end
			ErrorMessage.Text = var58
			return
		end
		if not arg3 then
			var51 = arg2
			ErrorMessage.Text = "%s\n(Error Code: -1)":format(var51)
			return
		end
		ErrorMessage.Text = "%s\n(Error Code: %d)":format(arg2, arg3.Value)
	end
end
function module_upvr.setErrorTitle(arg1, arg2, arg3) -- Line 328
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	if not arg2 then
	else
		local TitleFrame = arg1._frame.TitleFrame
		local ErrorTitle = TitleFrame.ErrorTitle
		if arg3 then
			if not var10_upvw then
				TitleFrame = arg2
			else
				local var64_upvr
				local pcall_result1, pcall_result2_2 = pcall(function() -- Line 43
					--[[ Upvalues[3]:
						[1]: var10_upvw (copied, read and write)
						[2]: arg3 (readonly)
						[3]: var64_upvr (readonly)
					]]
					return var10_upvw:FormatByKey(arg3, var64_upvr)
				end)
				local function INLINED_6() -- Internal function, doesn't exist in bytecode
					TitleFrame = pcall_result2_2
					return TitleFrame
				end
				if not pcall_result1 or not INLINED_6() then
					TitleFrame = arg2
				end
			end
			ErrorTitle.Text = TitleFrame
			return
		end
		ErrorTitle.Text = arg2
	end
end
function module_upvr.onErrorChanged(arg1, arg2, arg3, arg4) -- Line 340
	if arg2 == "" then
		arg1:_close()
	elseif arg2 ~= "" then
		arg1:_open(arg2, arg3, arg4)
	end
end
function module_upvr._relayout(arg1) -- Line 349
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local ButtonArea = arg1._frame.MessageArea.ErrorFrame.ButtonArea
	if arg1._buttonCount == 0 then
		ButtonArea.Visible = false
	else
		ButtonArea.Visible = true
		ButtonArea.ButtonLayout.CellSize = UDim2.new(0, (arg1._frame.Size.X.Offset - (arg1._buttonCount - 1) * Constants_upvr.BUTTON_CELL_PADDING - 2 * Constants_upvr.SIDE_PADDING) / arg1._buttonCount, 0, Constants_upvr.BUTTON_HEIGHT)
	end
end
function module_upvr.clearButtons(arg1) -- Line 361
	if arg1._primaryShimmer then
		arg1._primaryShimmer = nil
	end
	for _, v in pairs(arg1._frame.MessageArea.ErrorFrame.ButtonArea:GetChildren()) do
		if v.name ~= "ButtonLayout" then
			v:Destroy()
		end
	end
end
local Shimmer_upvr = require(RobloxGui_upvr.Modules.Shimmer)
function module_upvr.updateButtons(arg1, arg2, arg3) -- Line 394
	--[[ Upvalues[3]:
		[1]: var10_upvw (read and write)
		[2]: tbl_upvr (readonly)
		[3]: Shimmer_upvr (readonly)
	]]
	if not arg2 then
	end
	if not arg3 then
	end
	arg1:clearButtons()
	for _, v_2 in pairs({}) do
		local Text = v_2.Text
		if v_2.LocalizationKey then
			if not var10_upvw then
				Text = v_2.Text
			else
				local LocalizationKey_upvr = v_2.LocalizationKey
				local var84_upvr
				local pcall_result1_2, pcall_result2 = pcall(function() -- Line 43
					--[[ Upvalues[3]:
						[1]: var10_upvw (copied, read and write)
						[2]: LocalizationKey_upvr (readonly)
						[3]: var84_upvr (readonly)
					]]
					return var10_upvw:FormatByKey(LocalizationKey_upvr, var84_upvr)
				end)
				local function INLINED_7() -- Internal function, doesn't exist in bytecode
					Text = pcall_result2
					return Text
				end
				if not pcall_result1_2 or not INLINED_7() then
					Text = v_2.Text
				end
			end
		end
		LocalizationKey_upvr = tbl_upvr.Default(Text, v_2.LayoutOrder, v_2.Primary)
		local var87 = LocalizationKey_upvr
		if v_2.Primary then
			arg1._primaryShimmer = Shimmer_upvr.new(var87, "PrimaryButton")
		end
		var87.Parent = arg1._frame.MessageArea.ErrorFrame.ButtonArea
		var87.Activated:connect(v_2.Callback)
		local var88 = 0 + 1
	end
	if arg1._buttonCount ~= var88 then
		arg1._buttonCount = var88
		arg1:_relayout()
	end
end
function module_upvr.primaryShimmerPlay(arg1) -- Line 428
	if arg1._primaryShimmer then
		arg1._primaryShimmer:play()
	end
end
function module_upvr.primaryShimmerStop(arg1) -- Line 434
	if arg1._primaryShimmer then
		arg1._primaryShimmer:stop()
	end
end
function module_upvr.resizeWidthAndHeight(arg1, arg2, arg3) -- Line 440
	arg1:_resizeWidth(arg2)
	arg1:_resizeHeight(arg3)
	arg1:_relayout()
end
function module_upvr._resizeWidth(arg1, arg2) -- Line 446
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local Offset = arg1._frame.Size.X.Offset
	local var90 = arg2 - 2 * Constants_upvr.SIDE_MARGIN
	if Constants_upvr.ERROR_PROMPT_MAX_WIDTH.Default < var90 then
		if Offset == Constants_upvr.ERROR_PROMPT_MAX_WIDTH.Default then return end
		var90 = Constants_upvr.ERROR_PROMPT_MAX_WIDTH.Default
	end
	if var90 < Constants_upvr.ERROR_PROMPT_MIN_WIDTH.Default then
		if Offset == Constants_upvr.ERROR_PROMPT_MIN_WIDTH.Default then return end
		var90 = Constants_upvr.ERROR_PROMPT_MIN_WIDTH.Default
	end
	arg1._frame.Size = UDim2.new(0, var90, 0, arg1._frame.Size.Y.Offset)
end
local TextService_upvr = game:GetService("TextService")
function module_upvr._resizeHeight(arg1, arg2) -- Line 469
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: TextService_upvr (readonly)
	]]
	local ErrorMessage_2 = arg1._frame.MessageArea.ErrorFrame.ErrorMessage
	arg1._frame.Size = UDim2.new(0, arg1._frame.Size.X.Offset, 0, math.max(math.min(Constants_upvr.ERROR_TITLE_FRAME_HEIGHT.Default + TextService_upvr:GetTextSize(ErrorMessage_2.Text, ErrorMessage_2.TextSize, ErrorMessage_2.Font, Vector2.new(arg1._frame.Size.X.Offset - 2 * Constants_upvr.SIDE_PADDING, 1000)).Y + Constants_upvr.SPLIT_LINE_THICKNESS + Constants_upvr.BUTTON_HEIGHT + Constants_upvr.LAYOUT_PADDING + 2 * Constants_upvr.SIDE_PADDING + 1, arg2 - 2 * Constants_upvr.VERTICAL_MARGIN), Constants_upvr.ERROR_PROMPT_MIN_HEIGHT.Default))
end
return module_upvr