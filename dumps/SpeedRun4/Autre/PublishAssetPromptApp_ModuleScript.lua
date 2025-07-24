-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:16
-- Luau version 6, Types version 3
-- Time taken: 0.004092 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local InputType_upvr = require(CorePackages.Workspace.Packages.InputType)
local getInputGroup_upvr = require(CorePackages.Workspace.Packages.InputType).getInputGroup
local Parent = script.Parent
local ReactFocusNavigation_upvr = require(CorePackages.Packages.ReactFocusNavigation)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local any_extend_result1 = Roact_upvr.PureComponent:extend("PublishAssetPromptApp")
any_extend_result1.validateProps = t.strictInterface({
	assetType = t.optional(t.enum(Enum.AssetType));
	assetInstance = t.optional(t.Instance);
})
local function _(arg1) -- Line 52, Named "isGamepadInput"
	--[[ Upvalues[2]:
		[1]: getInputGroup_upvr (readonly)
		[2]: InputType_upvr (readonly)
	]]
	local var11 = arg1
	if getInputGroup_upvr(var11) ~= InputType_upvr.InputTypeConstants.Gamepad then
		var11 = false
	else
		var11 = true
	end
	return var11
end
function any_extend_result1.init(arg1) -- Line 57
	arg1:setState({
		screenSize = Vector2.new(0, 0);
	})
	function arg1.absoluteSizeChanged(arg1_2) -- Line 62
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.screenSize ~= arg1_2.AbsoluteSize then
			arg1:setState({
				screenSize = arg1_2.AbsoluteSize;
			})
		end
	end
	arg1.selectedCoreGuiObject = nil
	arg1.selectedGuiObject = nil
end
local ResultModal_upvr = require(Parent.ResultModal)
local PromptType_upvr = require(Parent.Parent.PromptType)
local PublishAssetPromptSingleStep_upvr = require(Parent.PublishAssetPromptSingleStep)
local PublishAvatarPrompt_upvr = require(Parent.PublishAvatarPrompt.PublishAvatarPrompt)
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local UserInputService_upvr = game:GetService("UserInputService")
local RoactGamepad_upvr = require(CorePackages.Packages.RoactGamepad)
local SelectionCursorProvider_upvr = require(CorePackages.Packages.UIBlox).App.SelectionImage.SelectionCursorProvider
local any_new_result1_upvr = ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui)
local Provider_upvr = FocusNavigationUtils.FocusNavigableSurfaceRegistry.Provider
local FFlagCSFocusWrapperRefactor_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
function any_extend_result1.render(arg1) -- Line 74
	--[[ Upvalues[18]:
		[1]: Roact_upvr (readonly)
		[2]: ResultModal_upvr (readonly)
		[3]: PromptType_upvr (readonly)
		[4]: PublishAssetPromptSingleStep_upvr (readonly)
		[5]: PublishAvatarPrompt_upvr (readonly)
		[6]: ExternalEventConnection_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
		[8]: getInputGroup_upvr (readonly)
		[9]: InputType_upvr (readonly)
		[10]: RoactGamepad_upvr (readonly)
		[11]: SelectionCursorProvider_upvr (readonly)
		[12]: ReactFocusNavigation_upvr (readonly)
		[13]: any_new_result1_upvr (readonly)
		[14]: Provider_upvr (readonly)
		[15]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[16]: FocusRoot_upvr (readonly)
		[17]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[18]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
	]]
	local var29
	if arg1.props.resultModalType then
		var29 = Roact_upvr.createElement(ResultModal_upvr, {
			screenSize = arg1.state.screenSize;
		})
	elseif arg1.props.assetInstance then
		if arg1.props.promptType == PromptType_upvr.PublishAssetSingleStep then
			var29 = Roact_upvr.createElement(PublishAssetPromptSingleStep_upvr, {
				screenSize = arg1.state.screenSize;
			})
			-- KONSTANTWARNING: GOTO [70] #47
		end
	elseif arg1.props.promptType == PromptType_upvr.PublishAvatar then
		var29 = Roact_upvr.createElement(PublishAvatarPrompt_upvr, {
			screenSize = arg1.state.screenSize;
		})
	end
	local module = {
		LastInputTypeConnection = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = UserInputService_upvr.LastInputTypeChanged;
			callback = function(arg1_3) -- Line 106, Named "callback"
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: getInputGroup_upvr (copied, readonly)
					[3]: InputType_upvr (copied, readonly)
				]]
				local tbl_3 = {}
				local var37
				if getInputGroup_upvr(arg1_3) ~= InputType_upvr.InputTypeConstants.Gamepad then
					var37 = false
				else
					var37 = true
				end
				tbl_3.isGamepad = var37
				arg1:setState(tbl_3)
			end;
		});
	}
	local tbl_5 = {}
	local tbl_4 = {}
	local tbl = {}
	local tbl_2 = {}
	local var44 = Roact_upvr
	if FFlagCSFocusWrapperRefactor_upvr then
		var44 = FocusRoot_upvr
	else
		var44 = FocusNavigationCoreScriptsWrapper_upvr
	end
	if FFlagCSFocusWrapperRefactor_upvr then
		local _ = {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.RouterView;
			isIsolated = true;
			isAutoFocusRoot = true;
		}
	else
	end
	tbl_2.FocusNavigationCoreScriptsWrapper = var44.createElement(var44, {
		selectionGroupName = "PublishAssetPromptApp";
		focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.RouterView;
	}, {
		Prompt = var29;
	})
	tbl.FocusNavigationRegistryProvider = Roact_upvr.createElement(Provider_upvr, nil, tbl_2)
	tbl_4.FocusNavigationProvider = Roact_upvr.createElement(ReactFocusNavigation_upvr.FocusNavigationContext.Provider, {
		value = any_new_result1_upvr;
	}, tbl)
	tbl_5.CursorProvider = Roact_upvr.createElement(SelectionCursorProvider_upvr, {}, tbl_4)
	module.PromptFrame = Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
	}, tbl_5)
	return Roact_upvr.createElement("ScreenGui", {
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		AutoLocalize = false;
		DisplayOrder = -1;
		[Roact_upvr.Change.AbsoluteSize] = arg1.absoluteSizeChanged;
	}, module)
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 145, Named "mapStateToProps"
	return {
		resultModalType = arg1.promptRequest.resultModalType;
		promptType = arg1.promptRequest.promptInfo.promptType;
		assetInstance = arg1.promptRequest.promptInfo.assetInstance;
		assetType = arg1.promptRequest.promptInfo.assetType;
	}
end)(any_extend_result1)