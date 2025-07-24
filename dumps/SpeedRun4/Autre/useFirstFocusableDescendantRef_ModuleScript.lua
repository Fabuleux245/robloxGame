-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:56
-- Luau version 6, Types version 3
-- Time taken: 0.001503 seconds

local function _(arg1) -- Line 6, Named "safeDisconnect"
	if arg1 then
		arg1:Disconnect()
	end
end
local React_upvr = require(script:FindFirstAncestor("FocusNavigationUtils").Parent.React)
local getFirstFocusableDescendant_upvr = require(script.Parent.getFirstFocusableDescendant)
return function(arg1) -- Line 23, Named "useFirstFocusableDescendantRef"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: getFirstFocusableDescendant_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local tbl = {}
	tbl[1] = arg1
	React_upvr.useEffect(function() -- Line 26
		--[[ Upvalues[3]:
			[1]: getFirstFocusableDescendant_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		local var5_upvw
		local var6_upvw
		local var7_upvw
		local function updateFirstFocusable_upvr(arg1_2) -- Line 31, Named "updateFirstFocusable"
			--[[ Upvalues[5]:
				[1]: var5_upvw (read and write)
				[2]: var7_upvw (read and write)
				[3]: getFirstFocusableDescendant_upvr (copied, readonly)
				[4]: updateFirstFocusable_upvr (readonly)
				[5]: any_useRef_result1_upvr (copied, readonly)
			]]
			local var8 = var5_upvw
			if var8 then
				var8:Disconnect()
			end
			local var9 = var7_upvw
			if var9 then
				var9:Disconnect()
			end
			local getFirstFocusableDescendant_upvr_result1 = getFirstFocusableDescendant_upvr(arg1_2)
			if getFirstFocusableDescendant_upvr_result1 then
				var5_upvw = getFirstFocusableDescendant_upvr_result1:GetPropertyChangedSignal("Selectable"):Connect(function() -- Line 38
					--[[ Upvalues[2]:
						[1]: updateFirstFocusable_upvr (copied, readonly)
						[2]: arg1_2 (readonly)
					]]
					updateFirstFocusable_upvr(arg1_2)
				end)
				var7_upvw = getFirstFocusableDescendant_upvr_result1.AncestryChanged:Connect(function() -- Line 42
					--[[ Upvalues[2]:
						[1]: updateFirstFocusable_upvr (copied, readonly)
						[2]: arg1_2 (readonly)
					]]
					updateFirstFocusable_upvr(arg1_2)
				end)
			end
			any_useRef_result1_upvr.current = getFirstFocusableDescendant_upvr_result1
		end
		if arg1 then
			updateFirstFocusable_upvr(arg1)
			var6_upvw = arg1.DescendantAdded:Connect(function() -- Line 51
				--[[ Upvalues[2]:
					[1]: updateFirstFocusable_upvr (readonly)
					[2]: arg1 (copied, readonly)
				]]
				updateFirstFocusable_upvr(arg1)
			end)
		else
			any_useRef_result1_upvr.current = nil
		end
		return function() -- Line 58
			--[[ Upvalues[3]:
				[1]: var5_upvw (read and write)
				[2]: var6_upvw (read and write)
				[3]: var7_upvw (read and write)
			]]
			local var15 = var5_upvw
			if var15 then
				var15:Disconnect()
			end
			local var16 = var6_upvw
			if var16 then
				var16:Disconnect()
			end
			local var17 = var7_upvw
			if var17 then
				var17:Disconnect()
			end
		end
	end, tbl)
	return any_useRef_result1_upvr
end