-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:38
-- Luau version 6, Types version 3
-- Time taken: 0.001191 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local Service = require(Chrome.Service)
local any_new_result1_upvr = require(Chrome.ChromeShared.Service.ContainerSlotSignal).new(5)
local module = {}
local var6
if require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagDebugEnableUnibarDummyIntegrations() then
	var6 = Service.AvailabilitySignal.Available
else
	var6 = Service.AvailabilitySignal.Unavailable
end
module.initialAvailability = var6
var6 = "dummy_container"
module.id = var6
var6 = "CoreScripts.TopBar.Menu"
module.label = var6
module.containerWidthSlots = any_new_result1_upvr
var6 = {}
local React_upvr = require(CorePackages.Packages.React)
function var6.Container(arg1) -- Line 22
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	return React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
	}, {
		Content = React_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 1);
			BackgroundColor3 = Color3.new(0.5, 0.5, 0.5);
		});
	})
end
module.components = var6
function _simulateContainerSlotChange() -- Line 36
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	while true do
		task.wait(2)
		local randint = math.random(1, 8)
		print("Request slots: ", randint)
		any_new_result1_upvr:requestSlots(randint)
	end
end
return Service:register(module)