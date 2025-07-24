-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:15
-- Luau version 6, Types version 3
-- Time taken: 0.003910 seconds

local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent.Parent
local var6_upvw
while not var6_upvw do
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	var6_upvw = Players.LocalPlayer
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("HealthConnector")
any_extend_result1.validateProps = t.strictInterface({
	setIsDead = t.callback;
	updateHealth = t.callback;
})
function any_extend_result1.init(arg1) -- Line 30
	arg1:setState({
		character = nil;
		humanoid = nil;
	})
end
function any_extend_result1.didMount(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	local Character = var6_upvw.Character
	local var11
	if Character then
		var11 = Character:FindFirstChildOfClass("Humanoid")
	end
	arg1:setState({
		character = Character;
		humanoid = var11;
	})
end
local EventConnection_upvr = require(Parent.Parent.Common.EventConnection)
function any_extend_result1.render(arg1) -- Line 50
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: EventConnection_upvr (readonly)
		[3]: var6_upvw (read and write)
	]]
	local module = {}
	if arg1.state.humanoid then
		local tbl_3 = {
			event = arg1.state.humanoid.HealthChanged;
		}
		local function callback(arg1_2) -- Line 56
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.updateHealth(arg1.state.humanoid.Health, arg1.state.humanoid.MaxHealth)
		end
		tbl_3.callback = callback
		module.HealthChangedConnection = Roact_upvr.createElement(EventConnection_upvr, tbl_3)
		local tbl = {
			event = arg1.state.humanoid.Died;
		}
		local function callback() -- Line 63
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.setIsDead(true)
		end
		tbl.callback = callback
		module.HumanoidDiedConnection = Roact_upvr.createElement(EventConnection_upvr, tbl)
	elseif arg1.state.character then
		local tbl_2 = {
			event = arg1.state.character.ChildAdded;
		}
		local function callback(arg1_3) -- Line 70
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_3:IsA("Humanoid") then
				local tbl_4 = {}
				tbl_4.humanoid = arg1_3
				arg1:setState(tbl_4)
			end
		end
		tbl_2.callback = callback
		module.ChildAddedConnection = Roact_upvr.createElement(EventConnection_upvr, tbl_2)
	end
	local tbl_5 = {
		event = var6_upvw.CharacterAdded;
	}
	local function callback(arg1_4) -- Line 82
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
		]]
		local tbl_6 = {}
		local class_Humanoid = arg1_4:FindFirstChildOfClass("Humanoid")
		if not class_Humanoid then
			class_Humanoid = Roact_upvr.None
		end
		tbl_6.humanoid = class_Humanoid
		tbl_6.character = arg1_4
		arg1:setState(tbl_6)
		arg1.props.setIsDead(false)
	end
	tbl_5.callback = callback
	module.CharacterAddedConnection = Roact_upvr.createElement(EventConnection_upvr, tbl_5)
	module.CharacterRemovingConnection = Roact_upvr.createElement(EventConnection_upvr, {
		event = var6_upvw.CharacterRemoving;
		callback = function() -- Line 93, Named "callback"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Roact_upvr (copied, readonly)
			]]
			arg1:setState({
				humanoid = Roact_upvr.None;
				character = Roact_upvr.None;
			})
		end;
	})
	return Roact_upvr.createFragment(module)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 104
	if arg1.state.humanoid == nil then
		arg1.props.updateHealth(0, 0)
	elseif arg1.state.humanoid ~= arg3.humanoid then
		arg1.props.setIsDead(false)
		arg1.props.updateHealth(arg1.state.humanoid.Health, arg1.state.humanoid.MaxHealth)
	end
	if arg1.state.character and arg1.state.character ~= arg3.character then
		local class_Humanoid_3 = arg1.state.character:FindFirstChildWhichIsA("Humanoid")
		if class_Humanoid_3 and class_Humanoid_3 ~= arg1.state.humanoid then
			arg1:setState({
				humanoid = class_Humanoid_3;
			})
		end
	end
end
local SetIsDead_upvr = require(Parent.Actions.SetIsDead)
local UpdateHealth_upvr = require(Parent.Actions.UpdateHealth)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(nil, function(arg1) -- Line 122, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: SetIsDead_upvr (readonly)
		[2]: UpdateHealth_upvr (readonly)
	]]
	return {
		setIsDead = function(arg1_5) -- Line 124, Named "setIsDead"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetIsDead_upvr (copied, readonly)
			]]
			return arg1(SetIsDead_upvr(arg1_5))
		end;
		updateHealth = function(arg1_6, arg2) -- Line 128, Named "updateHealth"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: UpdateHealth_upvr (copied, readonly)
			]]
			return arg1(UpdateHealth_upvr(arg1_6, arg2))
		end;
	}
end)(any_extend_result1)