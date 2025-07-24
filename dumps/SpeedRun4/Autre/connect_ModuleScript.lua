-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:00
-- Luau version 6, Types version 3
-- Time taken: 0.002277 seconds

local RoactPaginator = script:FindFirstAncestor("RoactPaginator")
local dependencies = require(RoactPaginator.Parent.dependencies)
local function _(arg1, arg2) -- Line 16, Named "formatMessage"
	local var3 = arg2
	if not var3 then
		var3 = {}
	end
	return table.concat(arg1, '\n'):format(unpack(var3))
end
local Roact_upvr = dependencies.Roact
local GenericPagination_upvr = dependencies.GenericPagination
local fetchInitSymbol_upvr = require(RoactPaginator.fetchInitSymbol)
local fetchWithCursorSymbol_upvr = require(RoactPaginator.fetchWithCursorSymbol)
local Cryo_upvr = dependencies.Cryo
local loadNextSymbol_upvr = require(RoactPaginator.loadNextSymbol)
local Logger_upvr = require(RoactPaginator.Logger)
local loadPreviousSymbol_upvr = require(RoactPaginator.loadPreviousSymbol)
return function(arg1) -- Line 20, Named "connect"
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: GenericPagination_upvr (readonly)
		[3]: fetchInitSymbol_upvr (readonly)
		[4]: fetchWithCursorSymbol_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: loadNextSymbol_upvr (readonly)
		[7]: Logger_upvr (readonly)
		[8]: loadPreviousSymbol_upvr (readonly)
	]]
	local var12 = arg1
	if var12 then
		if type(arg1) ~= "function" then
			var12 = false
		else
			var12 = true
		end
	end
	assert(var12, "RoactPaginator.connect: parameters expected to be a function")
	local call_stack_upvr = debug.traceback()
	return function(arg1_2) -- Line 24
		--[[ Upvalues[10]:
			[1]: call_stack_upvr (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: GenericPagination_upvr (copied, readonly)
			[5]: fetchInitSymbol_upvr (copied, readonly)
			[6]: fetchWithCursorSymbol_upvr (copied, readonly)
			[7]: Cryo_upvr (copied, readonly)
			[8]: loadNextSymbol_upvr (copied, readonly)
			[9]: Logger_upvr (copied, readonly)
			[10]: loadPreviousSymbol_upvr (copied, readonly)
		]]
		if arg1_2 == nil then
			local var17 = {call_stack_upvr}
			if not var17 then
				var17 = {}
			end
			error(table.concat({"connect returns a function that must be passed a component.", "Check the connection at:", "%s"}, '\n'):format(unpack(var17)), 2)
		end
		local any_extend_result1 = Roact_upvr.Component:extend("PaginatorConnection(%s)":format(tostring(arg1_2)))
		function any_extend_result1.init(arg1_3) -- Line 41
			--[[ Upvalues[4]:
				[1]: arg1 (copied, readonly)
				[2]: GenericPagination_upvr (copied, readonly)
				[3]: fetchInitSymbol_upvr (copied, readonly)
				[4]: fetchWithCursorSymbol_upvr (copied, readonly)
			]]
			local arg1_result1 = arg1()
			assert(arg1_result1, "RoactPaginator.connect: Expected parameters to return an object")
			arg1_3.paginator = GenericPagination_upvr.new({
				pageSize = arg1_result1.pageSize;
				fetchInit = arg1_3.props[fetchInitSymbol_upvr];
				fetchWithCursor = arg1_3.props[fetchWithCursorSymbol_upvr];
			})
		end
		function any_extend_result1.render(arg1_4) -- Line 52
			--[[ Upvalues[6]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: loadNextSymbol_upvr (copied, readonly)
				[3]: Logger_upvr (copied, readonly)
				[4]: loadPreviousSymbol_upvr (copied, readonly)
				[5]: Roact_upvr (copied, readonly)
				[6]: arg1_2 (readonly)
			]]
			return Roact_upvr.createElement(arg1_2, Cryo_upvr.Dictionary.join(arg1_4.props, {
				[loadNextSymbol_upvr] = function() -- Line 54
					--[[ Upvalues[2]:
						[1]: arg1_4 (readonly)
						[2]: Logger_upvr (copied, readonly)
					]]
					if arg1_4.paginator:isFetching() then
					else
						arg1_4.paginator:getNext():catch(function(arg1_5) -- Line 59
							--[[ Upvalues[1]:
								[1]: Logger_upvr (copied, readonly)
							]]
							Logger_upvr:error("Could not getNext. Got error: {}", arg1_5)
						end)
					end
				end;
				[loadPreviousSymbol_upvr] = function() -- Line 63
					--[[ Upvalues[2]:
						[1]: arg1_4 (readonly)
						[2]: Logger_upvr (copied, readonly)
					]]
					if arg1_4.paginator:isFetching() then
					else
						arg1_4.paginator:getPrevious():catch(function(arg1_6) -- Line 68
							--[[ Upvalues[1]:
								[1]: Logger_upvr (copied, readonly)
							]]
							Logger_upvr:error("Could not getPrevious. Got error: {}", arg1_6)
						end)
					end
				end;
			}))
		end
		return any_extend_result1
	end
end