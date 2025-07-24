-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:39
-- Luau version 6, Types version 3
-- Time taken: 0.020663 seconds

local Parent = script.Parent
local Parent_2 = Parent.Parent
local LuauPolyfill = require(Parent_2.Parent.LuauPolyfill)
local String_upvr = LuauPolyfill.String
local isNaN_upvr = LuauPolyfill.Number.isNaN
local syntaxError_upvr = require(Parent_2.error.syntaxError).syntaxError
local Token_upvr = require(Parent.ast).Token
local TokenKind_upvr = require(Parent.tokenKind).TokenKind
local char2hex_upvw
local function uniCharCode_upvw(arg1, arg2, arg3, arg4) -- Line 88, Named "uniCharCode"
	--[[ Upvalues[1]:
		[1]: char2hex_upvw (read and write)
	]]
	local char2hex_upvw_result1_4 = char2hex_upvw(arg1)
	local char2hex_upvw_result1_2 = char2hex_upvw(arg2)
	local char2hex_upvw_result1 = char2hex_upvw(arg3)
	local char2hex_upvw_result1_3 = char2hex_upvw(arg4)
	if char2hex_upvw_result1_4 < 0 or char2hex_upvw_result1_2 < 0 or char2hex_upvw_result1 < 0 or char2hex_upvw_result1_3 < 0 then
		return -1
	end
	return bit32.bor(bit32.lshift(char2hex_upvw_result1_4, 12), bit32.lshift(char2hex_upvw_result1_2, 8), bit32.lshift(char2hex_upvw_result1, 4), char2hex_upvw_result1_3)
end
function char2hex_upvw(arg1) -- Line 108, Named "char2hex"
	if 48 <= arg1 and arg1 <= 57 then
		return arg1 - 48
	end
	if 65 <= arg1 and arg1 <= 70 then
		return arg1 - 55
	end
	if 97 <= arg1 and arg1 <= 102 then
		return arg1 - 87
	end
	return -1
end
local function readName_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 126, Named "readName"
	--[[ Upvalues[4]:
		[1]: String_upvr (readonly)
		[2]: isNaN_upvr (readonly)
		[3]: Token_upvr (readonly)
		[4]: TokenKind_upvr (readonly)
	]]
	local body_4_upvr = arg1.body
	local string_len_result1_upvr = string.len(body_4_upvr)
	local var16_upvw = arg2 + 1
	local var17_upvw = 0
	local function _() -- Line 132
		--[[ Upvalues[2]:
			[1]: var16_upvw (read and write)
			[2]: string_len_result1_upvr (readonly)
		]]
		local var19
		if var16_upvw == string_len_result1_upvr + 1 then
			var19 = false
		else
			var19 = true
		end
		return var19
	end
	local function _() -- Line 135
		--[[ Upvalues[5]:
			[1]: var17_upvw (read and write)
			[2]: String_upvr (copied, readonly)
			[3]: body_4_upvr (readonly)
			[4]: var16_upvw (read and write)
			[5]: isNaN_upvr (copied, readonly)
		]]
		var17_upvw = String_upvr.charCodeAt(body_4_upvr, var16_upvw)
		return not isNaN_upvr(var17_upvw)
	end
	local function _() -- Line 139
		--[[ Upvalues[1]:
			[1]: var17_upvw (read and write)
		]]
		local var22
		if var17_upvw ~= 95 then
			var22 = false
		else
			var22 = true
		end
		return var22
	end
	local function _() -- Line 142
		--[[ Upvalues[1]:
			[1]: var17_upvw (read and write)
		]]
		local var24 = false
		if 48 <= var17_upvw then
			if var17_upvw > 57 then
				var24 = false
			else
				var24 = true
			end
		end
		return var24
	end
	local function _() -- Line 145
		--[[ Upvalues[1]:
			[1]: var17_upvw (read and write)
		]]
		local var26 = false
		if 65 <= var17_upvw then
			if var17_upvw > 90 then
				var26 = false
			else
				var26 = true
			end
		end
		return var26
	end
	local function _() -- Line 148
		--[[ Upvalues[1]:
			[1]: var17_upvw (read and write)
		]]
		local var28 = false
		if 97 <= var17_upvw then
			if var17_upvw > 122 then
				var28 = false
			else
				var28 = true
			end
		end
		return var28
	end
	local function _() -- Line 151
		--[[ Upvalues[1]:
			[1]: var17_upvw (read and write)
		]]
		local var30
		if var17_upvw ~= 95 then
			var30 = false
		else
			var30 = true
		end
		if not var30 then
			var30 = false
			if 48 <= var17_upvw then
				if var17_upvw > 57 then
					var30 = false
				else
					var30 = true
				end
			end
			if not var30 then
				if 65 <= var17_upvw then
					if var17_upvw > 90 then
					else
					end
				end
				if not true and 97 <= var17_upvw then
					if var17_upvw > 122 then
					else
					end
				end
			end
		end
		return true
	end
	while true do
		local var31
		if var16_upvw == string_len_result1_upvr + 1 then
			var31 = false
		else
			var31 = true
		end
		if not var31 then break end
		var17_upvw = String_upvr.charCodeAt(body_4_upvr, var16_upvw)
		local var32 = var17_upvw
		var31 = not isNaN_upvr(var32)
		if not var31 then break end
		if var32 ~= 95 then
			var31 = false
		else
			var31 = true
		end
		if not var31 then
			var31 = false
			if 48 <= var32 then
				if var32 > 57 then
					var31 = false
				else
					var31 = true
				end
			end
			if not var31 then
				if 65 <= var32 then
					if var32 > 90 then
					else
					end
				end
				if not true and 97 <= var32 then
					if var32 > 122 then
					else
					end
				end
			end
		end
		if not true then break end
		var16_upvw += 1
	end
	return Token_upvr.new(TokenKind_upvr.NAME, arg2, var16_upvw, arg3, arg4, arg5, String_upvr.slice(body_4_upvr, arg2, var16_upvw))
