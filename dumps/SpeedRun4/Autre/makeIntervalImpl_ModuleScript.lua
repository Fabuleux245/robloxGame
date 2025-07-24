-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:45
-- Luau version 6, Types version 3
-- Time taken: 0.000973 seconds

local newproxy_result1_upvr = newproxy(false)
return function(arg1) -- Line 23
	--[[ Upvalues[1]:
		[1]: newproxy_result1_upvr (readonly)
	]]
	return {
		setInterval = function(arg1_2, arg2, ...) -- Line 24, Named "setInterval"
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
			local var7_upvr = var5 / 1000
			local function var6_upvw() -- Line 38
				--[[ Upvalues[7]:
					[1]: arg1 (copied, readonly)
					[2]: var7_upvr (readonly)
					[3]: module_upvr (readonly)
					[4]: newproxy_result1_upvr (copied, readonly)
					[5]: arg1_2 (readonly)
					[6]: args_list_upvr (readonly)
					[7]: var6_upvw (read and write)
				]]
				arg1(var7_upvr, function() -- Line 39
					--[[ Upvalues[5]:
						[1]: module_upvr (copied, readonly)
						[2]: newproxy_result1_upvr (copied, readonly)
						[3]: arg1_2 (copied, readonly)
						[4]: args_list_upvr (copied, readonly)
						[5]: var6_upvw (copied, read and write)
					]]
					if module_upvr[newproxy_result1_upvr] == 1 then
						arg1_2(unpack(args_list_upvr))
						var6_upvw()
					end
				end)
			end
			var6_upvw()
			return module_upvr
		end;
		clearInterval = function(arg1_3) -- Line 52, Named "clearInterval"
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