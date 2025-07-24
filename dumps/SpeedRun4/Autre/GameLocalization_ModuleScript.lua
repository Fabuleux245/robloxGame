-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:59
-- Luau version 6, Types version 3
-- Time taken: 0.003085 seconds

local Parent = script:FindFirstAncestor("ExpChat").Parent
local React_upvr = require(Parent.React)
local Dictionary_upvr = require(Parent.llama).Dictionary
local function _(arg1) -- Line 6, Named "getConnect"
	--[[ Upvalues[2]:
		[1]: Dictionary_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	return function(arg1_2) -- Line 7
		--[[ Upvalues[3]:
			[1]: Dictionary_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local function transformedMapper(arg1_3, arg2) -- Line 8
			--[[ Upvalues[2]:
				[1]: Dictionary_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			return Dictionary_upvr.map(arg1_2(arg2), function(arg1_4, arg2_2) -- Line 9
				--[[ Upvalues[1]:
					[1]: arg1_3 (readonly)
				]]
				local pcall_result1, pcall_result2_2 = pcall(function() -- Line 10
					--[[ Upvalues[2]:
						[1]: arg1_3 (copied, readonly)
						[2]: arg1_4 (readonly)
					]]
					return arg1_3:TranslateGameText(game, arg1_4)
				end)
				if pcall_result1 then
					return pcall_result2_2
				end
				return ""
			end)
		end
		return function(arg1_5) -- Line 22
			--[[ Upvalues[4]:
				[1]: React_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: Dictionary_upvr (copied, readonly)
				[4]: transformedMapper (readonly)
			]]
			local any_extend_result1 = React_upvr.Component:extend("Connected-"..tostring(arg1_5))
			local function render(arg1_6) -- Line 25
				--[[ Upvalues[5]:
					[1]: React_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: arg1_5 (readonly)
					[4]: Dictionary_upvr (copied, readonly)
					[5]: transformedMapper (copied, readonly)
				]]
				local module = {}
				local function render(arg1_7) -- Line 27
					--[[ Upvalues[5]:
						[1]: React_upvr (copied, readonly)
						[2]: arg1_5 (copied, readonly)
						[3]: Dictionary_upvr (copied, readonly)
						[4]: arg1_6 (readonly)
						[5]: transformedMapper (copied, readonly)
					]]
					return React_upvr.createElement(arg1_5, Dictionary_upvr.join(arg1_6.props, transformedMapper(arg1_7, arg1_6.props)))
				end
				module.render = render
				return React_upvr.createElement(arg1.Consumer, module)
			end
			any_extend_result1.render = render
			return any_extend_result1
		end
	end
end
return function(arg1) -- Line 41
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Dictionary_upvr (readonly)
	]]
	local any_createContext_result1_upvr = React_upvr.createContext(arg1)
	return {
		Consumer = any_createContext_result1_upvr.Consumer;
		Provider = any_createContext_result1_upvr.Provider;
		connect = function(arg1_8) -- Line 7
			--[[ Upvalues[3]:
				[1]: Dictionary_upvr (copied, readonly)
				[2]: React_upvr (copied, readonly)
				[3]: any_createContext_result1_upvr (readonly)
			]]
			local function transformedMapper_upvr(arg1_9, arg2) -- Line 8, Named "transformedMapper"
				--[[ Upvalues[2]:
					[1]: Dictionary_upvr (copied, readonly)
					[2]: arg1_8 (readonly)
				]]
				return Dictionary_upvr.map(arg1_8(arg2), function(arg1_10, arg2_3) -- Line 9
					--[[ Upvalues[1]:
						[1]: arg1_9 (readonly)
					]]
					local pcall_result1_2, pcall_result2 = pcall(function() -- Line 10
						--[[ Upvalues[2]:
							[1]: arg1_9 (copied, readonly)
							[2]: arg1_10 (readonly)
						]]
						return arg1_9:TranslateGameText(game, arg1_10)
					end)
					if pcall_result1_2 then
						return pcall_result2
					end
					return ""
				end)
			end
			return function(arg1_11) -- Line 22
				--[[ Upvalues[4]:
					[1]: React_upvr (copied, readonly)
					[2]: any_createContext_result1_upvr (copied, readonly)
					[3]: Dictionary_upvr (copied, readonly)
					[4]: transformedMapper_upvr (readonly)
				]]
				local any_extend_result1_2 = React_upvr.Component:extend("Connected-"..tostring(arg1_11))
				local function render(arg1_12) -- Line 25
					--[[ Upvalues[5]:
						[1]: React_upvr (copied, readonly)
						[2]: any_createContext_result1_upvr (copied, readonly)
						[3]: arg1_11 (readonly)
						[4]: Dictionary_upvr (copied, readonly)
						[5]: transformedMapper_upvr (copied, readonly)
					]]
					return React_upvr.createElement(any_createContext_result1_upvr.Consumer, {
						render = function(arg1_13) -- Line 27, Named "render"
							--[[ Upvalues[5]:
								[1]: React_upvr (copied, readonly)
								[2]: arg1_11 (copied, readonly)
								[3]: Dictionary_upvr (copied, readonly)
								[4]: arg1_12 (readonly)
								[5]: transformedMapper_upvr (copied, readonly)
							]]
							return React_upvr.createElement(arg1_11, Dictionary_upvr.join(arg1_12.props, transformedMapper_upvr(arg1_13, arg1_12.props)))
						end;
					})
				end
				any_extend_result1_2.render = render
				return any_extend_result1_2
			end
		end;
	}
end