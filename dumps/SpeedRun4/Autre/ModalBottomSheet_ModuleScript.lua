-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:33
-- Luau version 6, Types version 3
-- Time taken: 0.002513 seconds

local Parent = script.Parent.Parent.Parent
local Otter_upvr = require(Parent.Otter)
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ModalBottomSheet")
local tbl_upvr = {
	frequency = 4;
	dampingRatio = 1;
}
any_extend_result1.validateProps = t.strictInterface({
	buttonModels = t.array(t.table);
	screenWidth = t.number;
	onDismiss = t.callback;
	showImages = t.optional(t.boolean);
	bottomGap = t.optional(t.number);
	sheetContentXSize = t.optional(t.UDim);
	sheetContentXPosition = t.optional(t.UDim);
})
any_extend_result1.defaultProps = {
	bottomGap = 0;
	showImages = true;
	sheetContentXSize = UDim.new(1, 0);
	sheetContentXPosition = UDim.new(0, 0);
}
function any_extend_result1.init(arg1) -- Line 48
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	arg1.motor = Otter_upvr.createSingleMotor(0)
	arg1.ref = Roact_upvr.createRef()
	arg1.active = true
end
local Cryo_upvr = require(Parent.Cryo)
local ModalBottomSheetButton_upvr = require(script.Parent.ModalBottomSheetButton)
local withStyle_upvr = require(Parent.UIBlox.Core.Style.withStyle)
function any_extend_result1.render(arg1) -- Line 54
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ModalBottomSheetButton_upvr (readonly)
		[4]: withStyle_upvr (readonly)
		[5]: Otter_upvr (readonly)
		[6]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	arg1.sheetHeight = #arg1.props.buttonModels * 56
	local onActivatedAndDismissed
	if 7 <= #arg1.props.buttonModels then
		arg1.sheetHeight = 420
	end
	local props = arg1.props
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(props.buttonModels)
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [58] 37. Error Block 28 start (CF ANALYSIS FAILED)
	onActivatedAndDismissed = true
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [59.11]
	nil.hasRoundBottom = onActivatedAndDismissed
	if 600 >= arg1.props.screenWidth then
		onActivatedAndDismissed = false
	else
		onActivatedAndDismissed = true
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.isFixed = onActivatedAndDismissed
	onActivatedAndDismissed = 56
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.elementHeight = onActivatedAndDismissed
	onActivatedAndDismissed = arg1.props.showImages
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.showImage = onActivatedAndDismissed
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.LayoutOrder = props
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [83.8]
	local var17_upvr
	function onActivatedAndDismissed(arg1_2) -- Line 71
		--[[ Upvalues[2]:
			[1]: var17_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if var17_upvr.onActivated then
			var17_upvr.onActivated(arg1_2)
		end
		if not var17_upvr.stayOnActivated then
			arg1.props.onDismiss()
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.onActivatedAndDismissed = onActivatedAndDismissed
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [88.9]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [88.10]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	onActivatedAndDismissed = props
	onActivatedAndDismissed = Roact_upvr
	onActivatedAndDismissed = ModalBottomSheetButton_upvr
	;({})["button "..onActivatedAndDismissed] = onActivatedAndDismissed.createElement(onActivatedAndDismissed, nil(nil, nil))
	-- KONSTANTERROR: [58] 37. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 23. Error Block 26 start (CF ANALYSIS FAILED)
	if props ~= 1 then
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [99.2147483650]
	if props ~= nil(nil, nil) then
		-- KONSTANTWARNING: GOTO [59] #38
	end
	-- KONSTANTERROR: [37] 23. Error Block 26 end (CF ANALYSIS FAILED)
end
function any_extend_result1.didMount(arg1) -- Line 127
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local sheetContentXPosition_upvr = arg1.props.sheetContentXPosition
	arg1.motor:onStep(function(arg1_3) -- Line 129
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: sheetContentXPosition_upvr (readonly)
		]]
		if arg1.ref.current then
			arg1.ref.current.Position = UDim2.new(sheetContentXPosition_upvr.Scale, sheetContentXPosition_upvr.Offset, 1, -(arg1.sheetHeight + arg1.props.bottomGap) * arg1_3)
		end
	end)
	arg1.motor:setGoal(Otter_upvr.spring(1, tbl_upvr))
	arg1.motor:onComplete(function() -- Line 140
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.active then
			arg1.props.onDismiss()
		end
	end)
	arg1.motor:start()
end
function any_extend_result1.wilUnmount(arg1) -- Line 148
	arg1.motor:destroy()
end
return any_extend_result1