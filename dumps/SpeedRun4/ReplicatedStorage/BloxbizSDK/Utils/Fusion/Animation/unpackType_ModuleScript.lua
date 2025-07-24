-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:14
-- Luau version 6, Types version 3
-- Time taken: 0.002969 seconds

local Oklab_upvr = require(script.Parent.Parent.Colour.Oklab)
return function(arg1, arg2) -- Line 19, Named "unpackType"
	--[[ Upvalues[1]:
		[1]: Oklab_upvr (readonly)
	]]
	if arg2 == "number" then
		local module = {}
		module[1] = arg1
		return module
	end
	if arg2 == "CFrame" then
		local any_ToAxisAngle_result1, any_ToAxisAngle_result2 = arg1:ToAxisAngle()
		return {arg1.X, arg1.Y, arg1.Z, any_ToAxisAngle_result1.X, any_ToAxisAngle_result1.Y, any_ToAxisAngle_result1.Z, any_ToAxisAngle_result2}
	end
	if arg2 == "Color3" then
		local any_to_result1 = Oklab_upvr.to(arg1)
		return {any_to_result1.X, any_to_result1.Y, any_to_result1.Z}
	end
	if arg2 == "ColorSequenceKeypoint" then
		local any_to_result1_2 = Oklab_upvr.to(arg1.Value)
		return {any_to_result1_2.X, any_to_result1_2.Y, any_to_result1_2.Z, arg1.Time}
	end
	if arg2 == "DateTime" then
		return {arg1.UnixTimestampMillis}
	end
	if arg2 == "NumberRange" then
		return {arg1.Min, arg1.Max}
	end
	if arg2 == "NumberSequenceKeypoint" then
		return {arg1.Value, arg1.Time, arg1.Envelope}
	end
	if arg2 == "PhysicalProperties" then
		return {arg1.Density, arg1.Friction, arg1.Elasticity, arg1.FrictionWeight, arg1.ElasticityWeight}
	end
	if arg2 == "Ray" then
		return {arg1.Origin.X, arg1.Origin.Y, arg1.Origin.Z, arg1.Direction.X, arg1.Direction.Y, arg1.Direction.Z}
	end
	if arg2 == "Rect" then
		return {arg1.Min.X, arg1.Min.Y, arg1.Max.X, arg1.Max.Y}
	end
	if arg2 == "Region3" then
		return {arg1.CFrame.X, arg1.CFrame.Y, arg1.CFrame.Z, arg1.Size.X, arg1.Size.Y, arg1.Size.Z}
	end
	if arg2 == "Region3int16" then
		return {arg1.Min.X, arg1.Min.Y, arg1.Min.Z, arg1.Max.X, arg1.Max.Y, arg1.Max.Z}
	end
	if arg2 == "UDim" then
		return {arg1.Scale, arg1.Offset}
	end
	if arg2 == "UDim2" then
		return {arg1.X.Scale, arg1.X.Offset, arg1.Y.Scale, arg1.Y.Offset}
	end
	if arg2 == "Vector2" then
		return {arg1.X, arg1.Y}
	end
	if arg2 == "Vector2int16" then
		return {arg1.X, arg1.Y}
	end
	if arg2 == "Vector3" then
		return {arg1.X, arg1.Y, arg1.Z}
	end
	if arg2 == "Vector3int16" then
		return {arg1.X, arg1.Y, arg1.Z}
	end
	return {}
end