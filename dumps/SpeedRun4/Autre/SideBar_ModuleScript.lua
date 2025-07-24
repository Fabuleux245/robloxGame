-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:25
-- Luau version 6, Types version 3
-- Time taken: 0.004926 seconds

local Shell = game:GetService("CoreGui"):FindFirstChild("RobloxGui"):FindFirstChild("Modules"):FindFirstChild("Shell")
local Create_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Create
local module_upvr_2 = require(Shell:FindFirstChild("GlobalSettings"))
local module_upvr_5 = require(Shell:FindFirstChild("SoundManager"))
local module_upvr_3 = require(Shell:FindFirstChild("Analytics"))
local module_upvr_6 = require(Shell:FindFirstChild("ScreenManager"))
local GuiService_upvr = game:GetService("GuiService")
local module_upvr_4 = require(Shell:FindFirstChild("Utility"))
local ContextActionService_upvr = game:GetService("ContextActionService")
return function() -- Line 24
	--[[ Upvalues[8]:
		[1]: Create_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: module_upvr_6 (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: module_upvr_4 (readonly)
		[8]: ContextActionService_upvr (readonly)
	]]
	local module_upvr = {}
	local tbl_upvr = {}
	local var13_upvw
	local var14_upvw = false
	local var16_upvr = Create_upvr("Frame")({
		Name = "ModalOverlay";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		BackgroundColor3 = module_upvr_2.ModalBackgroundColor;
		BorderSizePixel = 0;
		ZIndex = 4;
	})
	local var18_upvr = Create_upvr("Frame")({
		Name = "SideBarContainer";
		Size = UDim2.new(0.3, 0, 1, 0);
		Position = UDim2.new(1, 0, 0, 0);
		BorderSizePixel = 0;
		BackgroundColor3 = module_upvr_2.OverlayColor;
		ZIndex = 5;
		Parent = var16_upvr;
	})
	local var21_upvr = Create_upvr("TextLabel")({
		Name = "Text";
		Size = UDim2.new(1, -165, 1, -156);
		Position = UDim2.new(0, 65, 0, 156);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		ZIndex = 6;
		Text = "";
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		TextColor3 = module_upvr_2.WhiteTextColor;
		Font = module_upvr_2.RegularFont;
		FontSize = module_upvr_2.DescriptionSize;
		TextWrapped = true;
	})
	local function recalcPositions_upvr() -- Line 81, Named "recalcPositions"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		for i = 1, #tbl_upvr do
			tbl_upvr[i].Position = UDim2.new(0, 0, 0, 156 + 75 * (i - 1))
		end
	end
	local BindableEvent_upvr = Instance.new("BindableEvent")
	BindableEvent_upvr.Name = "ClosedEvent"
	module_upvr.Closed = BindableEvent_upvr.Event
	function module_upvr.GetAnalyticsInfo(arg1) -- Line 94
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (copied, readonly)
		]]
		return {
			[module_upvr_3.WidgetNames("WidgetId")] = module_upvr_3.WidgetNames("SideBarId");
		}
	end
	local var25_upvr = Create_upvr("TextButton")({
		Name = "DummySelectionImage";
		Size = UDim2.new(0, 0, 0, 0);
		Visible = false;
		
		module_upvr_5:CreateSound("MoveSelection")
	})
	function module_upvr.AddItem(arg1, arg2, arg3) -- Line 98
		--[[ Upvalues[10]:
			[1]: Create_upvr (copied, readonly)
			[2]: module_upvr_2 (copied, readonly)
			[3]: var25_upvr (readonly)
			[4]: var18_upvr (readonly)
			[5]: module_upvr_5 (copied, readonly)
			[6]: module_upvr_6 (copied, readonly)
			[7]: module_upvr (readonly)
			[8]: BindableEvent_upvr (readonly)
			[9]: tbl_upvr (readonly)
			[10]: recalcPositions_upvr (readonly)
		]]
		local var27_upvr = Create_upvr("TextButton")({
			Name = "SortButton";
			Size = UDim2.new(1, 0, 0, 75);
			BorderSizePixel = 0;
			BackgroundColor3 = module_upvr_2.BlueButtonColor;
			BackgroundTransparency = 1;
			ZIndex = 6;
			Text = "";
			SelectionImageObject = var25_upvr;
			Parent = var18_upvr;
			
			module_upvr_5:CreateSound("MoveSelection")
		})
		local tbl = {
			Name = "SortName";
			Size = UDim2.new(1, -65, 1, 0);
			Position = UDim2.new(0, 65, 0, 0);
			BackgroundTransparency = 1;
		}
		tbl.Text = arg2
		tbl.TextXAlignment = Enum.TextXAlignment.Left
		tbl.TextColor3 = module_upvr_2.WhiteTextColor
		tbl.Font = module_upvr_2.RegularFont
		tbl.FontSize = module_upvr_2.MediumFontSize
		tbl.ZIndex = 7
		tbl.Parent = var27_upvr
		local var29_upvr = Create_upvr("TextLabel")(tbl)
		var27_upvr.MouseButton1Click:connect(function() -- Line 128
			--[[ Upvalues[5]:
				[1]: module_upvr_5 (copied, readonly)
				[2]: module_upvr_6 (copied, readonly)
				[3]: module_upvr (copied, readonly)
				[4]: BindableEvent_upvr (copied, readonly)
				[5]: arg3 (readonly)
			]]
			module_upvr_5:Play("ButtonPress")
			module_upvr_6:CloseCurrent(module_upvr)
			BindableEvent_upvr:Fire()
			arg3()
		end)
		var27_upvr.SelectionGained:connect(function() -- Line 134
			--[[ Upvalues[3]:
				[1]: var27_upvr (readonly)
				[2]: var29_upvr (readonly)
				[3]: module_upvr_2 (copied, readonly)
			]]
			var27_upvr.BackgroundTransparency = 0
			var29_upvr.TextColor3 = module_upvr_2.TextSelectedColor
		end)
		var27_upvr.SelectionLost:connect(function() -- Line 138
			--[[ Upvalues[3]:
				[1]: var27_upvr (readonly)
				[2]: var29_upvr (readonly)
				[3]: module_upvr_2 (copied, readonly)
			]]
			var27_upvr.BackgroundTransparency = 1
			var29_upvr.TextColor3 = module_upvr_2.WhiteTextColor
		end)
		tbl_upvr[#tbl_upvr + 1] = var27_upvr
		recalcPositions_upvr()
	end
	function module_upvr.SetText(arg1, arg2) -- Line 147
		--[[ Upvalues[2]:
			[1]: var21_upvr (readonly)
			[2]: var18_upvr (readonly)
		]]
		var21_upvr.Text = arg2
		var21_upvr.Parent = var18_upvr
	end
	function module_upvr.ResetText(arg1) -- Line 152
		--[[ Upvalues[1]:
			[1]: var21_upvr (readonly)
		]]
		var21_upvr.Text = ""
		var21_upvr.Parent = nil
	end
	function module_upvr.RemoveAllItems(arg1) -- Line 157
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: tbl_upvr (readonly)
		]]
		module_upvr:ResetText()
		for i_2, v in pairs(tbl_upvr) do
			v:Destroy()
			tbl_upvr[i_2] = nil
		end
	end
	function module_upvr.SetSelectedObject(arg1, arg2, arg3) -- Line 165
		--[[ Upvalues[4]:
			[1]: tbl_upvr (readonly)
			[2]: var13_upvw (read and write)
			[3]: var14_upvw (read and write)
			[4]: GuiService_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 17. Error Block 9 start (CF ANALYSIS FAILED)
		GuiService_upvr.SelectedCoreObject = var13_upvw
		do
			return
		end
		-- KONSTANTERROR: [18] 17. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 21. Error Block 10 start (CF ANALYSIS FAILED)
		var13_upvw = nil
		-- KONSTANTERROR: [23] 21. Error Block 10 end (CF ANALYSIS FAILED)
	end
	function module_upvr.GetPriority(arg1) -- Line 177
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (copied, readonly)
		]]
		return module_upvr_2.OverlayPriority
	end
	function module_upvr.Show(arg1) -- Line 181
		--[[ Upvalues[6]:
			[1]: var16_upvr (readonly)
			[2]: module_upvr_6 (copied, readonly)
			[3]: module_upvr_4 (copied, readonly)
			[4]: module_upvr_2 (copied, readonly)
			[5]: var18_upvr (readonly)
			[6]: module_upvr_5 (copied, readonly)
		]]
		var16_upvr.Parent = module_upvr_6:GetScreenGuiByPriority(arg1:GetPriority())
		var18_upvr:TweenPosition(UDim2.new(1 - var18_upvr.Size.X.Scale, 0, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.25, true)
		module_upvr_5:Play("SideMenuSlideIn")
	end
	function module_upvr.Hide(arg1) -- Line 190
		--[[ Upvalues[3]:
			[1]: module_upvr_4 (copied, readonly)
			[2]: var16_upvr (readonly)
			[3]: var18_upvr (readonly)
		]]
		local function _() -- Line 192
			--[[ Upvalues[1]:
				[1]: var16_upvr (copied, readonly)
			]]
			var16_upvr.Parent = nil
		end
		var18_upvr:TweenPosition(UDim2.new(1, 0, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.25, true)
	end
	function module_upvr.IsFocused(arg1) -- Line 198
		--[[ Upvalues[1]:
			[1]: var14_upvw (read and write)
		]]
		return var14_upvw
	end
	function module_upvr.Focus(arg1) -- Line 202
		--[[ Upvalues[9]:
			[1]: var14_upvw (read and write)
			[2]: GuiService_upvr (copied, readonly)
			[3]: var18_upvr (readonly)
			[4]: var13_upvw (read and write)
			[5]: module_upvr_4 (copied, readonly)
			[6]: ContextActionService_upvr (copied, readonly)
			[7]: module_upvr_6 (copied, readonly)
			[8]: module_upvr (readonly)
			[9]: BindableEvent_upvr (readonly)
		]]
		var14_upvw = true
		GuiService_upvr:AddSelectionParent("SideBar", var18_upvr)
		if var13_upvw then
			module_upvr_4.SetSelectedCoreObject(var13_upvw)
		else
			arg1:SetSelectedObject(1)
			module_upvr_4.SetSelectedCoreObject(var13_upvw)
		end
		ContextActionService_upvr:BindCoreAction("CloseSideBar", function(arg1_2, arg2, arg3) -- Line 214
			--[[ Upvalues[3]:
				[1]: module_upvr_6 (copied, readonly)
				[2]: module_upvr (copied, readonly)
				[3]: BindableEvent_upvr (copied, readonly)
			]]
			if arg2 == Enum.UserInputState.End then
				module_upvr_6:CloseCurrent(module_upvr)
				BindableEvent_upvr:Fire()
			end
		end, false, Enum.KeyCode.ButtonB)
	end
	function module_upvr.RemoveFocus(arg1) -- Line 223
		--[[ Upvalues[4]:
			[1]: var14_upvw (read and write)
			[2]: GuiService_upvr (copied, readonly)
			[3]: ContextActionService_upvr (copied, readonly)
			[4]: var13_upvw (read and write)
		]]
		var14_upvw = false
		GuiService_upvr:RemoveSelectionGroup("SideBar")
		ContextActionService_upvr:UnbindCoreAction("CloseSideBar")
		var13_upvw = nil
	end
	return module_upvr
end