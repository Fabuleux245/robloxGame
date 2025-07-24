-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:48
-- Luau version 6, Types version 3
-- Time taken: 0.037573 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module_upvr = require(game.ReplicatedStorage:WaitForChild("BUDShared"))
local module_upvr_3 = require(game.ReplicatedStorage:WaitForChild("BUUI"))
local module_upvr_2 = {
	DonationStatColor = Color3.fromRGB(244, 207, 0);
	DefaultDonationState = {
		Options = {};
		LastRefreshAtServerTime = (-math.huge);
	};
}
table.freeze(module_upvr_2.DefaultDonationState)
function module_upvr_2.ExternalGetDonationState(arg1) -- Line 33
	warn(debug.traceback("BUDClient.ExternalGetDonationState stub was called!"))
	return nil
end
function module_upvr_2.ExternalRequestRefresh(arg1) -- Line 37
	warn(debug.traceback("BUDClient.ExternalRequestRefresh stub was called!"))
end
function module_upvr_2.ExternalGetDonationLocalState(arg1) -- Line 45
	warn(debug.traceback("BUDClient.ExternalGetDonationLocalState stub was called!"))
	return nil
end
function module_upvr_2.ExternalPlaySoundEffect(arg1) -- Line 54
	local Sound_upvr = Instance.new("Sound")
	for i, v in arg1 do
		Sound_upvr[i] = v
	end
	Sound_upvr.Parent = game:GetService("SoundService")
	Sound_upvr.Ended:Once(function() -- Line 60
		--[[ Upvalues[1]:
			[1]: Sound_upvr (readonly)
		]]
		Sound_upvr:Destroy()
	end)
	Sound_upvr:Play()
