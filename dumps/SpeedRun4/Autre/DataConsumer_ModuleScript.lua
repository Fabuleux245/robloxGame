-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:03
-- Luau version 6, Types version 3
-- Time taken: 0.001452 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Immutable_upvr = require(script.Parent.Parent.Immutable)
local DataContext_upvr = require(script.Parent.Parent.Components.DataContext)
return function(arg1, ...) -- Line 8
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Immutable_upvr (readonly)
		[3]: DataContext_upvr (readonly)
	]]
	if not arg1 then
		error("Expected component to be passed to connection, got nil.")
	end
	for i = 1, select('#', ...) do
		({})[i] = select(i, ...)
		local var8_upvr
	end
	local any_extend_result1_upvr = Roact_upvr.Component:extend(string.format("Consumer(%s)_DependsOn_%s", tostring(arg1), var8_upvr[1]))
	function any_extend_result1_upvr.init(arg1_2) -- Line 21
		--[[ Upvalues[1]:
			[1]: var8_upvr (readonly)
		]]
		local tbl = {}
		for _, v in pairs(var8_upvr) do
			local var16 = arg1_2.props.DevConsoleData[v]
			if not var16 then
				error(string.format("%s %s", tostring(v), "could not be found. Make sure DataProvider is above this consumer"))
				return
			end
			tbl[v] = var16
		end
		arg1_2:setState(tbl)
	end
	local function render(arg1_3) -- Line 40
		--[[ Upvalues[3]:
			[1]: Immutable_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(arg1, Immutable_upvr.JoinDictionaries(arg1_3.props.componentProps, arg1_3.state))
	end
	any_extend_result1_upvr.render = render
	return function(arg1_4) -- Line 45, Named "DataConsumerWrapper"
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: DataContext_upvr (copied, readonly)
			[3]: any_extend_result1_upvr (readonly)
		]]
		return Roact_upvr.createElement(DataContext_upvr.Consumer, {
			render = function(arg1_5) -- Line 47, Named "render"
				--[[ Upvalues[3]:
					[1]: Roact_upvr (copied, readonly)
					[2]: any_extend_result1_upvr (copied, readonly)
					[3]: arg1_4 (readonly)
				]]
				local module = {}
				module.componentProps = arg1_4
				module.DevConsoleData = arg1_5
				return Roact_upvr.createElement(any_extend_result1_upvr, module)
			end;
		})
	end
end