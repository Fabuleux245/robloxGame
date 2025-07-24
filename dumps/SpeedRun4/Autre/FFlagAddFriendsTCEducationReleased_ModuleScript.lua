-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:20:52
-- Luau version 6, Types version 3
-- Time taken: 0.000981 seconds

local FFlagAddFriendsTCEducationSetup = require(script.Parent.FFlagAddFriendsTCEducationSetup)
if FFlagAddFriendsTCEducationSetup then
	FFlagAddFriendsTCEducationSetup = require(script.Parent.FFlagAppChatEnableTC)
	if FFlagAddFriendsTCEducationSetup then
		FFlagAddFriendsTCEducationSetup = game:GetEngineFeature("RegisterTCEducationBannerImpressionsCountKey")
		if FFlagAddFriendsTCEducationSetup then
			FFlagAddFriendsTCEducationSetup = game:DefineFastFlag("AddFriendsTCEducationReleased_v2", false)
		end
	end
end
return FFlagAddFriendsTCEducationSetup