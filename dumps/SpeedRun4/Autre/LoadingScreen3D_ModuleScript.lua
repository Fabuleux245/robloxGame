-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:14
-- Luau version 6, Types version 3
-- Time taken: 0.007525 seconds

local Parent = script:FindFirstAncestor("ExperienceLoadingScript").Parent
local RunService_upvr = game:GetService("RunService")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local GuiService = game:GetService("GuiService")
local TweenService_upvr = game:GetService("TweenService")
local Create = require(Parent.AppCommonLib).Create
local function FadeElements_upvr(arg1, arg2, arg3) -- Line 22, Named "FadeElements"
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: FadeElements_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg3 = arg3 or 0.5
	local var15 = arg3
	if arg1 == nil then
	else
		local TweenInfo_new_result1_2 = TweenInfo.new(var15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
		if arg1:IsA("ImageLabel") or arg1:IsA("ImageButton") then
			local tbl_4 = {}
			tbl_4.ImageTransparency = arg2
			TweenService_upvr:Create(arg1, TweenInfo_new_result1_2, tbl_4):Play()
		end
		if arg1:IsA("GuiObject") then
			local tbl = {}
			tbl.BackgroundTransparency = arg2
			TweenService_upvr:Create(arg1, TweenInfo_new_result1_2, tbl):Play()
		end
		if arg1:IsA("TextLabel") or arg1:IsA("TextBox") or arg1:IsA("TextButton") then
			local tbl_3 = {}
			tbl_3.TextTransparency = arg2
			TweenService_upvr:Create(arg1, TweenInfo_new_result1_2, tbl_3):Play()
		end
		for _, v in pairs(arg1:GetChildren()) do
			FadeElements_upvr(v, arg2, var15)
		end
	end
end
local tbl_2_upvr = {}
local BindableEvent_upvr = Instance.new("BindableEvent")
tbl_2_upvr.Finished = false
tbl_2_upvr.GameAssetInfo = nil
tbl_2_upvr.LoadingFinishedEvent = BindableEvent_upvr.Event
function tbl_2_upvr.GetGameName(arg1) -- Line 51
	if arg1.GameAssetInfo ~= nil then
		return arg1.GameAssetInfo.Name
	end
	return ""
end
function tbl_2_upvr.GetCreatorName(arg1) -- Line 59
	if arg1.GameAssetInfo ~= nil then
		return arg1.GameAssetInfo.Creator.Name
	end
	return ""
end
function tbl_2_upvr.IsReady(arg1) -- Line 67
	return arg1.Finished
end
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LoadingRemoveRemoteCallErrorPrint", false)
function tbl_2_upvr.LoadAssetsAsync(arg1) -- Line 71
	--[[ Upvalues[3]:
		[1]: MarketplaceService_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: BindableEvent_upvr (readonly)
	]]
	spawn(function() -- Line 72
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: MarketplaceService_upvr (copied, readonly)
			[3]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[4]: BindableEvent_upvr (copied, readonly)
		]]
		while game.PlaceId <= 0 do
			wait()
		end
		local pcall_result1, pcall_result2 = pcall(function() -- Line 78
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: MarketplaceService_upvr (copied, readonly)
			]]
			arg1.GameAssetInfo = MarketplaceService_upvr:GetProductInfo(game.PlaceId)
		end)
		if not game_DefineFastFlag_result1_upvr and not pcall_result1 then
			print("LoadingScript->GameInfoProvider:LoadAssets:", pcall_result2)
		end
		arg1.Finished = true
		BindableEvent_upvr:Fire()
	end)
