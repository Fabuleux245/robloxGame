-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:33
-- Luau version 6, Types version 3
-- Time taken: 0.003790 seconds

local Parent = script.Parent.Parent
local MagicMock_upvr = require(Parent.MagicMock)
local Spy_upvr = require(Parent.Spy)
local getCalls_upvr = require(Parent.getCalls)
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[3]:
		[1]: MagicMock_upvr (readonly)
		[2]: Spy_upvr (readonly)
		[3]: getCalls_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_is_result1 = MagicMock_upvr.is(arg1)
	if not any_is_result1 then
		any_is_result1 = Spy_upvr.is(arg1)
	end
	if not any_is_result1 then
		return {
			pass = false;
			message = string.format("expect(mock) must be a MagicMock or Spy when .toHaveBeenCalled is used. Given %s instead", tostring(arg1));
		}
	end
	local len_2 = #getCalls_upvr(arg1)
	local var16
	local var17
	if arg2 then
		var17 = false
		if type(arg2) == "number" then
			var17 = false
			if 0 < arg2 then
				if arg2 % 1 ~= 0 then
					var17 = false
				else
					var17 = true
				end
			end
		end
		if var17 then
			if arg2 ~= len_2 then
				var16 = false
			else
				var16 = true
			end
			if not var16 or not string.format("Expected %s to not have been called exactly %d times.", tostring(arg1), arg2) then
			end
		else
			return {
				pass = false;
				message = string.format("expectedTimesCalled must be a positive integer. Given %s instead.", tostring(arg2));
			}
		end
	else
		if 0 >= len_2 then
			var16 = false
		else
			var16 = true
		end
		if not var16 or not string.format("Expected %s to never have been called. Was called %d times instead.", tostring(arg1), len_2) then
		end
	end
	return {
		pass = var16;
		message = string.format("Expected %s to have been called at least once.", tostring(arg1));
	}
end