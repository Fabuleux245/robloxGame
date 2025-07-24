-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:09
-- Luau version 6, Types version 3
-- Time taken: 0.001685 seconds

local Parent = script.Parent.Parent
local module_upvr = {}
local tbl_upvr = {}
setmetatable(tbl_upvr, {
	__mode = 'k';
})
function module_upvr.add(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1] = true
end
function module_upvr.remove(arg1) -- Line 36
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1] = nil
end
local updateAll_upvr = require(Parent.Dependencies.updateAll)
local getTweenRatio_upvr = require(Parent.Animation.getTweenRatio)
local lerpType_upvr = require(Parent.Animation.lerpType)
game:GetService("RunService"):BindToRenderStep("__FusionTweenScheduler", Enum.RenderPriority.First.Value, function() -- Line 43, Named "updateAllTweens"
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: updateAll_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: getTweenRatio_upvr (readonly)
		[5]: lerpType_upvr (readonly)
	]]
	for i in pairs(tbl_upvr) do
		local var12 = os.clock() - i._currentTweenStartTime
		if i._currentTweenDuration < var12 then
			if i._currentTweenInfo.Reverses then
				i._currentValue = i._prevValue
			else
				i._currentValue = i._nextValue
			end
			i._currentlyAnimating = false
			updateAll_upvr(i)
			module_upvr.remove(i)
		else
			i._currentValue = lerpType_upvr(i._prevValue, i._nextValue, getTweenRatio_upvr(i._currentTweenInfo, var12))
			i._currentlyAnimating = true
			updateAll_upvr(i)
		end
	end
end)
return module_upvr