end
BindableEvent_upvr = Create("Frame")
BindableEvent_upvr = BindableEvent_upvr({
	Name = "VRLoadingScreenContainer";
	Size = UDim2.new(1, 0, 1, 0);
	BackgroundTransparency = 1;
	BackgroundColor3 = Color3.new(0, 0, 0);
})
local var32_upvr = BindableEvent_upvr
local var34 = Create("ImageLabel")({
	Name = "LoadingBackground";
	Position = UDim2.new(0.25, 0, 0.25, 0);
	Size = UDim2.new(0.5, 0, 0.5, 0);
	Image = "rbxasset://textures/ui/LoadingScreen/BackgroundLight.png";
	ScaleType = Enum.ScaleType.Slice;
	SliceCenter = Rect.new(70, 70, 110, 110);
	BackgroundTransparency = 1;
	Parent = var32_upvr;
	ImageColor3 = Color3.new(0, 0, 0);
})
local var36_upvr = Create("ImageLabel")({
	Name = "Spinner";
	Size = UDim2.new(0.25, 0, 0.25, 0);
	Position = UDim2.new(0.375, 0, 0.325, 0);
	Image = "rbxasset://textures/ui/LoadingScreen/LoadingSpinner.png";
	BackgroundTransparency = 1;
	Parent = var34;
})
local var39_upvr = Create("TextLabel")({
	Name = "GameNameText";
	Text = "";
	BackgroundTransparency = 1;
	Font = Enum.Font.SourceSans;
	FontSize = Enum.FontSize.Size60;
	Size = UDim2.new(0.9, 0, 0.1, 0);
	Position = UDim2.new(0.05, 0, 0.65, 0);
	ClipsDescendants = true;
	Parent = var34;
	TextColor3 = Color3.new(0.058823529411764705, 0.9294117647058824, 1);
})
local var41_upvr = Create("Frame")({
	Name = "CreatorTextContainer";
	Size = UDim2.new(0.9, 0, 0.1, 0);
	Position = UDim2.new(0.05, 0, 0.77, 0);
	BackgroundTransparency = 1;
	ClipsDescendants = true;
	Parent = var34;
})
local var43_upvr = Create("TextLabel")({
	Name = "CreatorText";
	Text = "";
	BackgroundTransparency = 1;
	Font = Enum.Font.SourceSans;
	FontSize = Enum.FontSize.Size42;
	Size = UDim2.new(1, 0, 1, 0);
	Parent = var41_upvr;
	TextColor3 = Color3.new(0.058823529411764705, 0.9294117647058824, 1);
})
local var44_upvw = false
local var45_upvw = true
delay(2.5, function() -- Line 168
	--[[ Upvalues[1]:
		[1]: var45_upvw (read and write)
	]]
	var45_upvw = false
end)
local var47_upvw = 0
local var48_upvr = Create("TextLabel")({
	Name = "LoadingText";
	Text = "Loading...";
	BackgroundTransparency = 1;
	Font = Enum.Font.SourceSans;
	FontSize = Enum.FontSize.Size60;
	Position = UDim2.new(0.5, 0, 0.2, 0);
	Parent = var34;
	TextColor3 = Color3.new(0.30196078431372547, 0.6392156862745098, 0.8784313725490196);
})
local function UpdateLayout_upvr(arg1) -- Line 171, Named "UpdateLayout"
	--[[ Upvalues[9]:
		[1]: var43_upvr (readonly)
		[2]: var41_upvr (readonly)
		[3]: var45_upvw (read and write)
		[4]: var47_upvw (read and write)
		[5]: TweenService_upvr (readonly)
		[6]: var44_upvw (read and write)
		[7]: var39_upvr (readonly)
		[8]: var36_upvr (readonly)
		[9]: var48_upvr (readonly)
	]]
	if var43_upvr.TextBounds.X < var41_upvr.AbsoluteSize.X then
		var43_upvr.Position = UDim2.new(0, 0, 0, 0)
		var43_upvr.Size = UDim2.new(1, 0, 1, 0)
	elseif arg1 ~= nil then
		var43_upvr.Size = UDim2.new(0, var43_upvr.TextBounds.X, 1, 0)
		if not var45_upvw then
			local var49 = var47_upvw - arg1 * 25
			if var49 + var43_upvr.AbsoluteSize.X < var41_upvr.AbsoluteSize.X then
				var45_upvw = true
				spawn(function() -- Line 181
					--[[ Upvalues[5]:
						[1]: TweenService_upvr (copied, readonly)
						[2]: var43_upvr (copied, readonly)
						[3]: var44_upvw (copied, read and write)
						[4]: var47_upvw (copied, read and write)
						[5]: var45_upvw (copied, read and write)
					]]
					local TweenInfo_new_result1 = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
					TweenService_upvr:Create(var43_upvr, TweenInfo_new_result1, {
						TextTransparency = 1;
					}):Play()
					wait(1.5)
					if var44_upvw then
					else
						var47_upvw = 0
						TweenService_upvr:Create(var43_upvr, TweenInfo_new_result1, {
							TextTransparency = 0;
						}):Play()
						wait(1.5)
						var45_upvw = false
					end
				end)
			else
				var47_upvw = var49
			end
		end
		var43_upvr.Position = UDim2.new(0, var47_upvw, 0, 0)
	end
	if not var39_upvr.TextFits then
		var39_upvr.Size = UDim2.new(0.9, 0, 0.3, 0)
		var39_upvr.Position = UDim2.new(0.05, 0, 0.5, 0)
		var39_upvr.TextScaled = true
		var39_upvr.TextWrapped = true
		var36_upvr.Position = UDim2.new(0.375, 0, 0.225, 0)
		var48_upvr.Position = UDim2.new(0.5, 0, 0.15, 0)
	end
