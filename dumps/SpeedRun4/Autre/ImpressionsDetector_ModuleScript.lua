-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:26
-- Luau version 6, Types version 3
-- Time taken: 0.006441 seconds

local Parent = script:FindFirstAncestor("Impressions").Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
local t = require(Parent.t)
local any_extend_result1 = require(Parent.Roact).PureComponent:extend("ImpressionsDetector")
any_extend_result1.validateProps = t.strictInterface({
	scanDebounceSeconds = t.optional(t.number);
	viewFillPercent = t.optional(t.number);
	parentRef = t.optional(t.table);
	impressionsTag = t.string;
	onRequestImpressionsSignal = t.table;
	viewPortBounds = t.strictInterface({
		min = t.Vector2;
		max = t.Vector2;
	});
	filterImpressionFunc = t.optional(t.callback);
	onImpressionsDetected = t.union(t.callback, t.table);
	skipZeroSizes = t.optional(t.boolean);
	isFocused = t.boolean;
	navigation = t.table;
})
any_extend_result1.defaultProps = {
	scanDebounceSeconds = 1;
	viewFillPercent = 0.25;
}
function any_extend_result1.init(arg1) -- Line 42
	arg1.isMounted = false
	arg1.lastImpressionTick = nil
	arg1.nextImpressionTick = nil
end
function any_extend_result1._boundingBoxIntersectsView(arg1, arg2) -- Line 48
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	if not arg2 then
		return false
	end
	local viewPortBounds_2 = arg1.props.viewPortBounds
	local var9 = ArgCheck_upvr
	if viewPortBounds_2 == nil then
		var9 = false
	else
		var9 = true
	end
	var9.assert(var9)
	if not viewPortBounds_2 then
		return false
	end
	local AbsolutePosition = arg2.AbsolutePosition
	local var11 = AbsolutePosition + arg2.AbsoluteSize
	local var12 = false
	if viewPortBounds_2.min.X < var11.X then
		if AbsolutePosition.X >= viewPortBounds_2.max.X then
			var12 = false
		else
			var12 = true
		end
	end
	local var13 = false
	if viewPortBounds_2.min.Y < var11.Y then
		if AbsolutePosition.Y >= viewPortBounds_2.max.Y then
			var13 = false
		else
			var13 = true
		end
	end
	if var12 and var13 then
		return true
	end
	return false
end
function any_extend_result1._isInstanceVisible(arg1, arg2) -- Line 73
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	if not arg1:_boundingBoxIntersectsView(arg2) then
		return false
	end
	local viewPortBounds = arg1.props.viewPortBounds
	local var15 = ArgCheck_upvr
	if viewPortBounds == nil then
		var15 = false
	else
		var15 = true
	end
	var15.assert(var15)
	local var16 = viewPortBounds.max - viewPortBounds.min
	if var16.X <= 0 or var16.Y <= 0 then
		return false
	end
	local var17 = var16 * arg1.props.viewFillPercent
	local var18 = false
	if 0 < var17.X then
		if 0 >= var17.Y then
			var18 = false
		else
			var18 = true
		end
	end
	ArgCheck_upvr.assert(var18)
	if var17.X <= 0 or var17.Y <= 0 then
		return false
	end
	local AbsolutePosition_2 = arg2.AbsolutePosition
	local AbsoluteSize = arg2.AbsoluteSize
	local var21
	if arg1.props.skipZeroSizes and (AbsoluteSize.X == 0 or AbsoluteSize.Y == 0) then
		return false
	end
	local var22 = AbsolutePosition_2 + AbsoluteSize / 2
	local var23 = false
	var21 = var22.X
	if viewPortBounds.min.X < var21 then
		var21 = var22.X
		if var21 >= viewPortBounds.max.X then
			var23 = false
		else
			var23 = true
		end
	end
	var21 = false
	if viewPortBounds.min.Y < var22.Y then
		if var22.Y >= viewPortBounds.max.Y then
			var21 = false
		else
			var21 = true
			local var24
		end
	end
	if var23 and var21 then
		return true
	end
	var24 = viewPortBounds.max
	local var25 = AbsolutePosition_2 + AbsoluteSize:Min(var24) - AbsolutePosition_2:Max(viewPortBounds.min)
	if var17.X > var25.X then
		var24 = false
	else
		var24 = true
		local var26
	end
	if var21 and var24 then
		var26 = true
		return var26
	end
	if var17.Y > var25.Y then
		var26 = false
	else
		var26 = true
	end
	if var23 and var26 then
		return true
	end
	if var24 and var26 then
		return true
	end
	return false
