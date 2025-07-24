-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:53
-- Luau version 6, Types version 3
-- Time taken: 0.015337 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagIEMFocusNavToButtons_upvr = SharedFlags.FFlagIEMFocusNavToButtons
local Signal_upvr = AppCommonLib.Signal
local Create_upvr = AppCommonLib.Create
local Utility_upvr = require(RobloxGui.Modules.Settings.Utility)
local any_IsEnabled_result1_upvr = require(RobloxGui.Modules.TenFootInterface):IsEnabled()
local FFlagUIBloxMigrateBuilderIcon_upvr = SharedFlags.UIBlox.FFlagUIBloxMigrateBuilderIcon
local Theme_upvr = require(RobloxGui.Modules.Settings.Theme)
local GuiService_upvr = game:GetService("GuiService")
local HttpService_upvr = game:GetService("HttpService")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AddDropdownTypeToValueChanger", false)
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local GetFFlagFixIGMTabTransitions_upvr = require(script.Parent.Flags.GetFFlagFixIGMTabTransitions)
local TweenService_upvr = game:GetService("TweenService")
local function Initialize_upvr() -- Line 38, Named "Initialize"
	--[[ Upvalues[13]:
		[1]: FFlagIEMFocusNavToButtons_upvr (readonly)
		[2]: Signal_upvr (readonly)
		[3]: Create_upvr (readonly)
		[4]: Utility_upvr (readonly)
		[5]: any_IsEnabled_result1_upvr (readonly)
		[6]: FFlagUIBloxMigrateBuilderIcon_upvr (readonly)
		[7]: Theme_upvr (readonly)
		[8]: GuiService_upvr (readonly)
		[9]: HttpService_upvr (readonly)
		[10]: game_DefineFastFlag_result1_upvr (readonly)
		[11]: UserGameSettings_upvr (readonly)
		[12]: GetFFlagFixIGMTabTransitions_upvr (readonly)
		[13]: TweenService_upvr (readonly)
	]]
	local module_upvr = {
		HubRef = nil;
		LastSelectedObject = nil;
		TabPosition = 0;
		Active = false;
		OpenStateChangedCount = 0;
		ShouldShowBottomBar = true;
		ShouldShowHubBar = true;
		IsPageClipped = true;
		SelectARow = nil;
	}
	local var19_upvr
	if FFlagIEMFocusNavToButtons_upvr then
		module_upvr.LastSelectableObjectsUpdated = Signal_upvr.new()
		module_upvr.LastSelectableObjects = {}
		module_upvr.PageNextSelectionDown = nil
	end
	local tbl_3_upvr = {}
	local var21_upvw = false
	var19_upvr = Create_upvr("TextButton")
	local tbl = {
		Name = "Header";
		Text = "";
		BackgroundTransparency = 1;
		Size = UDim2.new(0.2, 0, 1, 0);
	}
	local udim2 = UDim2.new(0, 0, 0, 0)
	tbl.Position = udim2
	if FFlagIEMFocusNavToButtons_upvr then
		udim2 = false
	else
		udim2 = nil
	end
	tbl.Selectable = udim2
	var19_upvr = var19_upvr(tbl)
	module_upvr.TabHeader = var19_upvr
	var19_upvr = Utility_upvr:IsSmallTouchScreen()
	if var19_upvr then
		var19_upvr = module_upvr.TabHeader
		var19_upvr.Size = UDim2.new(0, 84, 1, 0)
	else
		var19_upvr = any_IsEnabled_result1_upvr
		if var19_upvr then
			var19_upvr = module_upvr.TabHeader
			var19_upvr.Size = UDim2.new(0, 220, 1, 0)
		end
	end
	var19_upvr = module_upvr.TabHeader.MouseButton1Click
	var19_upvr = var19_upvr:connect
	var19_upvr(function() -- Line 72
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if module_upvr.HubRef then
			module_upvr.HubRef:SwitchToPage(module_upvr, true)
		end
	end)
	if FFlagUIBloxMigrateBuilderIcon_upvr then
		var19_upvr = Create_upvr("TextLabel")
		var19_upvr = var19_upvr({
			Name = "Icon";
			BackgroundTransparency = 1;
			Size = UDim2.new(0.5, 0, 0.5, 0);
			Position = UDim2.new(0, 10, 0.5, -18);
			Text = "";
			TextColor3 = Color3.new(1, 1, 1);
			TextScaled = true;
			TextTransparency = 0.5;
			Parent = module_upvr.TabHeader;
		})
	else
		var19_upvr = Create_upvr("ImageLabel")
		var19_upvr = var19_upvr({
			Name = "Icon";
			BackgroundTransparency = 1;
			Size = UDim2.new(0.75, 0, 0.75, 0);
			Position = UDim2.new(0, 10, 0.5, -18);
			Image = "";
			ImageTransparency = 0.5;
			Parent = module_upvr.TabHeader;
		})
	end
	local tbl_4 = {
		Name = "AspectRatioConstraint";
		AspectRatio = 1;
		Parent = var19_upvr;
	}
	local var29_upvr = Create_upvr("TextLabel")({
		Name = "Title";
		Text = "";
		Font = Theme_upvr.font(Enum.Font.SourceSansBold, "Button");
		FontSize = Theme_upvr.fontSize(Enum.FontSize.Size24, "Button");
		TextColor3 = Color3.new(1, 1, 1);
		BackgroundTransparency = 1;
		Size = UDim2.new(1.05, 0, 1, 0);
		Position = UDim2.new(1.2, Theme_upvr.TabHeaderIconPadding, 0, -2);
		TextXAlignment = Enum.TextXAlignment.Left;
		TextTransparency = 0.5;
	})
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	UITextSizeConstraint.MaxTextSize = 24
	var29_upvr.Parent = var19_upvr
	if Utility_upvr:IsPortrait() and Utility_upvr:IsSmallTouchScreen() then
		UITextSizeConstraint.Parent = var29_upvr
	end
	if Utility_upvr:IsSmallTouchScreen() then
		var29_upvr.FontSize = Theme_upvr.fontSize(Enum.FontSize.Size18)
		UITextSizeConstraint.MaxTextSize = 18
	elseif any_IsEnabled_result1_upvr then
		var29_upvr.FontSize = Theme_upvr.fontSize(Enum.FontSize.Size48)
		UITextSizeConstraint.MaxTextSize = 48
	end
	local _ = {
		Name = "TabSelection";
		Visible = false;
		BackgroundColor3 = Theme_upvr.color("TabSelection");
		BackgroundTransparency = Theme_upvr.transparency("TabSelection");
		Size = UDim2.new(1, -2, 0, 2);
		Position = UDim2.new(0, 3, 1, -2);
		BorderSizePixel = 0;
		Parent = module_upvr.TabHeader;
	}
	local var33_upvr = Create_upvr("Frame")({
		Name = "TabLabel";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Parent = module_upvr.TabHeader;
	})
	Create_upvr("UIListLayout")({
		Name = "Layout";
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, 10);
		Parent = var33_upvr;
	})
	var19_upvr.Parent = var33_upvr
	var29_upvr.Parent = var33_upvr
	var29_upvr.Size = UDim2.new(0, 0, 0, 0)
	var29_upvr.AutomaticSize = Enum.AutomaticSize.XY
	Utility_upvr:OnResized(module_upvr.TabHeader, function() -- Line 171, Named "onResized"
		--[[ Upvalues[8]:
			[1]: module_upvr (readonly)
			[2]: Utility_upvr (copied, readonly)
			[3]: var19_upvr (readonly)
			[4]: any_IsEnabled_result1_upvr (copied, readonly)
			[5]: Theme_upvr (copied, readonly)
			[6]: var33_upvr (readonly)
			[7]: var29_upvr (readonly)
			[8]: FFlagUIBloxMigrateBuilderIcon_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 34 start (CF ANALYSIS FAILED)
		if not module_upvr.TabHeader then return end
		if Utility_upvr:IsSmallTouchScreen() then
			var19_upvr.Size = UDim2.new(0, 34, 0, 28)
			-- KONSTANTWARNING: GOTO [51] #41
		end
		-- KONSTANTERROR: [0] 1. Error Block 34 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 18. Error Block 30 start (CF ANALYSIS FAILED)
		if any_IsEnabled_result1_upvr then
			var19_upvr.Size = UDim2.new(0, 88, 0, 74)
			-- KONSTANTWARNING: GOTO [51] #41
		end
		-- KONSTANTERROR: [21] 18. Error Block 30 end (CF ANALYSIS FAILED)
	end)
	module_upvr.Page = Create_upvr("Frame")({
		Name = "Page";
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
	})
	Create_upvr("UIPadding")({
		PaddingLeft = UDim.new(0, 12);
		PaddingRight = UDim.new(0, 11);
		Parent = module_upvr.Page;
	})
	module_upvr.PageListLayout = Create_upvr("UIListLayout")({
		Name = "RowListLayout";
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		Padding = UDim.new(0, 8);
		SortOrder = Enum.SortOrder.LayoutOrder;
		Parent = module_upvr.Page;
	})
	GuiService_upvr:AddSelectionParent(HttpService_upvr:GenerateGUID(false), module_upvr.Page)
	module_upvr.Displayed = Instance.new("BindableEvent")
	module_upvr.Displayed.Name = "Displayed"
	module_upvr.Displayed.Event:connect(function() -- Line 247
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		if not module_upvr.HubRef.Shield.Visible then
		else
			module_upvr:SelectARow()
		end
	end)
	module_upvr.Hidden = Instance.new("BindableEvent")
	module_upvr.Hidden.Event:connect(function() -- Line 254
		--[[ Upvalues[2]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		if GuiService_upvr.SelectedCoreObject and GuiService_upvr.SelectedCoreObject:IsDescendantOf(module_upvr.Page) then
			GuiService_upvr.SelectedCoreObject = nil
		end
	end)
	module_upvr.Hidden.Name = "Hidden"
	function module_upvr.getValueChangerFrame(arg1, arg2) -- Line 262
		--[[ Upvalues[1]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
		]]
		local var41
		if var41 ~= "table" then
			return arg2
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var41 = arg2.SliderFrame
			return var41
		end
		if not arg2.SliderFrame or not INLINED_2() then
			var41 = arg2.SelectorFrame
			if not var41 then
				var41 = game_DefineFastFlag_result1_upvr
				if var41 then
					var41 = arg2.DropDownFrame
				end
			end
		end
		return var41
	end
	function module_upvr.SelectARow(arg1, arg2) -- Line 274
		--[[ Upvalues[4]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: module_upvr (readonly)
			[3]: tbl_3_upvr (readonly)
			[4]: FFlagIEMFocusNavToButtons_upvr (copied, readonly)
		]]
		if arg2 or not GuiService_upvr.SelectedCoreObject or not GuiService_upvr.SelectedCoreObject:IsDescendantOf(module_upvr.Page) then
			if module_upvr.LastSelectedObject then
				GuiService_upvr.SelectedCoreObject = module_upvr.LastSelectedObject
				return
			end
			if tbl_3_upvr and 0 < #tbl_3_upvr then
				GuiService_upvr.SelectedCoreObject = module_upvr:getValueChangerFrame(tbl_3_upvr[1].ValueChanger)
				return
			end
			if FFlagIEMFocusNavToButtons_upvr and module_upvr.PageNextSelectionDown then
				GuiService_upvr.SelectedCoreObject = module_upvr.PageNextSelectionDown
			end
		end
	end
	function module_upvr.Display(arg1, arg2, arg3) -- Line 289
		--[[ Upvalues[8]:
			[1]: module_upvr (readonly)
			[2]: FFlagUIBloxMigrateBuilderIcon_upvr (copied, readonly)
			[3]: var19_upvr (readonly)
			[4]: var29_upvr (readonly)
			[5]: UserGameSettings_upvr (copied, readonly)
			[6]: GetFFlagFixIGMTabTransitions_upvr (copied, readonly)
			[7]: var21_upvw (read and write)
			[8]: TweenService_upvr (copied, readonly)
		]]
		module_upvr.OpenStateChangedCount += 1
		if module_upvr.TabHeader then
			module_upvr.TabHeader.TabSelection.Visible = true
			if FFlagUIBloxMigrateBuilderIcon_upvr then
				var19_upvr.TextTransparency = 0
			else
				var19_upvr.ImageTransparency = 0
			end
			var29_upvr.TextTransparency = 0
		end
		module_upvr.Page.Parent = arg2
		module_upvr.Page.Visible = true
		local udim2_2_upvr = UDim2.new(0, 0, 0, 0)
		if arg3 then
			module_upvr.Page.Position = udim2_2_upvr
			if UserGameSettings_upvr.ReducedMotion then
				arg2.InnerCanvasGroupShow.Visible = false
			end
			if GetFFlagFixIGMTabTransitions_upvr() then
				if UserGameSettings_upvr.ReducedMotion then
					arg2.InnerCanvasGroupShow.GroupTransparency = 0
				end
				module_upvr.Page.Position = udim2_2_upvr
			end
			module_upvr.Page.Visible = true
			var21_upvw = true
			module_upvr.Displayed:Fire()
		else
			if UserGameSettings_upvr.ReducedMotion then
				module_upvr.Page.Position = udim2_2_upvr
				arg2.InnerCanvasGroupShow.GroupTransparency = 1
				arg2.InnerCanvasGroupShow.Visible = true
				module_upvr.Page.Parent = arg2.InnerCanvasGroupShow
				module_upvr.Page.Visible = true
				local any_Create_result1_2 = TweenService_upvr:Create(arg2.InnerCanvasGroupShow, TweenInfo.new(0.25), {
					GroupTransparency = 0;
				})
				any_Create_result1_2:Play()
				any_Create_result1_2.Completed:Connect(function() -- Line 337
					--[[ Upvalues[6]:
						[1]: module_upvr (copied, readonly)
						[2]: arg2 (readonly)
						[3]: UserGameSettings_upvr (copied, readonly)
						[4]: GetFFlagFixIGMTabTransitions_upvr (copied, readonly)
						[5]: udim2_2_upvr (readonly)
						[6]: var21_upvw (copied, read and write)
					]]
					module_upvr.Page.Parent = arg2
					if UserGameSettings_upvr.ReducedMotion then
						arg2.InnerCanvasGroupShow.Visible = false
					end
					if GetFFlagFixIGMTabTransitions_upvr() then
						if UserGameSettings_upvr.ReducedMotion then
							arg2.InnerCanvasGroupShow.GroupTransparency = 0
						end
						module_upvr.Page.Position = udim2_2_upvr
					end
					module_upvr.Page.Visible = true
					var21_upvw = true
					module_upvr.Displayed:Fire()
				end)
				return
			end
			module_upvr.Page:TweenPosition(udim2_2_upvr, Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.1, true, function() -- Line 306
				--[[ Upvalues[6]:
					[1]: UserGameSettings_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: GetFFlagFixIGMTabTransitions_upvr (copied, readonly)
					[4]: module_upvr (copied, readonly)
					[5]: udim2_2_upvr (readonly)
					[6]: var21_upvw (copied, read and write)
				]]
				if UserGameSettings_upvr.ReducedMotion then
					arg2.InnerCanvasGroupShow.Visible = false
				end
				if GetFFlagFixIGMTabTransitions_upvr() then
					if UserGameSettings_upvr.ReducedMotion then
						arg2.InnerCanvasGroupShow.GroupTransparency = 0
					end
					module_upvr.Page.Position = udim2_2_upvr
				end
				module_upvr.Page.Visible = true
				var21_upvw = true
				module_upvr.Displayed:Fire()
			end)
		end
	end
	function module_upvr.Hide(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 345
		--[[ Upvalues[7]:
			[1]: module_upvr (readonly)
			[2]: FFlagUIBloxMigrateBuilderIcon_upvr (copied, readonly)
			[3]: var19_upvr (readonly)
			[4]: var29_upvr (readonly)
			[5]: UserGameSettings_upvr (copied, readonly)
			[6]: var21_upvw (read and write)
			[7]: TweenService_upvr (copied, readonly)
		]]
		module_upvr.OpenStateChangedCount += 1
		if module_upvr.TabHeader then
			module_upvr.TabHeader.TabSelection.Visible = false
			if FFlagUIBloxMigrateBuilderIcon_upvr then
				var19_upvr.TextTransparency = 0.5
			else
				var19_upvr.ImageTransparency = 0.5
			end
			var29_upvr.TextTransparency = 0.5
		end
		if module_upvr.Page.Parent then
			local function var47_upvr() -- Line 360
				--[[ Upvalues[6]:
					[1]: UserGameSettings_upvr (copied, readonly)
					[2]: arg7 (readonly)
					[3]: arg6 (readonly)
					[4]: module_upvr (copied, readonly)
					[5]: arg3 (readonly)
					[6]: var21_upvw (copied, read and write)
				]]
				if UserGameSettings_upvr.ReducedMotion and arg7 then
					arg6.InnerCanvasGroupHide.Visible = false
				end
				module_upvr.Page.Visible = false
				module_upvr.Page.Position = UDim2.new(module_upvr.TabPosition - arg3, 0, 0, 0)
				var21_upvw = false
				module_upvr.Hidden:Fire()
			end
			local udim2_upvr = UDim2.new(1 * arg2, 0, 0, 0)
			local function var48_upvr() -- Line 370
				--[[ Upvalues[10]:
					[1]: arg4 (readonly)
					[2]: module_upvr (copied, readonly)
					[3]: udim2_upvr (readonly)
					[4]: UserGameSettings_upvr (copied, readonly)
					[5]: arg7 (readonly)
					[6]: arg6 (readonly)
					[7]: arg3 (readonly)
					[8]: var21_upvw (copied, read and write)
					[9]: TweenService_upvr (copied, readonly)
					[10]: var47_upvr (readonly)
				]]
				if arg4 then
					module_upvr.Page.Position = udim2_upvr
					if UserGameSettings_upvr.ReducedMotion and arg7 then
						arg6.InnerCanvasGroupHide.Visible = false
					end
					module_upvr.Page.Visible = false
					module_upvr.Page.Position = UDim2.new(module_upvr.TabPosition - arg3, 0, 0, 0)
					var21_upvw = false
					module_upvr.Hidden:Fire()
				else
					if UserGameSettings_upvr.ReducedMotion and arg7 then
						arg6.InnerCanvasGroupHide.GroupTransparency = 0
						arg6.InnerCanvasGroupHide.Visible = true
						module_upvr.Page.Parent = arg6.InnerCanvasGroupHide
						local any_Create_result1 = TweenService_upvr:Create(arg6.InnerCanvasGroupHide, TweenInfo.new(0.25), {
							GroupTransparency = 1;
						})
						any_Create_result1:Play()
						any_Create_result1.Completed:Connect(function() -- Line 386
							--[[ Upvalues[7]:
								[1]: module_upvr (copied, readonly)
								[2]: arg6 (copied, readonly)
								[3]: udim2_upvr (copied, readonly)
								[4]: UserGameSettings_upvr (copied, readonly)
								[5]: arg7 (copied, readonly)
								[6]: arg3 (copied, readonly)
								[7]: var21_upvw (copied, read and write)
							]]
							module_upvr.Page.Parent = arg6
							module_upvr.Page.Position = udim2_upvr
							if UserGameSettings_upvr.ReducedMotion and arg7 then
								arg6.InnerCanvasGroupHide.Visible = false
							end
							module_upvr.Page.Visible = false
							module_upvr.Page.Position = UDim2.new(module_upvr.TabPosition - arg3, 0, 0, 0)
							var21_upvw = false
							module_upvr.Hidden:Fire()
						end)
						return
					end
					module_upvr.Page:TweenPosition(udim2_upvr, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, var47_upvr)
				end
			end
			if arg5 then
				local OpenStateChangedCount_upvr = module_upvr.OpenStateChangedCount
				delay(arg5, function() -- Line 398
					--[[ Upvalues[3]:
						[1]: OpenStateChangedCount_upvr (readonly)
						[2]: module_upvr (copied, readonly)
						[3]: var48_upvr (readonly)
					]]
					if OpenStateChangedCount_upvr == module_upvr.OpenStateChangedCount then
						var48_upvr()
					end
				end)
				return
			end
			OpenStateChangedCount_upvr = var48_upvr
			OpenStateChangedCount_upvr()
		end
	end
	function module_upvr.GetDisplayed(arg1) -- Line 409
		--[[ Upvalues[1]:
			[1]: var21_upvw (read and write)
		]]
		return var21_upvw
	end
	function module_upvr.GetVisibility(arg1) -- Line 413
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return module_upvr.Page.Parent
	end
	function module_upvr.GetTabHeader(arg1) -- Line 417
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return module_upvr.TabHeader
	end
	function module_upvr.GetRows(arg1) -- Line 421
		--[[ Upvalues[2]:
			[1]: FFlagIEMFocusNavToButtons_upvr (copied, readonly)
			[2]: tbl_3_upvr (readonly)
		]]
		if not FFlagIEMFocusNavToButtons_upvr then return end
		return tbl_3_upvr
	end
	function module_upvr.SetHub(arg1, arg2) -- Line 429
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: tbl_3_upvr (readonly)
		]]
		module_upvr.HubRef = arg2
		for _, v in next, tbl_3_upvr do
			if type(v.ValueChanger) == "table" then
				v.ValueChanger.HubRef = module_upvr.HubRef
			end
		end
	end
	function module_upvr.GetSize(arg1) -- Line 439
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return module_upvr.Page.AbsoluteSize
	end
	function module_upvr.AddRow(arg1, arg2, arg3, arg4, arg5) -- Line 443
		--[[ Upvalues[2]:
			[1]: tbl_3_upvr (readonly)
			[2]: module_upvr (readonly)
		]]
		local tbl_2 = {}
		tbl_2.SelectionFrame = arg2
		tbl_2.Label = arg3
		tbl_2.ValueChanger = arg4
		tbl_3_upvr[#tbl_3_upvr + 1] = tbl_2
		local var58
		if arg2 then
			var58 = arg2.Size.Y.Offset
		end
		if arg5 then
			module_upvr.Page.Size = UDim2.new(1, 0, 0, module_upvr.Page.Size.Y.Offset + var58 + arg5)
		else
			module_upvr.Page.Size = UDim2.new(1, 0, 0, module_upvr.Page.Size.Y.Offset + var58)
		end
		if module_upvr.HubRef and type(arg4) == "table" then
			arg4.HubRef = module_upvr.HubRef
		end
	end
	return module_upvr
end
return {
	CreateNewPage = function(arg1) -- Line 469, Named "CreateNewPage"
		--[[ Upvalues[1]:
			[1]: Initialize_upvr (readonly)
		]]
		return Initialize_upvr()
	end;
}