end
;({}).BackgroundTransparency = 1
module_upvr_2.FancyButtonTheme_Enabled = {
	Base = Color3.fromRGB(85, 47, 13);
	Midtone = Color3.fromRGB(168, 104, 26);
	Highlight = Color3.fromRGB(253, 170, 17);
	Gradient = Color3.fromRGB(255, 207, 129);
}
module_upvr_2.FancyButtonTheme_Disabled = {
	Base = Color3.fromRGB(77, 77, 77);
	Midtone = Color3.fromRGB(116, 116, 116);
	Highlight = Color3.fromRGB(162, 162, 162);
	Gradient = Color3.fromRGB(182, 182, 182);
}
function module_upvr_2.DonationButtonCreate(arg1) -- Line 118
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	local any_FancyButtonCreate_result1_upvr = module_upvr_3.FancyButtonCreate()
	local any_FancyButtonLabelCreate_result1_3, any_FancyButtonLabelCreate_result2_2 = module_upvr_3.FancyButtonLabelCreate(any_FancyButtonCreate_result1_upvr.Button, {
		TextXAlignment = Enum.TextXAlignment.Center;
	})
	any_FancyButtonCreate_result1_upvr.LabelMain = any_FancyButtonLabelCreate_result1_3
	any_FancyButtonCreate_result1_upvr.LabelMainStroke = any_FancyButtonLabelCreate_result2_2
	local any_FancyButtonLabelCreate_result1_2, any_FancyButtonLabelCreate_result2_3 = module_upvr_3.FancyButtonLabelCreate(any_FancyButtonCreate_result1_upvr.Button, {
		TextXAlignment = Enum.TextXAlignment.Left;
	})
	any_FancyButtonCreate_result1_upvr.LabelOptions = any_FancyButtonLabelCreate_result1_2
	any_FancyButtonCreate_result1_upvr.LabelOptionsStroke = any_FancyButtonLabelCreate_result2_3
	local any_FancyButtonLabelCreate_result1, any_FancyButtonLabelCreate_result2 = module_upvr_3.FancyButtonLabelCreate(any_FancyButtonCreate_result1_upvr.Button, {
		TextXAlignment = Enum.TextXAlignment.Right;
	})
	any_FancyButtonCreate_result1_upvr.LabelRaised = any_FancyButtonLabelCreate_result1
	any_FancyButtonCreate_result1_upvr.LabelRaisedStroke = any_FancyButtonLabelCreate_result2
	any_FancyButtonCreate_result1_upvr.Button.Activated:Connect(function() -- Line 135
		--[[ Upvalues[2]:
			[1]: any_FancyButtonCreate_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		local Cached_DonationButtonInfo = any_FancyButtonCreate_result1_upvr.Cached_DonationButtonInfo
		if Cached_DonationButtonInfo and not any_FancyButtonCreate_result1_upvr.Disabled then
			local var26 = true
			if any_FancyButtonCreate_result1_upvr.PressedCallback then
				var26 = any_FancyButtonCreate_result1_upvr.PressedCallback(any_FancyButtonCreate_result1_upvr)
			end
			if var26 then
				arg1(Cached_DonationButtonInfo)
			end
		end
	end)
	return any_FancyButtonCreate_result1_upvr
end
function module_upvr_2.DonationButtonUpdateContent(arg1, arg2) -- Line 150
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var27
	if arg2 then
		var27 = module_upvr_2.ExternalGetDonationState(arg2)
		if not var27 then
			var27 = module_upvr_2.DefaultDonationState
		end
		local var28 = 0
		local any_ExternalGetDonationLocalState_result1 = module_upvr_2.ExternalGetDonationLocalState(arg2)
		if any_ExternalGetDonationLocalState_result1 then
			var28 = any_ExternalGetDonationLocalState_result1.RobuxRaised
		end
		local Cached_DonationButtonInfo_2 = arg1.Cached_DonationButtonInfo
		if not Cached_DonationButtonInfo_2 or Cached_DonationButtonInfo_2.Player ~= arg2 or Cached_DonationButtonInfo_2.OptionCount ~= #var27.Options or Cached_DonationButtonInfo_2.RaisedRobux ~= var28 then
			local tbl = {}
			tbl.Player = arg2
			tbl.PlayerName = arg2.DisplayName
			tbl.OptionCount = #var27.Options
			tbl.RaisedRobux = var28
			local var32 = tbl
		end
	end
	assert(arg1.Cached_DonationButtonInfo or var32, "Must have a valid player the first time DonationButtonUpdateContent() is called.")
	local var33
	if var32 then
		arg1.Cached_DonationButtonInfo = var32
		arg1.LabelMain.Text = "Donate to %s":format(var32.PlayerName)
		if var32.OptionCount == 1 then
			var33 = ""
		else
			var33 = 's'
		end
		arg1.LabelOptions.Text = "%d Option%s":format(var32.OptionCount, var33)
		var33 = module_upvr_3
		var33 = var32.RaisedRobux
		arg1.LabelRaised.Text = "%s%d Raised":format(var33.RobuxUnicode, var33)
	end
	return true
end
module_upvr_2.DonationButton_SizeYToX = 6.4
module_upvr_2.DonationButton_SizeXToY = 1 / module_upvr_2.DonationButton_SizeYToX
local function ComputeButtonBounds_upvr(arg1, arg2) -- Line 208, Named "ComputeButtonBounds"
	local var34 = arg2 * 0.06111111111111111
	local maximum_2 = math.max(math.ceil(arg2 * 0.5) * 0.5, var34)
	return var34, maximum_2, arg1 + var34 + var34, arg2 + maximum_2 + var34
end
function module_upvr_2.DonationButtonUpdateSize(arg1, arg2, arg3, arg4) -- Line 225
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: ComputeButtonBounds_upvr (readonly)
	]]
	if arg4 then
		local var36 = arg3 * module_upvr_2.DonationButton_SizeYToX
		local var37 = arg3
		local var38 = var37
		local var39 = var38 * 0.06111111111111111
		local minimum = math.min(1, arg2 / (var36 + var39 + var39), arg3 / (var38 + math.max(math.ceil(var38 * 0.5) * 0.5, var39) + var39))
		if minimum < 1 then
			var36 *= minimum
			var37 *= minimum
		end
		local var42 = var36
		local var43 = var37
	end
	if arg1.Cached_SizeX ~= var42 or arg1.Cached_SizeY ~= var43 then
		arg1.Cached_SizeX = var42
		arg1.Cached_SizeY = var43
		arg1.Button.Size = UDim2.fromOffset(var42, var43)
		module_upvr_3.FancyButtonUpdateSize(arg1, UDim.new(0, var43 * 0.2), var43 * 0.06111111111111111)
		local var44 = var43 * 0.2
		local var45 = var43 * 0.5 * 3 / 36
		local ceiled = math.ceil(var43 * 0.6)
		local var47 = var42 - var44 * 2
		arg1.LabelMain.Position = UDim2.fromOffset(var44, var43 - ceiled - var43 * 0.1)
		arg1.LabelMain.Size = UDim2.fromOffset(var47, ceiled)
		arg1.LabelMainStroke.Thickness = var45
		local ceiled_2 = math.ceil(var43 * 0.5)
		local var49 = var47 * 0.5
		arg1.LabelOptions.Position = UDim2.fromOffset(var44, -ceiled_2 * 0.5)
		arg1.LabelOptions.Size = UDim2.fromOffset(var49, ceiled_2)
		arg1.LabelOptionsStroke.Thickness = var45
		arg1.LabelRaised.Position = UDim2.fromOffset(var42 - var44 - var49, -ceiled_2 * 0.5)
		arg1.LabelRaised.Size = UDim2.fromOffset(var49, ceiled_2)
		arg1.LabelRaisedStroke.Thickness = var45
	end
	return ComputeButtonBounds_upvr(var42, var43)
end
function module_upvr_2.DonationButtonUpdateTweens(arg1, arg2, arg3) -- Line 291
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var50
	if not arg1.Cached_DonationButtonInfo or arg1.Cached_DonationButtonInfo.OptionCount <= 0 then
		local var51 = module_upvr_2
		var50 = var51.FancyButtonTheme_Disabled
		if arg3 then
		else
		end
		arg1.Disabled = false
	elseif arg3 then
		var50 = module_upvr_2.FancyButtonTheme_Enabled
		arg1.Disabled = true
	else
		var50 = module_upvr_2.FancyButtonTheme_Enabled
		arg1.Disabled = false
	end
	return module_upvr_3.FancyButtonUpdateTweens(arg1, arg2, var50)
