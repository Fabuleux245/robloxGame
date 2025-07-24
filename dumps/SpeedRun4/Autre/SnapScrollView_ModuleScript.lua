-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:35
-- Luau version 6, Types version 3
-- Time taken: 0.002396 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local useState_upvr = React_upvr.useState
local useSnapScrollController_upvr = require(Parent_2.Hooks.useSnapScrollController)
local useCallback_upvr = React_upvr.useCallback
local useEffect_upvr = React_upvr.useEffect
local Cryo_upvr = require(Parent.Cryo)
local View_upvr = require(Parent.Foundation).View
return function(arg1) -- Line 33
	--[[ Upvalues[7]:
		[1]: useState_upvr (readonly)
		[2]: useSnapScrollController_upvr (readonly)
		[3]: useCallback_upvr (readonly)
		[4]: useEffect_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Cryo_upvr (readonly)
		[7]: View_upvr (readonly)
	]]
	local var11 = 0
	local var5_result1, var5_result2_upvr = useState_upvr(Vector2.new(var11, 0))
	if arg1.active ~= nil then
		var11 = arg1.active
	else
		var11 = true
	end
	local var14_upvr = arg1.itemAbsoluteSize or var5_result1
	local var15_upvr = arg1.windowSize or 3
	local var6_result1_upvr, var6_result2, var6_result3, var6_result4_upvr, var6_result5_upvr = useSnapScrollController_upvr(var11, arg1.initialIndex or 1, var14_upvr, #arg1.contents)
	useEffect_upvr(function() -- Line 48
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var6_result1_upvr (readonly)
		]]
		if arg1.onIndexChanged then
			arg1.onIndexChanged(var6_result1_upvr)
		end
	end, {var6_result1_upvr, arg1.onIndexChanged})
	useEffect_upvr(function() -- Line 68
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var6_result4_upvr (readonly)
		]]
		if not arg1.scrollToIndexSignal then return end
		local any_connect_result1_upvr_2 = arg1.scrollToIndexSignal:connect(var6_result4_upvr)
		return function() -- Line 74
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr_2 (readonly)
			]]
			any_connect_result1_upvr_2:disconnect()
		end
	end, {arg1.scrollToIndexSignal, var6_result4_upvr})
	useEffect_upvr(function() -- Line 79
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var6_result5_upvr (readonly)
		]]
		if not arg1.triggerNavigationSignal then return end
		local any_connect_result1_upvr = arg1.triggerNavigationSignal:connect(var6_result5_upvr)
		return function() -- Line 85
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr (readonly)
			]]
			any_connect_result1_upvr:disconnect()
		end
	end, {arg1.triggerNavigationSignal, var6_result5_upvr})
	return React_upvr.createElement(View_upvr, {
		onAbsoluteSizeChanged = useCallback_upvr(function(arg1_2) -- Line 44
			--[[ Upvalues[1]:
				[1]: var5_result2_upvr (readonly)
			]]
			var5_result2_upvr(arg1_2.AbsoluteSize)
		end, {});
		ref = var6_result2;
		tag = "anchor-top-center bg-action-subtle position-top-center size-full";
	}, {
		MotionView = React_upvr.createElement(View_upvr, {
			LayoutOrder = 1;
			ref = var6_result3;
			Size = UDim2.fromScale(1, #arg1.contents);
			tag = "align-x-center anchor-top-center bg-action-subtle col no-clip position-top-center";
		}, React_upvr.useMemo(function() -- Line 54
			--[[ Upvalues[7]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: var6_result1_upvr (readonly)
				[4]: var15_upvr (readonly)
				[5]: React_upvr (copied, readonly)
				[6]: View_upvr (copied, readonly)
				[7]: var14_upvr (readonly)
			]]
			return Cryo_upvr.List.map(arg1.contents, function(arg1_3, arg2) -- Line 55
				--[[ Upvalues[6]:
					[1]: var6_result1_upvr (copied, readonly)
					[2]: var15_upvr (copied, readonly)
					[3]: React_upvr (copied, readonly)
					[4]: View_upvr (copied, readonly)
					[5]: var14_upvr (copied, readonly)
					[6]: arg1 (copied, readonly)
				]]
				if arg2 < var6_result1_upvr - var15_upvr or var6_result1_upvr + var15_upvr < arg2 then
					local module = {
						key = `{"PLACEHOLDER"}-{arg2}`;
					}
					module.LayoutOrder = arg2
					module.Size = UDim2.fromOffset(var14_upvr.X, var14_upvr.Y)
					module.tag = "anchor-top-center bg-action-subtle position-top-center"
					return React_upvr.createElement(View_upvr, module)
				end
				return arg1.renderContent(arg1_3, arg2)
			end)
		end, {var6_result1_upvr, var14_upvr, arg1.contents, arg1.renderContent, var15_upvr}));
	})
end