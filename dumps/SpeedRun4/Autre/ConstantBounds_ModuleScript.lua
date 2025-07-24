-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:55
-- Luau version 6, Types version 3
-- Time taken: 0.006487 seconds

local module = {}
local game_DefineFastInt_result1_upvr_72 = game:DefineFastInt("UGCValidateArmXMinClassic", 25)
local game_DefineFastInt_result1_upvr_15 = game:DefineFastInt("UGCValidateArmYMinClassic", 150)
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("UGCValidateArmZMinClassic", 25)
local game_DefineFastInt_result1_upvr_23 = game:DefineFastInt("UGCValidateArmXMaxClassic", 200)
local game_DefineFastInt_result1_upvr_52 = game:DefineFastInt("UGCValidateArmYMaxClassic", 300)
local game_DefineFastInt_result1_upvr_85 = game:DefineFastInt("UGCValidateArmZMaxClassic", 200)
local game_DefineFastInt_result1_upvr_81 = game:DefineFastInt("UGCValidateArmXMinSlender", 25)
local game_DefineFastInt_result1_upvr_58 = game:DefineFastInt("UGCValidateArmYMinSlender", 150)
local game_DefineFastInt_result1_upvr_5 = game:DefineFastInt("UGCValidateArmZMinSlender", 25)
local game_DefineFastInt_result1_upvr_40 = game:DefineFastInt("UGCValidateArmXMaxSlender", 150)
local game_DefineFastInt_result1_upvr_63 = game:DefineFastInt("UGCValidateArmYMaxSlender", 400)
local game_DefineFastInt_result1_upvr_22 = game:DefineFastInt("UGCValidateArmZMaxSlender", 200)
local game_DefineFastInt_result1_upvr_59 = game:DefineFastInt("UGCValidateArmXMinNormal", 25)
local game_DefineFastInt_result1_upvr_66 = game:DefineFastInt("UGCValidateArmYMinNormal", 150)
local game_DefineFastInt_result1_upvr_53 = game:DefineFastInt("UGCValidateArmZMinNormal", 25)
local game_DefineFastInt_result1_upvr_62 = game:DefineFastInt("UGCValidateArmXMaxNormal", 200)
local game_DefineFastInt_result1_upvr_16 = game:DefineFastInt("UGCValidateArmYMaxNormal", 450)
local game_DefineFastInt_result1_upvr_25 = game:DefineFastInt("UGCValidateArmZMaxNormal", 200)
function module.getArmBounds() -- Line 132
	--[[ Upvalues[18]:
		[1]: game_DefineFastInt_result1_upvr_72 (readonly)
		[2]: game_DefineFastInt_result1_upvr_15 (readonly)
		[3]: game_DefineFastInt_result1_upvr_3 (readonly)
		[4]: game_DefineFastInt_result1_upvr_23 (readonly)
		[5]: game_DefineFastInt_result1_upvr_52 (readonly)
		[6]: game_DefineFastInt_result1_upvr_85 (readonly)
		[7]: game_DefineFastInt_result1_upvr_81 (readonly)
		[8]: game_DefineFastInt_result1_upvr_58 (readonly)
		[9]: game_DefineFastInt_result1_upvr_5 (readonly)
		[10]: game_DefineFastInt_result1_upvr_40 (readonly)
		[11]: game_DefineFastInt_result1_upvr_63 (readonly)
		[12]: game_DefineFastInt_result1_upvr_22 (readonly)
		[13]: game_DefineFastInt_result1_upvr_59 (readonly)
		[14]: game_DefineFastInt_result1_upvr_66 (readonly)
		[15]: game_DefineFastInt_result1_upvr_53 (readonly)
		[16]: game_DefineFastInt_result1_upvr_62 (readonly)
		[17]: game_DefineFastInt_result1_upvr_16 (readonly)
		[18]: game_DefineFastInt_result1_upvr_25 (readonly)
	]]
	return {
		Classic = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_72 / 100, game_DefineFastInt_result1_upvr_15 / 100, game_DefineFastInt_result1_upvr_3 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_23 / 100, game_DefineFastInt_result1_upvr_52 / 100, game_DefineFastInt_result1_upvr_85 / 100);
		};
		ProportionsSlender = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_81 / 100, game_DefineFastInt_result1_upvr_58 / 100, game_DefineFastInt_result1_upvr_5 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_40 / 100, game_DefineFastInt_result1_upvr_63 / 100, game_DefineFastInt_result1_upvr_22 / 100);
		};
		ProportionsNormal = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_59 / 100, game_DefineFastInt_result1_upvr_66 / 100, game_DefineFastInt_result1_upvr_53 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_62 / 100, game_DefineFastInt_result1_upvr_16 / 100, game_DefineFastInt_result1_upvr_25 / 100);
		};
	}
