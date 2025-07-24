-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:20
-- Luau version 6, Types version 3
-- Time taken: 0.001482 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)
local useIsGamepad_upvr = RoactUtils.Hooks.useIsGamepad
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local CloseOpenPrompt_upvr = require(script.Parent.Parent.Actions.CloseOpenPrompt)
local React_upvr = require(CorePackages.Packages.React)
local Overlay_upvr = UIBlox.App.Dialog.Overlay
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local icons_controls_keys_xboxA_upvr = UIBlox.App.ImageSet.Images["icons/controls/keys/xboxA"]
return function(arg1) -- Line 29
	--[[ Upvalues[9]:
		[1]: useIsGamepad_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: CloseOpenPrompt_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: Overlay_upvr (readonly)
		[6]: InteractiveAlert_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
		[8]: RobloxTranslator_upvr (readonly)
		[9]: icons_controls_keys_xboxA_upvr (readonly)
	]]
	local var6_result1_upvr = useDispatch_upvr()
	local module = {
		Overlay = React_upvr.createElement(Overlay_upvr, {
			showGradient = false;
			ZIndex = 3;
		});
	}
	local tbl_5 = {}
	local tbl_3 = {
		title = "Something Went Wrong";
		bodyText = "Your creation could not be created due to an error. A report has been sent to the developer of this experience.";
		screenSize = arg1.screenSize;
	}
	local tbl = {}
	local tbl_6 = {}
	local tbl_4 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl_2 = {
		onActivated = function() -- Line 33
			--[[ Upvalues[2]:
				[1]: var6_result1_upvr (readonly)
				[2]: CloseOpenPrompt_upvr (copied, readonly)
			]]
			var6_result1_upvr(CloseOpenPrompt_upvr())
		end;
		text = RobloxTranslator_upvr:FormatByKey("InGame.CommonUI.Button.Ok");
	}
	local var26
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var26 = icons_controls_keys_xboxA_upvr
		return var26
	end
	if not useIsGamepad_upvr() or not INLINED() then
		var26 = nil
	end
	tbl_2.inputIcon = var26
	tbl_4.props = tbl_2
	tbl_6[1] = tbl_4
	tbl.buttons = tbl_6
	tbl_3.buttonStackInfo = tbl
	tbl_5.InteractiveAlert = React_upvr.createElement(InteractiveAlert_upvr, tbl_3)
	module.InteractiveAlertWrapper = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		ZIndex = 4;
	}, tbl_5)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		ZIndex = 3;
	}, module)
end