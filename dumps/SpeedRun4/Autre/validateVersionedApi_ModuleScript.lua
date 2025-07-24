-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:23
-- Luau version 6, Types version 3
-- Time taken: 0.000738 seconds

return function(arg1, arg2, arg3, arg4) -- Line 3, Named "validateVersionedApi"
	if not next(arg2) then
		return true, ""
	end
	local getmetatable_result1 = getmetatable(arg2)
	if not getmetatable_result1 then
		return false, `could not find api version data for {arg1}`
	end
	local _minAppVersion = getmetatable_result1._minAppVersion
	if not _minAppVersion then
		return false, `could not find the minimum app version for api {arg1}`
	end
	if not arg3 or arg3 < _minAppVersion then
		return false, `{arg1} requires version {_minAppVersion} or higher.  Given version is {arg3}`
	end
	if _minAppVersion == arg3 and arg4 then
		return false, `{arg1} requires a version higher than {_minAppVersion}.  Given version is {arg3}`
	end
	return true, ""
end