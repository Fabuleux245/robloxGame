-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:46
-- Luau version 6, Types version 3
-- Time taken: 0.000783 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local Roact_upvr = dependencies.Roact
local llama_upvr = dependencies.llama
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: llama_upvr (readonly)
	]]
	return function(arg1_2) -- Line 7
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: llama_upvr (copied, readonly)
		]]
		return function(arg1_3) -- Line 8
			--[[ Upvalues[4]:
				[1]: Roact_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: llama_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
			]]
			local any_extend_result1 = Roact_upvr.Component:extend("Connected-"..tostring(arg1_3))
			local function render(arg1_4) -- Line 11
				--[[ Upvalues[5]:
					[1]: Roact_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: arg1_3 (readonly)
					[4]: llama_upvr (copied, readonly)
					[5]: arg1_2 (copied, readonly)
				]]
				return Roact_upvr.createElement(arg1.Consumer, {
					render = function(arg1_5) -- Line 13, Named "render"
						--[[ Upvalues[5]:
							[1]: Roact_upvr (copied, readonly)
							[2]: arg1_3 (copied, readonly)
							[3]: llama_upvr (copied, readonly)
							[4]: arg1_4 (readonly)
							[5]: arg1_2 (copied, readonly)
						]]
						return Roact_upvr.createElement(arg1_3, llama_upvr.Dictionary.join(arg1_4.props, arg1_2(arg1_5)))
					end;
				})
			end
			any_extend_result1.render = render
			return any_extend_result1
		end
	end
end