end
function module_upvr_2.DonationButtonDestroy(arg1) -- Line 314
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	module_upvr_3.FancyButtonDestroy(arg1)
end
local Color3_new_result1_upvr = Color3.new(1, 0.866667, 0.192157)
local _ = {
	Text = Color3.new(0, 0, 0);
	Disable = nil;
	Idle = Color3_new_result1_upvr;
	Hot = Color3_new_result1_upvr:Lerp(Color3.new(1, 1, 1), 0.3);
	Press = Color3_new_result1_upvr:Lerp(Color3.new(1, 1, 1), 0.7);
}
local GothamBold_upvr = Enum.Font.GothamBold
local tbl_4_upvr = {
	Background = Color3.new(0, 0, 0);
	TextOnBackground = Color3.fromRGB(226, 226, 226);
}
local Gotham_upvr = Enum.Font.Gotham
function module_upvr_2.DonationsPageCreate(arg1, arg2) -- Line 397
	--[[ Upvalues[6]:
		[1]: module_upvr_3 (readonly)
		[2]: GothamBold_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: Gotham_upvr (readonly)
		[5]: Color3_new_result1_upvr (readonly)
		[6]: module_upvr_2 (readonly)
	]]
	local module_upvr_4 = {
		AllowButtonPress = true;
		TypicalBackground = module_upvr_3.TypicalBackgroundCreate(arg1, true);
	}
	local Background = module_upvr_4.TypicalBackground.Background
	local any_TypicalButtonCreate_result1 = module_upvr_3.TypicalButtonCreate(Background, module_upvr_3.ButtonTheme_Cancel, true)
	module_upvr_4.CloseButton = any_TypicalButtonCreate_result1
	any_TypicalButtonCreate_result1.ButtonCorner.CornerRadius = UDim.new(1, 0)
	any_TypicalButtonCreate_result1.Button.Activated:Connect(function() -- Line 413
		--[[ Upvalues[2]:
			[1]: module_upvr_4 (readonly)
			[2]: arg2 (readonly)
		]]
		if module_upvr_4.AllowButtonPress then
			arg2()
		end
	end)
	any_TypicalButtonCreate_result1.Icon = module_upvr_3.I("ImageLabel", {
		Parent = any_TypicalButtonCreate_result1.Button;
		BackgroundTransparency = 1;
		Image = "rbxassetid://9399997476";
		ImageColor3 = module_upvr_3.ButtonTheme_Cancel.Text;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(0.5, 0.5);
	})
	module_upvr_4.TitleLabel = module_upvr_3.I("TextLabel", module_upvr_3.Props_LabelScaled, {
		Parent = Background;
		Font = GothamBold_upvr;
		TextColor3 = tbl_4_upvr.TextOnBackground;
		TextXAlignment = Enum.TextXAlignment.Left;
	})
	module_upvr_4.PlayerBackground = module_upvr_3.I("Frame", {
		Parent = Background;
		ZIndex = 1;
		BorderSizePixel = 0;
		BackgroundTransparency = 0;
		BackgroundColor3 = Color3.new(0.83, 0.83, 0.83);
	})
	module_upvr_4.PlayerBackgroundCorner = module_upvr_3.I("UICorner", {
		Parent = module_upvr_4.PlayerBackground;
	})
	module_upvr_4.PlayerIcon = module_upvr_3.I("ImageLabel", {
		Parent = Background;
		ZIndex = 2;
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
	})
	module_upvr_4.PlayerIconCorner = module_upvr_3.I("UICorner", {
		Parent = module_upvr_4.PlayerIcon;
	})
	module_upvr_4.DisplayNameLabel = module_upvr_3.I("TextLabel", module_upvr_3.Props_LabelScaled, {
		Parent = Background;
		Font = GothamBold_upvr;
		TextColor3 = tbl_4_upvr.TextOnBackground;
		TextXAlignment = Enum.TextXAlignment.Left;
	})
	module_upvr_4.UserNameLabel = module_upvr_3.I("TextLabel", module_upvr_3.Props_LabelScaled, {
		Parent = Background;
		Font = Gotham_upvr;
		TextColor3 = tbl_4_upvr.TextOnBackground;
		TextXAlignment = Enum.TextXAlignment.Left;
	})
	module_upvr_4.RaisedLabel = module_upvr_3.I("TextLabel", module_upvr_3.Props_LabelScaled, {
		Parent = Background;
		Font = GothamBold_upvr;
		TextColor3 = Color3_new_result1_upvr;
		TextXAlignment = Enum.TextXAlignment.Left;
	})
	module_upvr_4.OptionsLabel = module_upvr_3.I("TextLabel", module_upvr_3.Props_LabelScaled, {
		Parent = Background;
		Font = Gotham_upvr;
		TextColor3 = tbl_4_upvr.TextOnBackground;
		TextXAlignment = Enum.TextXAlignment.Left;
	})
	module_upvr_4.OptionsBounds = module_upvr_3.TextBoundsCreate(Gotham_upvr)
	module_upvr_4.OptionsBackground = module_upvr_3.I("Frame", {
		Parent = Background;
		ZIndex = 1;
		BackgroundColor3 = tbl_4_upvr.Background;
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		Position = UDim2.fromScale(0, 1);
		AnchorPoint = Vector2.new(0, 1);
	})
	module_upvr_4.OptionsBackgroundCorner = module_upvr_3.I("UICorner", {
		Parent = module_upvr_4.OptionsBackground;
	})
	local any_TypicalButtonCreate_result1_2 = module_upvr_3.TypicalButtonCreate(Background, module_upvr_3.ButtonTheme_Cancel, true)
	module_upvr_4.RefreshButton = any_TypicalButtonCreate_result1_2
	any_TypicalButtonCreate_result1_2.ButtonCorner.CornerRadius = UDim.new(1, 0)
	any_TypicalButtonCreate_result1_2.Button.ZIndex = 3
	any_TypicalButtonCreate_result1_2.Button.Activated:Connect(function() -- Line 501
		--[[ Upvalues[2]:
			[1]: module_upvr_4 (readonly)
			[2]: module_upvr_2 (copied, readonly)
		]]
		local Cached_TargetPlayer_2 = module_upvr_4.Cached_TargetPlayer
		if Cached_TargetPlayer_2 and module_upvr_4.AllowButtonPress and module_upvr_4.Cached_AllowRefresh then
			module_upvr_2.ExternalRequestRefresh(Cached_TargetPlayer_2)
		end
	end)
	any_TypicalButtonCreate_result1_2.Icon = module_upvr_3.I("ImageLabel", {
		Parent = any_TypicalButtonCreate_result1_2.Button;
		BackgroundTransparency = 1;
		Image = "rbxassetid://17476814680";
		ImageColor3 = module_upvr_3.ButtonTheme_Cancel.Text;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(0.75, 0.75);
	})
	module_upvr_4.OptionsScroll = module_upvr_3.I("ScrollingFrame", {
		Parent = Background;
		ZIndex = 2;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ScrollingDirection = Enum.ScrollingDirection.X;
	})
	module_upvr_4.OptionsGroup = module_upvr_3.I("CanvasGroup", {
		Parent = Background;
		ZIndex = 4;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ClipsDescendants = true;
	})
	module_upvr_4.OptionsContainer = module_upvr_3.I("Frame", {
		Parent = module_upvr_4.OptionsGroup;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	})
	module_upvr_4.OptionsGradient = module_upvr_3.I("UIGradient", {
		Parent = module_upvr_4.OptionsGroup;
		Color = ColorSequence.new(Color3.new(1, 1, 1));
	})
	module_upvr_4.OptionsButtons = {}
	module_upvr_4.TutorialText = "This player has no donation options yet. You can let them know that you want to donate.. It works the same way as all other donation games!"
	module_upvr_4.TutorialLabel = module_upvr_3.I("TextLabel", module_upvr_3.Props_LabelScaled, {
		Parent = Background;
		ZIndex = 2;
		Font = Gotham_upvr;
		TextColor3 = Color3_new_result1_upvr;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		Text = module_upvr_4.TutorialText;
	})
	module_upvr_4.TutorialBounds = module_upvr_3.TextBoundsCreate(Gotham_upvr)
	return module_upvr_4
