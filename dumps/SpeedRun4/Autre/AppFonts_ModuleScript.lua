-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:40
-- Luau version 6, Types version 3
-- Time taken: 0.000931 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	module._enableNewFont = arg1
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.getDefault(arg1) -- Line 12
	if arg1._enableNewFont then
		return Enum.Font.BuilderSans
	end
	return Enum.Font.Gotham
end
function module_2_upvr.getMedium(arg1) -- Line 21
	if arg1._enableNewFont then
		return Enum.Font.BuilderSansMedium
	end
	return Enum.Font.GothamMedium
end
function module_2_upvr.getBlack(arg1) -- Line 30
	if arg1._enableNewFont then
		return Enum.Font.BuilderSansExtraBold
	end
	return Enum.Font.GothamBlack
end
function module_2_upvr.getBold(arg1) -- Line 39
	if arg1._enableNewFont then
		return Enum.Font.BuilderSansBold
	end
	return Enum.Font.GothamBold
end
function module_2_upvr.getSemibold(arg1) -- Line 48
	if arg1._enableNewFont then
		return Enum.Font.BuilderSansMedium
	end
	return Enum.Font.GothamMedium
end
module_2_upvr.default = module_2_upvr.new(true)
return module_2_upvr