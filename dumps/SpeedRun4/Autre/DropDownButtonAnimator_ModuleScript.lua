-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:17
-- Luau version 6, Types version 3
-- Time taken: 0.005316 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Otter_upvr = require(CorePackages.Packages.Otter)
local tbl_2_upvr = {
	dampingRatio = 1;
	frequency = 4;
}
local tbl_upvr = {
	dampingRatio = 1;
	frequency = 4;
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("DropDownAnimator")
any_extend_result1.validateProps = t.strictInterface({
	text = t.string;
	icon = t.union(t.string, t.table);
	lastButton = t.boolean;
	layoutOrder = t.integer;
	onActivated = t.callback;
	forceShowOptions = t.boolean;
	selectedPlayer = t.optional(t.instanceIsA("Player"));
	onDecline = t.optional(t.callback);
	onDismiss = t.optional(t.callback);
	contentVisible = t.boolean;
})
function any_extend_result1.init(arg1) -- Line 39
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
	]]
	arg1.state = {
		lastButtonProps = nil;
		onDeclineCalled = nil;
		onActivatedCalled = nil;
		overlayPercentage = 0;
	}
	local any_createBinding_result1, any_createBinding_result2_2 = Roact_upvr.createBinding(UDim2.new(0, 0, 0, 0))
	arg1.currentButtonPosition = any_createBinding_result1
	arg1.updateCurrentButtonPosition = any_createBinding_result2_2
	local any_createBinding_result1_2, any_createBinding_result2 = Roact_upvr.createBinding(UDim2.new(0, 0, 0, 0))
	arg1.lastButtonPosition = any_createBinding_result1_2
	arg1.updateLastButtonPosition = any_createBinding_result2
	arg1.positionMotor = Otter_upvr.createSingleMotor(0)
	arg1.positionMotor:onStep(function(arg1_2) -- Line 51
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateCurrentButtonPosition(UDim2.new(arg1_2, 0, 0, 0))
		if arg1.animatingRight then
			arg1.updateLastButtonPosition(UDim2.new(arg1_2 + 1, 0, 0, 0))
		else
			arg1.updateLastButtonPosition(UDim2.new(arg1_2 - 1, 0, 0, 0))
		end
	end)
	arg1.positionMotor:onComplete(function(arg1_3) -- Line 59
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
		]]
		if arg1_3 == 0 then
			arg1:setState({
				lastButtonProps = Roact_upvr.None;
				onDeclineCalled = Roact_upvr.None;
				onActivatedCalled = Roact_upvr.None;
			})
		end
	end)
	arg1.overlayMotor = Otter_upvr.createSingleMotor(0)
	arg1.overlayMotor:onStep(function(arg1_4) -- Line 70
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_4 = {}
		tbl_4.overlayPercentage = arg1_4
		arg1:setState(tbl_4)
	end)
	arg1.overlayMotor:onComplete(function(arg1_5) -- Line 75
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
			[3]: tbl_2_upvr (copied, readonly)
		]]
		if arg1_5 == 1 then
			arg1.positionMotor:setGoal(Otter_upvr.spring(0, tbl_2_upvr))
		end
	end)
