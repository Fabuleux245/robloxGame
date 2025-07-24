-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:50
-- Luau version 6, Types version 3
-- Time taken: 0.004444 seconds

local CorePackages = game:GetService("CorePackages")
local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local RoactGamepad_upvr = require(CorePackages.Packages.RoactGamepad)
local t = require(CorePackages.Packages.t)
local Prompts = script.Parent.Prompts
local Parent = script.Parent.Parent
local PromptType = require(Parent.PromptType)
local tbl_upvr = {
	[Enum.UserInputType.Gamepad1] = true;
	[Enum.UserInputType.Gamepad2] = true;
	[Enum.UserInputType.Gamepad3] = true;
	[Enum.UserInputType.Gamepad4] = true;
	[Enum.UserInputType.Gamepad5] = true;
	[Enum.UserInputType.Gamepad6] = true;
	[Enum.UserInputType.Gamepad7] = true;
	[Enum.UserInputType.Gamepad8] = true;
}
local tbl_upvr_2 = {
	[PromptType.AllowInventoryReadAccess] = require(Prompts.AllowInventoryReadAccessPrompt);
	[PromptType.SaveAvatar] = require(Prompts.SaveAvatarPrompt);
	[PromptType.CreateOutfit] = require(Prompts.CreateOutfitPrompt);
	[PromptType.EnterOutfitName] = require(Prompts.EnterOutfitNamePrompt);
	[PromptType.SetFavorite] = require(Prompts.SetFavoritePrompt);
	[PromptType.DeleteOutfit] = require(Prompts.DeleteOutfitPrompt);
	[PromptType.RenameOutfit] = require(Prompts.RenameOutfitPrompt);
	[PromptType.UpdateOutfit] = require(Prompts.UpdateOutfitPrompt);
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("AvatarEditorPromptsApp")
any_extend_result1.validateProps = t.strictInterface({
	promptType = t.optional(t.userdata);
	screenSizeUpdated = t.callback;
})
function any_extend_result1.init(arg1) -- Line 68
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: RoactGamepad_upvr (readonly)
	]]
	arg1:setState({
		isGamepad = tbl_upvr[UserInputService_upvr:GetLastInputType()] or false;
	})
	function arg1.absoluteSizeChanged(arg1_2) -- Line 73
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.screenSizeUpdated(arg1_2.AbsoluteSize)
	end
	arg1.focusController = RoactGamepad_upvr.createFocusController()
	arg1.selectedCoreGuiObject = nil
	arg1.selectedGuiObject = nil
end
local Connection_upvr = require(script.Parent.Connection)
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
function any_extend_result1.render(arg1) -- Line 83
	--[[ Upvalues[7]:
		[1]: tbl_upvr_2 (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Connection_upvr (readonly)
		[4]: ExternalEventConnection_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: RoactGamepad_upvr (readonly)
	]]
	local var18
	if arg1.props.promptType then
		local var19 = tbl_upvr_2[arg1.props.promptType]
		if var19 then
			var18 = Roact_upvr.createElement(var19)
		else
			error("Unexpected prompt type!")
		end
	end
	return Roact_upvr.createElement("ScreenGui", {
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		AutoLocalize = false;
		DisplayOrder = -1;
		[Roact_upvr.Change.AbsoluteSize] = arg1.absoluteSizeChanged;
	}, {
		Connection = Roact_upvr.createElement(Connection_upvr);
		LastInputTypeConnection = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = UserInputService_upvr.LastInputTypeChanged;
			callback = function(arg1_3) -- Line 106, Named "callback"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: tbl_upvr (copied, readonly)
				]]
				arg1:setState({
					isGamepad = tbl_upvr[arg1_3] or false;
				})
			end;
		}) or nil;
		PromptFrame = Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, {
			focusController = arg1.focusController;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
		}, {
			Prompt = var18;
		}) or nil;
	})
end
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local CoreGui_upvr = game:GetService("CoreGui")
function any_extend_result1.revertSelectedGuiObject(arg1) -- Line 124
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	local var28
	if var28 then
		var28 = LocalPlayer_upvr:FindFirstChildWhichIsA("PlayerGui")
	end
	if arg1.selectedCoreGuiObject and arg1.selectedCoreGuiObject:IsDescendantOf(CoreGui_upvr) then
		GuiService_upvr.SelectedCoreObject = arg1.selectedCoreGuiObject
		-- KONSTANTWARNING: GOTO [47] #35
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 15 start (CF ANALYSIS FAILED)
	if arg1.selectedGuiObject and arg1.selectedGuiObject:IsDescendantOf(var28) then
		GuiService_upvr.SelectedObject = arg1.selectedGuiObject
		GuiService_upvr.SelectedCoreObject = nil
	else
		GuiService_upvr.SelectedCoreObject = nil
	end
	-- KONSTANTERROR: [23] 18. Error Block 15 end (CF ANALYSIS FAILED)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 140
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local isGamepad = arg1.state.isGamepad
	if isGamepad then
		if arg1.props.promptType == nil then
			isGamepad = false
		else
			isGamepad = true
		end
	end
	local isGamepad_2 = arg3.isGamepad
	if isGamepad_2 then
		if arg2.promptType == nil then
		else
		end
	end
	if isGamepad ~= true then
		if isGamepad then
			arg1.selectedCoreGuiObject = GuiService_upvr.SelectedCoreObject
			arg1.selectedGuiObject = GuiService_upvr.SelectedObject
			GuiService_upvr.SelectedObject = nil
			arg1.focusController.captureFocus()
			return
		end
		arg1.focusController.releaseFocus()
		if arg1.state.isGamepad then
			arg1:revertSelectedGuiObject()
		end
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 159
	if arg1.state.isGamepad then
		arg1:revertSelectedGuiObject()
	end
end
local ScreenSizeUpdated_upvr = require(Parent.Actions.ScreenSizeUpdated)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 165, Named "mapStateToProps"
	return {
		promptType = arg1.promptInfo.promptType;
	}
end, function(arg1) -- Line 171, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: ScreenSizeUpdated_upvr (readonly)
	]]
	return {
		screenSizeUpdated = function(arg1_4) -- Line 173, Named "screenSizeUpdated"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ScreenSizeUpdated_upvr (copied, readonly)
			]]
			return arg1(ScreenSizeUpdated_upvr(arg1_4))
		end;
	}
end)(any_extend_result1)