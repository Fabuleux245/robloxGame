-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:51
-- Luau version 6, Types version 3
-- Time taken: 0.001254 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local any_GetFFlagChromeObservableStateCheck_result1_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagChromeObservableStateCheck()
return function(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: any_GetFFlagChromeObservableStateCheck_result1_upvr (readonly)
	]]
	if not arg1 then
		warn("observableValue undefined")
		return nil
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(arg1:get())
	local tbl = {}
	tbl[1] = arg1
	React_upvr.useEffect(function() -- Line 16
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_GetFFlagChromeObservableStateCheck_result1_upvr (copied, readonly)
			[4]: any_useState_result1_upvr (readonly)
		]]
		if any_GetFFlagChromeObservableStateCheck_result1_upvr and any_useState_result1_upvr ~= arg1:get() then
			any_useState_result2_upvr(arg1:get())
		end
		local any_connect_result1_upvr = arg1:connect(function() -- Line 17
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			any_useState_result2_upvr(arg1:get())
		end)
		return function() -- Line 27
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr (readonly)
			]]
			any_connect_result1_upvr:disconnect()
		end
	end, tbl)
	return any_useState_result1_upvr
end