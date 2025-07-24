-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:26
-- Luau version 6, Types version 3
-- Time taken: 0.001652 seconds

local Parent = script.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local isRoact17_upvr = require(script.Parent.isRoact17)
local Cryo_upvr = require(Parent.Cryo)
local FitFrameOnAxis_upvr = require(script.Parent.FitFrameOnAxis)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 10
	--[[ Upvalues[4]:
		[1]: isRoact17_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: FitFrameOnAxis_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7 = arg1
	if not var7 then
		var7 = {}
	end
	local var8 = var7
	if isRoact17_upvr() then
	else
	end
	local module = {
		axis = FitFrameOnAxis_upvr.Axis.Horizontal;
		minimumSize = UDim2.new(UDim.new(0, 0), var8.height);
	}
	module[Roact_upvr.Ref] = arg2
	module.height = Cryo_upvr.None
	return Roact_upvr.createElement(FitFrameOnAxis_upvr, Cryo_upvr.Dictionary.join(var8, module))
end)