-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:55
-- Luau version 6, Types version 3
-- Time taken: 0.001252 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local GetShareLinkStore_upvr = require(AppChat.Stores.GetShareLinkStore)
local useSignalState_upvr = require(Parent.SignalsReact).useSignalState
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useEffect_upvr = React_upvr.useEffect
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local GameCardContainer_upvr = require(script.Parent.GameCardContainer)
return function(arg1) -- Line 32, Named "ShareLinkContainer"
	--[[ Upvalues[7]:
		[1]: GetShareLinkStore_upvr (readonly)
		[2]: useSignalState_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useEffect_upvr (readonly)
		[5]: any_new_result1_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: GameCardContainer_upvr (readonly)
	]]
	local linkId_upvr = arg1.shareLink.linkId
	local linkType_upvr = arg1.shareLink.linkType
	local GetShareLinkStore_upvr_result1_upvr = GetShareLinkStore_upvr(false)
	local var5_result1_upvr = useSignalState_upvr(GetShareLinkStore_upvr_result1_upvr.getShareLinkMetadataComputed(linkId_upvr))
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local tbl = {}
	local var17 = linkId_upvr
	tbl[1] = var17
	tbl[2] = linkType_upvr
	tbl[3] = var5_result1_upvr
	useEffect_upvr(function() -- Line 39
		--[[ Upvalues[6]:
			[1]: var5_result1_upvr (readonly)
			[2]: GetShareLinkStore_upvr_result1_upvr (readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: linkId_upvr (readonly)
			[5]: linkType_upvr (readonly)
			[6]: any_new_result1_upvr (copied, readonly)
		]]
		if not var5_result1_upvr then
			GetShareLinkStore_upvr_result1_upvr.fetchShareLinkMetadata(useDispatch_upvr_result1_upvr, linkId_upvr, linkType_upvr)
		else
			any_new_result1_upvr:warning("ShareLinkContainer: Missing linkId or linkType in props.")
		end
	end, tbl)
	local module = {}
	if var5_result1_upvr then
		var17 = var5_result1_upvr.universeId
	else
		var17 = nil
	end
	module.universeId = var17
	if var5_result1_upvr then
		var17 = var5_result1_upvr.placeId
	else
		var17 = nil
	end
	module.placeId = var17
	var17 = arg1.conversationId
	module.conversationId = var17
	var17 = arg1.senderUserId
	module.senderUserId = var17
	var17 = arg1.onDetailsOpened
	module.onDetailsOpened = var17
	var17 = arg1.openGameDetailsPage
	module.openGameDetailsPage = var17
	var17 = arg1.networkImpl
	module.networkImpl = var17
	var17 = arg1.eventStream
	module.eventStream = var17
	var17 = arg1.eventIngest
	module.eventIntest = var17
	var17 = arg1.luaChatPlayTogetherEnabled
	module.luaChatPlayTogetherEnabled = var17
	return React_upvr.createElement(GameCardContainer_upvr, module)
end