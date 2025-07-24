-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:06
-- Luau version 6, Types version 3
-- Time taken: 0.001873 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.InGameMenuDependencies).Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("FocusHandlerContextProvider")
function any_extend_result1.init(arg1) -- Line 17
	arg1.state = {
		candidateHandlerId = nil;
		currentHandlerId = nil;
	}
	arg1.previousSelections = {}
end
local function requestFocusForHandlerId(arg1, arg2) -- Line 25
	arg1:setState(function(arg1_2) -- Line 26
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		if arg1_2.currentHandlerId == nil then
			local module = {}
			module.currentHandlerId = arg2
			return module
		end
		if arg2 ~= arg1_2.currentHandlerId then
			local module_2 = {}
			module_2.candidateHandlerId = arg2
			return module_2
		end
		return nil
	end)
end
any_extend_result1.requestFocusForHandlerId = requestFocusForHandlerId
local GuiService_upvr = game:GetService("GuiService")
local function blurCurrentFocusHandler(arg1, arg2, arg3) -- Line 41
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	arg1:setState(function(arg1_3) -- Line 42
		--[[ Upvalues[5]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
			[3]: GuiService_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Roact_upvr (copied, readonly)
		]]
		if arg1_3.currentHandlerId == arg2 then
			local var9
			if not arg3 then
				var9 = GuiService_upvr.SelectedCoreObject
			end
			arg1.previousSelections[arg2] = var9
			if arg1_3.candidateHandlerId ~= nil then
				return {
					currentHandlerId = arg1_3.candidateHandlerId;
					candidateHandlerId = Roact_upvr.None;
				}
			end
			return {
				currentHandlerId = Roact_upvr.None;
			}
		end
		return nil
	end)
end
any_extend_result1.blurCurrentFocusHandler = blurCurrentFocusHandler
local function forgetLastSelectionForHandlerId(arg1, arg2) -- Line 67
	arg1.previousSelections[arg2] = nil
end
any_extend_result1.forgetLastSelectionForHandlerId = forgetLastSelectionForHandlerId
local FocusHandlerContext_upvr = require(script.Parent.FocusHandlerContext)
function any_extend_result1.render(arg1) -- Line 71
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: FocusHandlerContext_upvr (readonly)
	]]
	return Roact_upvr.createElement(FocusHandlerContext_upvr.Provider, {
		value = {
			currentHandlerId = arg1.state.currentHandlerId;
			candidateHandlerId = arg1.state.candidateHandlerId;
			previousSelections = arg1.previousSelections;
			requestFocusForHandlerId = function(arg1_4) -- Line 77, Named "requestFocusForHandlerId"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:requestFocusForHandlerId(arg1_4)
			end;
			forgetLastSelectionForHandlerId = function(arg1_5) -- Line 80, Named "forgetLastSelectionForHandlerId"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:forgetLastSelectionForHandlerId(arg1_5)
			end;
			blurCurrentFocusHandler = function(arg1_6, arg2) -- Line 83, Named "blurCurrentFocusHandler"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:blurCurrentFocusHandler(arg1_6, arg2)
			end;
		};
	}, arg1.props[Roact_upvr.Children])
end
return any_extend_result1