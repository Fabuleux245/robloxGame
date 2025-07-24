-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:12
-- Luau version 6, Types version 3
-- Time taken: 0.002786 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local GetGameNameAndDescription_upvr = require(CorePackages.Workspace.Packages.GameDetailRodux).GetGameNameAndDescription
local var6_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Common.httpRequest)(game:GetService("HttpRbxApiService"))
local ItemInfoList_upvr = require(CorePackages.Workspace.Packages.ItemDetails).ItemInfoList
return function(arg1) -- Line 27, Named "PublishInfoList"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: GetGameNameAndDescription_upvr (readonly)
		[5]: var6_upvr (readonly)
		[6]: ItemInfoList_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	assert(LocalPlayer_upvr, "LocalPlayer must not be nil")
	local Name = LocalPlayer_upvr.Name
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(nil)
	local typeName = arg1.typeName
	local useLocalization_upvr_result1 = useLocalization_upvr({
		creatorText = "Feature.Catalog.Label.Filter.Creator";
		attributionText = "Feature.Catalog.Label.Attribution";
		typeText = "Feature.Catalog.Label.CategoryType";
	})
	local any_useRef_result1_upvr = React_upvr.useRef(false)
	React_upvr.useEffect(function() -- Line 43
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: GetGameNameAndDescription_upvr (copied, readonly)
			[3]: var6_upvr (copied, readonly)
			[4]: any_useState_result2_upvr (readonly)
		]]
		any_useRef_result1_upvr.current = true
		GetGameNameAndDescription_upvr(var6_upvr, game.GameId):andThen(function(arg1_2) -- Line 45
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			if any_useRef_result1_upvr.current and arg1_2.Name then
				any_useState_result2_upvr(arg1_2.Name)
			end
		end)
		return function() -- Line 50
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr (copied, readonly)
			]]
			any_useRef_result1_upvr.current = false
		end
	end, {})
	local module = {}
	local tbl = {}
	local tbl_4 = {
		infoName = useLocalization_upvr_result1.creatorText;
		infoData = Name;
	}
	local HasVerifiedBadge = LocalPlayer_upvr.HasVerifiedBadge
	tbl_4.hasVerifiedBadge = HasVerifiedBadge
	local var22
	if Name ~= nil then
		HasVerifiedBadge = false
	else
		HasVerifiedBadge = true
	end
	tbl_4.isLoading = HasVerifiedBadge
	tbl_4.Selectable = false
	local tbl_2 = {
		infoName = useLocalization_upvr_result1.attributionText;
		infoData = any_useState_result1;
	}
	if any_useState_result1 ~= nil then
		-- KONSTANTWARNING: GOTO [86] #61
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [85] 60. Error Block 22 start (CF ANALYSIS FAILED)
	tbl_2.isLoading = true
	tbl_2.Selectable = false
	local tbl_3 = {}
	var22 = useLocalization_upvr_result1.typeText
	tbl_3.infoName = var22
	tbl_3.infoData = typeName
	if typeName ~= nil then
		var22 = false
	else
		var22 = true
	end
	tbl_3.isLoading = var22
	var22 = false
	tbl_3.Selectable = var22
	tbl[1] = tbl_4
	tbl[2] = tbl_2
	tbl[3] = tbl_3
	module.rowData = tbl
	module.LayoutOrder = arg1.LayoutOrder
	do
		return React_upvr.createElement(ItemInfoList_upvr, module)
	end
	-- KONSTANTERROR: [85] 60. Error Block 22 end (CF ANALYSIS FAILED)
end