-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:15
-- Luau version 6, Types version 3
-- Time taken: 0.004438 seconds

game:DefineFastFlag("EnableHasVerifiedBadgeUserModelValidation", false)
local module_upvr = {}
function module_upvr.new(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(module_upvr.isValid(arg1))
	module_upvr.__index = module_upvr
	setmetatable(arg1, module_upvr)
	return arg1
end
local MockId_upvr = require(script.Parent.MockId)
function module_upvr.mock(arg1) -- Line 19
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: MockId_upvr (readonly)
	]]
	local var3 = arg1
	if not var3 then
		var3 = {}
	end
	local var4 = var3
	local module = {}
	local id = var4.id
	if not id then
		id = MockId_upvr()
	end
	module.id = id
	id = var4.username
	local var7 = id
	if not var7 then
		var7 = "UN_"..tostring(math.random(100000, 99999999))
	end
	module.username = var7
	var7 = var4.displayName
	local var8 = var7
	if not var8 then
		var8 = "DN_"..tostring(math.random(100000, 99999999))
	end
	module.displayName = var8
	module.hasVerifiedBadge = var4.hasVerifiedBadge or false
	module.created = var4.created or ""
	return module_upvr.new(module)
end
function module_upvr.isValid(arg1) -- Line 33
	if not arg1 then
		return false, "Expected user information to be given"
	end
	if not arg1.id then
		return false, "Expected user's id to be given"
	end
	if arg1.id ~= '0' and not arg1.username then
		return false, "Expected user's username to be given"
	end
	if not arg1.displayName then
		return false, "Expected user's displayName to be given"
	end
	if game:GetFastFlag("EnableHasVerifiedBadgeUserModelValidation") and arg1.hasVerifiedBadge == nil then
		return false, "Expected user's hasVerifiedBadge to be given"
	end
	return true, "Valid UserModel"
end
function module_upvr.isEqual(arg1, arg2) -- Line 52
	if game:GetFastFlag("EnableHasVerifiedBadgeUserModelValidation") then
		local var13 = false
		if arg1.id == arg2.id then
			var13 = false
			if arg1.username == arg2.username then
				var13 = false
				if arg1.displayName == arg2.displayName then
					if arg1.hasVerifiedBadge ~= arg2.hasVerifiedBadge then
						var13 = false
					else
						var13 = true
					end
				end
			end
		end
		return var13
	end
	var13 = false
	local var14 = var13
	if arg1.id == arg2.id then
		var14 = false
		if arg1.username == arg2.username then
			if arg1.displayName ~= arg2.displayName then
				var14 = false
			else
				var14 = true
			end
		end
	end
	return var14
end
return module_upvr