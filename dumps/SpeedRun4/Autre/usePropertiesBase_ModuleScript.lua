-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:02
-- Luau version 6, Types version 3
-- Time taken: 0.001526 seconds

local Parent = script:FindFirstAncestor("ReactUtils").Parent
local Array_upvr = require(Parent.LuauPolyfill).Array
local React_upvr = require(Parent.React)
local useForwardRef_upvr = require(script.Parent.useForwardRef)
return function(arg1, arg2, arg3, ...) -- Line 15, Named "usePropertiesBase"
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useForwardRef_upvr (readonly)
	]]
	local any_concat_result1_upvr = Array_upvr.concat({}, ...)
	local module = {}
	module[1] = arg2
	module[2] = table.concat(any_concat_result1_upvr, ',')
	return useForwardRef_upvr(arg1, React_upvr.useCallback(function(arg1_2) -- Line 23
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: Array_upvr (copied, readonly)
			[3]: any_concat_result1_upvr (readonly)
			[4]: arg3 (readonly)
		]]
		local function onPropChange_upvr() -- Line 24, Named "onPropChange"
			--[[ Upvalues[4]:
				[1]: arg2 (copied, readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: any_concat_result1_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
			]]
			arg2(table.unpack(Array_upvr.map(any_concat_result1_upvr, function(arg1_3) -- Line 25
				--[[ Upvalues[1]:
					[1]: arg1_2 (copied, readonly)
				]]
				return arg1_2[arg1_3]
			end)))
		end
		local var8_upvw
		local function var9_upvr() -- Line 31
			--[[ Upvalues[5]:
				[1]: var8_upvw (read and write)
				[2]: arg2 (copied, readonly)
				[3]: Array_upvr (copied, readonly)
				[4]: any_concat_result1_upvr (copied, readonly)
				[5]: arg1_2 (readonly)
			]]
			if not var8_upvw then
				var8_upvw = task.defer(function() -- Line 33
					--[[ Upvalues[5]:
						[1]: var8_upvw (copied, read and write)
						[2]: arg2 (copied, readonly)
						[3]: Array_upvr (copied, readonly)
						[4]: any_concat_result1_upvr (copied, readonly)
						[5]: arg1_2 (copied, readonly)
					]]
					var8_upvw = nil
					arg2(table.unpack(Array_upvr.map(any_concat_result1_upvr, function(arg1_4) -- Line 25
						--[[ Upvalues[1]:
							[1]: arg1_2 (copied, readonly)
						]]
						return arg1_2[arg1_4]
					end)))
				end)
			end
		end
		arg2(table.unpack(Array_upvr.map(any_concat_result1_upvr, function(arg1_6) -- Line 25
			--[[ Upvalues[1]:
				[1]: arg1_2 (readonly)
			]]
			return arg1_2[arg1_6]
		end)))
		local any_map_result1_upvr = Array_upvr.map(any_concat_result1_upvr, function(arg1_5) -- Line 39
			--[[ Upvalues[4]:
				[1]: arg1_2 (readonly)
				[2]: arg3 (copied, readonly)
				[3]: var9_upvr (readonly)
				[4]: onPropChange_upvr (readonly)
			]]
			local var13 = arg1_5
			if arg3 then
				var13 = var9_upvr
			else
				var13 = onPropChange_upvr
			end
			return arg1_2:GetPropertyChangedSignal(var13):Connect(var13)
		end)
		return function() -- Line 45
			--[[ Upvalues[2]:
				[1]: any_map_result1_upvr (readonly)
				[2]: var8_upvw (read and write)
			]]
			for _, v in any_map_result1_upvr do
				v:Disconnect()
			end
			if var8_upvw then
				task.cancel(var8_upvw)
			end
		end
	end, module))
end