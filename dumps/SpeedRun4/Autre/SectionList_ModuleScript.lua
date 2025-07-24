-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:01
-- Luau version 6, Types version 3
-- Time taken: 0.004241 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local module = {}
local tbl_upvr = {
	OS = "roblox";
}
local React_upvr = require(Parent.React)
local any_extend_result1 = React_upvr.PureComponent:extend("SectionList")
function any_extend_result1.init(arg1, arg2) -- Line 195
	arg1.props = arg2
	function arg1._captureRef(arg1_2) -- Line 197
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._wrapperListRef = arg1_2
	end
end
function any_extend_result1.scrollToLocation(arg1, arg2) -- Line 212
	if arg1._wrapperListRef ~= nil then
		arg1._wrapperListRef:scrollToLocation(arg2)
	end
end
function any_extend_result1.recordInteraction(arg1) -- Line 225
	local var10
	if arg1._wrapperListRef then
		var10 = arg1._wrapperListRef:getListRef()
	else
		var10 = arg1._wrapperListRef
	end
	if var10 then
		var10:recordInteraction()
	end
end
function any_extend_result1.flashScrollIndicators(arg1) -- Line 237
	local var11
	if arg1._wrapperListRef then
		var11 = arg1._wrapperListRef:getListRef()
	else
		var11 = arg1._wrapperListRef
	end
	if var11 then
		var11:flashScrollIndicators()
	end
end
function any_extend_result1.getScrollResponder(arg1) -- Line 247
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local var12
	if arg1._wrapperListRef then
		var12 = arg1._wrapperListRef:getListRef()
	else
		var12 = arg1._wrapperListRef
	end
	if Boolean_upvr.toJSBoolean(var12) then
		return var12:getScrollResponder()
	end
	return nil
end
function any_extend_result1.getScrollableNode(arg1) -- Line 255
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local var13
	if arg1._wrapperListRefthen then
		var13 = arg1._wrapperListRef:getListRef()
	else
		var13 = arg1._wrapperListRef
	end
	if Boolean_upvr.toJSBoolean(var13) then
		return var13:getScrollableNode()
	end
	return nil
end
function any_extend_result1.setNativeProps(arg1, arg2) -- Line 263
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local var14
	if arg1._wrapperListRef then
		var14 = arg1._wrapperListRef:getListRef()
	else
		var14 = arg1._wrapperListRef
	end
	if Boolean_upvr.toJSBoolean(var14) then
		var14:setNativeProps(arg2)
	end
end
local Object_upvr = LuauPolyfill.Object
local VirtualizedSectionList_upvr = require(script.Parent.VirtualizedSectionList)
function any_extend_result1.render(arg1) -- Line 270
	--[[ Upvalues[4]:
		[1]: Object_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: VirtualizedSectionList_upvr (readonly)
	]]
	local stickySectionHeadersEnabled = arg1.props.stickySectionHeadersEnabled
	local module_2 = {}
	if stickySectionHeadersEnabled ~= nil then
		module_2 = stickySectionHeadersEnabled
	elseif tbl_upvr.OS ~= "ios" then
		module_2 = false
	else
		module_2 = true
	end
	return React_upvr.createElement(VirtualizedSectionList_upvr, Object_upvr.assign({}, Object_upvr.assign(module_2, arg1.props, {
		stickySectionHeadersEnabled = Object_upvr.None;
	}), {
		stickySectionHeadersEnabled = module_2;
		ref = arg1._captureRef;
		getItemCount = function(arg1_3) -- Line 282, Named "getItemCount"
			return #arg1_3
		end;
		getItem = function(arg1_4, arg2) -- Line 285, Named "getItem"
			return arg1_4[arg2]
		end;
	}))
end
module.default = any_extend_result1
return module