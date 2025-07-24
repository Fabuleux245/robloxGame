-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:16
-- Luau version 6, Types version 3
-- Time taken: 0.001092 seconds

local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 18
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	if arg1 ~= nil and arg1.errors ~= nil then
		if arg1.errors[1] then
			if arg1.errors[1].fieldData then
				local fieldData_upvr_2 = arg1.errors[1].fieldData
				local pcall_result1, pcall_result2_2 = pcall(function() -- Line 26
					--[[ Upvalues[2]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: fieldData_upvr_2 (readonly)
					]]
					return HttpService_upvr:JSONDecode(fieldData_upvr_2)
				end)
				if pcall_result1 then
					local users_2 = pcall_result2_2.users
					if not users_2 then
						users_2 = {}
					end
					return users_2
				end
			end
		end
	end
	fieldData_upvr_2 = {}
	return fieldData_upvr_2
end