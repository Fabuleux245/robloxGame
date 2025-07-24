-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:50
-- Luau version 6, Types version 3
-- Time taken: 0.001575 seconds

local Oklab_upvr = require(script.Parent.Parent.Colour.Oklab)
return function(arg1, arg2) -- Line 16, Named "packType"
	--[[ Upvalues[1]:
		[1]: Oklab_upvr (readonly)
	]]
	if arg2 == "number" then
		return arg1[1]
	end
	if arg2 == "CFrame" then
		return CFrame.new(arg1[1], arg1[2], arg1[3]) * CFrame.fromAxisAngle(Vector3.new(arg1[4], arg1[5], arg1[6]).Unit, arg1[7])
	end
	if arg2 == "Color3" then
		return Oklab_upvr.from(Vector3.new(arg1[1], arg1[2], arg1[3]), false)
	end
	if arg2 == "ColorSequenceKeypoint" then
		return ColorSequenceKeypoint.new(arg1[4], Oklab_upvr.from(Vector3.new(arg1[1], arg1[2], arg1[3]), false))
	end
	if arg2 == "DateTime" then
		return DateTime.fromUnixTimestampMillis(arg1[1])
	end
	if arg2 == "NumberRange" then
		return NumberRange.new(arg1[1], arg1[2])
	end
	if arg2 == "NumberSequenceKeypoint" then
		return NumberSequenceKeypoint.new(arg1[2], arg1[1], arg1[3])
	end
	if arg2 == "PhysicalProperties" then
		return PhysicalProperties.new(arg1[1], arg1[2], arg1[3], arg1[4], arg1[5])
	end
	if arg2 == "Ray" then
		return Ray.new(Vector3.new(arg1[1], arg1[2], arg1[3]), Vector3.new(arg1[4], arg1[5], arg1[6]))
	end
	if arg2 == "Rect" then
		return Rect.new(arg1[1], arg1[2], arg1[3], arg1[4])
	end
	if arg2 == "Region3" then
		local vector3_2 = Vector3.new(arg1[1], arg1[2], arg1[3])
		local vector3 = Vector3.new(arg1[4] / 2, arg1[5] / 2, arg1[6] / 2)
		return Region3.new(vector3_2 - vector3, vector3_2 + vector3)
	end
	if arg2 == "Region3int16" then
		return Region3int16.new(Vector3int16.new(arg1[1], arg1[2], arg1[3]), Vector3int16.new(arg1[4], arg1[5], arg1[6]))
	end
	if arg2 == "UDim" then
		return UDim.new(arg1[1], arg1[2])
	end
	if arg2 == "UDim2" then
		return UDim2.new(arg1[1], arg1[2], arg1[3], arg1[4])
	end
	if arg2 == "Vector2" then
		return Vector2.new(arg1[1], arg1[2])
	end
	if arg2 == "Vector2int16" then
		return Vector2int16.new(arg1[1], arg1[2])
	end
	if arg2 == "Vector3" then
		return Vector3.new(arg1[1], arg1[2], arg1[3])
	end
	if arg2 == "Vector3int16" then
		return Vector3int16.new(arg1[1], arg1[2], arg1[3])
	end
	return nil
end