-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:32
-- Luau version 6, Types version 3
-- Time taken: 0.002492 seconds

local Parent = script.Parent.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local module = {
	fallbackHttpConfig = {
		http = {
			includeQuery = true;
			includeExtensions = false;
		};
		headers = {
			accept = "*/*";
			["content-type"] = "application/json";
		};
		options = {
			method = "POST";
		};
	};
}
local headersToLowerCase_upvw
local Boolean_upvr = LuauPolyfill.Boolean
local print_upvr = require(Parent.GraphQL).print
function module.selectHttpOptionsAndBody(arg1, arg2, ...) -- Line 112
	--[[ Upvalues[5]:
		[1]: Object_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: headersToLowerCase_upvw (read and write)
		[4]: Boolean_upvr (readonly)
		[5]: print_upvr (readonly)
	]]
	local any_assign_result1_upvw = Object_upvr.assign({}, arg2.options, {
		headers = arg2.headers;
		credentials = arg2.credentials;
	})
	local var16_upvw
	if arg2.http ~= nil then
		var16_upvw = arg2.http
	else
		var16_upvw = {}
	end
	Array_upvr.forEach({...}, function(arg1_2) -- Line 131
		--[[ Upvalues[5]:
			[1]: any_assign_result1_upvw (read and write)
			[2]: Object_upvr (copied, readonly)
			[3]: headersToLowerCase_upvw (copied, read and write)
			[4]: Boolean_upvr (copied, readonly)
			[5]: var16_upvw (read and write)
		]]
		any_assign_result1_upvw = Object_upvr.assign({}, any_assign_result1_upvw, arg1_2.options, {
			headers = Object_upvr.assign({}, any_assign_result1_upvw.headers, headersToLowerCase_upvw(arg1_2.headers));
		})
		if Boolean_upvr.toJSBoolean(arg1_2.credentials) then
			any_assign_result1_upvw.credentials = arg1_2.credentials
		end
		var16_upvw = Object_upvr.assign({}, var16_upvw, arg1_2.http)
	end)
	local tbl = {
		operationName = arg1.operationName;
		variables = arg1.variables;
	}
	if var16_upvw.includeExtensions then
		tbl.extensions = arg1.extensions
	end
	if var16_upvw.includeQuery then
		tbl.query = print_upvr(arg1.query)
	end
	return {
		options = any_assign_result1_upvw;
		body = tbl;
	}
end
function headersToLowerCase_upvw(arg1) -- Line 163, Named "headersToLowerCase"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	if arg1 ~= nil then
		local module_2_upvr = {}
		Array_upvr.forEach(Object_upvr.keys(arg1), function(arg1_3) -- Line 166
			--[[ Upvalues[2]:
				[1]: module_2_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			module_2_upvr[string.lower(arg1_3)] = arg1[arg1_3]
		end)
		return module_2_upvr
	end
	return arg1
end
return module