end
local game_DefineFastInt_result1_upvr_80 = game:DefineFastInt("UGCValidateLegXMinClassic", 25)
local game_DefineFastInt_result1_upvr_55 = game:DefineFastInt("UGCValidateLegYMinClassic", 200)
local game_DefineFastInt_result1_upvr_42 = game:DefineFastInt("UGCValidateLegZMinClassic", 50)
local game_DefineFastInt_result1_upvr_57 = game:DefineFastInt("UGCValidateLegXMaxClassic", 150)
local game_DefineFastInt_result1_upvr_29 = game:DefineFastInt("UGCValidateLegYMaxClassic", 275)
local game_DefineFastInt_result1_upvr_82 = game:DefineFastInt("UGCValidateLegZMaxClassic", 200)
local game_DefineFastInt_result1_upvr_83 = game:DefineFastInt("UGCValidateLegXMinSlender", 25)
local game_DefineFastInt_result1_upvr_19 = game:DefineFastInt("UGCValidateLegYMinSlender", 200)
local game_DefineFastInt_result1_upvr_90 = game:DefineFastInt("UGCValidateLegZMinSlender", 50)
local game_DefineFastInt_result1_upvr_46 = game:DefineFastInt("UGCValidateLegXMaxSlender", 150)
local game_DefineFastInt_result1_upvr_12 = game:DefineFastInt("UGCValidateLegYMaxSlender", 330)
local game_DefineFastInt_result1_upvr_11 = game:DefineFastInt("UGCValidateLegZMaxSlender", 200)
local game_DefineFastInt_result1_upvr_70 = game:DefineFastInt("UGCValidateLegXMinNormal", 25)
local game_DefineFastInt_result1_upvr_60 = game:DefineFastInt("UGCValidateLegYMinNormal", 200)
local game_DefineFastInt_result1_upvr_50 = game:DefineFastInt("UGCValidateLegZMinNormal", 50)
local game_DefineFastInt_result1_upvr_87 = game:DefineFastInt("UGCValidateLegXMaxNormal", 150)
local game_DefineFastInt_result1_upvr_51 = game:DefineFastInt("UGCValidateLegYMaxNormal", 330)
local game_DefineFastInt_result1_upvr_75 = game:DefineFastInt("UGCValidateLegZMaxNormal", 200)
function module.getLegBounds() -- Line 173
	--[[ Upvalues[18]:
		[1]: game_DefineFastInt_result1_upvr_80 (readonly)
		[2]: game_DefineFastInt_result1_upvr_55 (readonly)
		[3]: game_DefineFastInt_result1_upvr_42 (readonly)
		[4]: game_DefineFastInt_result1_upvr_57 (readonly)
		[5]: game_DefineFastInt_result1_upvr_29 (readonly)
		[6]: game_DefineFastInt_result1_upvr_82 (readonly)
		[7]: game_DefineFastInt_result1_upvr_83 (readonly)
		[8]: game_DefineFastInt_result1_upvr_19 (readonly)
		[9]: game_DefineFastInt_result1_upvr_90 (readonly)
		[10]: game_DefineFastInt_result1_upvr_46 (readonly)
		[11]: game_DefineFastInt_result1_upvr_12 (readonly)
		[12]: game_DefineFastInt_result1_upvr_11 (readonly)
		[13]: game_DefineFastInt_result1_upvr_70 (readonly)
		[14]: game_DefineFastInt_result1_upvr_60 (readonly)
		[15]: game_DefineFastInt_result1_upvr_50 (readonly)
		[16]: game_DefineFastInt_result1_upvr_87 (readonly)
		[17]: game_DefineFastInt_result1_upvr_51 (readonly)
		[18]: game_DefineFastInt_result1_upvr_75 (readonly)
	]]
	return {
		Classic = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_80 / 100, game_DefineFastInt_result1_upvr_55 / 100, game_DefineFastInt_result1_upvr_42 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_57 / 100, game_DefineFastInt_result1_upvr_29 / 100, game_DefineFastInt_result1_upvr_82 / 100);
		};
		ProportionsSlender = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_83 / 100, game_DefineFastInt_result1_upvr_19 / 100, game_DefineFastInt_result1_upvr_90 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_46 / 100, game_DefineFastInt_result1_upvr_12 / 100, game_DefineFastInt_result1_upvr_11 / 100);
		};
		ProportionsNormal = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_70 / 100, game_DefineFastInt_result1_upvr_60 / 100, game_DefineFastInt_result1_upvr_50 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_87 / 100, game_DefineFastInt_result1_upvr_51 / 100, game_DefineFastInt_result1_upvr_75 / 100);
		};
	}
