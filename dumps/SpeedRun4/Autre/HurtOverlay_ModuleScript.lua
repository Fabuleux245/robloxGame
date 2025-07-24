-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:33
-- Luau version 6, Types version 3
-- Time taken: 0.003653 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Otter_upvr = require(CorePackages.Packages.Otter)
local tbl_upvr = {
	frequency = 0.75;
	dampingRatio = 1;
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("HurtOverlay")
any_extend_result1.validateProps = t.strictInterface({
	healthEnabled = t.boolean;
	health = t.number;
	maxHealth = t.number;
	isDead = t.boolean;
})
function any_extend_result1.init(arg1) -- Line 34
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
	]]
	arg1.state = {
		isAnimating = false;
	}
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.animationBinding = any_createBinding_result1
	arg1.animationBindingUpdate = any_createBinding_result2
	arg1.positionBinding = arg1.animationBinding:map(function(arg1_2) -- Line 41
		return UDim2.new(-10 * arg1_2, 0, -10 * arg1_2, 0)
	end)
	arg1.sizeBinding = arg1.animationBinding:map(function(arg1_3) -- Line 44
		return UDim2.new(1 + 19 * arg1_3, 0, 1 + 19 * arg1_3, 0)
	end)
	arg1.motor = Otter_upvr.createSingleMotor(0)
	arg1.motor:onStep(function(arg1_4) -- Line 49
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.animationBindingUpdate(arg1_4)
	end)
	arg1.motor:onComplete(function() -- Line 52
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isAnimating = false;
		})
	end)
end
local Color3_fromRGB_result1_upvr = Color3.fromRGB(187, 0, 4)
local CachedPolicyService_upvr = require(CorePackages.Workspace.Packages.CachedPolicyService)
local Color3_new_result1_upvr = Color3.new(1, 1, 1)
function any_extend_result1.renderOverlay(arg1) -- Line 59
	--[[ Upvalues[4]:
		[1]: Color3_fromRGB_result1_upvr (readonly)
		[2]: CachedPolicyService_upvr (readonly)
		[3]: Color3_new_result1_upvr (readonly)
		[4]: Roact_upvr (readonly)
	]]
	local healthEnabled = arg1.props.healthEnabled
	if healthEnabled then
		healthEnabled = arg1.state.isAnimating
	end
	local var20 = Color3_fromRGB_result1_upvr
	if CachedPolicyService_upvr:IsSubjectToChinaPolicies() then
		var20 = Color3_new_result1_upvr
	end
	return Roact_upvr.createElement("ImageLabel", {
		Visible = healthEnabled;
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/TopBar/WhiteOverlayAsset.png";
		ImageColor3 = var20;
		Size = arg1.sizeBinding;
		Position = arg1.positionBinding;
	})
end
function any_extend_result1.render(arg1) -- Line 78
	return arg1:renderOverlay()
end
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 82
	--[[ Upvalues[3]:
		[1]: Constants_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if arg1.props.health < arg2.health and (not arg1.props.isDead or not arg2.isDead) then
		if Constants_upvr.HealthPercentForOverlay <= (arg2.health - arg1.props.health) / arg1.props.maxHealth then
			arg1.motor:setGoal(Otter_upvr.instant(0))
			arg1.motor:step(0)
			arg1.motor:setGoal(Otter_upvr.spring(1, tbl_upvr))
			arg1.motor:start()
			arg1:setState({
				isAnimating = true;
			})
		end
	end
end
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1) -- Line 99, Named "mapStateToProps"
	return {
		health = arg1.health.currentHealth;
		maxHealth = arg1.health.maxHealth;
		isDead = arg1.health.isDead;
		healthEnabled = arg1.coreGuiEnabled[Enum.CoreGuiType.Health];
	}
end, nil)(any_extend_result1)