-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:16
-- Luau version 6, Types version 3
-- Time taken: 0.001111 seconds

local Parent = script.Parent.Parent
local tbl = {
	Posted = {};
	Liked = {};
}
local module = {}
local var4_upvw
local Utils_upvr = require(Parent.Utils)
local BatchHTTP_upvr = require(Parent.BatchHTTP)
local InternalConfig_upvr = require(Parent.InternalConfig)
local function GetFeatured_upvr() -- Line 44, Named "GetFeatured"
	--[[ Upvalues[4]:
		[1]: var4_upvw (read and write)
		[2]: Utils_upvr (readonly)
		[3]: BatchHTTP_upvr (readonly)
		[4]: InternalConfig_upvr (readonly)
	]]
	if var4_upvw then
		return var4_upvw
	end
	var4_upvw = Utils_upvr.callWithRetry(function() -- Line 49
		--[[ Upvalues[2]:
			[1]: BatchHTTP_upvr (copied, readonly)
			[2]: InternalConfig_upvr (copied, readonly)
		]]
		local any_request_result1, any_request_result2 = BatchHTTP_upvr.request("POST", "/catalog/categories/featured", {
			sdk_version = InternalConfig_upvr.SDK_VERSION;
		})
		if not any_request_result1 then
			error(any_request_result2)
		end
		return any_request_result2
	end, 5).categories
	return var4_upvw
end
local var12_upvw
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage").BloxbizRemotes
function module.Init() -- Line 65
	--[[ Upvalues[3]:
		[1]: var12_upvw (read and write)
		[2]: GetFeatured_upvr (readonly)
		[3]: BloxbizRemotes_upvr (readonly)
	]]
	var12_upvw = Instance.new("RemoteFunction")
	var12_upvw.Name = "CatalogOnGetFeatured"
	var12_upvw.OnServerInvoke = GetFeatured_upvr
	var12_upvw.Parent = BloxbizRemotes_upvr
end
return module