end
local game_DefineFastInt_result1_upvr_32 = game:DefineFastInt("UGCValidateTorsoXMinClassic", 100)
local game_DefineFastInt_result1_upvr_79 = game:DefineFastInt("UGCValidateTorsoYMinClassic", 200)
local game_DefineFastInt_result1_upvr_30 = game:DefineFastInt("UGCValidateTorsoZMinClassic", 70)
local game_DefineFastInt_result1_upvr_9 = game:DefineFastInt("UGCValidateTorsoXMaxClassic", 350)
local game_DefineFastInt_result1_upvr_47 = game:DefineFastInt("UGCValidateTorsoYMaxClassic", 325)
local game_DefineFastInt_result1_upvr_14 = game:DefineFastInt("UGCValidateTorsoZMaxClassic", 200)
local game_DefineFastInt_result1_upvr_67 = game:DefineFastInt("UGCValidateTorsoXMinSlender", 100)
local game_DefineFastInt_result1_upvr_34 = game:DefineFastInt("UGCValidateTorsoYMinSlender", 200)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("UGCValidateTorsoZMinSlender", 70)
local game_DefineFastInt_result1_upvr_48 = game:DefineFastInt("UGCValidateTorsoXMaxSlender", 250)
local game_DefineFastInt_result1_upvr_86 = game:DefineFastInt("UGCValidateTorsoYMaxSlender", 300)
local game_DefineFastInt_result1_upvr_76 = game:DefineFastInt("UGCValidateTorsoZMaxSlender", 200)
local game_DefineFastInt_result1_upvr_7 = game:DefineFastInt("UGCValidateTorsoXMinNormal", 100)
local game_DefineFastInt_result1_upvr_17 = game:DefineFastInt("UGCValidateTorsoYMinNormal", 200)
local game_DefineFastInt_result1_upvr_13 = game:DefineFastInt("UGCValidateTorsoZMinNormal", 70)
local game_DefineFastInt_result1_upvr_84 = game:DefineFastInt("UGCValidateTorsoXMaxNormal", 400)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("UGCValidateTorsoYMaxNormal", 300)
local game_DefineFastInt_result1_upvr_8 = game:DefineFastInt("UGCValidateTorsoZMaxNormal", 225)
function module.getTorsoBounds() -- Line 214
	--[[ Upvalues[18]:
		[1]: game_DefineFastInt_result1_upvr_32 (readonly)
		[2]: game_DefineFastInt_result1_upvr_79 (readonly)
		[3]: game_DefineFastInt_result1_upvr_30 (readonly)
		[4]: game_DefineFastInt_result1_upvr_9 (readonly)
		[5]: game_DefineFastInt_result1_upvr_47 (readonly)
		[6]: game_DefineFastInt_result1_upvr_14 (readonly)
		[7]: game_DefineFastInt_result1_upvr_67 (readonly)
		[8]: game_DefineFastInt_result1_upvr_34 (readonly)
		[9]: game_DefineFastInt_result1_upvr (readonly)
		[10]: game_DefineFastInt_result1_upvr_48 (readonly)
		[11]: game_DefineFastInt_result1_upvr_86 (readonly)
		[12]: game_DefineFastInt_result1_upvr_76 (readonly)
		[13]: game_DefineFastInt_result1_upvr_7 (readonly)
		[14]: game_DefineFastInt_result1_upvr_17 (readonly)
		[15]: game_DefineFastInt_result1_upvr_13 (readonly)
		[16]: game_DefineFastInt_result1_upvr_84 (readonly)
		[17]: game_DefineFastInt_result1_upvr_2 (readonly)
		[18]: game_DefineFastInt_result1_upvr_8 (readonly)
	]]
	return {
		Classic = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_32 / 100, game_DefineFastInt_result1_upvr_79 / 100, game_DefineFastInt_result1_upvr_30 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_9 / 100, game_DefineFastInt_result1_upvr_47 / 100, game_DefineFastInt_result1_upvr_14 / 100);
		};
		ProportionsSlender = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_67 / 100, game_DefineFastInt_result1_upvr_34 / 100, game_DefineFastInt_result1_upvr / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_48 / 100, game_DefineFastInt_result1_upvr_86 / 100, game_DefineFastInt_result1_upvr_76 / 100);
		};
		ProportionsNormal = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_7 / 100, game_DefineFastInt_result1_upvr_17 / 100, game_DefineFastInt_result1_upvr_13 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_84 / 100, game_DefineFastInt_result1_upvr_2 / 100, game_DefineFastInt_result1_upvr_8 / 100);
		};
	}
