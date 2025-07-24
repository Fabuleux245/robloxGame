-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:55
-- Luau version 6, Types version 3
-- Time taken: 0.000744 seconds

local GetGameNameAndDescription_upvr = require(game:GetService("CorePackages").Workspace.Packages.GameDetailRodux).GetGameNameAndDescription
local var3_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Common.httpRequest)(game:GetService("HttpRbxApiService"))
local SetPlaceInfo_upvr = require(script.Parent.Parent.Actions.SetPlaceInfo)
return function(arg1) -- Line 16
	--[[ Upvalues[3]:
		[1]: GetGameNameAndDescription_upvr (readonly)
		[2]: var3_upvr (readonly)
		[3]: SetPlaceInfo_upvr (readonly)
	]]
	return function(arg1_2) -- Line 17
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: GetGameNameAndDescription_upvr (copied, readonly)
			[3]: var3_upvr (copied, readonly)
			[4]: SetPlaceInfo_upvr (copied, readonly)
		]]
		if arg1 == 0 then
		else
			GetGameNameAndDescription_upvr(var3_upvr, arg1):andThen(function(arg1_3) -- Line 21
				--[[ Upvalues[2]:
					[1]: arg1_2 (readonly)
					[2]: SetPlaceInfo_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SetPlaceInfo_upvr(arg1_3.Name, arg1_3.Description))
			end):catch(function() -- Line 23
				warn("Unable to fetch place info for TrustAndSafety.")
			end)
		end
	end
end