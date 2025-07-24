-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:41
-- Luau version 6, Types version 3
-- Time taken: 0.003041 seconds

-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
local tbl_7 = {}
local tbl_2 = {
	EventsChanged = true;
	LoadStatusChanged = true;
	PlayerDataReplicate = true;
	EventDataReplicate = true;
	EventCollectiblesReplicate = true;
	EventInstanceReplicate = true;
	RequestClaimCollectible = true;
	CollectiblesGiven = true;
	RequestClaimReward = true;
	RequestTeleport = true;
	CheckVIPSubscriptionPayment = true;
	SawMainEvent = true;
	UseProductCredit = true;
	RewardClaimed = true;
}
tbl_7.Remotes = tbl_2
;(function(arg1) -- Line 98, Named "InitRemotes"
	if game:GetService("RunService"):IsServer() then
		for i in arg1 do
			local var7
			if string.sub(i, 1, 2) == "U_" then
				var7 = "UnreliableRemoteEvent"
			else
				var7 = "RemoteEvent"
			end
			local any = Instance.new(var7)
			any.Name = i
			var7 = script
			any.Parent = var7
			arg1[i] = any
		end
	else
		for var6 in arg1 do
			arg1[var6] = script:WaitForChild(var6)
		end
	end
end)(tbl_2)
local tbl_5 = {}
local tbl_3 = {
	Id = nil;
	Name = "Speed Run 4";
	Icon = "rbxthumb://type=GameIcon&id=83858907&w=150&h=150";
	PlaceId = 183364845;
	LayoutOrder = 0;
}
local tbl_6 = {}
local var12 = 178821655
tbl_6[1] = 16832202809
tbl_6[2] = 15685758379
tbl_6[3] = var12
tbl_6[4] = 190442298
tbl_6[5] = 190590056
tbl_6[6] = 244532931
tbl_6[7] = 245893699
tbl_6[8] = 264431831
tbl_6[9] = 1088603468
tbl_3.SubPlaces = tbl_6
tbl_5.SpeedRun4 = tbl_3
tbl_5.RealisticHandRP = {
	Id = nil;
	Name = "Realistic Hand RP";
	Icon = "rbxthumb://type=GameIcon&id=2754593977&w=150&h=150";
	PlaceId = 7117492592;
	LayoutOrder = 1;
	SubPlaces = {15686824311};
}
local tbl = {
	Id = nil;
	Name = "Realistic Spray Paint";
	Icon = "rbxthumb://type=GameIcon&id=3325778418&w=150&h=150";
	PlaceId = 8765955188;
	LayoutOrder = 2;
	AgeRestricted = true;
}
local tbl_4 = {}
local var17 = 11664058913
tbl_4[1] = 4730013186
tbl_4[2] = var17
tbl.SubPlaces = tbl_4
tbl_5.RealisticSprayPaint = tbl
var12.Id = var17
local PlaceId_2 = game.PlaceId
local PlaceId = var12.PlaceId
if PlaceId ~= PlaceId_2 then
	if var12.SubPlaces then
		if table.find(var12.SubPlaces, PlaceId_2) == nil then
			PlaceId = false
		else
			PlaceId = true
		end
	else
		PlaceId = false
	end
	if PlaceId then
		-- KONSTANTERROR: [170] 118. Error Block 10 start (CF ANALYSIS FAILED)
		tbl_7.CurrentLocation = var12
		-- KONSTANTERROR: [170] 118. Error Block 10 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTWARNING: GOTO [144] #101
end
-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [170] 118. Error Block 10 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: [170] 118. Error Block 10 end (CF ANALYSIS FAILED)