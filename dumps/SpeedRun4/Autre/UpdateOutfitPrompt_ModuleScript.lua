-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:00
-- Luau version 6, Types version 3
-- Time taken: 0.002511 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("UpdateOutfitPrompt")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	humanoidDescription = t.instanceOf("HumanoidDescription");
	rigType = t.enum(Enum.HumanoidRigType);
	outfitName = t.string;
	signalUpdateOutfitPermissionDenied = t.callback;
	performUpdateOutfit = t.callback;
	showCustomOutfitNames = t.boolean;
})
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local PromptWithAvatarViewport_upvr = require(Parent.Prompts.PromptWithAvatarViewport)
local ButtonType_upvr = require(CorePackages.Packages.UIBlox).App.Button.Enum.ButtonType
function any_extend_result1.render(arg1) -- Line 45
	--[[ Upvalues[4]:
		[1]: RobloxTranslator_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: PromptWithAvatarViewport_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
	]]
	local var11
	if arg1.props.showCustomOutfitNames then
		var11 = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptText", {
			RBX_NAME = arg1.props.outfitName;
		})
	else
		var11 = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptTextNoOutfitName")
	end
	return Roact_upvr.createElement(PromptWithAvatarViewport_upvr, {
		humanoidDescription = arg1.props.humanoidDescription;
		rigType = arg1.props.rigType;
		title = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptTitle");
		bodyText = var11;
		buttonStackInfo = {
			buttons = {{
				props = {
					onActivated = arg1.props.signalUpdateOutfitPermissionDenied;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptNo");
				};
				isDefaultChild = true;
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = arg1.props.performUpdateOutfit;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptYes");
				};
				isDefaultChild = false;
			}};
		};
	})
end
local SignalUpdateOutfitPermissionDenied_upvr = require(Parent_2.Thunks.SignalUpdateOutfitPermissionDenied)
local PerformUpdateOutfit_upvr = require(Parent_2.Thunks.PerformUpdateOutfit)
return require(Parent_2.AvatarEditorPromptsPolicy).connect(function(arg1, arg2) -- Line 106
	return {
		showCustomOutfitNames = arg1.getCustomOutfitNames();
	}
end)(require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 83, Named "mapStateToProps"
	return {
		screenSize = arg1.screenSize;
		humanoidDescription = arg1.promptInfo.humanoidDescription;
		rigType = arg1.promptInfo.rigType;
		outfitName = arg1.promptInfo.outfitName;
	}
end, function(arg1) -- Line 92, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: SignalUpdateOutfitPermissionDenied_upvr (readonly)
		[2]: PerformUpdateOutfit_upvr (readonly)
	]]
	return {
		signalUpdateOutfitPermissionDenied = function() -- Line 94, Named "signalUpdateOutfitPermissionDenied"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SignalUpdateOutfitPermissionDenied_upvr (copied, readonly)
			]]
			return arg1(SignalUpdateOutfitPermissionDenied_upvr)
		end;
		performUpdateOutfit = function() -- Line 98
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: PerformUpdateOutfit_upvr (copied, readonly)
			]]
			return arg1(PerformUpdateOutfit_upvr)
		end or nil;
	}
end)(any_extend_result1))