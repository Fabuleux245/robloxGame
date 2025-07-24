-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:15
-- Luau version 6, Types version 3
-- Time taken: 0.001224 seconds

local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	if arg1 ~= nil and arg1.errors ~= nil and arg1.errors[1] and arg1.errors[1].fieldData then
		local fieldData_upvr = arg1.errors[1].fieldData
		local pcall_result1, pcall_result2 = pcall(function() -- Line 11
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: fieldData_upvr (readonly)
			]]
			return HttpService_upvr:JSONDecode(fieldData_upvr)
		end)
		local var7
		if pcall_result1 then
			local var8 = ""
			var7 = ""
			if pcall_result2.unifiedCaptchaId then
				var8 = pcall_result2.unifiedCaptchaId
			end
			if pcall_result2.dxBlob then
				var7 = pcall_result2.dxBlob
			end
			return var8, var7
		end
		return "", fieldData_upvr
	end
	fieldData_upvr = ""
	return fieldData_upvr, ""
end