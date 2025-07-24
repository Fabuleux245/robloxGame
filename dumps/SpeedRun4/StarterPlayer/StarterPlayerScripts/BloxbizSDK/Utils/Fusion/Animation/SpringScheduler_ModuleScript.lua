-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:47
-- Luau version 6, Types version 3
-- Time taken: 0.001807 seconds

local Parent = script.Parent.Parent
local module = {}
local tbl_upvr = {}
local os_clock_result1_upvw = os.clock()
function module.add(arg1) -- Line 24
	--[[ Upvalues[2]:
		[1]: os_clock_result1_upvw (read and write)
		[2]: tbl_upvr (readonly)
	]]
	arg1._lastSchedule = os_clock_result1_upvw
	arg1._startDisplacements = {}
	arg1._startVelocities = {}
	for i, v in ipairs(arg1._springGoals) do
		arg1._startDisplacements[i] = arg1._springPositions[i] - v
		arg1._startVelocities[i] = arg1._springVelocities[i]
	end
	tbl_upvr[arg1] = true
end
function module.remove(arg1) -- Line 39
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1] = nil
end
local springCoefficients_upvr = require(Parent.Animation.springCoefficients)
local packType_upvr = require(Parent.Animation.packType)
local updateAll_upvr = require(Parent.Dependencies.updateAll)
game:GetService("RunService"):BindToRenderStep("__FusionSpringScheduler", Enum.RenderPriority.First.Value, function() -- Line 44, Named "updateAllSprings"
	--[[ Upvalues[5]:
		[1]: os_clock_result1_upvw (read and write)
		[2]: tbl_upvr (readonly)
		[3]: springCoefficients_upvr (readonly)
		[4]: packType_upvr (readonly)
		[5]: updateAll_upvr (readonly)
	]]
	os_clock_result1_upvw = os.clock()
	for i_2 in pairs(tbl_upvr) do
		local var10_result1, var10_result2, var10_result3, var10_result4 = springCoefficients_upvr(os_clock_result1_upvw - i_2._lastSchedule, i_2._currentDamping, i_2._currentSpeed)
		local var33
		for i_3, v_2 in ipairs(i_2._springGoals) do
			local var34 = i_2._startDisplacements[i_3]
			local var35 = i_2._startVelocities[i_3]
			local var36 = var34 * var10_result1 + var35 * var10_result2
			local var37 = var34 * var10_result3 + var35 * var10_result4
			if 0.0001 < math.abs(var36) or 0.0001 < math.abs(var37) then
			end
			i_2._springPositions[i_3] = var36 + v_2
			i_2._springVelocities[i_3] = var37
		end
		if not nil then
			({})[i_2] = true
		end
	end
	for i_4 in pairs(tbl_upvr) do
		i_4._currentValue = packType_upvr(i_4._springPositions, i_4._currentType)
		updateAll_upvr(i_4)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	for i_5 in pairs({}) do
		tbl_upvr[i_5] = nil
	end
end)
return module