-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:30
-- Luau version 6, Types version 3
-- Time taken: 0.000903 seconds

local function _(arg1, arg2) -- Line 1, Named "describe"
end
local function _(arg1, arg2) -- Line 2, Named "it"
end
local function _(arg1) -- Line 3, Named "expect"
end
return function() -- Line 5
	local sha256_upvr = require(script.Parent).sha256
	local function _() -- Line 9
		--[[ Upvalues[1]:
			[1]: sha256_upvr (readonly)
		]]
		local function _() -- Line 10
			--[[ Upvalues[1]:
				[1]: sha256_upvr (copied, readonly)
			]]
		end
		local function _() -- Line 16
			--[[ Upvalues[1]:
				[1]: sha256_upvr (copied, readonly)
			]]
			local sha256_upvr_result1 = sha256_upvr()
			sha256_upvr_result1("The quick brown fox")
			sha256_upvr_result1(" jumps ")
			sha256_upvr_result1("")
			sha256_upvr_result1("over the lazy dog")
			nil.to.equal("d7a8fbb307d7809469ca9abcb0082e4f8d5651e46d3cdb762d02d0bf37c9e592")
		end
		local function _() -- Line 25
			--[[ Upvalues[1]:
				[1]: sha256_upvr (copied, readonly)
			]]
			local sha256_upvr_result1_2 = sha256_upvr()
			sha256_upvr_result1_2("The quick brown fox")
			sha256_upvr_result1_2(" jumps ")
			sha256_upvr_result1_2("")
			sha256_upvr_result1_2("over the lazy dog")
			sha256_upvr_result1_2()
			nil.to.equal("d7a8fbb307d7809469ca9abcb0082e4f8d5651e46d3cdb762d02d0bf37c9e592")
		end
	end
end