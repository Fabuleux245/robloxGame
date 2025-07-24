-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:57
-- Luau version 6, Types version 3
-- Time taken: 0.001252 seconds

return function(arg1) -- Line 1
	return {
		account = function(arg1_2) -- Line 4
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.fromString("auth:v1/"..arg1_2.."/account")
		end;
		connect = function(arg1_3) -- Line 8
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.fromString("auth:v1/"..arg1_3.."/connect")
		end;
		disconnect = function(arg1_4) -- Line 12
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.fromString("auth:v1/"..arg1_4.."/disconnect")
		end;
		login = function(arg1_5) -- Line 16
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.fromString("auth:v1/"..arg1_5.."/login")
		end;
		signup = function(arg1_6) -- Line 20
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.fromString("auth:v1/"..arg1_6.."/signup")
		end;
	}
end