-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:59
-- Luau version 6, Types version 3
-- Time taken: 0.008406 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("SaveAvatarPrompt")
any_extend_result1.validateProps = t.strictInterface({
	gameName = t.string;
	screenSize = t.Vector2;
	humanoidDescription = t.instanceOf("HumanoidDescription");
	rigType = t.enum(Enum.HumanoidRigType);
	performSaveAvatar = t.callback;
	signalSaveAvatarPermissionDenied = t.callback;
})
local ItemsList_upvr = require(Parent.ItemsList)
local HumanoidViewport_upvr = require(Parent.HumanoidViewport)
function any_extend_result1.init(arg1) -- Line 47
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ItemsList_upvr (readonly)
		[3]: HumanoidViewport_upvr (readonly)
	]]
	arg1.mounted = false
	arg1:setState({
		conformedHumanoidDescription = nil;
		getConformedDescriptionFailed = false;
		itemListScrollable = false;
	})
	arg1.middleContentRef = Roact_upvr.createRef()
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(UDim2.new(1, 0, 0, 200))
	arg1.contentSize = any_createBinding_result1
	arg1.updateContentSize = any_createBinding_result2
	function arg1.onAlertSizeChanged(arg1_2) -- Line 59
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var15
		if not arg1.middleContentRef:getValue() then
		else
			var15 = arg1.middleContentRef:getValue()
			local Y = var15.AbsoluteSize.Y
			var15 = arg1_2.AbsoluteSize.Y
			var15 = (arg1.props.screenSize.Y - 60) - (var15 - Y)
			local var17 = arg1.middleContentRef:getValue().AbsoluteSize.X / 2 - 10 + 80
			if var17 < var15 then
				var15 = var17
			end
			if Y ~= var15 then
				arg1.updateContentSize(UDim2.new(1, 0, 0, var15))
			end
		end
	end
	function arg1.itemListScrollableUpdated(arg1_3, arg2) -- Line 82
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == arg1.contentSize:getValue().Y.Offset then
			local tbl = {}
			tbl.itemListScrollable = arg1_3
			arg1:setState(tbl)
		end
	end
	function arg1.retryLoadDescription() -- Line 90
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			getConformedDescriptionFailed = false;
		})
		arg1:getConformedHumanoidDescription()
	end
	function arg1.renderAlertMiddleContent() -- Line 98
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: ItemsList_upvr (copied, readonly)
			[4]: HumanoidViewport_upvr (copied, readonly)
		]]
		local conformedHumanoidDescription = arg1.state.conformedHumanoidDescription
		local getConformedDescriptionFailed = arg1.state.getConformedDescriptionFailed
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = arg1.contentSize;
			[Roact_upvr.Ref] = arg1.middleContentRef;
		}, {
			ItemsListFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(0.45, 1);
			}, {
				ItemsList = Roact_upvr.createElement(ItemsList_upvr, {
					humanoidDescription = conformedHumanoidDescription;
					retryLoadDescription = arg1.retryLoadDescription;
					loadingFailed = getConformedDescriptionFailed;
					itemListScrollableUpdated = arg1.itemListScrollableUpdated;
				});
			});
			HumanoidViewportFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(0.55, 1);
				Position = UDim2.fromScale(0.45, 0);
				LayoutOrder = 2;
			}, {
				UIPadding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 5);
					PaddingRight = UDim.new(0, 5);
				});
				HumanoidViewport = Roact_upvr.createElement(HumanoidViewport_upvr, {
					humanoidDescription = conformedHumanoidDescription;
					loadingFailed = getConformedDescriptionFailed;
					retryLoadDescription = arg1.retryLoadDescription;
					rigType = arg1.props.rigType;
				});
			});
			UISizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
				MaxSize = arg1.contentMaxSize;
			});
		})
	end
end
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.render(arg1) -- Line 146
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
	]]
	return Roact_upvr.createElement(InteractiveAlert_upvr, {
		title = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.SaveAvatarPromptTitle");
		bodyText = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.SaveAvatarPromptText", {
			RBX_NAME = arg1.props.gameName;
		});
		buttonStackInfo = {
			buttons = {{
				props = {
					onActivated = arg1.props.signalSaveAvatarPermissionDenied;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.SaveAvatarPromptNo");
				};
				isDefaultChild = true;
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = arg1.props.performSaveAvatar;
					text = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.SaveAvatarPromptYes");
				};
				isDefaultChild = false;
			}};
		};
		position = UDim2.fromScale(0.5, 0.5);
		screenSize = arg1.props.screenSize;
		middleContent = arg1.renderAlertMiddleContent;
		onAbsoluteSizeChanged = arg1.onAlertSizeChanged;
		isMiddleContentFocusable = arg1.state.itemListScrollable;
	})
end
local GetConformedHumanoidDescription_upvr = require(Parent_2.GetConformedHumanoidDescription)
function any_extend_result1.getConformedHumanoidDescription(arg1, arg2) -- Line 179
	--[[ Upvalues[1]:
		[1]: GetConformedHumanoidDescription_upvr (readonly)
	]]
	GetConformedHumanoidDescription_upvr(arg2, true):andThen(function(arg1_4) -- Line 181
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.mounted then
		else
			local tbl_2 = {}
			tbl_2.conformedHumanoidDescription = arg1_4
			arg1:setState(tbl_2)
		end
	end, function(arg1_5) -- Line 189
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.mounted then
		else
			arg1:setState({
				getConformedDescriptionFailed = true;
			})
		end
	end)
end
function any_extend_result1.didMount(arg1) -- Line 200
	arg1.mounted = true
	arg1:getConformedHumanoidDescription(arg1.props.humanoidDescription)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 206
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	if arg1.props.humanoidDescription ~= arg2.humanoidDescription then
		arg1:setState({
			conformedHumanoidDescription = Roact_upvr.None;
			getConformedDescriptionFailed = false;
		})
		arg1:getConformedHumanoidDescription(arg1.props.humanoidDescription)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 217
	arg1.mounted = false
end
local SignalSaveAvatarPermissionDenied_upvr = require(Parent_2.Thunks.SignalSaveAvatarPermissionDenied)
local PerformSaveAvatar_upvr = require(Parent_2.Thunks.PerformSaveAvatar)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 221, Named "mapStateToProps"
	return {
		gameName = arg1.gameName;
		screenSize = arg1.screenSize;
		humanoidDescription = arg1.promptInfo.humanoidDescription;
		rigType = arg1.promptInfo.rigType;
	}
end, function(arg1) -- Line 230, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: SignalSaveAvatarPermissionDenied_upvr (readonly)
		[2]: PerformSaveAvatar_upvr (readonly)
	]]
	return {
		signalSaveAvatarPermissionDenied = function() -- Line 232, Named "signalSaveAvatarPermissionDenied"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SignalSaveAvatarPermissionDenied_upvr (copied, readonly)
			]]
			return arg1(SignalSaveAvatarPermissionDenied_upvr)
		end;
		performSaveAvatar = function() -- Line 236, Named "performSaveAvatar"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: PerformSaveAvatar_upvr (copied, readonly)
			]]
			return arg1(PerformSaveAvatar_upvr)
		end;
	}
end)(any_extend_result1)