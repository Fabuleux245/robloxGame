-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:56
-- Luau version 6, Types version 3
-- Time taken: 0.002927 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("DeleteOutfitPrompt")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	outfitId = t.integer;
	outfitName = t.string;
	performDeleteOutfit = t.callback;
	signalDeleteOutfitPermissionDenied = t.callback;
	showCustomOutfitNames = t.boolean;
})
local LoadableImage_upvr = UIBlox.App.Loading.LoadableImage
function any_extend_result1.init(arg1) -- Line 43
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LoadableImage_upvr (readonly)
	]]
	function arg1.renderAlertMiddleContent() -- Line 44
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: LoadableImage_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 150);
		}, {
			Thumnail = Roact_upvr.createElement(LoadableImage_upvr, {
				Position = UDim2.fromScale(0.5, 0);
				AnchorPoint = Vector2.new(0.5, 0);
				Size = UDim2.fromOffset(150, 150);
				BackgroundTransparency = 1;
				Image = "rbxthumb://type=Outfit&id="..arg1.props.outfitId.."&w=150&h=150";
				useShimmerAnimationWhileLoading = true;
				showFailedStateWhenLoadingFailed = true;
			});
		})
	end
end
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.render(arg1) -- Line 64
	--[[ Upvalues[4]:
		[1]: RobloxTranslator_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: InteractiveAlert_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
	]]
	local var16
	if arg1.props.showCustomOutfitNames then
		var16 = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptText", {
			RBX_NAME = arg1.props.outfitName;
		})
	else
		var16 = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptTextNoName")
	end
	return Roact_upvr.createElement(InteractiveAlert_upvr, {
		title = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptTitle");
		bodyText = var16;
		buttonStackInfo = {
			buttons = {{
				props = {
					onActivated = arg1.props.signalDeleteOutfitPermissionDenied;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptNo");
				};
				isDefaultChild = true;
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = arg1.props.performDeleteOutfit;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptYes");
				};
				isDefaultChild = false;
			}};
		};
		position = UDim2.fromScale(0.5, 0.5);
		screenSize = arg1.props.screenSize;
		middleContent = arg1.renderAlertMiddleContent;
		isMiddleContentFocusable = false;
	})
end
local SignalDeleteOutfitPermissionDenied_upvr = require(Parent.Thunks.SignalDeleteOutfitPermissionDenied)
local PerformDeleteOutfit_upvr = require(Parent.Thunks.PerformDeleteOutfit)
return require(Parent.AvatarEditorPromptsPolicy).connect(function(arg1, arg2) -- Line 125
	return {
		showCustomOutfitNames = arg1.getCustomOutfitNames();
	}
end)(require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 103, Named "mapStateToProps"
	return {
		screenSize = arg1.screenSize;
		outfitId = arg1.promptInfo.outfitId;
		outfitName = arg1.promptInfo.outfitName;
	}
end, function(arg1) -- Line 111, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: SignalDeleteOutfitPermissionDenied_upvr (readonly)
		[2]: PerformDeleteOutfit_upvr (readonly)
	]]
	return {
		signalDeleteOutfitPermissionDenied = function() -- Line 113, Named "signalDeleteOutfitPermissionDenied"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SignalDeleteOutfitPermissionDenied_upvr (copied, readonly)
			]]
			return arg1(SignalDeleteOutfitPermissionDenied_upvr)
		end;
		performDeleteOutfit = function() -- Line 117, Named "performDeleteOutfit"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: PerformDeleteOutfit_upvr (copied, readonly)
			]]
			return arg1(PerformDeleteOutfit_upvr)
		end;
	}
end)(any_extend_result1))