end
local game_DefineFastInt_result1_upvr_78 = game:DefineFastInt("UGCValidateHeadXMinClassic", 50)
local game_DefineFastInt_result1_upvr_71 = game:DefineFastInt("UGCValidateHeadYMinClassic", 50)
local game_DefineFastInt_result1_upvr_36 = game:DefineFastInt("UGCValidateHeadZMinClassic", 50)
local game_DefineFastInt_result1_upvr_77 = game:DefineFastInt("UGCValidateHeadXMaxClassic", 150)
local game_DefineFastInt_result1_upvr_37 = game:DefineFastInt("UGCValidateHeadYMaxClassic", 175)
local game_DefineFastInt_result1_upvr_74 = game:DefineFastInt("UGCValidateHeadZMaxClassic", 200)
local game_DefineFastInt_result1_upvr_73 = game:DefineFastInt("UGCValidateHeadXMinSlender", 50)
local game_DefineFastInt_result1_upvr_89 = game:DefineFastInt("UGCValidateHeadYMinSlender", 50)
local game_DefineFastInt_result1_upvr_31 = game:DefineFastInt("UGCValidateHeadZMinSlender", 50)
local game_DefineFastInt_result1_upvr_10 = game:DefineFastInt("UGCValidateHeadXMaxSlender", 200)
local game_DefineFastInt_result1_upvr_88 = game:DefineFastInt("UGCValidateHeadYMaxSlender", 200)
local game_DefineFastInt_result1_upvr_24 = game:DefineFastInt("UGCValidateHeadZMaxSlender", 200)
local game_DefineFastInt_result1_upvr_41 = game:DefineFastInt("UGCValidateHeadXMinNormal", 50)
local game_DefineFastInt_result1_upvr_65 = game:DefineFastInt("UGCValidateHeadYMinNormal", 50)
local game_DefineFastInt_result1_upvr_64 = game:DefineFastInt("UGCValidateHeadZMinNormal", 50)
local game_DefineFastInt_result1_upvr_61 = game:DefineFastInt("UGCValidateHeadXMaxNormal", 300)
local game_DefineFastInt_result1_upvr_56 = game:DefineFastInt("UGCValidateHeadYMaxNormal", 200)
local game_DefineFastInt_result1_upvr_54 = game:DefineFastInt("UGCValidateHeadZMaxNormal", 200)
function module.getHeadBounds() -- Line 255
	--[[ Upvalues[18]:
		[1]: game_DefineFastInt_result1_upvr_78 (readonly)
		[2]: game_DefineFastInt_result1_upvr_71 (readonly)
		[3]: game_DefineFastInt_result1_upvr_36 (readonly)
		[4]: game_DefineFastInt_result1_upvr_77 (readonly)
		[5]: game_DefineFastInt_result1_upvr_37 (readonly)
		[6]: game_DefineFastInt_result1_upvr_74 (readonly)
		[7]: game_DefineFastInt_result1_upvr_73 (readonly)
		[8]: game_DefineFastInt_result1_upvr_89 (readonly)
		[9]: game_DefineFastInt_result1_upvr_31 (readonly)
		[10]: game_DefineFastInt_result1_upvr_10 (readonly)
		[11]: game_DefineFastInt_result1_upvr_88 (readonly)
		[12]: game_DefineFastInt_result1_upvr_24 (readonly)
		[13]: game_DefineFastInt_result1_upvr_41 (readonly)
		[14]: game_DefineFastInt_result1_upvr_65 (readonly)
		[15]: game_DefineFastInt_result1_upvr_64 (readonly)
		[16]: game_DefineFastInt_result1_upvr_61 (readonly)
		[17]: game_DefineFastInt_result1_upvr_56 (readonly)
		[18]: game_DefineFastInt_result1_upvr_54 (readonly)
	]]
	return {
		Classic = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_78 / 100, game_DefineFastInt_result1_upvr_71 / 100, game_DefineFastInt_result1_upvr_36 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_77 / 100, game_DefineFastInt_result1_upvr_37 / 100, game_DefineFastInt_result1_upvr_74 / 100);
		};
		ProportionsSlender = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_73 / 100, game_DefineFastInt_result1_upvr_89 / 100, game_DefineFastInt_result1_upvr_31 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_10 / 100, game_DefineFastInt_result1_upvr_88 / 100, game_DefineFastInt_result1_upvr_24 / 100);
		};
		ProportionsNormal = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_41 / 100, game_DefineFastInt_result1_upvr_65 / 100, game_DefineFastInt_result1_upvr_64 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_61 / 100, game_DefineFastInt_result1_upvr_56 / 100, game_DefineFastInt_result1_upvr_54 / 100);
		};
	}
