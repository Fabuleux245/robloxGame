-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:28
-- Luau version 6, Types version 3
-- Time taken: 0.004707 seconds

local function _(arg1, arg2) -- Line 29, Named "group"
	local var1
	if type(arg1) == "string" then
		var1 = arg1
	else
		var1 = table.concat(arg1, '|')
	end
	return '('..arg2..var1..')'
end
return {
	oneOf = function(arg1) -- Line 33, Named "oneOf"
		local var2
		if type(arg1) == "string" then
			var2 = arg1
		else
			var2 = table.concat(arg1, '|')
		end
		return '('.."?:"..var2..')'
	end;
	capture = function(arg1) -- Line 37, Named "capture"
		local var3
		if type(arg1) == "string" then
			var3 = arg1
		else
			var3 = table.concat(arg1, '|')
		end
		return '('..""..var3..')'
	end;
	zeroOrOneOf = function(arg1) -- Line 41, Named "zeroOrOneOf"
		local var4
		if type(arg1) == "string" then
			var4 = arg1
		else
			var4 = table.concat(arg1, '|')
		end
		return '('.."?:"..var4..')'..'?'
	end;
	zeroOrMore = function(arg1) -- Line 65, Named "zeroOrMore"
		local var10
		if type(arg1) == "string" then
			var10 = arg1
		else
			var10 = table.concat(arg1, '|')
		end
		return '('.."?:"..var10..')'..'*'
	end;
	oneOrMore = function(arg1) -- Line 61, Named "oneOrMore"
		local var9
		if type(arg1) == "string" then
			var9 = arg1
		else
			var9 = table.concat(arg1, '|')
		end
		return '('.."?:"..var9..')'..'+'
	end;
	lookahead = function(arg1) -- Line 45, Named "lookahead"
		local var5
		if type(arg1) == "string" then
			var5 = arg1
		else
			var5 = table.concat(arg1, '|')
		end
		return '('.."?="..var5..')'
	end;
	lookbehind = function(arg1) -- Line 53, Named "lookbehind"
		local var7
		if type(arg1) == "string" then
			var7 = arg1
		else
			var7 = table.concat(arg1, '|')
		end
		return '('.."?<="..var7..')'
	end;
	negativeLookahead = function(arg1) -- Line 49, Named "negativeLookahead"
		local var6
		if type(arg1) == "string" then
			var6 = arg1
		else
			var6 = table.concat(arg1, '|')
		end
		return '('.."?!"..var6..')'
	end;
	negativeLookbehind = function(arg1) -- Line 57, Named "negativeLookbehind"
		local var8
		if type(arg1) == "string" then
			var8 = arg1
		else
			var8 = table.concat(arg1, '|')
		end
		return '('.."?<!"..var8..')'
	end;
	matchWhole = function(arg1) -- Line 69, Named "matchWhole"
		return '^'..arg1..'$'
	end;
	regexOr = function(arg1, arg2) -- Line 73, Named "regexOr"
		return arg1..'|'..arg2
	end;
	set = function(arg1) -- Line 77, Named "set"
		return '['..arg1..']'
	end;
	notSet = function(arg1) -- Line 81, Named "notSet"
		return '['..'^'..arg1..']'
	end;
	SLASH = "\\/";
	QUESTION = "\\?";
	DASH = "\\-";
	DOT = "\\.";
	HASH = "\\#";
	COLON = "\\:";
	STRING_START = '^';
	STRING_END = '$';
	NON_WHITESPACE = "\\S";
	WHITESPACE = "\\s";
	ALPHANUMERIC = "\\w";
}