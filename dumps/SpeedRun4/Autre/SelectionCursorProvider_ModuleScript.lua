-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:51
-- Luau version 6, Types version 3
-- Time taken: 0.002826 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("SelectionCursorProvider")
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local CursorKind_upvr = require(script.Parent.CursorKind)
local Cryo_upvr = require(Parent.Cryo)
local CoreGui_upvr = game:GetService("CoreGui")
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1.init(arg1) -- Line 16
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: RoactGamepad_upvr (readonly)
		[3]: CursorKind_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: CoreGui_upvr (readonly)
		[6]: GuiService_upvr (readonly)
	]]
	arg1.ref = Roact_upvr.createRef()
	arg1.refs = RoactGamepad_upvr.createRefCache()
	arg1.state = {
		mountedCursors = {};
		currentSelection = nil;
		currentCoreSelection = nil;
	}
	function arg1.getSelectionCursor(arg1_2) -- Line 25
		--[[ Upvalues[3]:
			[1]: CursorKind_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Cryo_upvr (copied, readonly)
		]]
		assert(CursorKind_upvr.isEnumValue(arg1_2), "Invalid arg #1: expected a CursorKind enum variant, got %s":format(tostring(arg1_2)))
		if arg1.state.mountedCursors[arg1_2] == nil then
			arg1:setState(function(arg1_3) -- Line 32
				--[[ Upvalues[2]:
					[1]: Cryo_upvr (copied, readonly)
					[2]: arg1_2 (readonly)
				]]
				return {
					mountedCursors = Cryo_upvr.Dictionary.join(arg1_3.mountedCursors, {
						[arg1_2] = true;
					});
				}
			end)
		end
		return arg1.refs[arg1_2]
	end
	function arg1.initSelectionChangedListener(arg1_4) -- Line 48
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: CoreGui_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
		]]
		if arg1_4 == nil then
		else
			if arg1.coreSelectionListener ~= nil then
				arg1.coreSelectionListener:Disconnect()
				arg1.coreSelectionListener = nil
			end
			if arg1.selectionListener ~= nil then
				arg1.selectionListener:Disconnect()
				arg1.selectionListener = nil
			end
			if arg1_4:IsDescendantOf(CoreGui_upvr) then
				arg1.coreSelectionListener = GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function() -- Line 65
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: GuiService_upvr (copied, readonly)
					]]
					if arg1.state.currentCoreSelection == nil or GuiService_upvr.SelectedCoreObject == nil or arg1.state.currentCoreSelection.SelectionImageObject ~= GuiService_upvr.SelectedCoreObject.SelectionImageObject then
						arg1:setState({
							currentCoreSelection = GuiService_upvr.SelectedCoreObject;
						})
					end
				end)
				return
			end
			arg1.selectionListener = GuiService_upvr:GetPropertyChangedSignal("SelectedObject"):Connect(function() -- Line 78
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: GuiService_upvr (copied, readonly)
				]]
				if arg1.state.currentSelection == nil or GuiService_upvr.SelectedObject == nil or arg1.state.currentSelection.SelectionImageObject ~= GuiService_upvr.SelectedObject.SelectionImageObject then
					arg1:setState({
						currentSelection = GuiService_upvr.SelectedObject;
					})
				end
			end)
		end
	end
end
function any_extend_result1.didMount(arg1) -- Line 92
	arg1.initSelectionChangedListener(arg1.ref:getValue())
end
function any_extend_result1.willUnmount(arg1) -- Line 96
	if arg1.coreSelectionListener ~= nil then
		arg1.coreSelectionListener:Disconnect()
		arg1.coreSelectionListener = nil
	end
	if arg1.selectionListener ~= nil then
		arg1.selectionListener:Disconnect()
		arg1.selectionListener = nil
	end
end
local SelectionImageContext_upvr = require(script.Parent.SelectionImageContext)
local OnRootedListener_upvr = require(script.Parent.OnRootedListener)
function any_extend_result1.render(arg1) -- Line 108
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: SelectionImageContext_upvr (readonly)
		[3]: OnRootedListener_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local state = arg1.state
	local pairs_result1, pairs_result2, pairs_result3 = pairs(state.mountedCursors)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 38. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [66.7]
	local tbl = {}
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [68.9]
	tbl.isVisible = nil
	tbl.cursorRef = arg1.refs[state]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [76.8]
	;({})[nil] = Roact_upvr.createElement(nil, tbl)
	-- KONSTANTERROR: [63] 38. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [10] 7. Error Block 2 end (CF ANALYSIS FAILED)
end
return any_extend_result1