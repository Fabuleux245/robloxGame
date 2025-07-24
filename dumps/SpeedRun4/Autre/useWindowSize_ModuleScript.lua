-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:53
-- Luau version 6, Types version 3
-- Time taken: 0.000884 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
return function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	if arg1 and arg1.windowSize then
		local windowSize_upvr = arg1.windowSize
		local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(windowSize_upvr:get())
		React_upvr.useEffect(function() -- Line 13
			--[[ Upvalues[3]:
				[1]: windowSize_upvr (readonly)
				[2]: any_useState_result2_upvr (readonly)
				[3]: any_useState_result1_upvr (readonly)
			]]
			if any_useState_result1_upvr ~= windowSize_upvr:get() then
				any_useState_result2_upvr(windowSize_upvr:get())
			end
			local any_connect_result1_upvr = windowSize_upvr:connect(function() -- Line 14
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: windowSize_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(windowSize_upvr:get())
			end)
			return function() -- Line 22
				--[[ Upvalues[1]:
					[1]: any_connect_result1_upvr (readonly)
				]]
				any_connect_result1_upvr:disconnect()
			end
		end, {arg1.id})
		return any_useState_result1_upvr
	end
	windowSize_upvr = warn
	any_useState_result1_upvr = "windowSize object not found"
	windowSize_upvr(any_useState_result1_upvr)
	windowSize_upvr = UDim2.new()
	return windowSize_upvr
end