end
local function _() -- Line 212, Named "CleanUp"
	--[[ Upvalues[4]:
		[1]: var44_upvw (read and write)
		[2]: FadeElements_upvr (readonly)
		[3]: var32_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	if var44_upvw then
	else
		var44_upvw = true
		FadeElements_upvr(var32_upvr, 1, 2.5)
		wait(2.5)
		RunService_upvr:UnbindFromRenderStep("LoadingGui3D")
		var32_upvr.Parent = nil
	end
end
local tick_result1_2_upvw = tick()
local var57_upvw = 0
RunService_upvr:BindToRenderStep("LoadingGui3D", Enum.RenderPriority.Last.Value, function() -- Line 240
	--[[ Upvalues[4]:
		[1]: tick_result1_2_upvw (read and write)
		[2]: UpdateLayout_upvr (readonly)
		[3]: var57_upvw (read and write)
		[4]: var36_upvr (readonly)
	]]
	local tick_result1 = tick()
	local var59 = tick_result1 - tick_result1_2_upvw
	UpdateLayout_upvr(var59)
	var57_upvw += var59 * 0.5 * 360
	var36_upvr.Rotation = var57_upvw
	tick_result1_2_upvw = tick_result1
end)
UpdateLayout_upvr()
tbl_2_upvr:LoadAssetsAsync()
local var60_upvw
if tbl_2_upvr:IsReady() then
	local var61
	if var61 and var61 ~= "" then
		var61 = string.format("By %s", tostring(var61))
	end
	var39_upvr.Text = tbl_2_upvr:GetGameName()
	var43_upvr.Text = var61
end
tbl_2_upvr.LoadingFinishedEvent:Connect(function() -- Line 225, Named "OnGameInfoLoaded"
	--[[ Upvalues[3]:
		[1]: tbl_2_upvr (readonly)
		[2]: var39_upvr (readonly)
		[3]: var43_upvr (readonly)
	]]
	local var54
	if var54 and var54 ~= "" then
		var54 = string.format("By %s", tostring(var54))
	end
	var39_upvr.Text = tbl_2_upvr:GetGameName()
	var43_upvr.Text = var54
end)
if ReplicatedFirst:IsDefaultLoadingGuiRemoved() then
	if var60_upvw then
	else
		var60_upvw = true
		FadeElements_upvr(var32_upvr, 1, 2.5)
		wait(2.5)
		RunService_upvr:UnbindFromRenderStep("LoadingGui3D")
		var32_upvr.Parent = nil
	end
else
	ReplicatedFirst.RemoveDefaultLoadingGuiSignal:connect(function() -- Line 234, Named "OnDefaultLoadingGuiRemoved"
		--[[ Upvalues[4]:
			[1]: var44_upvw (read and write)
			[2]: FadeElements_upvr (readonly)
			[3]: var32_upvr (readonly)
			[4]: RunService_upvr (readonly)
		]]
		if var44_upvw then
		else
			var44_upvw = true
			FadeElements_upvr(var32_upvr, 1, 2.5)
			wait(2.5)
			RunService_upvr:UnbindFromRenderStep("LoadingGui3D")
			var32_upvr.Parent = nil
		end
	end)
end
GuiService.ErrorMessageChanged:connect(function() -- Line 267
end)
GuiService.UiMessageChanged:connect(function(arg1, arg2) -- Line 271
end)
require(Parent.SplashScreenManager).SplashScreenManager.addStatusChangeListener(function(arg1) -- Line 275
	--[[ Upvalues[4]:
		[1]: var60_upvw (read and write)
		[2]: FadeElements_upvr (readonly)
		[3]: var32_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	if arg1 then
		if var60_upvw then return end
		var60_upvw = true
		FadeElements_upvr(var32_upvr, 1, 2.5)
		wait(2.5)
		RunService_upvr:UnbindFromRenderStep("LoadingGui3D")
		var32_upvr.Parent = nil
	end
end)
return var32_upvr