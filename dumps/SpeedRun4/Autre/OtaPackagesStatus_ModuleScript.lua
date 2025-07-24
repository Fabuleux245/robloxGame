-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:20
-- Luau version 6, Types version 3
-- Time taken: 0.002032 seconds

local module_upvr_2 = {
	None = '0';
	All = '1';
	Partial = '2';
}
local module_upvr = {
	PackagesByPatch = {};
}
function module_upvr.AddPackageStatus(arg1, arg2, arg3) -- Line 13
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not arg1 then
	else
		if not arg2 then return end
		if not module_upvr.PackagesByPatch[arg1] then
			module_upvr.PackagesByPatch[arg1] = {}
		end
		module_upvr.PackagesByPatch[arg1][arg2] = arg3 or false
	end
end
function module_upvr.AllPatchPackagesLoaded(arg1) -- Line 29
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	if not arg1 then
		return nil
	end
	local var7 = module_upvr.PackagesByPatch[arg1]
	if not var7 then
		return nil
	end
	for _, v in var7 do
		if v then
			local var8 = 0 + 1
		else
			local var9 = 0 + 1
		end
	end
	if var8 == 0 then
		do
			return module_upvr_2.None
		end
		local var10
	end
	if var9 == 0 then
		if 0 >= var8 then
			var10 = false
		else
			var10 = true
		end
		assert(var10, "Success <=0, should be impossible")
		var10 = module_upvr_2
		return var10.All
	end
	if 0 >= var8 then
		var10 = false
	else
		var10 = true
	end
	assert(var10, "Success <=0, should be impossible")
	if 0 >= var9 then
	else
	end
	assert(true, "Failed <= 0, should be impossible")
	return module_upvr_2.Partial
end
return module_upvr