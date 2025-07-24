-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:45
-- Luau version 6, Types version 3
-- Time taken: 0.001261 seconds

local newproxy_result1_upvr = newproxy(false)
return function(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: newproxy_result1_upvr (readonly)
	]]
	return {
		setTimeout = function(arg1_2, arg2, ...) -- Line 25, Named "setTimeout"
			--[[ Upvalues[2]:
				[1]: newproxy_result1_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			local args_list_upvr = {...}
			local module_upvr = {
				[newproxy_result1_upvr] = 1;
			}
			local var5
			if var5 == nil then
				var5 = 0
			end
			arg1(var5 / 1000, function() -- Line 38
				--[[ Upvalues[4]:
					[1]: module_upvr (readonly)
					[2]: newproxy_result1_upvr (copied, readonly)
					[3]: arg1_2 (readonly)
					[4]: args_list_upvr (readonly)
				]]
				if module_upvr[newproxy_result1_upvr] == 1 then
					arg1_2(unpack(args_list_upvr))
					module_upvr[newproxy_result1_upvr] = 2
				end
			end)
			return module_upvr
		end;
		clearTimeout = function(arg1_3) -- Line 48, Named "clearTimeout"
			--[[ Upvalues[1]:
				[1]: newproxy_result1_upvr (copied, readonly)
			]]
			if arg1_3 == nil then
			elseif arg1_3[newproxy_result1_upvr] == 1 then
				arg1_3[newproxy_result1_upvr] = 3
			end
		end;
	}
end