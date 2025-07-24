-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:53
-- Luau version 6, Types version 3
-- Time taken: 0.005854 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local Logger = require(Parent.Loggers).Logger
local HttpRequest_upvr = require(Parent.HttpRequest)
local tbl = {}
local any_new_result1_upvr = Logger.new(Logger, "PlaceIdContainer")
local function requestFunction(arg1, arg2, arg3) -- Line 33
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr (readonly)
		[2]: HttpRequest_upvr (readonly)
	]]
	any_new_result1_upvr:info("Fetching: {}", string.format("[ requestMethod = %q, url = %q ]", arg2, arg1))
	return HttpRequest_upvr.requestFunctions.HttpRbxApi(arg1, arg2, arg3)
end
tbl.requestFunction = requestFunction
if require(Parent.SharedFlags).FFlagLuaAppDefaultHttpRetry then
	requestFunction = game:DefineFastInt("PlaceIdContainerHttpRetryCount", 4)
else
	requestFunction = nil
end
tbl.maxRetryCount = requestFunction
local tbl_2_upvr = {
	networkImpl = HttpRequest_upvr.config(tbl);
}
local function _(arg1, arg2) -- Line 53, Named "getPlaceInfo"
	local var9 = arg1.ChatAppReducer.PlaceInfos[arg2]
	if not var9 then
		var9 = {}
	end
	return var9
end
local Cryo_upvr = require(Parent.Cryo)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useCallback_upvr = React_upvr.useCallback
local ApiFetchPlaceInfos_upvr = require(Parent.PlaceInfoRodux).Thunks.ApiFetchPlaceInfos
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local FFlagAppChatInvalidGameLinkCard_upvr = require(AppChat.Flags.FFlagAppChatInvalidGameLinkCard)
local useEffect_upvr = React_upvr.useEffect
local GameCardError_upvr = require(script.Parent.GameCardError)
local GameCard_upvr = require(script.Parent.GameCard)
local GameCardContainer_upvr = require(script.Parent.GameCardContainer)
function PlaceIdContainer(arg1) -- Line 57
	--[[ Upvalues[13]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useCallback_upvr (readonly)
		[5]: ApiFetchPlaceInfos_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
		[7]: useSelector_upvr (readonly)
		[8]: FFlagAppChatInvalidGameLinkCard_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: useEffect_upvr (readonly)
		[11]: GameCardError_upvr (readonly)
		[12]: GameCard_upvr (readonly)
		[13]: GameCardContainer_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_2_upvr, arg1)
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local function var25_upvr(arg1_3) -- Line 65
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var26 = arg1_3.ChatAppReducer.PlaceInfos[any_join_result1_upvr.placeId]
		if not var26 then
			var26 = {}
		end
		local universeId = var26.universeId
		if not universeId or not tostring(universeId) then
		end
		return nil
	end
	local useSelector_upvr_result1_upvr = useSelector_upvr(var25_upvr)
	if FFlagAppChatInvalidGameLinkCard_upvr then
		var25_upvr = React_upvr.useRef(nil)
	else
		var25_upvr = {}
		var25_upvr.current = nil
	end
	local var29_upvw
	if FFlagAppChatInvalidGameLinkCard_upvr then
		local any_useState_result1, any_useState_result2 = React_upvr.useState(false)
		var29_upvw = any_useState_result2
	end
	local var12_result1_upvr = useCallback_upvr(function(arg1_2, arg2) -- Line 61
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: ApiFetchPlaceInfos_upvr (copied, readonly)
		]]
		local module = {}
		module[1] = arg2
		return useDispatch_upvr_result1_upvr(ApiFetchPlaceInfos_upvr(arg1_2, module))
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr))
	useEffect_upvr(function() -- Line 79
		--[[ Upvalues[7]:
			[1]: any_join_result1_upvr (readonly)
			[2]: var12_result1_upvr (readonly)
			[3]: FFlagAppChatInvalidGameLinkCard_upvr (copied, readonly)
			[4]: Cryo_upvr (copied, readonly)
			[5]: useSelector_upvr_result1_upvr (readonly)
			[6]: var25_upvr (readonly)
			[7]: var29_upvw (read and write)
		]]
		local var34_upvw = false
		var12_result1_upvr(any_join_result1_upvr.networkImpl, any_join_result1_upvr.placeId):andThen(function(arg1_4) -- Line 83
			--[[ Upvalues[3]:
				[1]: FFlagAppChatInvalidGameLinkCard_upvr (copied, readonly)
				[2]: var34_upvw (read and write)
				[3]: Cryo_upvr (copied, readonly)
			]]
			if FFlagAppChatInvalidGameLinkCard_upvr then
				var34_upvw = not Cryo_upvr.isEmpty(arg1_4)
			end
		end)
		if FFlagAppChatInvalidGameLinkCard_upvr then
			if not useSelector_upvr_result1_upvr then
				if var25_upvr.current then
					task.cancel(var25_upvr.current)
				end
				var25_upvr.current = task.delay(1, function() -- Line 95
					--[[ Upvalues[3]:
						[1]: var34_upvw (read and write)
						[2]: var29_upvw (copied, read and write)
						[3]: var25_upvr (copied, readonly)
					]]
					if not var34_upvw then
						var29_upvw(true)
					end
					var25_upvr.current = nil
				end)
			end
			return function() -- Line 103
				--[[ Upvalues[1]:
					[1]: var25_upvr (copied, readonly)
				]]
				if var25_upvr.current then
					task.cancel(var25_upvr.current)
					var25_upvr.current = nil
				end
			end
		end
	end, {})
	if FFlagAppChatInvalidGameLinkCard_upvr then
		useEffect_upvr(function() -- Line 115
			--[[ Upvalues[2]:
				[1]: useSelector_upvr_result1_upvr (readonly)
				[2]: var25_upvr (readonly)
			]]
			if useSelector_upvr_result1_upvr and var25_upvr.current then
				task.cancel(var25_upvr.current)
				var25_upvr.current = nil
			end
		end, {useSelector_upvr_result1_upvr})
	end
	if not useSelector_upvr_result1_upvr then
		if FFlagAppChatInvalidGameLinkCard_upvr and any_useState_result1 then
			return React_upvr.createElement(GameCardError_upvr, {})
		end
		return React_upvr.createElement(GameCard_upvr, {})
	end
	return React_upvr.createElement(GameCardContainer_upvr, Cryo_upvr.Dictionary.join(any_join_result1_upvr, {
		universeId = useSelector_upvr_result1_upvr;
	}))
end
return React_upvr.memo(PlaceIdContainer)