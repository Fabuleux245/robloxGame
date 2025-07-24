-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:25
-- Luau version 6, Types version 3
-- Time taken: 0.002368 seconds

local Parent = script:FindFirstAncestor("ExpChat").Parent
local any_new_result1_upvr = require(Parent.ExpChatShared).Logger:new("ExpChat/"..script.Name)
local List_upvr = require(Parent.llama).List
local sanitizeForRichText_upvr = require(script.Parent.sanitizeForRichText)
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 9, Named "displaySystemMessage"
	--[[ Upvalues[3]:
		[1]: any_new_result1_upvr (readonly)
		[2]: List_upvr (readonly)
		[3]: sanitizeForRichText_upvr (readonly)
	]]
	any_new_result1_upvr:debug("Display system message: {}", arg3)
	local var10
	if type(arg1) == "string" then
		if arg1 ~= "" then
			local pcall_result1_2, pcall_result2 = pcall(function() -- Line 23
				--[[ Upvalues[3]:
					[1]: arg4 (readonly)
					[2]: arg1 (readonly)
					[3]: arg2 (readonly)
				]]
				return arg4:FormatByKey(arg1, arg2)
			end)
			var10 = pcall_result2
			if not pcall_result1_2 then
				var10 = arg6
				-- KONSTANTWARNING: GOTO [42] #36
			end
			-- KONSTANTWARNING: GOTO [42] #36
		end
	else
		var10 = table.concat(List_upvr.map(arg1, function(arg1_3) -- Line 34
			--[[ Upvalues[2]:
				[1]: arg4 (readonly)
				[2]: arg2 (readonly)
			]]
			return arg4:FormatByKey(arg1_3, arg2)
		end), '\n')
	end
	if arg5 and var10 then
		arg5:DisplaySystemMessage(sanitizeForRichText_upvr(var10), arg3)
	end
end