-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:46
-- Luau version 6, Types version 3
-- Time taken: 0.005425 seconds

local udim2_upvr = UDim2.new(0.9, 0, 0.9, 0)
local CorePackages = game:GetService("CorePackages")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("NetworkPauseNotifTweenCancel", false)
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("NetworkPauseNoAnimation", false)
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("LocalizeGameplayPaused", false)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local function build_upvr() -- Line 25, Named "build"
	--[[ Upvalues[6]:
		[1]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[2]: Create_upvr (readonly)
		[3]: udim2_upvr (readonly)
		[4]: AppFonts_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[6]: RobloxTranslator_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var9
	if game_DefineFastFlag_result1_upvr_3 then
		var9 = 0
	else
		var9 = 1
	end
	local module = {
		Name = "NetworkPause";
		Image = "rbxasset://textures/ui/PurchasePrompt/LoadingBG.png";
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(8, 8, 12, 12);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		ImageColor3 = Color3.fromRGB(122, 122, 122);
		ImageTransparency = var9;
		BackgroundTransparency = 1;
	}
	local tbl_2 = {
		Name = "Upper";
		Size = UDim2.new(1, 0, 0, 88);
		BackgroundTransparency = 1;
	}
	local tbl_3 = {
		Name = "Label";
		Font = AppFonts_upvr.default:getBold();
	}
	if not game_DefineFastFlag_result1_upvr_2 or not RobloxTranslator_upvr:FormatByKey("InGame.GameplayPaused.Title") then
	end
	tbl_3.Text = "Gameplay Paused"
	tbl_3.TextSize = 22
	tbl_3.TextWrapped = true
	tbl_3.Size = UDim2.new(1, 0, 0, 22)
	tbl_3.Position = UDim2.new(0, 0, 0, 54)
	tbl_3.BackgroundTransparency = 1
	tbl_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	tbl_3.TextTransparency = var9
	tbl_2[1] = Create_upvr("Frame")({
		Name = "IconContainer";
		Size = UDim2.new(0, 40, 0, 37);
		AnchorPoint = Vector2.new(0.5, 0);
		Position = UDim2.new(0.5, 0, 0, 0);
		BackgroundTransparency = 1;
		
		Create_upvr("ImageLabel")({
			Name = "Icon";
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/NetworkPause/no connection.png";
			Size = udim2_upvr;
			Position = UDim2.new(0.5, 0, 0.88, 0);
			AnchorPoint = Vector2.new(0.5, 0.88);
			ImageTransparency = var9;
		})
	})
	tbl_2[2] = Create_upvr("TextLabel")(tbl_3)
	local tbl = {
		Name = "Lower";
		Font = AppFonts_upvr.default:getDefault();
	}
	if not game_DefineFastFlag_result1_upvr_2 or not RobloxTranslator_upvr:FormatByKey("InGame.GameplayPaused.Body") then
	end
	tbl.Text = "Gameplay has been paused: please wait while the game content loads."
	tbl.TextColor3 = Color3.fromRGB(190, 190, 190)
	tbl.TextSize = 18
	tbl.TextWrapped = true
	tbl.Position = UDim2.new(0, 0, 0, 89)
	tbl.Size = UDim2.new(1, 0, 1, -89)
	tbl.BackgroundTransparency = 1
	tbl.TextTransparency = var9
	module[1] = Create_upvr("UISizeConstraint")({
		MaxSize = Vector2.new(312, 251);
	})
	module[2] = Create_upvr("UIPadding")({
		PaddingTop = UDim.new(0, 24);
		PaddingLeft = UDim.new(0, 24);
		PaddingRight = UDim.new(0, 24);
		PaddingBottom = UDim.new(0, 24);
	})
	module[3] = Create_upvr("Frame")({
		Name = "Accent";
		BorderSizePixel = 0;
		BackgroundColor3 = Color3.fromRGB(66, 66, 66);
		Size = UDim2.new(1, 0, 0, 1);
		Position = UDim2.new(0, 0, 0, 88);
		BackgroundTransparency = var9;
	})
	module[4] = Create_upvr("Frame")(tbl_2)
	module[5] = Create_upvr("TextLabel")(tbl)
	return Create_upvr("ImageLabel")(module)
end
local module_upvr = {}
module_upvr.__index = module_upvr
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(0.15, Enum.EasingStyle.Sine)
local TweenInfo_new_result1_upvr = TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)
local udim2_upvr_2 = UDim2.new(1.1, 0, 1.1, 0)
function module_upvr.new() -- Line 125
	--[[ Upvalues[7]:
		[1]: module_upvr (readonly)
		[2]: build_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: TweenInfo_new_result1_upvr_2 (readonly)
		[6]: TweenInfo_new_result1_upvr (readonly)
		[7]: udim2_upvr_2 (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	local build_result1_upvr = build_upvr()
	if not game_DefineFastFlag_result1_upvr_3 then
		build_result1_upvr:GetPropertyChangedSignal("ImageTransparency"):Connect(function() -- Line 130
			--[[ Upvalues[1]:
				[1]: build_result1_upvr (readonly)
			]]
			local ImageTransparency = build_result1_upvr.ImageTransparency
			build_result1_upvr.Lower.TextTransparency = ImageTransparency
			build_result1_upvr.Accent.BackgroundTransparency = ImageTransparency
			build_result1_upvr.Upper.Label.TextTransparency = ImageTransparency
			build_result1_upvr.Upper.IconContainer.Icon.ImageTransparency = ImageTransparency
		end)
	end
	local any_Create_result1 = TweenService_upvr:Create(build_result1_upvr, TweenInfo_new_result1_upvr_2, {
		ImageTransparency = 0;
	})
	local any_Create_result1_2_upvr = TweenService_upvr:Create(build_result1_upvr.Upper.IconContainer.Icon, TweenInfo_new_result1_upvr, {
		Size = udim2_upvr_2;
		ImageTransparency = 0.75;
	})
	if not game_DefineFastFlag_result1_upvr_3 then
		any_Create_result1.Completed:Connect(function(arg1) -- Line 148
			--[[ Upvalues[2]:
				[1]: build_result1_upvr (readonly)
				[2]: any_Create_result1_2_upvr (readonly)
			]]
			if arg1 == Enum.PlaybackState.Completed then
				build_result1_upvr.Upper.IconContainer.Icon.ImageTransparency = 0
				any_Create_result1_2_upvr:Play()
			end
		end)
	end
	setmetatable_result1.__gui = build_result1_upvr
	setmetatable_result1.__guiParent = nil
	setmetatable_result1.__show = false
	setmetatable_result1.__animations = {
		show = any_Create_result1;
		hide = TweenService_upvr:Create(build_result1_upvr, TweenInfo_new_result1_upvr_2, {
			ImageTransparency = 1;
		});
		pulse = any_Create_result1_2_upvr;
	}
	return setmetatable_result1
end
function module_upvr.Show(arg1) -- Line 168
	--[[ Upvalues[3]:
		[1]: udim2_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	arg1.__gui.Upper.IconContainer.Icon.Size = udim2_upvr
	if game_DefineFastFlag_result1_upvr_3 then
		arg1.__gui.Upper.IconContainer.Icon.ImageTransparency = 0
		arg1.__show = true
		arg1.__gui.Parent = arg1.__guiParent
		arg1.__animations.pulse:Play()
	else
		if game_DefineFastFlag_result1_upvr then
			arg1.__animations.hide:Cancel()
		end
		arg1.__animations.show:Play()
	end
end
function module_upvr.Hide(arg1) -- Line 184
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr_3 then
		arg1.__show = false
		arg1.__gui.Parent = nil
		arg1.__animations.pulse:Cancel()
	else
		arg1.__animations.pulse:Cancel()
		if game_DefineFastFlag_result1_upvr then
			arg1.__animations.show:Cancel()
		end
		arg1.__animations.hide:Play()
	end
end
function module_upvr.SetParent(arg1, arg2) -- Line 198
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 3 start (CF ANALYSIS FAILED)
	arg1.__gui.Parent = arg2
	do
		return
	end
	-- KONSTANTERROR: [7] 6. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 9. Error Block 4 start (CF ANALYSIS FAILED)
	arg1.__gui.Parent = arg2
	-- KONSTANTERROR: [12] 9. Error Block 4 end (CF ANALYSIS FAILED)
end
return module_upvr