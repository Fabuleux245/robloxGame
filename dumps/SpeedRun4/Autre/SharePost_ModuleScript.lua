-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:13
-- Luau version 6, Types version 3
-- Time taken: 0.001190 seconds

local Parent = script.Parent.Parent
local Networking = require(Parent.App.Networking)
local LinkType_upvr = Networking.ShareLinksRodux.Enums.LinkType
local getLocalUserId_upvr = require(Parent.Utils.getLocalUserId)
local Players_upvr = game:GetService("Players")
local ShareLinksNetworking_upvr = Networking.ShareLinksNetworking
local default_upvr = require(Parent.Parent.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default
local Constants_upvr = require(Parent.Constants)
return function(arg1) -- Line 18
	--[[ Upvalues[6]:
		[1]: LinkType_upvr (readonly)
		[2]: getLocalUserId_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: ShareLinksNetworking_upvr (readonly)
		[5]: default_upvr (readonly)
		[6]: Constants_upvr (readonly)
	]]
	return function(arg1_2) -- Line 19
		--[[ Upvalues[7]:
			[1]: LinkType_upvr (copied, readonly)
			[2]: getLocalUserId_upvr (copied, readonly)
			[3]: Players_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: ShareLinksNetworking_upvr (copied, readonly)
			[6]: default_upvr (copied, readonly)
			[7]: Constants_upvr (copied, readonly)
		]]
		local tbl = {
			linkType = LinkType_upvr.ContentPost.rawValue();
			postCreatorId = getLocalUserId_upvr(Players_upvr);
		}
		tbl.postId = arg1
		arg1_2:dispatch(ShareLinksNetworking_upvr.GetOrGenerateLink.API(tbl)):andThen(function(arg1_3) -- Line 28
			--[[ Upvalues[2]:
				[1]: default_upvr (copied, readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			local var13
			if not default_upvr then
			else
				if default_upvr == nil then
					var13 = false
				else
					var13 = true
				end
				assert(var13, "ExternalContentSharingProtocol is required")
				default_upvr:shareUrl({
					context = Constants_upvr.CapturesContext;
					url = arg1_3.responseBody.shortUrl;
				})
			end
		end):catch(function(arg1_4) -- Line 41
			warn("GenerateLink failed with error:", arg1_4)
		end)
	end
end