-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:59
-- Luau version 6, Types version 3
-- Time taken: 0.005372 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("SetFavoritePrompt")
any_extend_result1.validateProps = t.strictInterface({
	itemId = t.integer;
	itemType = t.enum(Enum.AvatarItemType);
	itemName = t.string;
	shouldFavorite = t.boolean;
	screenSize = t.Vector2;
	performSetFavorite = t.callback;
	signalSetFavoritePermissionDenied = t.callback;
})
local LoadableImage_upvr = UIBlox.App.Loading.LoadableImage
function any_extend_result1.init(arg1) -- Line 38
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LoadableImage_upvr (readonly)
	]]
	function arg1.renderAlertMiddleContent() -- Line 39
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: LoadableImage_upvr (copied, readonly)
		]]
		local var10
		if arg1.props.itemType == Enum.AvatarItemType.Asset then
			var10 = "Asset"
		elseif arg1.props.itemType == Enum.AvatarItemType.Bundle then
			var10 = "BundleThumbnail"
		end
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 150);
		}, {
			Thumnail = Roact_upvr.createElement(LoadableImage_upvr, {
				Position = UDim2.fromScale(0.5, 0);
				AnchorPoint = Vector2.new(0.5, 0);
				Size = UDim2.fromOffset(150, 150);
				BackgroundTransparency = 1;
				Image = "rbxthumb://type="..var10.."&id="..arg1.props.itemId.."&w=150&h=150";
				useShimmerAnimationWhileLoading = true;
				showFailedStateWhenLoadingFailed = true;
			});
		})
	end
end
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.render(arg1) -- Line 66
	--[[ Upvalues[4]:
		[1]: RobloxTranslator_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: InteractiveAlert_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
	]]
	local var17
	local var18
	if arg1.props.shouldFavorite then
		var17 = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.FavouriteItemPromptTitle")
		var18 = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.FavouriteItemPromptText", {
			RBX_NAME = arg1.props.itemName;
		})
	else
		var17 = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.UnfavouriteItemPromptTitle")
		var18 = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.UnfavouriteItemPromptText", {
			RBX_NAME = arg1.props.itemName;
		})
	end
	return Roact_upvr.createElement(InteractiveAlert_upvr, {
		title = var17;
		bodyText = var18;
		buttonStackInfo = {
			buttons = {{
				props = {
					onActivated = arg1.props.signalSetFavoritePermissionDenied;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.FavouriteItemPromptNo");
				};
				isDefaultChild = true;
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = arg1.props.performSetFavorite;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.FavouriteItemPromptYes");
					isDelayedInput = true;
					enableInputDelayed = true;
					delayInputSeconds = 3;
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
local PerformSetFavorite_upvr = require(Parent.Thunks.PerformSetFavorite)
local SignalSetFavoritePermissionDenied_upvr = require(Parent.Thunks.SignalSetFavoritePermissionDenied)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 113, Named "mapStateToProps"
	return {
		itemId = arg1.promptInfo.itemId;
		itemType = arg1.promptInfo.itemType;
		itemName = arg1.promptInfo.itemName;
		shouldFavorite = arg1.promptInfo.shouldFavorite;
		screenSize = arg1.screenSize;
	}
end, function(arg1) -- Line 123, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: PerformSetFavorite_upvr (readonly)
		[2]: SignalSetFavoritePermissionDenied_upvr (readonly)
	]]
	return {
		performSetFavorite = function() -- Line 125, Named "performSetFavorite"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: PerformSetFavorite_upvr (copied, readonly)
			]]
			return arg1(PerformSetFavorite_upvr)
		end;
		signalSetFavoritePermissionDenied = function() -- Line 129, Named "signalSetFavoritePermissionDenied"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SignalSetFavoritePermissionDenied_upvr (copied, readonly)
			]]
			return arg1(SignalSetFavoritePermissionDenied_upvr)
		end;
	}
end)(any_extend_result1)