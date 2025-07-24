-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:13
-- Luau version 6, Types version 3
-- Time taken: 0.002499 seconds

local Parent = script.Parent.Parent
local language = Parent.language
local String_upvr = require(Parent.Parent.LuauPolyfill).String
local source = require(language.source)
local lexer = require(language.lexer)
local blockString = require(language.blockString)
local isSource_upvr = source.isSource
local Source_upvr = source.Source
local Lexer_upvr = lexer.Lexer
local TokenKind_upvr = require(language.tokenKind).TokenKind
local isPunctuatorTokenKind_upvr = lexer.isPunctuatorTokenKind
local dedentBlockString_upvw
local dedentBlockStringValue_upvr = blockString.dedentBlockStringValue
local getBlockStringIndentation_upvr = blockString.getBlockStringIndentation
function dedentBlockString_upvw(arg1) -- Line 118, Named "dedentBlockString"
	--[[ Upvalues[3]:
		[1]: String_upvr (readonly)
		[2]: dedentBlockStringValue_upvr (readonly)
		[3]: getBlockStringIndentation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var17_result1 = dedentBlockStringValue_upvr(String_upvr.slice(arg1, 4, -3))
	local var20
	if 0 < getBlockStringIndentation_upvr(var17_result1) then
		local var21 = '\n'..var17_result1
	end
	local utf8_len_result1 = utf8.len(var21)
	if utf8_len_result1 == nil then
		var20 = false
	else
		var20 = true
	end
	assert(var20, "invalid utf8 detected: "..var21)
	var20 = String_upvr
	var20 = var21
	local any_slice_result1 = var20.slice(var20, utf8_len_result1)
	var20 = false
	if any_slice_result1 == '"' then
		if String_upvr.slice(var21, -4) == "\\\"\"\"" then
			var20 = false
		else
			var20 = true
		end
	end
	if var20 or any_slice_result1 == '\\' then
	end
	return "\"\"\""..var21..'\n'.."\"\"\""
end
return {
	stripIgnoredCharacters = function(arg1) -- Line 81, Named "stripIgnoredCharacters"
		--[[ Upvalues[7]:
			[1]: isSource_upvr (readonly)
			[2]: Source_upvr (readonly)
			[3]: Lexer_upvr (readonly)
			[4]: TokenKind_upvr (readonly)
			[5]: isPunctuatorTokenKind_upvr (readonly)
			[6]: String_upvr (readonly)
			[7]: dedentBlockString_upvw (read and write)
		]]
		local var13
		if isSource_upvr(arg1) then
			var13 = arg1
		else
			var13 = Source_upvr.new(arg1)
		end
		local any_new_result1 = Lexer_upvr.new(var13)
		while any_new_result1:advance().kind ~= TokenKind_upvr.EOF do
			local token = any_new_result1.token
			local var16
			if false and (not isPunctuatorTokenKind_upvr(token.kind) or token.kind == TokenKind_upvr.SPREAD) then
				var16 = var16..' '
			end
			if token.kind == TokenKind_upvr.BLOCK_STRING then
				var16 = var16..dedentBlockString_upvw(String_upvr.slice(var13.body, token.start, token._end))
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var16 = var16..String_upvr.slice(var13.body, token.start, token._end)
			end
		end
		return var16
	end;
}