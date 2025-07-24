-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:18
-- Luau version 6, Types version 3
-- Time taken: 0.001202 seconds

local React_upvr = require(script:FindFirstAncestor("AppStartup").Parent.React)
return function(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(arg1.appStartupSequence.isInteractive)
	local tbl = {}
	local appStartupSequence = arg1.appStartupSequence
	tbl[1] = appStartupSequence
	React_upvr.useEffect(function() -- Line 17
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var8_upvw
		if arg1.appStartupSequence.isInteractive then
			any_useState_result2_upvr(true)
		else
			var8_upvw = arg1.appStartupSequence.changed:connect(function() -- Line 23
				--[[ Upvalues[3]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: var8_upvw (read and write)
				]]
				any_useState_result2_upvr(arg1.appStartupSequence.isInteractive)
				if var8_upvw ~= nil and arg1.appStartupSequence.isInteractive then
					var8_upvw:disconnect()
					var8_upvw = nil
				end
			end)
		end
		if var8_upvw then
		else
		end
		return nil
	end, tbl)
	if any_useState_result1 then
		appStartupSequence = arg1.children
	else
		appStartupSequence = {}
	end
	return React_upvr.createElement(React_upvr.Fragment, nil, appStartupSequence)
end