end
local function readComment_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 179, Named "readComment"
	--[[ Upvalues[4]:
		[1]: String_upvr (readonly)
		[2]: isNaN_upvr (readonly)
		[3]: Token_upvr (readonly)
		[4]: TokenKind_upvr (readonly)
	]]
	local body_3 = arg1.body
	local var34
	repeat
		var34 += 1
		local any_charCodeAt_result1 = String_upvr.charCodeAt(body_3, var34)
	until isNaN_upvr(any_charCodeAt_result1) and (31 < any_charCodeAt_result1 or any_charCodeAt_result1 ~= 9)
	return Token_upvr.new(TokenKind_upvr.COMMENT, arg2, var34, arg3, arg4, arg5, String_upvr.slice(body_3, arg2 + 1, var34))
end
local HttpService_upvr = game:GetService("HttpService")
local toUnicodeString_upvr = require(Parent_2.luaUtils.toUnicodeString)
function printCharCode(arg1) -- Line 201
	--[[ Upvalues[4]:
		[1]: isNaN_upvr (readonly)
		[2]: TokenKind_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: toUnicodeString_upvr (readonly)
	]]
	if isNaN_upvr(arg1) then
		return TokenKind_upvr.EOF
	end
	if arg1 < 127 then
		return HttpService_upvr:JSONEncode(string.char(arg1))
	end
	return toUnicodeString_upvr(arg1)
end
function readDigits(arg1, arg2, arg3) -- Line 220
	--[[ Upvalues[2]:
		[1]: String_upvr (readonly)
		[2]: syntaxError_upvr (readonly)
	]]
	local var38 = arg3
	local var39
	if 48 <= var38 and var38 <= 57 then
		repeat
			var39 += 1
			local any_charCodeAt_result1_5 = String_upvr.charCodeAt(arg1.body, var39)
		until 48 > any_charCodeAt_result1_5 and any_charCodeAt_result1_5 > 57
		return var39
	end
	error(syntaxError_upvr(arg1, var39, "Invalid number, expected digit but got: "..printCharCode(any_charCodeAt_result1_5)..'.'))
end
function unexpectedCharacterMessage(arg1) -- Line 245
	if arg1 < 32 and arg1 ~= 9 and arg1 ~= 10 and arg1 ~= 13 then
		return "Cannot contain the invalid character "..printCharCode(arg1)..'.'
	end
	if arg1 == 39 then
		return "Unexpected single quote character ('), did you mean to use a double quote (\")?"
	end
	return "Cannot parse the unexpected character "..printCharCode(arg1)..'.'
end
function isNameStart(arg1) -- Line 259
	if arg1 ~= 95 then
	else
	end
	if 65 <= arg1 then
		if arg1 > 90 then
		else
		end
	end
	if 97 <= arg1 then
		if arg1 > 122 then
		else
		end
	end
	if not true then
		if not true then
		end
	end
	return true