end
function any_extend_result1.getButtonProps(arg1, arg2, arg3) -- Line 82
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local tbl_3 = {
		text = arg2.text;
		icon = arg2.icon;
		lastButton = arg2.lastButton;
		forceShowOptions = arg2.forceShowOptions;
	}
	local onDismiss = arg2.onDismiss
	tbl_3.onDismiss = onDismiss
	if arg1.state.lastButtonProps == nil then
		onDismiss = false
	else
		onDismiss = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 19. Error Block 6 start (CF ANALYSIS FAILED)
	tbl_3.animatingAccept = arg1.state.onActivatedCalled
	tbl_3.animatingDecline = arg1.state.onDeclineCalled
	tbl_3.animatingPercentage = arg1.state.overlayPercentage
	do
		return tbl_3
	end
	-- KONSTANTERROR: [32] 19. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [51] 29. Error Block 25 start (CF ANALYSIS FAILED)
	if arg2.onActivated and (arg2.onDecline or arg1.props.forceShowOptions) then
		function tbl_3.onActivated() -- Line 99
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1:setState({
				onActivatedCalled = true;
				onDeclineCalled = false;
			})
			arg2.onActivated()
		end
	elseif arg2.onActivated then
		tbl_3.onActivated = arg2.onActivated
	end
	if arg2.onDecline then
		function tbl_3.onDecline() -- Line 110
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1:setState({
				onActivatedCalled = false;
				onDeclineCalled = true;
			})
			arg2.onDecline()
		end
	end
	-- KONSTANTERROR: [51] 29. Error Block 25 end (CF ANALYSIS FAILED)
end
local WithLayoutValues_upvr = require(script.Parent.Parent.Connection.LayoutValues).WithLayoutValues
local DropDownButton_upvr = require(script.Parent.DropDownButton)
function any_extend_result1.render(arg1) -- Line 123
	--[[ Upvalues[3]:
		[1]: WithLayoutValues_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: DropDownButton_upvr (readonly)
	]]
	return WithLayoutValues_upvr(function(arg1_6) -- Line 124
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: DropDownButton_upvr (copied, readonly)
		]]
		local module = {
			CurrentButtonContainer = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				Position = arg1.currentButtonPosition;
				BackgroundTransparency = 1;
			}, {
				DropDownButton = Roact_upvr.createElement(DropDownButton_upvr, arg1:getButtonProps(arg1.props));
			});
		}
		if arg1.state.lastButtonProps then
			module.LastButtonContainer = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				Position = arg1.lastButtonPosition;
				BackgroundTransparency = 1;
			}, {
				DropDownButton = Roact_upvr.createElement(DropDownButton_upvr, arg1:getButtonProps(arg1.state.lastButtonProps, true));
			})
		end
		return Roact_upvr.createElement("Frame", {
			Visible = arg1.props.contentVisible;
			ZIndex = 2;
			Size = UDim2.new(1, 0, 0, arg1_6.DropDownButtonSizeY);
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.layoutOrder;
		}, module)
	end)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 158
	--[[ Upvalues[3]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var35
	if arg1.props.text == arg2.text then
		var35 = false
	else
		var35 = true
	end
	if arg2.onDecline == nil then
	end
	if not arg1.state.onDeclineCalled then
	end
	if var35 and arg1.props.forceShowOptions and arg1.state.onActivatedCalled then
		if arg1.state.onActivatedCalled and not arg1.props.forceShowOptions then
			arg1.animatingRight = true
			arg1.positionMotor:setGoal(Otter_upvr.instant(-1))
		else
			arg1.animatingRight = false
			arg1.positionMotor:setGoal(Otter_upvr.instant(1))
		end
		arg1.overlayMotor:setGoal(Otter_upvr.instant(0))
		arg1.positionMotor:step(0)
		arg1.overlayMotor:step(0)
		local tbl = {}
		tbl.lastButtonProps = arg2
		arg1:setState(tbl)
		arg1.overlayMotor:setGoal(Otter_upvr.spring(1, tbl_upvr))
	end
	if arg1.props.selectedPlayer ~= arg2.selectedPlayer then
		arg1.positionMotor:setGoal(Otter_upvr.instant(0))
		arg1.overlayMotor:setGoal(Otter_upvr.instant(0))
		arg1.positionMotor:step(0)
		arg1.overlayMotor:step(0)
		arg1:setState({
			lastButtonProps = Roact_upvr.None;
		})
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 193
	arg1.positionMotor:destroy()
	arg1.positionMotor = nil
	arg1.overlayMotor:destroy()
	arg1.overlayMotor = nil
end
return any_extend_result1