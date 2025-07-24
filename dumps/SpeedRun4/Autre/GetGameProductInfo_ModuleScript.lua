-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:16
-- Luau version 6, Types version 3
-- Time taken: 0.001674 seconds

local MarketplaceService_upvr = game:GetService("MarketplaceService")
local SetGameProductInfo_upvr = require(script:FindFirstAncestor("ExperienceLoadingScript").Actions.SetGameProductInfo)
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: MarketplaceService_upvr (readonly)
		[2]: SetGameProductInfo_upvr (readonly)
	]]
	return function(arg1_2) -- Line 7
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: MarketplaceService_upvr (copied, readonly)
			[3]: SetGameProductInfo_upvr (copied, readonly)
		]]
		coroutine.wrap(function() -- Line 8
			--[[ Upvalues[4]:
				[1]: arg1 (copied, readonly)
				[2]: MarketplaceService_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: SetGameProductInfo_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var6 = arg1
			if not var6 or var6 <= 0 then
				while game.PlaceId <= 0 do
					wait()
				end
			end
			local PlaceId_upvw = game.PlaceId
			local pcall_result1, pcall_result2 = pcall(function() -- Line 16
				--[[ Upvalues[4]:
					[1]: MarketplaceService_upvr (copied, readonly)
					[2]: PlaceId_upvw (read and write)
					[3]: arg1_2 (copied, readonly)
					[4]: SetGameProductInfo_upvr (copied, readonly)
				]]
				arg1_2:dispatch(SetGameProductInfo_upvr(MarketplaceService_upvr:GetProductInfo(PlaceId_upvw)))
			end)
			if not pcall_result1 then
				print("LoadingScreen:GetGameProductInfo: %s", pcall_result2)
			end
		end)()
	end
end