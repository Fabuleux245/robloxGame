-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:59
-- Luau version 6, Types version 3
-- Time taken: 0.003612 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local Foundation_upvr = require(Songbird.Parent.Foundation)
local React_upvr = require(Songbird.Parent.React)
local tbl_3_upvr = {
	speed = 20;
	direction = Enum.TextDirection.LeftToRight;
}
local function _(arg1, arg2) -- Line 31, Named "calculateInstances"
	if arg1 == 0 then
		return 2
	end
	local maximum = math.max(math.ceil(arg2 / arg1) + 1, 2)
	if maximum ~= maximum then
		return 2
	end
	return maximum
end
local Cryo_upvr = require(Songbird.Parent.Cryo)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useBinding_upvr = React_upvr.useBinding
local useState_upvr = React_upvr.useState
local useCallback_upvr = React_upvr.useCallback
local useEventConnection_upvr = require(Songbird.Parent.ReactUtils).useEventConnection
local RunService_upvr = game:GetService("RunService")
return function(arg1) -- Line 45, Named "MarqueeScroller"
	--[[ Upvalues[10]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useBinding_upvr (readonly)
		[5]: useState_upvr (readonly)
		[6]: useCallback_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: Foundation_upvr (readonly)
		[9]: useEventConnection_upvr (readonly)
		[10]: RunService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var17 = arg1
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_3_upvr, var17)
	local var19
	if any_join_result1_upvr.padding then
		var17 = any_join_result1_upvr.padding
	else
		var17 = useTokens_upvr().Margin.Large
	end
	if any_join_result1_upvr.direction ~= Enum.TextDirection.LeftToRight then
	else
	end
	local useBinding_upvr_result1_upvr, var8_result2_upvr = useBinding_upvr(0)
	local useState_upvr_result1, useState_upvr_result2_upvr = useState_upvr(Vector2.new(math.huge, math.huge))
	local useState_upvr_result1_2, var9_result2_upvr = useState_upvr(Vector2.new(math.huge, math.huge))
	local var26_upvr = useState_upvr_result1.X + var17
	var19 = {}
	local tbl = {}
	local X = useState_upvr_result1.X
	if X == 0 then
		var19 = 2
	else
		local maximum_2 = math.max(math.ceil(useState_upvr_result1_2.X / X) + 1, 2)
		if maximum_2 ~= maximum_2 then
			var19 = 2
		else
			var19 = maximum_2
		end
	end
	for i = 1, var19 do
		local tbl_4 = {}
		local var33 = "auto-xy"
		tbl_4.tag = var33
		if i == 1 then
			var33 = useCallback_upvr(function(arg1_2) -- Line 57
				--[[ Upvalues[1]:
					[1]: useState_upvr_result2_upvr (readonly)
				]]
				useState_upvr_result2_upvr(arg1_2.AbsoluteSize)
			end, {})
		else
			var33 = nil
		end
		tbl_4.onAbsoluteSizeChanged = var33
		tbl_4.LayoutOrder = i
		tbl[`Content{i}`] = React_upvr.createElement(Foundation_upvr.View, tbl_4, any_join_result1_upvr.children)
	end
	useEventConnection_upvr(RunService_upvr.Heartbeat, function(arg1_4) -- Line 76
		--[[ Upvalues[4]:
			[1]: any_join_result1_upvr (readonly)
			[2]: useBinding_upvr_result1_upvr (readonly)
			[3]: var26_upvr (readonly)
			[4]: var8_result2_upvr (readonly)
		]]
		if 0 < any_join_result1_upvr.speed then
			local var35 = useBinding_upvr_result1_upvr:getValue() + any_join_result1_upvr.speed * arg1_4
			if var26_upvr <= var35 then
				var35 -= var26_upvr
			end
			var8_result2_upvr(var35)
		end
	end, {any_join_result1_upvr.speed, var26_upvr})
	local module = {}
	local tbl_2 = {
		tag = "auto-xy row data-testid=scroller";
		layout = {
			FillDirection = Enum.FillDirection.Horizontal;
			Padding = UDim.new(0, var17);
		};
	}
	local var42_upvr = true
	tbl_2.Position = useBinding_upvr_result1_upvr:map(function(arg1_5) -- Line 97
		--[[ Upvalues[1]:
			[1]: var42_upvr (readonly)
		]]
		if var42_upvr then
			return UDim2.new(0, arg1_5 * -1, 0, 0)
		end
		return UDim2.new(-1, arg1_5, 0, 0)
	end)
	module.Scroller = React_upvr.createElement(Foundation_upvr.View, tbl_2, tbl)
	return React_upvr.createElement(Foundation_upvr.View, {
		tag = "size-full auto-y clip";
		onAbsoluteSizeChanged = useCallback_upvr(function(arg1_3) -- Line 61
			--[[ Upvalues[1]:
				[1]: var9_result2_upvr (readonly)
			]]
			var9_result2_upvr(arg1_3.AbsoluteSize)
		end, var19);
		LayoutOrder = any_join_result1_upvr.LayoutOrder;
	}, module)
end