-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:38
-- Luau version 6, Types version 3
-- Time taken: 0.010353 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("CompositorAnimateScript")
local Players = game:GetService("Players")
local LocalPlayer_upvw = Players.LocalPlayer
if not LocalPlayer_upvw then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer_upvw = Players.LocalPlayer
end
local module_upvr = {
	Value = false;
	ChangedEvent = Instance.new("BindableEvent");
}
local function getAnimateScript_upvr(arg1) -- Line 17, Named "getAnimateScript"
	--[[ Upvalues[1]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	if not arg1 then
		return nil
	end
	local Animate = arg1:FindFirstChild("Animate")
	if Animate and Animate:IsA("LocalScript") then
		return Animate
	end
	if Animate and Animate:IsA("Script") and Animate.RunContext == Enum.RunContext.Client then
		return Animate
	end
	if game_GetEngineFeature_result1_upvr and Animate and Animate:IsA("Actor") then
		return Animate
	end
	return nil
end
local function _(arg1) -- Line 36, Named "getPlayEmoteBindable"
	--[[ Upvalues[1]:
		[1]: getAnimateScript_upvr (readonly)
	]]
	local getAnimateScript_upvr_result1_4 = getAnimateScript_upvr(arg1)
	if not getAnimateScript_upvr_result1_4 then
		return nil
	end
	local PlayEmote_10 = getAnimateScript_upvr_result1_4:FindFirstChild("PlayEmote")
	if PlayEmote_10 and PlayEmote_10:IsA("BindableFunction") then
		return PlayEmote_10
	end
	return nil
end
local function _(arg1) -- Line 50, Named "getCanPlayEmotes"
	--[[ Upvalues[1]:
		[1]: getAnimateScript_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local getAnimateScript_upvr_result1_7 = getAnimateScript_upvr(arg1)
	local var9
	if not getAnimateScript_upvr_result1_7 then
		var9 = nil
	else
		local PlayEmote = getAnimateScript_upvr_result1_7:FindFirstChild("PlayEmote")
		if PlayEmote and PlayEmote:IsA("BindableFunction") then
			var9 = PlayEmote
		else
			var9 = nil
		end
	end
	if var9 == nil then
	else
	end
	return true
end
local var11_upvw
local var12_upvw
local var13_upvw
local function _() -- Line 57, Named "disconnectListeners"
	--[[ Upvalues[3]:
		[1]: var11_upvw (read and write)
		[2]: var12_upvw (read and write)
		[3]: var13_upvw (read and write)
	]]
	if var11_upvw then
		var11_upvw:Disconnect()
		var11_upvw = nil
	end
	if var12_upvw then
		var12_upvw:Disconnect()
		var12_upvw = nil
	end
	if var13_upvw then
		var13_upvw:Disconnect()
		var13_upvw = nil
	end
end
local var41_upvw
local function _(arg1) -- Line 76, Named "checkUpdate"
	--[[ Upvalues[3]:
		[1]: getAnimateScript_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: var41_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
	local getAnimateScript_upvr_result1_6 = getAnimateScript_upvr(arg1)
	if not getAnimateScript_upvr_result1_6 then
		-- KONSTANTWARNING: GOTO [19] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 7. Error Block 22 start (CF ANALYSIS FAILED)
	local var16
	local PlayEmote_7 = getAnimateScript_upvr_result1_6:FindFirstChild("PlayEmote")
	if PlayEmote_7 and PlayEmote_7:IsA("BindableFunction") then
		var16 = PlayEmote_7
	else
		var16 = nil
	end
	if var16 == nil then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	var16 = module_upvr.Value
	if var16 ~= true then
		var16 = module_upvr
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var16.Value = true
		var16 = module_upvr.ChangedEvent:Fire
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var16(true)
	end
	var16 = var41_upvw
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var16(true, arg1)
	-- KONSTANTERROR: [6] 7. Error Block 22 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 87, Named "connectAnimateAddedListener"
	--[[ Upvalues[5]:
		[1]: getAnimateScript_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: var41_upvw (read and write)
		[4]: var11_upvw (read and write)
		[5]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 23 start (CF ANALYSIS FAILED)
	if not getAnimateScript_upvr(arg1) then
		-- KONSTANTWARNING: GOTO [23] #22
	end
	-- KONSTANTERROR: [4] 5. Error Block 23 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 106, Named "connectPlayEmoteAddedListener"
	--[[ Upvalues[4]:
		[1]: getAnimateScript_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: var41_upvw (read and write)
		[4]: var12_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local getAnimateScript_upvr_result1_2 = getAnimateScript_upvr(arg1)
	if not getAnimateScript_upvr_result1_2 then
		-- KONSTANTWARNING: GOTO [19] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 7. Error Block 37 start (CF ANALYSIS FAILED)
	local var20
	local PlayEmote_4 = getAnimateScript_upvr_result1_2:FindFirstChild("PlayEmote")
	if PlayEmote_4 and PlayEmote_4:IsA("BindableFunction") then
		var20 = PlayEmote_4
	else
		var20 = nil
		local var22
	end
	if var20 then
		local getAnimateScript_upvr_result1 = getAnimateScript_upvr(arg1)
		if not getAnimateScript_upvr_result1 then
			var22 = nil
		else
			local PlayEmote_8 = getAnimateScript_upvr_result1:FindFirstChild("PlayEmote")
			if PlayEmote_8 and PlayEmote_8:IsA("BindableFunction") then
				var22 = PlayEmote_8
			else
				var22 = nil
			end
		end
		if var22 == nil then
		else
		end
		var22 = module_upvr.Value
		if var22 ~= true then
			var22 = module_upvr
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var22.Value = true
			var22 = module_upvr.ChangedEvent:Fire
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var22(true)
		end
		var22 = var41_upvw
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var22(true, arg1)
	else
		var12_upvw = arg2.ChildAdded:Connect(function(arg1_2) -- Line 113
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: getAnimateScript_upvr (copied, readonly)
				[3]: module_upvr (copied, readonly)
				[4]: var41_upvw (copied, read and write)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
			local Name = arg1_2.Name
			-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [16] 14. Error Block 25 start (CF ANALYSIS FAILED)
			local var27
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [17.4]
			local PlayEmote_5 = nil:FindFirstChild("PlayEmote")
			if PlayEmote_5 and PlayEmote_5:IsA("BindableFunction") then
				var27 = PlayEmote_5
			else
				var27 = nil
			end
			if var27 == nil then
				local _ = false
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
			end
			var27 = module_upvr.Value
			if var27 ~= true then
				var27 = module_upvr
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var27.Value = true
				var27 = module_upvr.ChangedEvent:Fire
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var27(true)
			end
			var27 = var41_upvw
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var27(true, Name)
			-- KONSTANTERROR: [16] 14. Error Block 25 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [52] 42. Error Block 17 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [52] 42. Error Block 17 end (CF ANALYSIS FAILED)
		end)
		-- KONSTANTERROR: [6] 7. Error Block 37 end (CF ANALYSIS FAILED)
	end
end
local function _(arg1) -- Line 120, Named "connectPlayEmoteRemovedListener"
	--[[ Upvalues[4]:
		[1]: getAnimateScript_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: var41_upvw (read and write)
		[4]: var13_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local getAnimateScript_upvr_result1_8 = getAnimateScript_upvr(arg1)
	if not getAnimateScript_upvr_result1_8 then
		-- KONSTANTWARNING: GOTO [19] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 7. Error Block 37 start (CF ANALYSIS FAILED)
	local var31_upvr
	local PlayEmote_12 = getAnimateScript_upvr_result1_8:FindFirstChild("PlayEmote")
	if PlayEmote_12 and PlayEmote_12:IsA("BindableFunction") then
		var31_upvr = PlayEmote_12
	else
		var31_upvr = nil
		local var33
	end
	if not var31_upvr then
		local getAnimateScript_result1_3 = getAnimateScript_upvr(arg1)
		if not getAnimateScript_result1_3 then
			var33 = nil
		else
			local PlayEmote_2 = getAnimateScript_result1_3:FindFirstChild("PlayEmote")
			if PlayEmote_2 and PlayEmote_2:IsA("BindableFunction") then
				var33 = PlayEmote_2
			else
				var33 = nil
			end
		end
		if var33 == nil then
		else
		end
		var33 = module_upvr.Value
		if var33 ~= true then
			var33 = module_upvr
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var33.Value = true
			var33 = module_upvr.ChangedEvent:Fire
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var33(true)
		end
		var33 = var41_upvw
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var33(true, arg1)
	else
		var13_upvw = var31_upvr.AncestryChanged:Connect(function(arg1_3, arg2) -- Line 127
			--[[ Upvalues[5]:
				[1]: var31_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: getAnimateScript_upvr (copied, readonly)
				[4]: module_upvr (copied, readonly)
				[5]: var41_upvw (copied, read and write)
			]]
			if not arg2 or not var31_upvr:IsDescendantOf(arg1) then
				local var37 = arg1
				local getAnimateScript_upvr_result1_3 = getAnimateScript_upvr(var37)
				if not getAnimateScript_upvr_result1_3 then
				else
					local PlayEmote_11 = getAnimateScript_upvr_result1_3:FindFirstChild("PlayEmote")
					if PlayEmote_11 and PlayEmote_11:IsA("BindableFunction") then
					else
					end
				end
				if nil == nil then
					local _ = false
					-- KONSTANTWARNING: Skipped task `defvar` above
				else
				end
				if module_upvr.Value ~= true then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					module_upvr.Value = true
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					module_upvr.ChangedEvent:Fire(true)
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var41_upvw(true, var37)
			end
		end)
		-- KONSTANTERROR: [6] 7. Error Block 37 end (CF ANALYSIS FAILED)
	end
end
function var41_upvw(arg1, arg2) -- Line 134
	--[[ Upvalues[7]:
		[1]: var11_upvw (read and write)
		[2]: var12_upvw (read and write)
		[3]: var13_upvw (read and write)
		[4]: getAnimateScript_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: var42_upvw (read and write)
		[7]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	var11_upvw:Disconnect()
	var11_upvw = nil
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 8. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 8. Error Block 3 end (CF ANALYSIS FAILED)
end
local var42_upvw = var41_upvw
local function _(arg1) -- Line 154, Named "onCharacterChanged"
	--[[ Upvalues[6]:
		[1]: var11_upvw (read and write)
		[2]: var12_upvw (read and write)
		[3]: var13_upvw (read and write)
		[4]: getAnimateScript_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: var42_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if var11_upvw then
		var11_upvw:Disconnect()
		var11_upvw = nil
	end
	if var12_upvw then
		var12_upvw:Disconnect()
		var12_upvw = nil
	end
	if var13_upvw then
		var13_upvw:Disconnect()
		var13_upvw = nil
	end
	local getAnimateScript_upvr_result1_5 = getAnimateScript_upvr(arg1)
	if not getAnimateScript_upvr_result1_5 then
		-- KONSTANTWARNING: GOTO [43] #39
	end
	local var44
	local PlayEmote_6 = getAnimateScript_upvr_result1_5:FindFirstChild("PlayEmote")
	if PlayEmote_6 and PlayEmote_6:IsA("BindableFunction") then
		var44 = PlayEmote_6
	else
		var44 = nil
	end
	if var44 == nil then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	var44 = module_upvr.Value
	if var44 ~= true then
		var44 = module_upvr
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var44.Value = true
		var44 = module_upvr.ChangedEvent:Fire
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var44(true)
	end
	var44 = var42_upvw
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var44(true, arg1)
end
LocalPlayer_upvw:GetPropertyChangedSignal("Character"):Connect(function() -- Line 159
	--[[ Upvalues[7]:
		[1]: LocalPlayer_upvw (read and write)
		[2]: var11_upvw (read and write)
		[3]: var12_upvw (read and write)
		[4]: var13_upvw (read and write)
		[5]: getAnimateScript_upvr (readonly)
		[6]: module_upvr (readonly)
		[7]: var42_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Character = LocalPlayer_upvw.Character
	if var11_upvw then
		var11_upvw:Disconnect()
		var11_upvw = nil
	end
	if var12_upvw then
		var12_upvw:Disconnect()
		var12_upvw = nil
	end
	if var13_upvw then
		var13_upvw:Disconnect()
		var13_upvw = nil
	end
	local getAnimateScript_result1_2 = getAnimateScript_upvr(Character)
	if not getAnimateScript_result1_2 then
		-- KONSTANTWARNING: GOTO [46] #41
	end
	local var50
	local PlayEmote_3 = getAnimateScript_result1_2:FindFirstChild("PlayEmote")
	if PlayEmote_3 and PlayEmote_3:IsA("BindableFunction") then
		var50 = PlayEmote_3
	else
		var50 = nil
	end
	if var50 == nil then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	var50 = module_upvr.Value
	if var50 ~= true then
		var50 = module_upvr
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var50.Value = true
		var50 = module_upvr.ChangedEvent:Fire
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var50(true)
	end
	var50 = var42_upvw
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var50(true, Character)
end)
local Character_2 = LocalPlayer_upvw.Character
if var11_upvw then
	var11_upvw:Disconnect()
	var11_upvw = nil
end
if var12_upvw then
	var12_upvw:Disconnect()
	var12_upvw = nil
end
if var13_upvw then
	var13_upvw:Disconnect()
	var13_upvw = nil
end
local getAnimateScript_result1 = getAnimateScript_upvr(Character_2)
if not getAnimateScript_result1 then
	-- KONSTANTWARNING: GOTO [135] #117
end
local var55
local PlayEmote_9 = getAnimateScript_result1:FindFirstChild("PlayEmote")
if PlayEmote_9 and PlayEmote_9:IsA("BindableFunction") then
	var55 = PlayEmote_9
else
	var55 = nil
end
if var55 == nil then
	local _ = false
	-- KONSTANTWARNING: Skipped task `defvar` above
else
end
var55 = module_upvr.Value
if var55 ~= true then
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_upvr.Value = true
	var55 = module_upvr.ChangedEvent:Fire
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var55(true)
end
var55 = var42_upvw
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
var55(true, Character_2)
return module_upvr