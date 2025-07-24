-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:39
-- Luau version 6, Types version 3
-- Time taken: 0.000497 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
game:GetService("MarketplaceService").PromptPremiumPurchaseFinished:Connect(function() -- Line 11, Named "PremiumPrompt"
	--[[ Upvalues[1]:
		[1]: ReplicatedStorage_upvr (readonly)
	]]
	ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes"):WaitForChild("PremiumPromptEvent"):FireServer()
end)
return {}