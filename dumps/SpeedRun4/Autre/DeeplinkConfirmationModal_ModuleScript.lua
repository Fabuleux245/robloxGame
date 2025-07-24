-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:56
-- Luau version 6, Types version 3
-- Time taken: 0.002990 seconds

local Parent = script.Parent.Parent.Parent
local UIBlox = require(Parent.UIBlox)
local React_upvr = require(Parent.React)
local RobloxTranslator_upvr = require(Parent.RobloxTranslator)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableToastNotificationsDeeplinkConfirmationModalHeightFix", false)
local GuiService_upvr = game:GetService("GuiService")
local ReactRoblox_upvr = require(Parent.ReactRoblox)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 22
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: RobloxTranslator_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: GuiService_upvr (readonly)
		[5]: ReactRoblox_upvr (readonly)
		[6]: InteractiveAlert_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(Vector2.new(800, 600))
	local module = {}
	local var14 = true
	module.Active = var14
	if arg1.backgroundTransparency then
		var14 = arg1.backgroundTransparency
	else
		var14 = 0.5
	end
	module.BackgroundTransparency = var14
	var14 = Color3.new(0, 0, 0)
	module.BackgroundColor3 = var14
	var14 = UDim2.new
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [69] #53
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [68] 52. Error Block 22 start (CF ANALYSIS FAILED)
	var14 = var14(1, 0, 1, 0)
	module.Size = var14
	var14 = ReactRoblox_upvr.Change.AbsoluteSize
	module[var14] = function(arg1_2) -- Line 42
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1_2.AbsoluteSize)
	end
	if game_DefineFastFlag_result1_upvr then
		var14 = UDim2.fromOffset(0, -GuiService_upvr.TopbarInset.Height)
	else
		var14 = nil
	end
	module.Position = var14
	var14 = {}
	local tbl_2 = {
		screenSize = any_useState_result1;
		title = RobloxTranslator_upvr:FormatByKey("Notifications.ToastNotifications.Title.LeavingExperience");
		bodyText = RobloxTranslator_upvr:FormatByKey("Notifications.ToastNotifications.Label.LeaveExperienceConfirmation");
	}
	local tbl_5 = {}
	local tbl_4 = {}
	local tbl = {}
	local tbl_3 = {}
	local function onActivated() -- Line 57
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.closeCallback(false)
	end
	tbl_3.onActivated = onActivated
	tbl_3.text = RobloxTranslator_upvr:FormatByKey("InGame.InspectMenu.Action.Cancel")
	tbl.props = tbl_3
	tbl_4[1] = tbl
	tbl_4[2] = {
		buttonType = ButtonType_upvr.PrimarySystem;
		props = {
			onActivated = function() -- Line 66, Named "onActivated"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.closeCallback(true)
			end;
			text = RobloxTranslator_upvr:FormatByKey("InGame.InspectMenu.Action.Confirm");
		};
	}
	tbl_5.buttons = tbl_4
	tbl_2.buttonStackInfo = tbl_5
	var14.Alert = React_upvr.createElement(InteractiveAlert_upvr, tbl_2)
	do
		return React_upvr.createElement("Frame", module, var14)
	end
	-- KONSTANTERROR: [68] 52. Error Block 22 end (CF ANALYSIS FAILED)
end