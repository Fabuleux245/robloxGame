-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:38
-- Luau version 6, Types version 3
-- Time taken: 0.001919 seconds

local Parent = script:FindFirstAncestor("RealtimeDelivery").Parent
game:DefineFastFlag("RealtimeDeliveryReconnectFix", false)
local useRobloxEventReceiver_upvr = require(script.Parent.useRobloxEventReceiver)
local React_upvr = require(Parent.React)
local useRealtimeNamespace_upvr = require(script.Parent.useRealtimeNamespace)
local List_upvr = require(Parent.Cryo).List
local Dictionary_upvr = require(Parent.Cryo).Dictionary
return function(arg1, arg2, arg3) -- Line 15, Named "useRealtimeConnectionStateChanged"
	--[[ Upvalues[5]:
		[1]: useRobloxEventReceiver_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useRealtimeNamespace_upvr (readonly)
		[4]: List_upvr (readonly)
		[5]: Dictionary_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var3_result1_upvr = useRobloxEventReceiver_upvr()
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local var12
	if game:GetFastFlag("RealtimeDeliveryReconnectFix") then
		var12 = List_upvr.join
		local tbl = {}
		tbl[1] = arg1
		var12 = var12(tbl, arg3)
	else
		var12 = Dictionary_upvr.union
		local tbl_2 = {}
		tbl_2[1] = arg1
		var12 = var12(tbl_2, arg3)
	end
	useRealtimeNamespace_upvr(arg1, function(arg1_2) -- Line 25
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local SequenceNumber = arg1_2.SequenceNumber
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 14. Error Block 9 start (CF ANALYSIS FAILED)
		any_useRef_result1_upvr.current = SequenceNumber
		do
			return
		end
		-- KONSTANTERROR: [20] 14. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 17. Error Block 7 start (CF ANALYSIS FAILED)
		any_useRef_result1_upvr.current = SequenceNumber
		-- KONSTANTERROR: [24] 17. Error Block 7 end (CF ANALYSIS FAILED)
	end, var12)
	var12 = game:GetFastFlag("RealtimeDeliveryReconnectFix")
	if var12 then
		var12 = List_upvr
		var12 = {}
		var12[1] = var3_result1_upvr
		var12[2] = any_useRef_result1_upvr.current
		local any_join_result1 = var12.join(var12, arg3)
	else
		var12 = Dictionary_upvr
		var12 = {}
		var12[1] = var3_result1_upvr
	end
	React_upvr.useEffect(function() -- Line 47
		--[[ Upvalues[4]:
			[1]: var3_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_useRef_result1_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local any_observeEvent_result1_upvr = var3_result1_upvr:observeEvent("signalR", function(arg1_3, arg2_2, arg3_2) -- Line 50
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: any_useRef_result1_upvr (copied, readonly)
				[3]: arg2 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [9] 8. Error Block 33 start (CF ANALYSIS FAILED)
			if arg3_2[arg1] == nil then
				-- KONSTANTWARNING: GOTO [27] #21
			end
			-- KONSTANTERROR: [9] 8. Error Block 33 end (CF ANALYSIS FAILED)
		end)
		return function() -- Line 76
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr (readonly)
			]]
			any_observeEvent_result1_upvr:disconnect()
		end
	end, var12.union(var12, arg3))
end