end
local CollectionService_upvr = game:GetService("CollectionService")
local Constants_upvr = require(script.Parent.Constants)
function any_extend_result1._calculateImpressions(arg1) -- Line 143
	--[[ Upvalues[3]:
		[1]: CollectionService_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: ArgCheck_upvr (readonly)
	]]
	if not arg1.isMounted then
	else
		if not arg1.props.isFocused then return end
		arg1.lastImpressionTick = tick()
		local function INLINED() -- Internal function, doesn't exist in bytecode
			local current = arg1.props.parentRef.current
			return current == nil
		end
		if arg1.props.parentRef ~= nil and (INLINED() or not arg1:_boundingBoxIntersectsView(current)) then return end
		local tbl = {}
		for _, v in ipairs(CollectionService_upvr:GetTagged(arg1.props.impressionsTag)) do
			local attribute = v:GetAttribute(Constants_upvr.ItemIndex)
			if attribute and v:IsA("GuiObject") and arg1:_isInstanceVisible(v) and (arg1.props.filterImpressionFunc == nil or arg1.props.filterImpressionFunc(attribute)) then
				table.insert(tbl, attribute)
			end
		end
		if 0 < #tbl then
			local var39 = ArgCheck_upvr
			if arg1.props.onImpressionsDetected == nil then
				var39 = false
			else
				var39 = true
			end
			var39.assert(var39)
			arg1.props.onImpressionsDetected(tbl)
		end
	end
end
function any_extend_result1._requestImpressions(arg1) -- Line 182
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	local var40
	if not var40 then
	else
		var40 = arg1.props.isFocused
		if not var40 then return end
		var40 = arg1.nextImpressionTick
		if var40 ~= nil then return end
		var40 = arg1.props.impressionsTag
		if not var40 then return end
		var40 = 0
		if arg1.lastImpressionTick ~= nil then
			arg1.nextImpressionTick = arg1.lastImpressionTick + arg1.props.scanDebounceSeconds
			var40 = arg1.nextImpressionTick - tick()
		end
		if 0 < var40 then
			task.delay(var40, function() -- Line 205
				--[[ Upvalues[2]:
					[1]: ArgCheck_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				local var42 = false
				if arg1.nextImpressionTick ~= nil then
					if arg1.nextImpressionTick >= tick() then
						var42 = false
					else
						var42 = true
					end
				end
				ArgCheck_upvr.assert(var42)
				arg1.nextImpressionTick = nil
				arg1:_calculateImpressions()
			end)
			return
		end
		arg1.nextImpressionTick = nil
		arg1:_calculateImpressions()
	end
end
function any_extend_result1.render(arg1) -- Line 217
	return nil
end
function any_extend_result1.didMount(arg1) -- Line 221
	arg1.isMounted = true
	arg1:_requestImpressions()
	if arg1.props.onRequestImpressionsSignal then
		arg1.onRequestImpressionsConnection = arg1.props.onRequestImpressionsSignal:connect(function() -- Line 225
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_requestImpressions()
		end)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 231
	arg1.isMounted = false
	if arg1.onRequestImpressionsConnection ~= nil then
		arg1.onRequestImpressionsConnection:disconnect()
		arg1.onRequestImpressionsConnection = nil
	end
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 239
	arg1:_requestImpressions()
end
return require(Parent.RoactNavigation).withNavigationFocus(any_extend_result1)