end
local game_DefineFastInt_result1_upvr_49 = game:DefineFastInt("UGCValidateFullBodyXMinClassic", 150)
local game_DefineFastInt_result1_upvr_20 = game:DefineFastInt("UGCValidateFullBodyYMinClassic", 450)
local game_DefineFastInt_result1_upvr_69 = game:DefineFastInt("UGCValidateFullBodyZMinClassic", 70)
local game_DefineFastInt_result1_upvr_45 = game:DefineFastInt("UGCValidateFullBodyXMaxClassic", 750)
local game_DefineFastInt_result1_upvr_27 = game:DefineFastInt("UGCValidateFullBodyYMaxClassic", 775)
local game_DefineFastInt_result1_upvr_43 = game:DefineFastInt("UGCValidateFullBodyZMaxClassic", 200)
local game_DefineFastInt_result1_upvr_68 = game:DefineFastInt("UGCValidateFullBodyXMinSlender", 150)
local game_DefineFastInt_result1_upvr_39 = game:DefineFastInt("UGCValidateFullBodyYMinSlender", 450)
local game_DefineFastInt_result1_upvr_4 = game:DefineFastInt("UGCValidateFullBodyZMinSlender", 70)
local game_DefineFastInt_result1_upvr_21 = game:DefineFastInt("UGCValidateFullBodyXMaxSlender", 550)
local game_DefineFastInt_result1_upvr_18 = game:DefineFastInt("UGCValidateFullBodyYMaxSlender", 830)
local game_DefineFastInt_result1_upvr_35 = game:DefineFastInt("UGCValidateFullBodyZMaxSlender", 200)
local game_DefineFastInt_result1_upvr_33 = game:DefineFastInt("UGCValidateFullBodyXMinNormal", 150)
local game_DefineFastInt_result1_upvr_28 = game:DefineFastInt("UGCValidateFullBodyYMinNormal", 450)
local game_DefineFastInt_result1_upvr_44 = game:DefineFastInt("UGCValidateFullBodyZMinNormal", 70)
local game_DefineFastInt_result1_upvr_26 = game:DefineFastInt("UGCValidateFullBodyXMaxNormal", 800)
local game_DefineFastInt_result1_upvr_38 = game:DefineFastInt("UGCValidateFullBodyYMaxNormal", 830)
local game_DefineFastInt_result1_upvr_6 = game:DefineFastInt("UGCValidateFullBodyZMaxNormal", 225)
function module.getFullBodyBounds() -- Line 296
	--[[ Upvalues[18]:
		[1]: game_DefineFastInt_result1_upvr_49 (readonly)
		[2]: game_DefineFastInt_result1_upvr_20 (readonly)
		[3]: game_DefineFastInt_result1_upvr_69 (readonly)
		[4]: game_DefineFastInt_result1_upvr_45 (readonly)
		[5]: game_DefineFastInt_result1_upvr_27 (readonly)
		[6]: game_DefineFastInt_result1_upvr_43 (readonly)
		[7]: game_DefineFastInt_result1_upvr_68 (readonly)
		[8]: game_DefineFastInt_result1_upvr_39 (readonly)
		[9]: game_DefineFastInt_result1_upvr_4 (readonly)
		[10]: game_DefineFastInt_result1_upvr_21 (readonly)
		[11]: game_DefineFastInt_result1_upvr_18 (readonly)
		[12]: game_DefineFastInt_result1_upvr_35 (readonly)
		[13]: game_DefineFastInt_result1_upvr_33 (readonly)
		[14]: game_DefineFastInt_result1_upvr_28 (readonly)
		[15]: game_DefineFastInt_result1_upvr_44 (readonly)
		[16]: game_DefineFastInt_result1_upvr_26 (readonly)
		[17]: game_DefineFastInt_result1_upvr_38 (readonly)
		[18]: game_DefineFastInt_result1_upvr_6 (readonly)
	]]
	return {
		Classic = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_49 / 100, game_DefineFastInt_result1_upvr_20 / 100, game_DefineFastInt_result1_upvr_69 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_45 / 100, game_DefineFastInt_result1_upvr_27 / 100, game_DefineFastInt_result1_upvr_43 / 100);
		};
		ProportionsSlender = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_68 / 100, game_DefineFastInt_result1_upvr_39 / 100, game_DefineFastInt_result1_upvr_4 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_21 / 100, game_DefineFastInt_result1_upvr_18 / 100, game_DefineFastInt_result1_upvr_35 / 100);
		};
		ProportionsNormal = {
			minSize = Vector3.new(game_DefineFastInt_result1_upvr_33 / 100, game_DefineFastInt_result1_upvr_28 / 100, game_DefineFastInt_result1_upvr_44 / 100);
			maxSize = Vector3.new(game_DefineFastInt_result1_upvr_26 / 100, game_DefineFastInt_result1_upvr_38 / 100, game_DefineFastInt_result1_upvr_6 / 100);
		};
	}
end
return module