-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:10
-- Luau version 6, Types version 3
-- Time taken: 0.001479 seconds

local module_upvr_4 = {}
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("UIShared"))
module_upvr_4.CatalogOpen = false
local function RenderStepped(arg1, arg2) -- Line 21
end
module_upvr_4.RenderStepped = RenderStepped
local var5_upvr = not game:GetService("GuiService"):IsTenFootInterface()
local any_Create_result1_upvr = module_upvr_2.UIExclusivityMember.Create(require(Modules:WaitForChild("UIExclusivityGroups")).BloxBizUIGroup)
task.spawn(function() -- Line 25
	--[[ Upvalues[4]:
		[1]: module_upvr_2 (readonly)
		[2]: var5_upvr (readonly)
		[3]: module_upvr_4 (readonly)
		[4]: any_Create_result1_upvr (readonly)
	]]
	local BloxbizSDK = game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("BloxbizSDK")
	local module_upvr = require(BloxbizSDK:WaitForChild("Utils"):WaitForChild("Icon"):WaitForChild("IconController"))
	local module_upvr_3 = require(BloxbizSDK:WaitForChild("CatalogClient"))
	function module_upvr_4.RenderStepped(arg1, arg2) -- Line 44
		--[[ Upvalues[6]:
			[1]: module_upvr_2 (copied, readonly)
			[2]: var5_upvr (copied, readonly)
			[3]: module_upvr (readonly)
			[4]: module_upvr_4 (copied, readonly)
			[5]: module_upvr_3 (readonly)
			[6]: any_Create_result1_upvr (copied, readonly)
		]]
		local X = module_upvr_2.ViewportSize.X
		local var15
		if var5_upvr then
			var15 = module_upvr.getIcons()
			local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(var15)
			for _, v in ipairs_result1, ipairs_result2, ipairs_result3 do
				if v.enabled and v.presentOnTopbar and v:get("alignment") == "right" and v.targetPosition and v.targetPosition.X.Offset < X then
					X = v.targetPosition.X.Offset
				end
			end
		end
		ipairs_result2 = module_upvr_2.TopbarInset.Max.X
		ipairs_result2 = 0
		local maximum = math.max(ipairs_result2 - X, ipairs_result2)
		ipairs_result2 = module_upvr_2
		if module_upvr_2.FirstOrderProperties.BloxBizInset == maximum then
			ipairs_result2 = false
		else
			ipairs_result2 = true
		end
		ipairs_result2.FirstOrderProperties.BloxBizInsetDirty = ipairs_result2
		ipairs_result2 = module_upvr_2
		ipairs_result2.FirstOrderProperties.BloxBizInset = maximum
		ipairs_result2 = module_upvr_3.Enabled:get()
		module_upvr_4.CatalogOpen = ipairs_result2
		ipairs_result2 = module_upvr_2.UIExclusivityMember
		ipairs_result2 = any_Create_result1_upvr
		ipairs_result2.SetActive(ipairs_result2, module_upvr_4.CatalogOpen)
	end
end)
return module_upvr_4