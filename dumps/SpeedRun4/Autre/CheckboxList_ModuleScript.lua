-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:57
-- Luau version 6, Types version 3
-- Time taken: 0.003702 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("CheckboxList")
any_extend_result1.validateProps = t.strictInterface({
	checkboxes = t.array(t.union(t.string, t.strictInterface({
		label = t.string;
		isSelected = t.optional(t.boolean);
		isDisabled = t.optional(t.boolean);
	})));
	onActivated = t.callback;
	elementSize = t.UDim2;
	atMost = t.optional(t.number);
	layoutOrder = t.optional(t.number);
})
local function _(arg1) -- Line 31, Named "numTrue"
	local var14
	for _, v in pairs(arg1) do
		if v then
			var14 += 1
		end
	end
	return var14
end
local Cryo_upvr = require(Parent.Cryo)
function any_extend_result1.init(arg1) -- Line 42
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var32
	if not arg1.props.atMost then
		local len_upvr = #arg1.props.checkboxes
	end
	local tbl = {}
	var32 = arg1.props
	for i_2, v_2 in ipairs(var32.checkboxes) do
		if type(v_2) == "table" then
			tbl[i_2] = v_2.isSelected or false
			;({})[i_2] = v_2.isDisabled or false
		end
	end
	for _, v_3 in pairs(tbl) do
		if v_3 then
		end
	end
	if 0 + 1 >= len_upvr then
	else
	end
	assert(true, "number of 'isSelected' must be less than atMost!")
	local tbl_5 = {
		selectedIndices = tbl;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_5.disabledIndices = {}
	arg1.state = tbl_5
	function arg1.doLogic(arg1_2) -- Line 62
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: len_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl_2 = {}
		local tbl_4 = {}
		local var53
		if not arg1.state.selectedIndices[arg1_2] then
			var53 = arg1.state
			var53 = 0
			for _, v_4 in pairs(var53.selectedIndices) do
				if v_4 then
					var53 += 1
				end
			end
			if var53 >= len_upvr then
			else
			end
		end
		tbl_4[arg1_2] = true
		tbl_2.selectedIndices = Cryo_upvr.Dictionary.join(arg1.state.selectedIndices, tbl_4)
		arg1:setState(tbl_2)
		arg1.props.onActivated(arg1.state.selectedIndices)
	end
end
local Checkbox_upvr = require(script.Parent.Checkbox)
function any_extend_result1.render(arg1) -- Line 73
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Checkbox_upvr (readonly)
	]]
	local module = {
		layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	for i_5_upvr, v_5 in ipairs(arg1.props.checkboxes) do
		local tbl_3 = {}
		local onActivated
		local function INLINED() -- Internal function, doesn't exist in bytecode
			onActivated = v_5.label
			return onActivated
		end
		if type(v_5) ~= "table" or not INLINED() then
			onActivated = v_5
		end
		tbl_3.text = onActivated
		onActivated = arg1.state.selectedIndices[i_5_upvr]
		tbl_3.isSelected = onActivated
		onActivated = arg1.state.disabledIndices[i_5_upvr]
		tbl_3.isDisabled = onActivated
		function onActivated() -- Line 84
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: i_5_upvr (readonly)
			]]
			arg1.doLogic(i_5_upvr)
		end
		tbl_3.onActivated = onActivated
		onActivated = arg1.props.elementSize
		tbl_3.size = onActivated
		tbl_3.layoutOrder = i_5_upvr
		module["Checkbox"..i_5_upvr] = Roact_upvr.createElement(Checkbox_upvr, tbl_3)
	end
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.layoutOrder;
	}, module)
end
return any_extend_result1