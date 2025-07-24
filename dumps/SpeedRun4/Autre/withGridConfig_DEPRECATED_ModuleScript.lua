-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:06
-- Luau version 6, Types version 3
-- Time taken: 0.001550 seconds

local Parent = script.Parent
local Responsive = Parent.Parent.Responsive
local Roact_upvr = require(Parent.Parent.Parent.Parent.Parent.Roact)
local ResponsiveLayoutContext_upvr = require(Responsive.ResponsiveLayoutContext)
local ResponsiveLayoutConfigReader_upvr = require(Responsive.ResponsiveLayoutConfigReader)
return function(arg1, arg2) -- Line 27
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ResponsiveLayoutContext_upvr (readonly)
		[3]: ResponsiveLayoutConfigReader_upvr (readonly)
	]]
	return function(arg1_2) -- Line 28
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ResponsiveLayoutContext_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: ResponsiveLayoutConfigReader_upvr (copied, readonly)
			[5]: arg2 (readonly)
		]]
		return Roact_upvr.createElement(ResponsiveLayoutContext_upvr.Consumer, {
			render = function(arg1_3) -- Line 30, Named "render"
				--[[ Upvalues[4]:
					[1]: arg1 (copied, readonly)
					[2]: ResponsiveLayoutConfigReader_upvr (copied, readonly)
					[3]: arg2 (copied, readonly)
					[4]: arg1_2 (readonly)
				]]
				local module = {}
				for i, v in pairs(arg1) do
					local tbl = {
						config = arg1_3.config;
						breakpoint = arg1_3.breakpoint;
					}
					local var18 = arg2
					if not var18 then
						var18 = arg1_3.kind
					end
					tbl.kind = var18
					module[i] = ResponsiveLayoutConfigReader_upvr.getValue(tbl, i)
					if module[i] == nil then
						module[i] = v
					end
				end
				return arg1_2(module)
			end;
		})
	end
end