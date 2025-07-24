-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:55
-- Luau version 6, Types version 3
-- Time taken: 0.002375 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("CreateOutfitPrompt")
any_extend_result1.validateProps = t.strictInterface({
	humanoidDescription = t.instanceOf("HumanoidDescription");
	rigType = t.enum(Enum.HumanoidRigType);
	createOutfitConfirmed = t.callback;
	signalCreateOutfitPermissionDenied = t.callback;
	performCreateOutfit = t.callback;
	showCustomOutfitNames = t.boolean;
})
local PromptWithAvatarViewport_upvr = require(Parent.Prompts.PromptWithAvatarViewport)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ButtonType_upvr = require(CorePackages.Packages.UIBlox).App.Button.Enum.ButtonType
function any_extend_result1.render(arg1) -- Line 41
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: PromptWithAvatarViewport_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
	]]
	local var11
	if arg1.props.showCustomOutfitNames then
		var11 = arg1.props.createOutfitConfirmed
	else
		var11 = arg1.props.performCreateOutfit
	end
	return Roact_upvr.createElement(PromptWithAvatarViewport_upvr, {
		humanoidDescription = arg1.props.humanoidDescription;
		rigType = arg1.props.rigType;
		title = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptTitle");
		bodyText = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptText");
		buttonStackInfo = {
			buttons = {{
				props = {
					onActivated = arg1.props.signalCreateOutfitPermissionDenied;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptNo");
				};
				isDefaultChild = true;
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = var11;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptYes");
				};
				isDefaultChild = false;
			}};
		};
	})
end
local SignalCreateOutfitPermissionDenied_upvr = require(Parent_2.Thunks.SignalCreateOutfitPermissionDenied)
local CreateOutfitConfirmed_upvr = require(Parent_2.Actions.CreateOutfitConfirmed)
local PerformCreateOutfit_upvr = require(Parent_2.Thunks.PerformCreateOutfit)
return require(Parent_2.AvatarEditorPromptsPolicy).connect(function(arg1, arg2) -- Line 102
	return {
		showCustomOutfitNames = arg1.getCustomOutfitNames();
	}
end)(require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 77, Named "mapStateToProps"
	return {
		humanoidDescription = arg1.promptInfo.humanoidDescription;
		rigType = arg1.promptInfo.rigType;
	}
end, function(arg1) -- Line 84, Named "mapDispatchToProps"
	--[[ Upvalues[3]:
		[1]: SignalCreateOutfitPermissionDenied_upvr (readonly)
		[2]: CreateOutfitConfirmed_upvr (readonly)
		[3]: PerformCreateOutfit_upvr (readonly)
	]]
	return {
		signalCreateOutfitPermissionDenied = function() -- Line 86, Named "signalCreateOutfitPermissionDenied"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SignalCreateOutfitPermissionDenied_upvr (copied, readonly)
			]]
			return arg1(SignalCreateOutfitPermissionDenied_upvr)
		end;
		createOutfitConfirmed = function() -- Line 90, Named "createOutfitConfirmed"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CreateOutfitConfirmed_upvr (copied, readonly)
			]]
			return arg1(CreateOutfitConfirmed_upvr())
		end;
		performCreateOutfit = function() -- Line 94, Named "performCreateOutfit"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: PerformCreateOutfit_upvr (copied, readonly)
			]]
			return arg1(PerformCreateOutfit_upvr(""))
		end;
	}
end)(any_extend_result1))