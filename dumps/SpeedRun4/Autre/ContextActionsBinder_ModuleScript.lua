-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:52
-- Luau version 6, Types version 3
-- Time taken: 0.002040 seconds

local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local t = require(CorePackages.Packages.t)
local any_extend_result1 = require(CorePackages.Packages.Roact).PureComponent:extend("ContextActionsBinder")
any_extend_result1.validateProps = t.strictInterface({
	promptOpen = t.boolean;
	closeOpenPrompt = t.callback;
})
function any_extend_result1.init(arg1) -- Line 27
	arg1.actionsBound = false
end
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1.bindActions(arg1) -- Line 31
	--[[ Upvalues[2]:
		[1]: ContextActionService_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	if arg1.actionsBound then
	else
		arg1.actionsBound = true
		ContextActionService_upvr:BindCoreAction("CloseAvatarEditorPrompt", function(arg1_2, arg2, arg3) -- Line 38
			--[[ Upvalues[2]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			if GuiService_upvr.MenuIsOpen then
				return Enum.ContextActionResult.Pass
			end
			if arg2 ~= Enum.UserInputState.Begin then
				return Enum.ContextActionResult.Pass
			end
			arg1.props.closeOpenPrompt()
			return Enum.ContextActionResult.Sink
		end, false, Enum.KeyCode.Escape)
	end
end
function any_extend_result1.unbindActions(arg1) -- Line 51
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	if not arg1.actionsBound then
	else
		arg1.actionsBound = false
		ContextActionService_upvr:UnbindCoreAction("CloseAvatarEditorPrompt")
	end
end
function any_extend_result1.didMount(arg1) -- Line 61
	if arg1.props.promptOpen then
		arg1:bindActions()
	end
end
function any_extend_result1.render(arg1) -- Line 67
	return nil
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 71
	if arg1.props.promptOpen ~= arg2.promptOpen then
		if arg1.props.promptOpen then
			arg1:bindActions()
			return
		end
		arg1:unbindActions()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 81
	if arg1.actionsBound then
		arg1:unbindActions()
	end
end
local CloseOpenPrompt_upvr = require(script.Parent.Parent.Parent.Thunks.CloseOpenPrompt)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 87, Named "mapStateToProps"
	local module = {}
	local var9
	if arg1.promptInfo.promptType == nil then
		var9 = false
	else
		var9 = true
	end
	module.promptOpen = var9
	return module
end, function(arg1) -- Line 93, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: CloseOpenPrompt_upvr (readonly)
	]]
	return {
		closeOpenPrompt = function() -- Line 95, Named "closeOpenPrompt"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseOpenPrompt_upvr (copied, readonly)
			]]
			return arg1(CloseOpenPrompt_upvr)
		end;
	}
end)(any_extend_result1)