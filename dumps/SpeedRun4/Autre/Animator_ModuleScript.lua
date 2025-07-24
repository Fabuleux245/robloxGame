-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:15
-- Luau version 6, Types version 3
-- Time taken: 0.002760 seconds

local PurchasePromptDeps = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps)
local Roact_upvr = PurchasePromptDeps.Roact
local Otter_upvr = PurchasePromptDeps.Otter
local t = PurchasePromptDeps.t
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
local tbl_upvr = {
	dampingRatio = 1;
	frequency = 1.6;
}
any_extend_result1.validateProps = t.interface({
	shouldShow = t.boolean;
	onShown = t.optional(t.callback);
	onHidden = t.optional(t.callback);
})
function any_extend_result1.init(arg1) -- Line 23
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(1)
	arg1.motor = Otter_upvr.createSingleMotor(1)
	arg1.motor:start()
	arg1.motor:onStep(any_createBinding_result2)
	arg1.animationProgress = any_createBinding_result1
	arg1.motor:onComplete(function() -- Line 32
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 9. Error Block 3 start (CF ANALYSIS FAILED)
		arg1.props.onShown()
		do
			return
		end
		-- KONSTANTERROR: [12] 9. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 14. Error Block 7 start (CF ANALYSIS FAILED)
		if arg1.props.onHidden then
			arg1.props.onHidden()
		end
		-- KONSTANTERROR: [19] 14. Error Block 7 end (CF ANALYSIS FAILED)
	end)
	local var11 = Otter_upvr
	if arg1.props.shouldShow then
		var11 = 0
	else
		var11 = 1
	end
	arg1.motor:setGoal(var11.spring(var11, tbl_upvr))
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 47
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if arg2.shouldShow ~= arg1.props.shouldShow then
		local var12 = Otter_upvr
		if arg1.props.shouldShow then
			var12 = 0
		else
			var12 = 1
		end
		arg1.motor:setGoal(var12.spring(var12, tbl_upvr))
	end
end
function any_extend_result1.render(arg1) -- Line 53
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		Position = arg1.animationProgress:map(function(arg1_2) -- Line 58
			return UDim2.new(0, 0, -1 * arg1_2, 0)
		end);
	}, arg1.props[Roact_upvr.Children])
end
return any_extend_result1