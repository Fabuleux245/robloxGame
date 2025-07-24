-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:38
-- Luau version 6, Types version 3
-- Time taken: 0.001900 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module = {}
local LocalPlayer = game.Players.LocalPlayer
local var7_upvr
local function INLINED() -- Internal function, doesn't exist in bytecode
	var7_upvr = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(LocalPlayer)
	return var7_upvr
end
if not LocalPlayer or not INLINED() then
	var7_upvr = "US"
end
local tbl_upvr = {"rbxassetid://719097010"}
function module.CanSeeSocialMedia() -- Line 13
	--[[ Upvalues[1]:
		[1]: var7_upvr (readonly)
	]]
	local var9
	if var7_upvr == "CN" then
		var9 = false
	else
		var9 = true
	end
	return var9
end
function module.CanSeeReligiousContent() -- Line 17
	--[[ Upvalues[1]:
		[1]: var7_upvr (readonly)
	]]
	local var10
	if var7_upvr == "CN" then
		var10 = false
	else
		var10 = true
	end
	return var10
end
function module.CanSeeLootboxes() -- Line 21
	--[[ Upvalues[1]:
		[1]: var7_upvr (readonly)
	]]
	local var11
	if var7_upvr == "CN" then
		var11 = false
	else
		var11 = true
	end
	return var11
end
local tbl_upvr_2 = {}
local function ScanContent(arg1) -- Line 25
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	if arg1:IsA("MeshPart") then
		for i = 1, #tbl_upvr do
			if tbl_upvr[i] == arg1.MeshId then
				local Part = Instance.new("Part")
				Part.Anchored = arg1.Anchored
				Part.CanCollide = arg1.CanCollide
				Part.Transparency = arg1.Transparency
				Part.BrickColor = arg1.BrickColor
				Part.Size = arg1.Size
				Part.CFrame = arg1.CFrame
				Part.Parent = arg1.Parent
				wait()
				arg1:Destroy()
				return
			end
		end
	elseif arg1:IsA("FileMesh") then
		for i_3 = 1, #tbl_upvr_2 do
			if tbl_upvr_2[i_3] == arg1.MeshId then
				arg1.MeshId = ""
				return
			end
		end
	end
end
if not module.CanSeeReligiousContent() then
	game.Workspace.DescendantAdded:Connect(ScanContent)
	local descendants = game.Workspace:GetDescendants()
	for i_2 = 1, #descendants do
		ScanContent(descendants[i_2])
		local _
	end
end
return module