end
function module_upvr_2.DonationsPageDestroy(arg1) -- Line 582
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	arg1.TypicalBackground.Wrapper:Destroy()
	for _, v_2 in arg1.OptionsButtons do
		module_upvr_3.FancyButtonDestroy(v_2)
	end
	module_upvr_3.TypicalButtonDestroy(arg1.CloseButton)
	module_upvr_3.TypicalButtonDestroy(arg1.RefreshButton)
end
local MarketplaceService_upvr = game:GetService("MarketplaceService")
function module_upvr_2.DonationsPageUpdate(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 594
	--[[ Upvalues[5]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: module_upvr (readonly)
		[4]: MarketplaceService_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var186 = false
	if arg3 then
		if arg1.Cached_TargetPlayer ~= arg3 then
			arg1.Cached_TargetPlayer = arg3
			arg1.Cached_DonationState = nil
			var186 = true
			-- KONSTANTWARNING: GOTO [19] #14
		end
	else
		assert(arg1.Cached_TargetPlayer)
	end
	local Cached_TargetPlayer = arg1.Cached_TargetPlayer
	if var186 then
		arg1.TitleLabel.Text = "%s's Donation Page":format(Cached_TargetPlayer.DisplayName)
		arg1.PlayerIcon.Image = "rbxthumb://type=AvatarBust&id=%d&w=180&h=180":format(Cached_TargetPlayer.UserId)
		arg1.DisplayNameLabel.Text = Cached_TargetPlayer.DisplayName
		arg1.UserNameLabel.Text = '@'..Cached_TargetPlayer.Name
	end
	local any_ExternalGetDonationState_result1_2 = module_upvr_2.ExternalGetDonationState(Cached_TargetPlayer)
	if any_ExternalGetDonationState_result1_2 then
		arg1.Cached_DonationState = any_ExternalGetDonationState_result1_2
	elseif not arg1.Cached_DonationState then
		arg1.Cached_DonationState = module_upvr_2.DefaultDonationState
	end
	local Cached_DonationState_2 = arg1.Cached_DonationState
	local Options_2 = Cached_DonationState_2.Options
	local var191 = Cached_TargetPlayer
	local any_ExternalGetDonationLocalState_result1_2 = module_upvr_2.ExternalGetDonationLocalState(var191)
	if any_ExternalGetDonationLocalState_result1_2 then
		var191 = any_ExternalGetDonationLocalState_result1_2.RobuxRaised or 0
	else
		var191 = 0
	end
	if arg1.Cached_Raised ~= var191 then
		arg1.Cached_Raised = var191
		arg1.RaisedLabel.Text = "%s Robux Raised":format(module_upvr_3.FormatNumber(var191, module_upvr_3.FormatOptions_Commas))
	end
	local formatted = "%s has %d options for donating to them:":format(Cached_TargetPlayer.DisplayName, #Options_2)
	if arg1.Cached_OptionsText ~= formatted then
		arg1.Cached_OptionsText = formatted
		arg1.OptionsLabel.Text = formatted
	end
	module_upvr_3.TypicalButtonUpdate(arg2, arg1.CloseButton, module_upvr_3.ButtonTheme_Cancel, not arg1.AllowButtonPress, true)
	local var194 = any_ExternalGetDonationLocalState_result1_2
	if var194 then
		var194 = not any_ExternalGetDonationLocalState_result1_2.PendingRefresh
		if var194 then
			if module_upvr.DonationOptionsRefreshCooldown + 5 >= workspace:GetServerTimeNow() - Cached_DonationState_2.LastRefreshAtServerTime then
				var194 = false
			else
				var194 = true
			end
		end
	end
	arg1.Cached_AllowRefresh = var194
	if not not arg1.AllowButtonPress then
	end
	module_upvr_3.TypicalButtonUpdate(arg2, arg1.RefreshButton, module_upvr_3.ButtonTheme_Cancel, not arg1.Cached_AllowRefresh, true)
	local RefreshButton_3 = arg1.RefreshButton
	if any_ExternalGetDonationLocalState_result1_2 and any_ExternalGetDonationLocalState_result1_2.PendingRefresh or Cached_DonationState_2.RefreshInProgress then
		if not arg1.RefreshButtonRotation then
			arg1.RefreshButtonRotation = -20
		else
			arg1.RefreshButtonRotation += (arg2 - arg1.RefreshButtonRotationAt) * 360
		end
		arg1.RefreshButtonRotationAt = arg2
		RefreshButton_3.Icon.Rotation = arg1.RefreshButtonRotation
		RefreshButton_3.Button.Visible = true
	else
		arg1.RefreshButtonRotation = nil
		arg1.RefreshButtonRotationAt = nil
		RefreshButton_3.Icon.Rotation = -20
		RefreshButton_3.Button.Visible = arg1.Cached_AllowRefresh
	end
	local var196 = module_upvr_3.EmSize * 0.75
	local var197 = module_upvr_3.EmSize * 40
	local var198 = false
	if not var198 then
		var198 = module_upvr_3.TextBoundsUpdate(arg1.OptionsBounds, arg1.Cached_OptionsText, module_upvr_3.EmSize, var197 - var196 * 2)
	end
	var198 = var198
	local var199 = var198
	if not var199 then
		var199 = module_upvr_3.TextBoundsUpdate(arg1.TutorialBounds, arg1.TutorialText, module_upvr_3.EmSize, var197 - var196 * 2)
	end
	if arg1.Cached_EmSize ~= module_upvr_3.EmSize then
		arg1.Cached_EmSize = module_upvr_3.EmSize
	end
	for i_3, v_3 in Options_2 do
		if not arg1.OptionsButtons[i_3] then
			local any_FancyButton_TextCreate_result1_upvr_2 = module_upvr_3.FancyButton_TextCreate()
			arg1.OptionsButtons[i_3] = any_FancyButton_TextCreate_result1_upvr_2
			any_FancyButton_TextCreate_result1_upvr_2.Button.Parent = arg1.OptionsContainer
			any_FancyButton_TextCreate_result1_upvr_2.Button.Activated:Connect(function() -- Line 739
				--[[ Upvalues[5]:
					[1]: arg1 (readonly)
					[2]: any_FancyButton_TextCreate_result1_upvr_2 (readonly)
					[3]: module_upvr (copied, readonly)
					[4]: MarketplaceService_upvr (copied, readonly)
					[5]: LocalPlayer_upvr (copied, readonly)
				]]
				if arg1.AllowButtonPress then
					local Cached_Option = any_FancyButton_TextCreate_result1_upvr_2.Cached_Option
					if Cached_Option and not any_FancyButton_TextCreate_result1_upvr_2.Disabled then
						if Cached_Option.Kind == module_upvr.DonationOptionKind.clothing then
							MarketplaceService_upvr:PromptPurchase(LocalPlayer_upvr, Cached_Option.Id)
							return
						end
						if Cached_Option.Kind == module_upvr.DonationOptionKind.gamepass then
							MarketplaceService_upvr:PromptGamePassPurchase(LocalPlayer_upvr, Cached_Option.Id)
						end
					end
				end
			end)
			if arg4 and arg5 then
				module_upvr_3.CO_AppendWithFadeTween(arg4, arg5, any_FancyButton_TextCreate_result1_upvr_2.Button)
			end
		end
		any_FancyButton_TextCreate_result1_upvr_2 = arg1.OptionsButtons[i_3]
		local var203 = any_FancyButton_TextCreate_result1_upvr_2
		if i_3 == 1 then
		end
		if var203.Cached_Option ~= v_3 then
			var203.Cached_Option = v_3
			if i_3 == 1 then
			end
			local formatted_2 = module_upvr_3.RobuxUnicode.."%s":format(module_upvr_3.FormatNumber(v_3.Price, module_upvr_3.FormatOptions_Commas))
			var203.Label.Text = formatted_2
			var203.Cached_Text = formatted_2
		end
		if module_upvr_3.TextBoundsUpdate(var203.LabelBounds, module_upvr_3.RobuxUnicode.."000", module_upvr_3.EmSize * 2, math.huge) then
			local var205 = true
		end
		var203.Disabled = not arg1.AllowButtonPress
		module_upvr_3.FancyButtonUpdateTweens(var203, arg2, module_upvr_2.FancyButtonTheme_Enabled)
	end
	for i_4 = #arg1.OptionsButtons, #Options_2 + 1, -1 do
		local var206 = arg1.OptionsButtons[i_4]
		var203 = nil
		arg1.OptionsButtons[i_4] = var203
		if arg4 then
			var203 = module_upvr_3
			var203 = arg4
			var203.CO_Clean(var203, var206.Button)
		end
		var203 = module_upvr_3
		var203 = var206
		var203.FancyButtonDestroy(var203)
	end
	if arg1.OptionsButtons[1] == nil then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if arg1.Cached_HasOptions ~= true then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.Cached_HasOptions = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not true then
			arg1.OptionsScroll.Visible = false
			arg1.OptionsGroup.Visible = false
			arg1.TutorialLabel.Visible = true
		else
			arg1.OptionsScroll.Visible = true
			arg1.OptionsGroup.Visible = true
			arg1.TutorialLabel.Visible = false
			local var208
		end
	end
	if var205 then
		local var209 = var196
		local CloseButton = arg1.CloseButton
		local var211 = module_upvr_3.EmSize * 2
		var208 = var196 * 0.5
		var203 = var197 - var208 - var211
		CloseButton.Button.Position = UDim2.fromOffset(var203, var196 * 0.5)
		var203 = var211
		CloseButton.Button.Size = UDim2.fromOffset(var203, var211)
		local var212 = module_upvr_3.EmSize * 2
		var203 = -var196 * 2
		var208 = var212
		arg1.TitleLabel.Size = UDim2.new(1, var203, 0, var208)
		var203 = var209
		arg1.TitleLabel.Position = UDim2.fromOffset(var196, var203)
		local var213 = (var209) + (var212 + var196 * 2)
		local var214 = module_upvr_3.EmSize * 1.5
		local EmSize_2 = module_upvr_3.EmSize
		var203 = module_upvr_3
		local var216 = var203.EmSize * 1.5
		var208 = var214 + var196 * 0.5
		var203 = var208 + EmSize_2 + var196
		var203 = arg1.PlayerBackground
		var208 = var203 + var216
		var203.Size = UDim2.fromOffset(var208, var203 + var216)
		var203 = arg1.PlayerBackground
		var208 = var196
		var203.Position = UDim2.fromOffset(var208, var213)
		var203 = arg1.PlayerIcon
		var208 = var203 + var216
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var203.Size = UDim2.fromOffset(var208, var203 + var216)
		var203 = arg1.PlayerIcon
		var208 = var196
		var203.Position = UDim2.fromOffset(var208, var213)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var203 = var203 + var216 + var196 * 2
		local var217 = var203
		var208 = 0
		local udim_2 = UDim.new(var208, module_upvr_3.EmSize * 0.5)
		var208 = arg1.PlayerBackgroundCorner
		var208.CornerRadius = udim_2
		var208 = arg1.PlayerIconCorner
		var208.CornerRadius = udim_2
		var208 = arg1.DisplayNameLabel
		var208.Size = UDim2.new(1, -var217 - var196, 0, var214)
		var208 = arg1.DisplayNameLabel
		var208.Position = UDim2.fromOffset(var217, var213)
		var208 = var214 + var196 * 0.25
		local var219 = var213 + var208
		var208 = arg1.UserNameLabel
		var208.Size = UDim2.new(1, -var217 - var196, 0, EmSize_2)
		var208 = arg1.UserNameLabel
		var208.Position = UDim2.fromOffset(var217, var219)
		var208 = EmSize_2 + var196
		local var220 = var219 + var208
		var208 = arg1.RaisedLabel
		var208.Size = UDim2.new(1, -var217 - var196, 0, var216)
		var208 = arg1.RaisedLabel
		var208.Position = UDim2.fromOffset(var217, var220)
		var208 = var216 + var196 * 2
		local var221 = var220 + var208
		var217 = arg1.OptionsBounds
		arg1.OptionsLabel.Size = UDim2.fromOffset(arg1.OptionsBounds.X, var217.Y)
		arg1.OptionsLabel.Position = UDim2.fromOffset(var196, var221)
		local var222 = var221 + arg1.OptionsBounds.Y
		var217 = module_upvr_3.EmSize
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local var223 = module_upvr_3.EmSize * 2 + var217 * 2
		var217 = 0
		var208 = module_upvr_3.EmSize
		var208 = module_upvr_3.EmSize
		var217 = var208 * 15 / 90
		local var224 = var217
		var208 = module_upvr_3.EmSize * 5
		var208 = 0
		local var225 = var196 + var224
		for i_5, v_4 in arg1.OptionsButtons do
			local var226 = v_4.LabelBounds.X + var196 * 2
			v_4.Button.Size = UDim2.fromOffset(var226, var223)
			v_4.Label.Size = UDim2.fromOffset(v_4.LabelBounds.X, v_4.LabelBounds.Y)
			v_4.LabelStroke.Thickness = var208 / 36
			module_upvr_3.FancyButtonUpdateSize(v_4, UDim.new(var217, var208 * 0.3), var224)
			if 1 < i_5 then
				var208 += var196
			end
			var208 += var224
			v_4.Button.Position = UDim2.fromOffset(var208, var225)
			var208 += var226 + var224
		end
		local var227 = (var225) + (var223 + var224 + var196 + module_upvr_3.ScrollBarThickness)
		local var228 = var197 - var196 * 2
		arg1.Cached_ScrollSizeX = var228
		arg1.Cached_OptionsPosX = var208
		arg1.OptionsScroll.ScrollBarThickness = module_upvr_3.ScrollBarThickness
		arg1.OptionsScroll.Size = UDim2.fromOffset(var228, var227)
		arg1.OptionsScroll.Position = UDim2.fromOffset(var196, var222)
		arg1.OptionsScroll.CanvasSize = UDim2.fromOffset(var208, 0)
		arg1.OptionsGroup.Size = UDim2.fromOffset(var228, var227)
		arg1.OptionsGroup.Position = UDim2.fromOffset(var196, var222)
		arg1.OptionsContainer.Size = UDim2.fromOffset(var208, var227)
		var224 = arg1.TutorialBounds
		var224 = var227
		local maximum_3 = math.max(var224, var196 + var224.Y)
		var224 = arg1.TutorialBounds.Y
		var224 = arg1.TutorialLabel
		var224.Size = UDim2.fromOffset(arg1.TutorialBounds.X, arg1.TutorialBounds.Y)
		var224 = arg1.TutorialLabel
		var224.Position = UDim2.fromOffset(var196, var222 + maximum_3 - var224)
		local var230 = var222 + maximum_3
		var224 = module_upvr_3.EmSize * 1.5
		local var231 = var224
		local var232 = var230 - module_upvr_3.ScrollBarThickness * 0.5 - var231 * 0.5
		arg1.RefreshButton.Button.Position = UDim2.fromOffset(var197 - var196 - var231, var232)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.RefreshButton.Button.Size = UDim2.fromOffset(var231, var231)
		var231 = var196
		local var233 = var230 + math.max(var231, var232 + var231 - var230)
		var231 = module_upvr_3
		var231 = arg1.TypicalBackground
		var231.TypicalBackgroundUpdate(var231, var197, var233)
		var231 = UDim2.new(1, 0, 0, var233 - var222)
		arg1.OptionsBackground.Size = var231
		var231 = UDim.new(0, module_upvr_3.CornerDim)
		arg1.OptionsBackgroundCorner.CornerRadius = var231
	end
	local CanvasPosition_2 = arg1.OptionsScroll.CanvasPosition
	var231 = CanvasPosition_2.Y
	arg1.OptionsContainer.Position = UDim2.fromOffset(-CanvasPosition_2.X, -var231)
	local Cached_ScrollSizeX_2 = arg1.Cached_ScrollSizeX
	local Cached_OptionsPosX = arg1.Cached_OptionsPosX
	local RefreshButton_2 = arg1.RefreshButton
	var231 = (CanvasPosition_2.X + Cached_ScrollSizeX_2) / Cached_OptionsPosX
	var231 = var196 + math.clamp(var231, 0, 1) * Cached_ScrollSizeX_2
	if RefreshButton_2.Button.Position.X.Offset < var231 then
		RefreshButton_2.Button.BackgroundTransparency = 0.5
		RefreshButton_2.Icon.ImageTransparency = 0.5
	else
		RefreshButton_2.Button.BackgroundTransparency = 0
		RefreshButton_2.Icon.ImageTransparency = 0
	end
	local tbl_5 = {}
	local var239 = Cached_ScrollSizeX_2 * 0.1
	var231 = CanvasPosition_2.X
	local var240 = var231
	if var240 <= 0 then
		tbl_5[#tbl_5 + 1] = NumberSequenceKeypoint.new(0, 0)
	else
		local var241 = math.clamp(var240 / var239, 0, 1) * 0.1
		if var241 <= 0 or var241 * Cached_ScrollSizeX_2 <= 1 then
			tbl_5[#tbl_5 + 1] = NumberSequenceKeypoint.new(0, 0)
		else
			tbl_5[#tbl_5 + 1] = NumberSequenceKeypoint.new(0, 1)
			tbl_5[#tbl_5 + 1] = NumberSequenceKeypoint.new(var241, 0)
		end
	end
	local var242 = CanvasPosition_2.X + Cached_ScrollSizeX_2
	if Cached_OptionsPosX <= var242 then
		tbl_5[#tbl_5 + 1] = NumberSequenceKeypoint.new(1, 0)
	else
		local clamped_2 = math.clamp((Cached_OptionsPosX - var242) / var239, 0, 1)
		local var244 = 1 - clamped_2 * 0.1
		if 1 <= var244 or clamped_2 * 0.1 * Cached_ScrollSizeX_2 <= 1 then
			tbl_5[#tbl_5 + 1] = NumberSequenceKeypoint.new(1, 0)
		else
			tbl_5[#tbl_5 + 1] = NumberSequenceKeypoint.new(var244, 0)
			tbl_5[#tbl_5 + 1] = NumberSequenceKeypoint.new(1, 1)
		end
	end
	arg1.OptionsGradient.Transparency = NumberSequence.new(tbl_5)
	if not var203.Button then
	end
	return var205, arg1.CloseButton.Button, false
end
local tbl_upvr = {
	QueuedNotificationStates = {};
	UI_Notification = nil;
}
local TextChatService_upvr = game:GetService("TextChatService")
function module_upvr_2.ReceiveNotification(arg1) -- Line 1071
	--[[ Upvalues[6]:
		[1]: TextChatService_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: tbl_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 1072
		--[[ Upvalues[7]:
			[1]: TextChatService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: module_upvr (copied, readonly)
			[4]: module_upvr_2 (copied, readonly)
			[5]: module_upvr_3 (copied, readonly)
			[6]: LocalPlayer_upvr (copied, readonly)
			[7]: tbl_upvr (copied, readonly)
		]]
		local var250
		if arg1.Global then
			var250 = "[Global]: "
		else
			var250 = ""
		end
		var250 = "<font color='#%s'>%s</font>%s donated %s <font color='#%s'>%s%s</font>":format(Color3.new(0.666667, 0.666667, 0.666667):ToHex(), var250, module_upvr.FormatDNPlayer(arg1.SenderDisplayName, arg1.SenderName, arg1.SenderId), module_upvr.FormatDNPlayer(arg1.ReceiverDisplayName, arg1.ReceiverName, arg1.ReceiverId), module_upvr_2.DonationStatColor:ToHex(), module_upvr_3.RobuxUnicode, module_upvr_3.FormatNumber(arg1.Amount, module_upvr_3.FormatOptions_Commas))
		TextChatService_upvr:WaitForChild("TextChannels"):WaitForChild("RBXGeneral"):DisplaySystemMessage(var250)
		var250 = LocalPlayer_upvr
		if arg1.ReceiverId == var250.UserId then
			var250 = #tbl_upvr.QueuedNotificationStates
			var250 = {}
			var250.Notification = arg1
			tbl_upvr.QueuedNotificationStates[var250 + 1] = var250
		end
	end)
	if not pcall_result1 then
		local tbl_2 = {}
		for i_6, v_5 in arg1 do
			if not tbl_2[1] then
				tbl_2[#tbl_2 + 1] = '\n'
			end
			tbl_2[#tbl_2 + 1] = tostring(i_6)
			tbl_2[#tbl_2 + 1] = ": "
			tbl_2[#tbl_2 + 1] = type(v_5)
			tbl_2[#tbl_2 + 1] = ';'
			tbl_2[#tbl_2 + 1] = '\n'
		end
		error("Failed to process donation notification with fields: {%s} and message: %s":format(table.concat(tbl_2), tostring(pcall_result2)))
	end
end
local PlayerGui_upvr = LocalPlayer_upvr:WaitForChild("PlayerGui")
function module_upvr_2.UpdateNotifications(arg1) -- Line 1108
	--[[ Upvalues[6]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: PlayerGui_upvr (readonly)
		[5]: GothamBold_upvr (readonly)
		[6]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [77] 56. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [77] 56. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 61 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [77.1]
	if not nil then
	else
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [77.2]
		if not nil then
		end
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [77.6]
		local function INLINED() -- Internal function, doesn't exist in bytecode
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [77.4289790024]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return nil < arg1
		end
		if nil or INLINED() then
		else
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTWARNING: GOTO [0] #1
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 61 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [79] 58. Error Block 55 start (CF ANALYSIS FAILED)
	local _1 = tbl_upvr.QueuedNotificationStates[1]
	if not tbl_upvr.UI_Notification and _1 then
		local tbl_upvr_2 = {}
		tbl_upvr.UI_Notification = tbl_upvr_2
		tbl_upvr_2.ScreenGui = module_upvr_3.I("ScreenGui", module_upvr_3.Props_ScreenGui, {
			Parent = PlayerGui_upvr;
			Name = "DonationNotification";
			DisplayOrder = 100;
		})
		tbl_upvr_2.Label = module_upvr_3.I("TextButton", module_upvr_3.Props_LabelScaled, {
			Parent = tbl_upvr_2.ScreenGui;
			Font = GothamBold_upvr;
			TextColor3 = Color3.new(1, 1, 1);
			AnchorPoint = Vector2.new(0.5, 0);
			AutoButtonColor = false;
			RichText = true;
			TextXAlignment = Enum.TextXAlignment.Center;
			TextYAlignment = Enum.TextYAlignment.Center;
		})
		tbl_upvr_2.Label.Activated:Connect(function() -- Line 1159
			--[[ Upvalues[1]:
				[1]: tbl_upvr_2 (readonly)
			]]
			local Cached_NotificationState = tbl_upvr_2.Cached_NotificationState
			if Cached_NotificationState then
				if Cached_NotificationState.DismissAt <= os.clock() then
					Cached_NotificationState.Dismissed = true
				end
			end
		end)
		tbl_upvr_2.LabelBounds = module_upvr_3.TextBoundsCreate(GothamBold_upvr, true)
		tbl_upvr_2.CachedOpacities = module_upvr_3.CO_Create(tbl_upvr_2.ScreenGui)
	end
	tbl_upvr_2 = tbl_upvr.UI_Notification
	local var261
	if tbl_upvr_2 then
		tbl_upvr_2 = tbl_upvr.UI_Notification
		local var262 = tbl_upvr_2
		if not _1 then
			var262.ScreenGui:Destroy()
			var261 = nil
			tbl_upvr.UI_Notification = var261
			return
		end
		var261 = _1.FadeTween
		assert(var261)
		if var262.Cached_NotificationState ~= _1 then
			var262.Cached_NotificationState = _1
			local Notification = _1.Notification
			var261 = "%s donated you <font color='#%s'>%s%s</font>":format(module_upvr.FormatDNPlayer(Notification.SenderDisplayName, Notification.SenderName, Notification.SenderId), module_upvr_2.DonationStatColor:ToHex(), module_upvr_3.RobuxUnicode, module_upvr_3.FormatNumber(Notification.Amount, module_upvr_3.FormatOptions_Commas))
			var262.Cached_LabelTextBase = var261
		end
		local formatted_3 = "<stroke color='#000000' joins='round' thickness='%.2f' transparency='%.2f'>%s</stroke>":format(module_upvr_3.EmSize * 0.2, _1.FadeTween.ValueCurrent, var262.Cached_LabelTextBase)
		var261 = var262.Cached_LabelText
		if var261 ~= formatted_3 then
			var262.Cached_LabelText = formatted_3
			var261 = var262.Label
			var261.Text = formatted_3
		end
		var261 = module_upvr_3.TextBoundsUpdate(var262.LabelBounds, var262.Cached_LabelText, module_upvr_3.EmSize * 2, var262.ScreenGui.AbsoluteSize.X * 0.7)
		if var261 then
			var261 = var262.Label
			var261.Size = UDim2.fromOffset(var262.LabelBounds.X, var262.LabelBounds.Y)
		end
		var261 = false
		if var262.Cached_EmSize ~= module_upvr_3.EmSize then
			var262.Cached_EmSize = module_upvr_3.EmSize
			var261 = true
		end
		if var262.Cached_FadeValue ~= _1.FadeTween.ValueCurrent then
			var262.Cached_FadeValue = _1.FadeTween.ValueCurrent
			var261 = true
			module_upvr_3.CO_ApplyTransparency(var262.CachedOpacities, var262.Cached_FadeValue)
		end
		if var261 then
			var262.Label.Position = UDim2.new(0.5, 0, 0.3, _1.FadeTween.ValueCurrent * var262.LabelBounds.Y)
		end
	end
	-- KONSTANTERROR: [79] 58. Error Block 55 end (CF ANALYSIS FAILED)
end
return module_upvr_2