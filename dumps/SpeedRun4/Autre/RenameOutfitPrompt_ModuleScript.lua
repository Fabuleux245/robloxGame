-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:58
-- Luau version 6, Types version 3
-- Time taken: 0.003568 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("RenameOutfitNamePrompt")
any_extend_result1.validateProps = t.strictInterface({
	outfitId = t.integer;
	outfitName = t.string;
	screenSize = t.Vector2;
	signalRenameOutfitPermissionDenied = t.callback;
	performRenameOutfit = t.callback;
	showCustomOutfitNames = t.boolean;
})
function any_extend_result1.init(arg1) -- Line 43
	arg1:setState({
		outfitName = "";
		alertPosition = UDim2.fromScale(0.5, 0.5);
	})
	function arg1.textUpdated(arg1_2) -- Line 49
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.outfitName = arg1_2
		arg1:setState(tbl)
	end
	function arg1.confirmRenameOutfit() -- Line 55
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.performRenameOutfit(arg1.state.outfitName)
	end
end
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local PromptWithTextField_upvr = require(Parent_2.Prompts.PromptWithTextField)
function any_extend_result1.render(arg1) -- Line 60
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
		[5]: PromptWithTextField_upvr (readonly)
	]]
	if not arg1.props.showCustomOutfitNames then
		return Roact_upvr.createElement(InteractiveAlert_upvr, {
			title = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.DisabledRenameOutfitPromptTitle");
			bodyText = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.DisabledRenameOutfitPromptText");
			buttonStackInfo = {
				buttons = {{
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						onActivated = arg1.props.signalRenameOutfitPermissionDenied;
						text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.DisabledRenameOutfitPromptOkay");
					};
					isDefaultChild = true;
				}};
			};
			position = UDim2.fromScale(0.5, 0.5);
			screenSize = arg1.props.screenSize;
			isMiddleContentFocusable = false;
		})
	end
	local module = {
		fieldText = arg1.state.outfitName;
		onFieldTextUpdated = arg1.textUpdated;
		title = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.RenameOutfitNamePromptTitle");
		bodyText = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.RenameOutfitPromptText", {
			RBX_NAME = arg1.props.outfitName;
		});
	}
	local tbl_2 = {}
	local tbl_4 = {}
	local tbl_5 = {}
	local var29 = ButtonType_upvr
	tbl_5.buttonType = var29.PrimarySystem
	local tbl_3 = {}
	if arg1.state.outfitName ~= "" then
		var29 = false
	else
		var29 = true
	end
	tbl_3.isDisabled = var29
	tbl_3.onActivated = arg1.confirmRenameOutfit
	tbl_3.text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptYes")
	tbl_5.props = tbl_3
	tbl_5.isDefaultChild = false
	tbl_4[1] = {
		props = {
			onActivated = arg1.props.signalRenameOutfitPermissionDenied;
			text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptNo");
		};
		isDefaultChild = true;
	}
	tbl_4[2] = tbl_5
	tbl_2.buttons = tbl_4
	module.buttonStackInfo = tbl_2
	return Roact_upvr.createElement(PromptWithTextField_upvr, module)
end
local SignalRenameOutfitPermissionDenied_upvr = require(Parent.Thunks.SignalRenameOutfitPermissionDenied)
local PerformRenameOutfit_upvr = require(Parent.Thunks.PerformRenameOutfit)
return require(Parent.AvatarEditorPromptsPolicy).connect(function(arg1, arg2) -- Line 141
	return {
		showCustomOutfitNames = arg1.getCustomOutfitNames();
	}
end)(require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 119, Named "mapStateToProps"
	return {
		outfitId = arg1.promptInfo.outfitId;
		outfitName = arg1.promptInfo.outfitName;
		screenSize = arg1.screenSize;
	}
end, function(arg1) -- Line 127, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: SignalRenameOutfitPermissionDenied_upvr (readonly)
		[2]: PerformRenameOutfit_upvr (readonly)
	]]
	return {
		signalRenameOutfitPermissionDenied = function() -- Line 129, Named "signalRenameOutfitPermissionDenied"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SignalRenameOutfitPermissionDenied_upvr (copied, readonly)
			]]
			return arg1(SignalRenameOutfitPermissionDenied_upvr)
		end;
		performRenameOutfit = function(arg1_3) -- Line 133, Named "performRenameOutfit"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: PerformRenameOutfit_upvr (copied, readonly)
			]]
			return arg1(PerformRenameOutfit_upvr(arg1_3))
		end;
	}
end)(any_extend_result1))