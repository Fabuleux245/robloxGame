-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:54
-- Luau version 6, Types version 3
-- Time taken: 0.006196 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local function getGuiObjectIsObscuredAtPosition_upvr(arg1, arg2, arg3) -- Line 3, Named "getGuiObjectIsObscuredAtPosition"
	--[[ Upvalues[1]:
		[1]: CoreGui_upvr (readonly)
	]]
	for _, v in CoreGui_upvr:GetGuiObjectsAtPosition(arg2, arg3), nil do
		if v:IsA("Frame") and v.Active == false and v.BackgroundTransparency == 1 then
		elseif v:IsDescendantOf(arg1) then
		else
			if v == arg1 then
				return false
			end
			return true
		end
	end
	return false
end
return function(arg1) -- Line 19, Named "getGuiObjectIsObscured"
	--[[ Upvalues[1]:
		[1]: getGuiObjectIsObscuredAtPosition_upvr (readonly)
	]]
	local AbsolutePosition_2 = arg1.AbsolutePosition
	local AbsoluteSize_2 = arg1.AbsoluteSize
	local var38 = AbsolutePosition_2 + AbsoluteSize_2 * 0.5
	local var39 = AbsolutePosition_2 + AbsoluteSize_2
	local var40 = AbsolutePosition_2 + Vector2.new(AbsoluteSize_2.X, 0)
	local var41 = AbsolutePosition_2 + Vector2.new(0, AbsoluteSize_2.Y)
	local var42 = AbsolutePosition_2 + AbsoluteSize_2 * Vector2.new(math.random(1, 9) / 10, math.random(1, 9) / 10)
	local getGuiObjectIsObscuredAtPosition_result1_4 = getGuiObjectIsObscuredAtPosition_upvr(arg1, var38.X, var38.Y)
	if not getGuiObjectIsObscuredAtPosition_result1_4 then
		getGuiObjectIsObscuredAtPosition_result1_4 = getGuiObjectIsObscuredAtPosition_upvr(arg1, AbsolutePosition_2.X + 1, AbsolutePosition_2.Y + 1)
		if not getGuiObjectIsObscuredAtPosition_result1_4 then
			getGuiObjectIsObscuredAtPosition_result1_4 = getGuiObjectIsObscuredAtPosition_upvr(arg1, var41.X + 1, var41.Y - 1)
			if not getGuiObjectIsObscuredAtPosition_result1_4 then
				getGuiObjectIsObscuredAtPosition_result1_4 = getGuiObjectIsObscuredAtPosition_upvr(arg1, var40.X - 1, var40.Y + 1)
				if not getGuiObjectIsObscuredAtPosition_result1_4 then
					getGuiObjectIsObscuredAtPosition_result1_4 = getGuiObjectIsObscuredAtPosition_upvr(arg1, var39.X - 1, var39.Y - 1)
					if not getGuiObjectIsObscuredAtPosition_result1_4 then
						getGuiObjectIsObscuredAtPosition_result1_4 = getGuiObjectIsObscuredAtPosition_upvr(arg1, math.floor(var42.X), math.floor(var42.Y))
					end
				end
			end
		end
	end
	return getGuiObjectIsObscuredAtPosition_result1_4
end