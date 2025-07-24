-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:47
-- Luau version 6, Types version 3
-- Time taken: 0.004656 seconds

local Parent = script.Parent.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local module = {}
local Otter_upvr = require(Parent.Otter)
local any_intersection_result1_upvr = t.intersection(t.strictInterface({
	animatedValues = t.table;
	mapValuesToProps = t.callback;
	springOptions = t.optional(t.table);
	onComplete = t.optional(t.callback);
	regularProps = t.table;
	[Roact_upvr.Children] = t.optional(t.table);
}), function(arg1) -- Line 53
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	if arg1[Roact_upvr.Children] ~= nil and arg1.regularProps[Roact_upvr.Children] ~= nil then
		return false, "Children must be specified in one place, but the [Roact.Children] key was found".." in both props and props.regularProps on SpringAnimatedItem."
	end
	return true
end)
local Cryo_upvr = require(Parent.Cryo)
function module.wrap(arg1) -- Line 66
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: any_intersection_result1_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	local any_extend_result1 = Roact_upvr.PureComponent:extend(string.format("SpringAnimatedItem(%s)", tostring(arg1)))
	any_extend_result1.defaultProps = {
		regularProps = {};
	}
	function any_extend_result1.init(arg1_2) -- Line 73
		--[[ Upvalues[1]:
			[1]: Roact_upvr (copied, readonly)
		]]
		local var12 = arg1_2.props.regularProps[Roact_upvr.Ref]
		if not var12 then
			var12 = Roact_upvr.createRef()
		end
		arg1_2.ref = var12
		function arg1_2.applyAnimatedValues(arg1_3) -- Line 76
			--[[ Upvalues[1]:
				[1]: arg1_2 (readonly)
			]]
			local current = arg1_2.ref.current
			if current == nil then
			else
				for i_2, v_2 in pairs(arg1_2.props.mapValuesToProps(arg1_3)) do
					current[i_2] = v_2
				end
			end
		end
		function arg1_2.onComplete() -- Line 90
			--[[ Upvalues[1]:
				[1]: arg1_2 (readonly)
			]]
			if arg1_2.props.onComplete then
				arg1_2.props.onComplete()
			end
		end
		arg1_2.motor = nil
	end
	function any_extend_result1.didMount(arg1_4) -- Line 99
		--[[ Upvalues[1]:
			[1]: Otter_upvr (copied, readonly)
		]]
		local animatedValues = arg1_4.props.animatedValues
		arg1_4.applyAnimatedValues(animatedValues)
		arg1_4.motor = Otter_upvr.createGroupMotor(animatedValues)
		arg1_4.motor:onStep(function(arg1_5) -- Line 107
			--[[ Upvalues[1]:
				[1]: arg1_4 (readonly)
			]]
			arg1_4.applyAnimatedValues(arg1_5)
		end)
		arg1_4.motor:onComplete(arg1_4.onComplete)
		arg1_4.motor:start()
	end
	function any_extend_result1.willUpdate(arg1_6, arg2) -- Line 114
		--[[ Upvalues[1]:
			[1]: Roact_upvr (copied, readonly)
		]]
		if arg1_6.props.regularProps[Roact_upvr.Ref] ~= arg2.regularProps[Roact_upvr.Ref] and arg2.regularProps[Roact_upvr.Ref] ~= nil then
			arg1_6.ref = arg2.regularProps[Roact_upvr.Ref]
		end
	end
	function any_extend_result1.render(arg1_7) -- Line 123
		--[[ Upvalues[4]:
			[1]: any_intersection_result1_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		assert(any_intersection_result1_upvr(arg1_7.props))
		return Roact_upvr.createElement(arg1, Cryo_upvr.Dictionary.join(arg1_7.props.regularProps, {
			[Roact_upvr.Ref] = arg1_7.ref;
			[Roact_upvr.Children] = arg1_7.props[Roact_upvr.Children];
		}))
	end
	function any_extend_result1.didUpdate(arg1_8, arg2) -- Line 135
		--[[ Upvalues[1]:
			[1]: Otter_upvr (copied, readonly)
		]]
		local var30
		if arg1_8.props.animatedValues ~= var30 then
			local tbl = {}
			var30 = false
			for i, v in pairs(arg1_8.props.animatedValues) do
				tbl[i] = Otter_upvr.spring(v, arg1_8.props.springOptions)
				if v ~= arg2.animatedValues[i] then
					var30 = true
				end
			end
			if var30 then
				arg1_8.motor:setGoal(tbl)
			end
		end
	end
	function any_extend_result1.willUnmount(arg1_9) -- Line 153
		if arg1_9.motor then
			arg1_9.motor:destroy()
			arg1_9.motor = nil
		end
	end
	return any_extend_result1
end
module.AnimatedFrame = module.wrap("Frame")
module.AnimatedScrollingFrame = module.wrap("ScrollingFrame")
module.AnimatedImageLabel = module.wrap("ImageLabel")
module.AnimatedTextButton = module.wrap("TextButton")
module.AnimatedUIScale = module.wrap("UIScale")
return module