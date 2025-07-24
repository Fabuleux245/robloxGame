-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:33
-- Luau version 6, Types version 3
-- Time taken: 0.007988 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local Enabled_upvr = require(Parent.Parent.Chrome.Enabled)
if require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagFixChromeReferences() then
	if Enabled_upvr() then
	else
	end
elseif Enabled_upvr then
else
end
local var8_result1_upvr = Enabled_upvr()
local udim2_upvw = UDim2.new(0, 80, 0, 6)
if var8_result1_upvr then
	udim2_upvw = UDim2.new(0, 125, 0, 20)
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("HealthBar")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.integer);
	screenSize = t.Vector2;
	healthEnabled = t.boolean;
	health = t.number;
	maxHealth = t.number;
	setKeepOutArea = t.callback;
	removeKeepOutArea = t.callback;
})
local function _(arg1) -- Line 60, Named "color3ToVector3"
	return Vector3.new(arg1.r, arg1.g, arg1.b)
end
local tbl_5_upvr = {}
local HealthRedColor = Constants_upvr.HealthRedColor
tbl_5_upvr[Vector3.new(HealthRedColor.r, HealthRedColor.g, HealthRedColor.b)] = 0.1
local HealthYellowColor = Constants_upvr.HealthYellowColor
tbl_5_upvr[Vector3.new(HealthYellowColor.r, HealthYellowColor.g, HealthYellowColor.b)] = 0.5
local HealthGreenColor = Constants_upvr.HealthGreenColor
tbl_5_upvr[Vector3.new(HealthGreenColor.r, HealthGreenColor.g, HealthGreenColor.b)] = 0.8
local HealthRedColor_2_upvr = Constants_upvr.HealthRedColor
local HealthGreenColor_upvr = Constants_upvr.HealthGreenColor
local function getHealthBarColor_upvr(arg1) -- Line 74, Named "getHealthBarColor"
	--[[ Upvalues[3]:
		[1]: HealthRedColor_2_upvr (readonly)
		[2]: HealthGreenColor_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var27
	if arg1 <= var27 then
		var27 = HealthRedColor_2_upvr
		return var27
	end
	var27 = 0.8
	if var27 <= arg1 then
		var27 = HealthGreenColor_upvr
		return var27
	end
	var27 = Vector3.new(0, 0, 0)
	for i, v in pairs(tbl_5_upvr) do
		local var31 = arg1 - v
		if var31 == 0 then
			return Color3.new(i.x, i.y, i.z)
		end
		local var32 = (1) / (var31 * var31)
		var27 += var32 * i
	end
	local var33 = var27 / (0 + var32)
	return Color3.new(var33.x, var33.y, var33.z)
end
function any_extend_result1.init(arg1) -- Line 99
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.rootRef = Roact_upvr.createRef()
end
function any_extend_result1.onUnmount(arg1) -- Line 103
end
local udim2_upvr_2 = UDim2.new(0, 50, 0, 16)
local udim2_upvr = UDim2.new(0, 80, 0, 20)
local TenFootInterface_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.TenFootInterface)
local udim2_upvr_3 = UDim2.new(0, 220, 0, 16)
local var38_upvr = require(Parent.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
function any_extend_result1.renderHealth(arg1) -- Line 106
	--[[ Upvalues[11]:
		[1]: var8_result1_upvr (readonly)
		[2]: udim2_upvr_2 (readonly)
		[3]: udim2_upvr (readonly)
		[4]: udim2_upvw (read and write)
		[5]: TenFootInterface_upvr (readonly)
		[6]: udim2_upvr_3 (readonly)
		[7]: Constants_upvr (readonly)
		[8]: var38_upvr (readonly)
		[9]: getHealthBarColor_upvr (readonly)
		[10]: Roact_upvr (readonly)
		[11]: Enabled_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 80 start (CF ANALYSIS FAILED)
	if arg1.props.health >= arg1.props.maxHealth then
	else
	end
	-- KONSTANTERROR: [5] 4. Error Block 80 end (CF ANALYSIS FAILED)
end
function any_extend_result1.render(arg1) -- Line 212
	return arg1:renderHealth()
end
local SetKeepOutArea_upvr = require(Parent.Actions.SetKeepOutArea)
local RemoveKeepOutArea_upvr = require(Parent.Actions.RemoveKeepOutArea)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1) -- Line 216, Named "mapStateToProps"
	return {
		screenSize = arg1.displayOptions.screenSize;
		health = arg1.health.currentHealth;
		maxHealth = arg1.health.maxHealth;
		healthEnabled = arg1.coreGuiEnabled[Enum.CoreGuiType.Health];
	}
end, function(arg1) -- Line 225, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: SetKeepOutArea_upvr (readonly)
		[2]: RemoveKeepOutArea_upvr (readonly)
	]]
	return {
		setKeepOutArea = function(arg1_3, arg2, arg3) -- Line 227, Named "setKeepOutArea"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetKeepOutArea_upvr (copied, readonly)
			]]
			return arg1(SetKeepOutArea_upvr(arg1_3, arg2, arg3))
		end;
		removeKeepOutArea = function(arg1_4) -- Line 230, Named "removeKeepOutArea"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: RemoveKeepOutArea_upvr (copied, readonly)
			]]
			return arg1(RemoveKeepOutArea_upvr(arg1_4))
		end;
	}
end)(any_extend_result1)