end
function readNumber(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 274
	--[[ Upvalues[4]:
		[1]: String_upvr (readonly)
		[2]: syntaxError_upvr (readonly)
		[3]: Token_upvr (readonly)
		[4]: TokenKind_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local body_2 = arg1.body
	local var43
	if arg3 == 45 then
		var43 += 1
	end
	if String_upvr.charCodeAt(body_2, var43) == 48 then
		var43 += 1
		local any_charCodeAt_result1_6 = String_upvr.charCodeAt(body_2, var43)
		if 48 <= any_charCodeAt_result1_6 then
			if any_charCodeAt_result1_6 <= 57 then
				error(syntaxError_upvr(arg1, var43, "Invalid number, unexpected digit after 0: "..printCharCode(any_charCodeAt_result1_6)..'.'))
				-- KONSTANTWARNING: GOTO [61] #51
			end
			-- KONSTANTWARNING: GOTO [61] #51
		end
	else
		var43 = readDigits(arg1, var43, any_charCodeAt_result1_6)
	end
	if String_upvr.charCodeAt(body_2, var43) == 46 then
		var43 += 1
		var43 = readDigits(arg1, var43, String_upvr.charCodeAt(body_2, var43))
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return String_upvr.charCodeAt(body_2, var43) == 101
	end
	if String_upvr.charCodeAt(body_2, var43) == 69 or INLINED() then
		var43 += 1
		local any_charCodeAt_result1_2 = String_upvr.charCodeAt(body_2, var43)
		if any_charCodeAt_result1_2 == 43 or any_charCodeAt_result1_2 == 45 then
			var43 += 1
		end
		var43 = readDigits(arg1, var43, String_upvr.charCodeAt(body_2, var43))
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return isNameStart(String_upvr.charCodeAt(body_2, var43))
	end
	if String_upvr.charCodeAt(body_2, var43) == 46 or INLINED_2() then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		error(syntaxError_upvr(arg1, var43, "Invalid number, expected digit but got: "..printCharCode(String_upvr.charCodeAt(body_2, var43))..'.'))
	end
	if not true or not TokenKind_upvr.FLOAT then
	end
	return Token_upvr.new(TokenKind_upvr.INT, arg2, var43, arg4, arg5, arg6, String_upvr.slice(body_2, arg2, var43))
end
local readBlockString_upvw
local readString_upvw
local function readToken_upvr(arg1, arg2) -- Line 359, Named "readToken"
	--[[ Upvalues[8]:
		[1]: String_upvr (readonly)
		[2]: Token_upvr (readonly)
		[3]: TokenKind_upvr (readonly)
		[4]: readComment_upvr (readonly)
		[5]: readBlockString_upvw (read and write)
		[6]: readString_upvw (read and write)
		[7]: readName_upvr (readonly)
		[8]: syntaxError_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 164 start (CF ANALYSIS FAILED)
	local var50
	if utf8.len(arg1.source.body) == nil then
		var50 = false
	else
		var50 = true
	end
	assert(var50, "invalid utf8 supplied for token")
	-- KONSTANTERROR: [0] 1. Error Block 164 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [506] 363. Error Block 127 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [506] 363. Error Block 127 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 14. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [506.3372222029]
	-- KONSTANTERROR: [20] 14. Error Block 6 end (CF ANALYSIS FAILED)
end
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.new(arg1) -- Line 558
	--[[ Upvalues[3]:
		[1]: Token_upvr (readonly)
		[2]: TokenKind_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local any_new_result1 = Token_upvr.new(TokenKind_upvr.SOF, 1, 1, 0, 0, nil)
	local module = {}
	module.source = arg1
	module.lastToken = any_new_result1
	module.token = any_new_result1
	module.line = 1
	module.lineStart = 0
	return setmetatable(module, tbl_upvr)
end
function tbl_upvr.advance(arg1) -- Line 571
	arg1.lastToken = arg1.token
	arg1.token = arg1:lookahead()
	return arg1.token
end
function tbl_upvr.lookahead(arg1) -- Line 577
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: readToken_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local token = arg1.token
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 10. Error Block 10 start (CF ANALYSIS FAILED)
	local readToken_upvr_result1 = readToken_upvr(arg1, token)
	token.next = readToken_upvr_result1
	readToken_upvr_result1.prev = token
	local var56 = readToken_upvr_result1
	if var56.kind ~= TokenKind_upvr.COMMENT then
		-- KONSTANTWARNING: GOTO [32] #22
	end
	-- KONSTANTERROR: [15] 10. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 6. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if var56.kind then
		-- KONSTANTWARNING: GOTO [24] #17
	end
	-- KONSTANTERROR: [9] 6. Error Block 12 end (CF ANALYSIS FAILED)
end
local dedentBlockStringValue_upvr = require(Parent.blockString).dedentBlockStringValue
function readBlockString_upvw(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 623, Named "readBlockString"
	--[[ Upvalues[6]:
		[1]: isNaN_upvr (readonly)
		[2]: String_upvr (readonly)
		[3]: Token_upvr (readonly)
		[4]: TokenKind_upvr (readonly)
		[5]: dedentBlockStringValue_upvr (readonly)
		[6]: syntaxError_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [171] 135. Error Block 27 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [171] 135. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [171.1117092]
	-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
end
function readString_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 697, Named "readString"
	--[[ Upvalues[6]:
		[1]: String_upvr (readonly)
		[2]: isNaN_upvr (readonly)
		[3]: Token_upvr (readonly)
		[4]: TokenKind_upvr (readonly)
		[5]: syntaxError_upvr (readonly)
		[6]: uniCharCode_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local body = arg1.body
	local utf8_len_result1 = utf8.len(body)
	local var74
	if utf8_len_result1 == nil then
		var74 = false
	else
		var74 = true
	end
	assert(var74, "invalid utf8 sequence detected")
	local var75 = arg2 + 1
	var74 = var75
	local var76
	while var75 <= utf8_len_result1 do
		local any_charCodeAt_result1_4 = String_upvr.charCodeAt(body, var75)
		if isNaN_upvr(any_charCodeAt_result1_4) then break end
		if any_charCodeAt_result1_4 == 34 then
			var76 = var76..String_upvr.slice(body, var74, var75)
			return Token_upvr.new(TokenKind_upvr.STRING, arg2, var75 + 1, arg3, arg4, arg5, var76)
		end
		if any_charCodeAt_result1_4 == 10 then break end
		if any_charCodeAt_result1_4 == 13 then break end
		if any_charCodeAt_result1_4 < 32 and any_charCodeAt_result1_4 ~= 9 then
			error(syntaxError_upvr(arg1, var75, "Invalid character within String: "..printCharCode(any_charCodeAt_result1_4)..'.'))
		end
		var75 += 1
		local var78 = var75
		if any_charCodeAt_result1_4 == 92 then
			var76 = var76..String_upvr.slice(body, var74, var78 - 1)
			local var79 = var76
			local any_charCodeAt_result1_3 = String_upvr.charCodeAt(body, var78)
			if any_charCodeAt_result1_3 == 34 then
				var79 = var79..'"'
			elseif any_charCodeAt_result1_3 == 47 then
				var79 = var79..'/'
			elseif any_charCodeAt_result1_3 == 92 then
				var79 = var79..'\\'
			elseif any_charCodeAt_result1_3 == 98 then
				var79 = var79..'\b'
			elseif any_charCodeAt_result1_3 == 102 then
				var79 = var79..'\f'
			elseif any_charCodeAt_result1_3 == 110 then
				var79 = var79..'\n'
			elseif any_charCodeAt_result1_3 == 114 then
				var79 = var79..'\r'
			elseif any_charCodeAt_result1_3 == 116 then
				var79 = var79..'\t'
			elseif any_charCodeAt_result1_3 == 117 then
				local uniCharCode_upvw_result1 = uniCharCode_upvw(String_upvr.charCodeAt(body, var78 + 1), String_upvr.charCodeAt(body, var78 + 2), String_upvr.charCodeAt(body, var78 + 3), String_upvr.charCodeAt(body, var78 + 4))
				if uniCharCode_upvw_result1 < 0 then
					error(syntaxError_upvr(arg1, var78, "Invalid character escape sequence: \\u"..String_upvr.slice(body, var78 + 1, var78 + 5)..'.'))
				end
				var79 = var79..utf8.char(uniCharCode_upvw_result1)
				var78 += 4
			else
				error(syntaxError_upvr(arg1, var78, "Invalid character escape sequence: \\"..utf8.char(any_charCodeAt_result1_3)..'.'))
			end
			var78 += 1
			var74 = var78
		end
	end
	error(syntaxError_upvr(arg1, var78, "Unterminated string."))
end
return {
	Lexer = tbl_upvr;
	isPunctuatorTokenKind = function(arg1) -- Line 600, Named "isPunctuatorTokenKind"
		--[[ Upvalues[1]:
			[1]: TokenKind_upvr (readonly)
		]]
		local var69 = true
		if arg1 ~= TokenKind_upvr.BANG then
			var69 = true
			if arg1 ~= TokenKind_upvr.DOLLAR then
				var69 = true
				if arg1 ~= TokenKind_upvr.AMP then
					var69 = true
					if arg1 ~= TokenKind_upvr.PAREN_L then
						var69 = true
						if arg1 ~= TokenKind_upvr.PAREN_R then
							var69 = true
							if arg1 ~= TokenKind_upvr.SPREAD then
								var69 = true
								if arg1 ~= TokenKind_upvr.COLON then
									var69 = true
									if arg1 ~= TokenKind_upvr.EQUALS then
										var69 = true
										if arg1 ~= TokenKind_upvr.AT then
											var69 = true
											if arg1 ~= TokenKind_upvr.BRACKET_L then
												var69 = true
												if arg1 ~= TokenKind_upvr.BRACKET_R then
													var69 = true
													if arg1 ~= TokenKind_upvr.BRACE_L then
														var69 = true
														if arg1 ~= TokenKind_upvr.PIPE then
															if arg1 ~= TokenKind_upvr.BRACE_R then
																var69 = false
															else
																var69 = true
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
		return var69
	end;
}