-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:49
-- Luau version 6, Types version 3
-- Time taken: 0.001784 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local any_GetFFlagChromeObservableStateCheck_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagChromeObservableStateCheck()
return function(arg1, arg2) -- Line 13
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: any_GetFFlagChromeObservableStateCheck_result1_upvr (readonly)
	]]
	if not arg1 then
		warn("observableValue undefined")
		return nil
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(arg2(arg1:get()))
	local tbl = {}
	tbl[1] = arg1
	React_upvr.useEffect(function() -- Line 20
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: arg2 (readonly)
			[4]: any_GetFFlagChromeObservableStateCheck_result1_upvr (copied, readonly)
			[5]: any_useState_result1_upvr (readonly)
		]]
		if any_GetFFlagChromeObservableStateCheck_result1_upvr then
			local arg2_result1 = arg2(arg1:get())
			if any_useState_result1_upvr ~= arg2_result1 then
				any_useState_result2_upvr(arg2_result1)
			end
		end
		local any_connect_result1_upvr_2 = arg1:connect(function() -- Line 21
			--[[ Upvalues[3]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: arg2 (copied, readonly)
				[3]: arg1 (copied, readonly)
			]]
			any_useState_result2_upvr(arg2(arg1:get()))
		end)
		return function() -- Line 32
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr_2 (readonly)
			]]
			any_connect_result1_upvr_2:disconnect()
		end
	end, tbl)
	return any_useState_result1_upvr
end