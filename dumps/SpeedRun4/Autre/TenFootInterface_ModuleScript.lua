-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:55
-- Luau version 6, Types version 3
-- Time taken: 0.041714 seconds

local any_GetPlatform_result1_2 = game:GetService("UserInputService"):GetPlatform()
local var288_upvw = true
if any_GetPlatform_result1_2 ~= Enum.Platform.XBoxOne then
	var288_upvw = true
	if any_GetPlatform_result1_2 ~= Enum.Platform.WiiU then
		var288_upvw = true
		if any_GetPlatform_result1_2 ~= Enum.Platform.PS4 then
			var288_upvw = true
			if any_GetPlatform_result1_2 ~= Enum.Platform.AndroidTV then
				var288_upvw = true
				if any_GetPlatform_result1_2 ~= Enum.Platform.XBox360 then
					var288_upvw = true
					if any_GetPlatform_result1_2 ~= Enum.Platform.PS3 then
						var288_upvw = true
						if any_GetPlatform_result1_2 ~= Enum.Platform.Ouya then
							if any_GetPlatform_result1_2 ~= Enum.Platform.SteamOS then
								var288_upvw = false
							else
								var288_upvw = true
							end
						end
					end
				end
			end
		end
	end
end
local Create_upvr_3 = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Create
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Color3_new_result1_upvr_6 = Color3.new(0.10588235294117647, 0.9882352941176471, 0.4196078431372549)
local Players_upvr_4 = game:GetService("Players")
local module_3 = {}
local CreateModule_result1_upvr = (function() -- Line 40, Named "CreateModule"
	--[[ Upvalues[4]:
		[1]: Create_upvr_3 (readonly)
		[2]: RobloxGui_upvr (readonly)
		[3]: Color3_new_result1_upvr_6 (readonly)
		[4]: Players_upvr_4 (readonly)
	]]
	local module_11_upvr = {
		Container = nil;
	}
	local tbl_41_upvr = {}
	local BindableEvent_upvr_8 = Instance.new("BindableEvent")
	local function createContainer_upvr() -- Line 49, Named "createContainer"
		--[[ Upvalues[3]:
			[1]: module_11_upvr (readonly)
			[2]: Create_upvr_3 (copied, readonly)
			[3]: RobloxGui_upvr (copied, readonly)
		]]
		if not module_11_upvr.Container then
			module_11_upvr.Container = Create_upvr_3("ImageButton")({
				Name = "TopRightContainer";
				Size = UDim2.new(0, 350, 0, 100);
				Position = UDim2.new(1, -415, 0, 10);
				AutoButtonColor = false;
				Image = "";
				Active = false;
				BackgroundTransparency = 1;
				Parent = RobloxGui_upvr;
			})
		end
	end
	function removeFromDisplayStack(arg1) -- Line 65
		--[[ Upvalues[2]:
			[1]: tbl_41_upvr (readonly)
			[2]: BindableEvent_upvr_8 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local _ = 1
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 12. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 12. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 7. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [12.594]
		-- KONSTANTERROR: [6] 7. Error Block 2 end (CF ANALYSIS FAILED)
	end
	function addBackToDisplayStack(arg1) -- Line 85
		--[[ Upvalues[2]:
			[1]: tbl_41_upvr (readonly)
			[2]: BindableEvent_upvr_8 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local _ = 1
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 12. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 12. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 7. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [12.594]
		-- KONSTANTERROR: [6] 7. Error Block 2 end (CF ANALYSIS FAILED)
	end
	function addToDisplayStack(arg1) -- Line 106
		--[[ Upvalues[4]:
			[1]: tbl_41_upvr (readonly)
			[2]: createContainer_upvr (readonly)
			[3]: module_11_upvr (readonly)
			[4]: BindableEvent_upvr_8 (readonly)
		]]
		local var299
		if 0 < #tbl_41_upvr then
			var299 = tbl_41_upvr[#tbl_41_upvr]
		end
		tbl_41_upvr[#tbl_41_upvr + 1] = arg1
		local var300 = 0
		if var299 then
			var300 = var299.AbsolutePosition.Y + var299.AbsoluteSize.Y + 4
		end
		arg1.Position = UDim2.new(arg1.Position.X.Scale, arg1.Position.X.Offset, arg1.Position.Y.Scale, var300)
		createContainer_upvr()
		arg1.Parent = module_11_upvr.Container
		arg1.Changed:connect(function(arg1_50) -- Line 124
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_50 == "Visible" then
				if not arg1.Visible then
					removeFromDisplayStack(arg1)
					return
				end
				addBackToDisplayStack(arg1)
			end
		end)
		BindableEvent_upvr_8:Fire()
	end
	local BindableEvent_upvr_7 = Instance.new("BindableEvent")
	local function CreateHealthBar(arg1) -- Line 136
		--[[ Upvalues[5]:
			[1]: module_11_upvr (readonly)
			[2]: Create_upvr_3 (copied, readonly)
			[3]: Color3_new_result1_upvr_6 (copied, readonly)
			[4]: createContainer_upvr (readonly)
			[5]: BindableEvent_upvr_7 (readonly)
		]]
		module_11_upvr.HealthContainer = Create_upvr_3("Frame")({
			Name = "HealthContainer";
			Size = UDim2.new(1, -86, 0, 50);
			Position = UDim2.new(0, 92, 0, 0);
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(0, 0, 0);
			BackgroundTransparency = 0.5;
		})
		local _ = {
			Name = "HealthText";
			Size = UDim2.new(0, 98, 0, 50);
			Position = UDim2.new(0, -100, 0, 0);
			BackgroundTransparency = 0.5;
			BackgroundColor3 = Color3.new(0, 0, 0);
			Font = Enum.Font.SourceSans;
			FontSize = Enum.FontSize.Size36;
			Text = "Health";
			TextColor3 = Color3.new(1, 1, 1);
			BorderSizePixel = 0;
			Parent = module_11_upvr.HealthContainer;
		}
		addToDisplayStack(module_11_upvr.HealthContainer)
		createContainer_upvr()
		module_11_upvr.HealthContainer.Changed:connect(function() -- Line 191
			--[[ Upvalues[1]:
				[1]: BindableEvent_upvr_7 (copied, readonly)
			]]
			BindableEvent_upvr_7:Fire()
		end)
		return module_11_upvr.Container, Create_upvr_3("TextLabel")({
			Visible = false;
		}), module_11_upvr.HealthContainer, Create_upvr_3("Frame")({
			Name = "HealthFill";
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			BorderSizePixel = 0;
			BackgroundTransparency = 0;
			BackgroundColor3 = Color3_new_result1_upvr_6;
			Parent = Create_upvr_3("Frame")({
				Name = "HealthFillHolder";
				Size = UDim2.new(1, -10, 1, -10);
				Position = UDim2.new(0, 5, 0, 5);
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(1, 1, 1);
				BackgroundTransparency = 1;
				Parent = module_11_upvr.HealthContainer;
			});
		}), Create_upvr_3("TextLabel")({
			Visible = false;
		})
	end
	module_11_upvr.CreateHealthBar = CreateHealthBar
	local function CreateAccountType(arg1, arg2) -- Line 198
		--[[ Upvalues[3]:
			[1]: module_11_upvr (readonly)
			[2]: Create_upvr_3 (copied, readonly)
			[3]: RobloxGui_upvr (copied, readonly)
		]]
		module_11_upvr.AccountTypeContainer = Create_upvr_3("Frame")({
			Name = "AccountTypeContainer";
			Size = UDim2.new(0, 50, 0, 50);
			Position = UDim2.new(1, -55, 0, 10);
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(0, 0, 0);
			BackgroundTransparency = 0.5;
			Parent = RobloxGui_upvr;
		})
		local tbl_17 = {
			Name = "AccountTypeText";
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			BackgroundTransparency = 1;
			BackgroundColor3 = Color3.new(0, 0, 0);
			Font = Enum.Font.SourceSans;
			FontSize = Enum.FontSize.Size36;
		}
		tbl_17.Text = arg2
		tbl_17.TextColor3 = Color3.new(1, 1, 1)
		tbl_17.BorderSizePixel = 0
		tbl_17.Parent = module_11_upvr.AccountTypeContainer
		tbl_17.TextXAlignment = Enum.TextXAlignment.Center
		tbl_17.TextYAlignment = Enum.TextYAlignment.Center
	end
	module_11_upvr.CreateAccountType = CreateAccountType
	local function SetupTopStat(arg1) -- Line 226
		--[[ Upvalues[2]:
			[1]: Create_upvr_3 (copied, readonly)
			[2]: Players_upvr_4 (copied, readonly)
		]]
		local var312_upvw = true
		local var313_upvw
		local var314_upvw
		local function makeTenFootInterfaceStat_upvr() -- Line 234, Named "makeTenFootInterfaceStat"
			--[[ Upvalues[2]:
				[1]: var314_upvw (read and write)
				[2]: Create_upvr_3 (copied, readonly)
			]]
			if var314_upvw then
			else
				var314_upvw = Create_upvr_3("Frame")({
					Name = "OneStatFrame";
					Size = UDim2.new(1, 0, 0, 36);
					Position = UDim2.new(0, 0, 0, 0);
					BorderSizePixel = 0;
					BackgroundTransparency = 1;
				})
				local clone_3 = Create_upvr_3("TextLabel")({
					Name = "StatName";
					Size = UDim2.new(0.5, 0, 0, 36);
					BackgroundTransparency = 1;
					Font = Enum.Font.SourceSans;
					FontSize = Enum.FontSize.Size36;
					TextStrokeColor3 = Color3.new(0.40784313725490196, 0.40784313725490196, 0.40784313725490196);
					TextStrokeTransparency = 0;
					Text = " StatName:";
					TextColor3 = Color3.new(1, 1, 1);
					TextXAlignment = Enum.TextXAlignment.Left;
					BorderSizePixel = 0;
					ClipsDescendants = true;
					Parent = var314_upvw;
				}):clone()
				clone_3.Position = UDim2.new(0.5, 0, 0, 0)
				clone_3.Name = "StatValue"
				clone_3.Text = "123,643,231"
				clone_3.TextXAlignment = Enum.TextXAlignment.Right
				clone_3.Parent = var314_upvw
				addToDisplayStack(var314_upvw)
			end
		end
		local var318_upvw
		local var319_upvw
		local updateTenFootStat_upvw
		local function setDisplayedStat_upvr(arg1_51) -- Line 271, Named "setDisplayedStat"
			--[[ Upvalues[5]:
				[1]: var318_upvw (read and write)
				[2]: var319_upvw (read and write)
				[3]: var313_upvw (read and write)
				[4]: makeTenFootInterfaceStat_upvr (readonly)
				[5]: updateTenFootStat_upvw (read and write)
			]]
			if var318_upvw then
				var318_upvw:disconnect()
				var318_upvw = nil
			end
			if var319_upvw then
				var319_upvw:disconnect()
				var319_upvw = nil
			end
			var313_upvw = arg1_51
			if var313_upvw then
				makeTenFootInterfaceStat_upvr()
				updateTenFootStat_upvw(var313_upvw)
				var319_upvw = var313_upvw.AncestryChanged:connect(function() -- Line 280
					--[[ Upvalues[2]:
						[1]: updateTenFootStat_upvw (copied, read and write)
						[2]: var313_upvw (copied, read and write)
					]]
					updateTenFootStat_upvw(var313_upvw, "Parent")
				end)
				var318_upvw = var313_upvw.Changed:connect(function(arg1_52) -- Line 281
					--[[ Upvalues[2]:
						[1]: updateTenFootStat_upvw (copied, read and write)
						[2]: var313_upvw (copied, read and write)
					]]
					updateTenFootStat_upvw(var313_upvw, arg1_52)
				end)
			end
		end
		function updateTenFootStat_upvw(arg1_53, arg2) -- Line 285, Named "updateTenFootStat"
			--[[ Upvalues[3]:
				[1]: var314_upvw (read and write)
				[2]: setDisplayedStat_upvr (readonly)
				[3]: var312_upvw (read and write)
			]]
			if arg2 and arg2 == "Parent" then
				var314_upvw.StatName.Text = ""
				var314_upvw.StatValue.Text = ""
				setDisplayedStat_upvr(nil)
				tenFootInterfaceChanged()
			else
				if var312_upvw then
					var314_upvw.StatName.Text = ' '..tostring(arg1_53.Name)..':'
					var314_upvw.StatValue.Text = tostring(arg1_53.Value)
					return
				end
				var314_upvw.StatName.Text = ""
				var314_upvw.StatValue.Text = ""
			end
		end
		local function isValidStat_upvr(arg1_54) -- Line 303, Named "isValidStat"
			local children_13 = arg1_54:IsA("StringValue")
			if not children_13 then
				children_13 = arg1_54:IsA("IntValue")
				if not children_13 then
					children_13 = arg1_54:IsA("BoolValue")
					if not children_13 then
						children_13 = arg1_54:IsA("NumberValue")
						if not children_13 then
							children_13 = arg1_54:IsA("DoubleConstrainedValue")
							if not children_13 then
								children_13 = arg1_54:IsA("IntConstrainedValue")
							end
						end
					end
				end
			end
			return children_13
		end
		local function _(arg1_55) -- Line 308, Named "tenFootInterfaceNewStat"
			--[[ Upvalues[3]:
				[1]: var313_upvw (read and write)
				[2]: isValidStat_upvr (readonly)
				[3]: setDisplayedStat_upvr (readonly)
			]]
			if not var313_upvw and isValidStat_upvr(arg1_55) then
				setDisplayedStat_upvr(arg1_55)
			end
		end
		local var324_upvw
		while not var324_upvw do
			Players_upvr_4.PlayerAdded:wait()
			var324_upvw = Players_upvr_4.LocalPlayer
		end
		local var325_upvw
		function tenFootInterfaceChanged() -- Line 320
			--[[ Upvalues[5]:
				[1]: var324_upvw (read and write)
				[2]: var313_upvw (read and write)
				[3]: isValidStat_upvr (readonly)
				[4]: setDisplayedStat_upvr (readonly)
				[5]: var325_upvw (read and write)
			]]
			local leaderstats_6 = var324_upvw:FindFirstChild("leaderstats")
			if leaderstats_6 then
				local children_4 = leaderstats_6:GetChildren()
				for i = 1, #children_4 do
					local var329 = children_4[i]
					if not var313_upvw and isValidStat_upvr(var329) then
						setDisplayedStat_upvr(var329)
					end
				end
				if var325_upvw then
					var325_upvw:disconnect()
				end
				var325_upvw = leaderstats_6.ChildAdded:connect(function(arg1_56) -- Line 328
					--[[ Upvalues[3]:
						[1]: var313_upvw (copied, read and write)
						[2]: isValidStat_upvr (copied, readonly)
						[3]: setDisplayedStat_upvr (copied, readonly)
					]]
					if not var313_upvw and isValidStat_upvr(arg1_56) then
						setDisplayedStat_upvr(arg1_56)
					end
				end)
			end
		end
		if var324_upvw:FindFirstChild("leaderstats") then
			tenFootInterfaceChanged()
		else
			var324_upvw.ChildAdded:connect(tenFootInterfaceChanged)
		end
		return {
			SetTopStatEnabled = function(arg1_57, arg2) -- Line 345, Named "SetTopStatEnabled"
				--[[ Upvalues[3]:
					[1]: var312_upvw (read and write)
					[2]: var313_upvw (read and write)
					[3]: updateTenFootStat_upvw (read and write)
				]]
				var312_upvw = arg2
				if var313_upvw then
					updateTenFootStat_upvw(var313_upvw, "")
				end
			end;
		}
	end
	module_11_upvr.SetupTopStat = SetupTopStat
	return module_11_upvr
end)()
function module_3.IsEnabled(arg1) -- Line 365
	--[[ Upvalues[1]:
		[1]: var288_upvw (read and write)
	]]
	return var288_upvw
end
function module_3.CreateHealthBar(arg1) -- Line 369
	--[[ Upvalues[1]:
		[1]: CreateModule_result1_upvr (readonly)
	]]
	return CreateModule_result1_upvr:CreateHealthBar()
end
function module_3.CreateAccountType(arg1, arg2) -- Line 373
	--[[ Upvalues[1]:
		[1]: CreateModule_result1_upvr (readonly)
	]]
	return CreateModule_result1_upvr:CreateAccountType(arg2)
end
function module_3.SetupTopStat(arg1) -- Line 377
	--[[ Upvalues[1]:
		[1]: CreateModule_result1_upvr (readonly)
	]]
	return CreateModule_result1_upvr:SetupTopStat()
end
return module_3