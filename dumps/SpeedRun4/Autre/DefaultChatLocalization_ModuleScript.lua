-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:51
-- Luau version 6, Types version 3
-- Time taken: 0.015855 seconds

local longstring1 = "El chat de texto se traducir\xE1 a tu idioma. Toca el s\xEDmbolo delante del mensaje para ver el original. Puedes desactivar las traducciones en el men\xFA Configuraci\xF3n."
local longstring2 = "O chat de texto ser\xE1 traduzido para seu idioma. Toque no s\xEDmbolo na frente da mensagem para ver o original. Voc\xEA pode desativar as tradu\xE7\xF5es no menu de configura\xE7\xF5es."
local longstring3 = "文本聊天将被翻译至你的语言。点按消息前面的符号，查看原始文本。 你可以在“设置”菜单中关闭翻译。"
return {{
	Key = "GameChat_ChatCommandsTeller_AllChannelWelcomeMessage";
	Values = {
		de = "Gib „/?“ oder „/help“ im Chat ein, um eine Liste der Chatbefehle zu erhalten.";
		["en-us"] = "Chat '/?' or '/help' for a list of chat commands.";
		es = "Env\xEDa \"/?\" o \"/help\" para obtener la lista de comandos del chat.";
		["es-es"] = "Env\xEDa \"/?\" o \"/help\" para obtener la lista de comandos del chat.";
		fr = "Dans le chat, \xAB\xA0/?\xA0\xBB ou \xAB\xA0/help\xA0\xBB pour la liste des commandes du chat.";
		id = "Chat '/?' atau '/help' untuk daftar perintah chat.";
		it = "Scrivi \"/?\" o \"/help\" per avere l'elenco dei comandi della chat.";
		ja = "チャットで 「/?」 または 「/help」を入力するとチャットコマンドの一覧を表示します。";
		ko = "채팅창에 '/?' 또는 '/help'를 입력하면 채팅 명령어 목록을 볼 수 있어요.";
		pt = "Digite '/?' ou '/help' no chat para ver uma lista de comandos.";
		["pt-br"] = "Digite '/?' ou '/help' no chat para ver uma lista de comandos.";
		ru = "Введи \xAB/?\xBB или \xAB/help\xBB, чтобы увидеть список команд чата.";
		["th-th"] = "พิมพ์ \"/?\" หรือ \"/help\" ในแชทเพื่อดูรายการคำสั่งเกี่ยวกับการแชท";
		["zh-cjv"] = "输入 “/?”或 “/help” 可获取聊天指令清单。";
		["zh-cn"] = "Chat “/?”或 “/help” 可获取聊天指令清单。";
		["zh-tw"] = "輸入「/?」或「/help」取得聊天指令清單。";
	};
}, {
	Key = "GameChat_SwallowGuestChat_Message";
	Values = {
		de = "Erstelle ein kostenloses Konto, um Zugriff auf Chatberechtigungen zu erhalten!";
		["en-us"] = "Create a free account to get access to chat permissions!";
		es = "\xA1Crea una cuenta gratuita para obtener los permisos de acceso al chat!";
		["es-es"] = "\xA1Crea una cuenta gratuita para obtener los permisos de acceso al chat!";
		fr = "Cr\xE9ez un compte gratuit pour acc\xE9der aux permissions de chat\xA0!";
		id = "Buat akun gratis untuk mendapatkan akses ke izin chat.";
		it = "Crea un account gratuito per avere accesso ai permessi della chat!";
		ja = "無料アカウントを作ってチャット権限にアクセス！";
		ko = "무료 계정을 생성해 채팅 권한을 이용하세요!";
		pt = "Crie uma conta gr\xE1tis para ter acesso \xE0 permiss\xF5es de chat!";
		["pt-br"] = "Crie uma conta gr\xE1tis para ter acesso \xE0 permiss\xF5es de chat!";
		ru = "Создай бесплатный аккаунт, чтобы настроить права доступа в чате!";
		["th-th"] = "สร้างบัญชีฟรีเพื่อรับสิทธิ์ในการแชท!";
		["zh-cjv"] = "创建免费帐户以获取聊天权限！";
		["zh-cn"] = "创建免费帐户以获取聊天权限！";
		["zh-tw"] = "若要使用聊天功能，請建立免費帳號。";
	};
}, {
	Key = "GameChat_ChatCommandsTeller_SwitchChannelCommand";
	Values = {
		de = "/c <Kanal> : Zum Wechseln zwischen Kanalmen\xFCreitern.";
		["en-us"] = "/c <channel> : switch channel menu tabs.";
		es = "/c <channel>: alternar pesta\xF1as del men\xFA del chat.";
		["es-es"] = "/c <channel>: alternar pesta\xF1as del men\xFA del chat.";
		fr = "/c <canal>\xA0: \xE9changer les onglets du menu Canal.";
		id = "/c <channel> : tab menu beralih channel.";
		it = "/c <canale>: cambia scheda nel menu dei canali.";
		ja = "/c <チャンネル> : チャンネルメニュータブを切り替える。";
		ko = "/c <채널> : 채널 메뉴 탭 전환.";
		pt = "/c <channel> : trocar abas do menu de canal.";
		["pt-br"] = "/c <channel> : trocar abas do menu de canal.";
		ru = "/c <канал> : переключить вкладку в меню каналов.";
		["th-th"] = "/c <แชนเนล> : สลับแท็บเมนูแชนเนล";
		["zh-cjv"] = "/c <频道名称> : 切换频道菜单标签。";
		["zh-cn"] = "/c <频道名称> : 切换频道菜单标签。";
		["zh-tw"] = "/c <頻道名稱>：切換頻道選單標籤。";
	};
}, {
	Key = "GameChat_ChatCommandsTeller_MeCommand";
	Values = {
		de = "/me <Text> : Rollenspielbefehl f\xFCr Aktionen.";
		["en-us"] = "/me <text> : roleplaying command for doing actions.";
		es = "/me <text>: comando de rol para realizar acciones.";
		["es-es"] = "/me <text>: comando de rol para realizar acciones.";
		fr = "/me <texte>\xA0: commande jeu de r\xF4le pour accomplir des actions.";
		id = "/me <text> : perintah roleplay untuk melakukan tindakan.";
		it = "/me <testo>: comando per descrivere azioni e giocare di ruolo.";
		ja = "/me <テキスト> : アクションのためのロールプレイングコマンド。";
		ko = "/me <텍스트> : 작업 수행을 위한 롤플레잉 명령어.";
		pt = "/me <text> : comando de RPG para realizar a\xE7\xF5es.";
		["pt-br"] = "/me <text> : comando de RPG para realizar a\xE7\xF5es.";
		ru = "/me <текст> : сообщить о выполнении какого-либо действия.";
		["th-th"] = "/me <ข้อความ> : คำสั่งเพื่อสวมบทบาทในการดำเนินการต่างๆ";
		["zh-cjv"] = "/me <text> : 做动作的角色扮演指令。";
		["zh-cn"] = "/me <text> : 做动作的角色扮演指令。";
		["zh-tw"] = "/me <文字>：角色扮演動作的指令。";
	};
}, {
	Key = "GameChat_ChatCommandsTeller_MuteCommand";
	Values = {
		de = "/mute <Sprecher> : Schaltet Sprecher:in stumm.";
		["en-us"] = "/mute <speaker> : mute a speaker.";
		es = "/mute <usuario>: silenciar a un usuario.";
		["es-es"] = "/mute <usuario>: silenciar a un usuario.";
		fr = "/mute <interlocuteur>\xA0: b\xE2illonne un interlocuteur.";
		id = "/mute <speaker> : bisukan pembicara.";
		it = "/mute <giocatore>: togli la parola a un giocatore.";
		ja = "/mute <スピーカー> : スピーカーをミュート。";
		ko = "/mute <스피커> : 스피커 음소거.";
		pt = "/mute <speaker> : silenciar uma pessoa.";
		["pt-br"] = "/mute <speaker> : silenciar uma pessoa.";
		ru = "/mute <пользователь> : игнорировать пользователя.";
		["th-th"] = "/mute <ผู้ใช้> : ปิดเสียงผู้ใช้";
		["zh-cjv"] = "/mute <用户名称>：将用户禁言。";
		["zh-cn"] = "/mute <用户名称>：将用户禁言。";
		["zh-tw"] = "/mute <使用者名稱> : 將此使用者靜音。";
	};
}, {
	Key = "GameChat_ChatCommandsTeller_UnMuteCommand";
	Values = {
		de = "/unmute <Sprecher> : Hebt Stummschaltung eines Sprechers auf.";
		["en-us"] = "/unmute <speaker> : unmute a speaker.";
		es = "/unmute <speaker>: cancelar silencio de un usuario.";
		["es-es"] = "/unmute <speaker>: cancelar silencio de un usuario.";
		fr = "/unmute <interlocuteur>\xA0: retire le b\xE2illon d'un interlocuteur.";
		id = "/unmute <speaker> : bunyikan pembicara.";
		it = "/unmute <giocatore>: restituisci la parola a un giocatore.";
		ja = "/unmute <スピーカー> : スピーカーのミュートを解除。";
		ko = "/unmute <스피커> : 스피커 음소거 해제.";
		pt = "/unmute <speaker> : remover sil\xEAncio de uma pessoa.";
		["pt-br"] = "/unmute <speaker> : remover sil\xEAncio de uma pessoa.";
		ru = "/unmute <speaker>: перестать игнорировать пользователя.";
		["th-th"] = "/unmute <ผู้ใช้> : เลิกปิดเสียงผู้ใช้";
		["zh-cjv"] = "/unmute <用户名称> : 取消该用户禁言。";
		["zh-cn"] = "/unmute <用户名称> : 取消该用户禁言。";
		["zh-tw"] = "/unmute <使用者名稱> : 將此使用者解除靜音。";
	};
}, {
	Key = "GameChat_ChatCommandsTeller_WhisperCommand";
	Values = {
		de = "/whisper <Sprecher:in> oder /w <Sprecher:in> : \xD6ffnet privaten Nachrichtenkanal mit Sprecher:in.";
		["en-us"] = "/whisper <speaker> or /w <speaker> : open private message channel with speaker.";
		es = "/whisper <usuario> o /w <usuario>: abrir canal de mensajes privados con un usuario.";
		["es-es"] = "/whisper <usuario> o /w <usuario>: abrir canal de mensajes privados con un usuario.";
		fr = "/whisper <interlocuteur> ou /w <interlocuteur>\xA0: ouvre un canal de discussion priv\xE9 avec l'interlocuteur.";
		id = "/whisper <speaker> atau /w <speaker> : buka channel pesan privat dengan pembicara.";
		it = "/whisper <giocatore> o /w <giocatore>: apri un canale privato con un giocatore.";
		ja = "/whisper <スピーカー> または /w <スピーカー> : プライベートメッセージチャンネルを開く";
		ko = "/whisper <사용자 이름> 또는 /w <사용자 이름> : 사용자 채널에서 비공개 메시지 열기.";
		pt = "/whisper <speaker> ou /w <speaker> : abrir um canal de mensagem privada com uma pessoa.";
		["pt-br"] = "/whisper <speaker> ou /w <speaker> : abrir um canal de mensagem privada com uma pessoa.";
		ru = "/whisper <speaker> или /w <speaker> : открыть канал для личной переписки с пользователем.";
		["th-th"] = "/whisper <ผู้ใช้> or /w <ผู้ใช้> : เปิดแชนเนลเพื่อแชทข้อความแบบส่วนตัวกับผู้ใช้";
		["zh-cjv"] = "/whisper <用户名称> 或 /w <用户名称> : 与此用户开启私人消息频道。";
		["zh-cn"] = "/whisper <用户名称> 或 /w <用户名称> : 与此用户开启私人消息频道。";
		["zh-tw"] = "/whisper <使用者名稱> 或 /w <使用者名稱> : 與此使用者開啟私人訊息頻道。";
	};
}, {
	Key = "GameChat_ChatMain_ChatTranslationOnboarding";
	Values = {
		de = "Der Textchat wird in deine Sprache \xFCbersetzt. Tippe auf das Symbol vor der Nachricht, um sie in der Originalsprache anzuzeigen. Du kannst \xDCbersetzungen im Men\xFC \"Einstellungen\" ausschalten.";
		["en-us"] = "Text chat will be translated into your language. Tap the symbol in front of the message to see the original. You can turn off translations in the Settings menu.";
		es = longstring1;
		["es-es"] = longstring1;
		fr = "Le texte du chat sera traduit dans ta langue. Touche le symbole devant le message pour voir l'original. Tu peux d\xE9sactiver les traductions dans le menu Param\xE8tres.";
		id = "Chat teks akan diterjemahkan ke dalam bahasa kamu. Ketuk simbol di depan pesan untuk melihat pesan orisinal. Kamu dapat mematikan terjemahan di menu Pengaturan.";
		it = "La chat di testo verr\xE0 tradotta nella tua lingua. Tocca il simbolo di fronte al messaggio per vedere l'originale. Puoi disattivare le traduzioni nel menu Impostazioni.";
		ja = "テキストチャットが設定言語に翻訳されます。原文を見るには、メッセージの前にある翻訳マークをタップしてください。翻訳は設定メニューでオフにできます。";
		ko = "텍스트 채팅이 사용자의 언어로 번역됩니다. 메시지 앞의 기호를 탭하면 이를 원래 언어로 확인할 수 있습니다. 설정 메뉴에서 번역 기능을 끌 수 있습니다.";
		pt = longstring2;
		["pt-br"] = longstring2;
		ru = "Доступен перевод текстового чата. Нажми на символ перед сообщением, чтобы увидеть оригинал. Перевод можно отключить в Настройках.";
		["th-th"] = "ข้อความในแชทจะได้รับการแปลเป็นภาษาของคุณ แตะสัญลักษณ์หน้าข้อความเพื่อดูข้อความในภาษาต้นฉบับ คุณสามารถปิดการแปลภาษาได้ในเมนูการตั้งค่า";
		["zh-cjv"] = longstring3;
		["zh-cn"] = longstring3;
		["zh-tw"] = "文字交談會翻譯為您慣用的語言。請輕觸訊息前的符號，查看原文。您可以在「設定」選單關閉翻譯。";
	};
}, {
	Key = "GameChat_ChatMain_SpeakerHasBeenMuted";
	Values = {
		de = "Sprecher:in „{RBX_NAME}“ wurde stummgeschaltet.";
		["en-us"] = "Speaker '{RBX_NAME}' has been muted.";
		es = "Se silenci\xF3 al usuario \"{RBX_NAME}\".";
		["es-es"] = "Se silenci\xF3 al usuario \"{RBX_NAME}\".";
		fr = "L'interlocuteur {RBX_NAME} a \xE9t\xE9 b\xE2illonn\xE9.";
		id = "Pembicara {RBX_NAME} telah dibisukan.";
		it = "Hai tolto la parola al giocatore \"{RBX_NAME}\".";
		ja = "スピーカーの「{RBX_NAME}」さんをミュート中です。";
		ko = "사용자 '{RBX_NAME}' 님이 음소거되었어요.";
		pt = "O usu\xE1rio '{RBX_NAME}' foi silenciado(a).";
		["pt-br"] = "O usu\xE1rio '{RBX_NAME}' foi silenciado(a).";
		ru = "Пользователь {RBX_NAME} добавлен в список игнорируемых.";
		["th-th"] = "ปิดเสียงผู้ใช้ \"{RBX_NAME}\" แล้ว";
		["zh-cjv"] = "发言者“{RBX_NAME}”已被禁言。";
		["zh-cn"] = "发言者“{RBX_NAME}”已被禁言。";
		["zh-tw"] = "已將使用者「{RBX_NAME}」靜音。";
	};
}, {
	Key = "GameChat_ChatMain_SpeakerHasBeenUnMuted";
	Values = {
		de = "Stummschaltung von Sprecher:in „{RBX_NAME}“ wurde aufgehoben.";
		["en-us"] = "Speaker '{RBX_NAME}' has been unmuted.";
		es = "Se cancel\xF3 el silencio del usuario \"{RBX_NAME}\".";
		["es-es"] = "Se cancel\xF3 el silencio del usuario \"{RBX_NAME}\".";
		fr = "L'interlocuteur {RBX_NAME} n'est plus b\xE2illonn\xE9.";
		id = "Pembicara {RBX_NAME} telah dibunyikan.";
		it = "Hai restituito la parola al giocatore \"{RBX_NAME}\".";
		ja = "スピーカーの「{RBX_NAME}」さんをミュート解除しました。";
		ko = "사용자 '{RBX_NAME}' 님의 음소거가 해제되었어요.";
		pt = "O sil\xEAncio de '{RBX_NAME}' foi removido.";
		["pt-br"] = "O sil\xEAncio de '{RBX_NAME}' foi removido.";
		ru = "Пользователь {RBX_NAME} удалён из списка игнорируемых.";
		["th-th"] = "เลิกปิดเสียงผู้ใช้ \"{RBX_NAME}\" แล้ว";
		["zh-cjv"] = "发言者“{RBX_NAME}”已被取消禁言。";
		["zh-cn"] = "发言者“{RBX_NAME}”已被取消禁言。";
		["zh-tw"] = "已將使用者「{RBX_NAME}」解除靜音。";
	};
}, {
	Key = "GameChat_ChatCommandsTeller_Desc";
	Values = {
		de = "Das sind die grundlegenden Chatbefehle.";
		["en-us"] = "These are the basic chat commands.";
		es = "Estos son los comandos b\xE1sicos del chat.";
		["es-es"] = "Estos son los comandos b\xE1sicos del chat.";
		fr = "Voici les commandes de chat basiques.";
		id = "Ini adalah perintah chat dasar.";
		it = "Questi sono i comandi base della chat.";
		ja = "これらは基本的なチャットコマンドです。";
		ko = "다음은 기본적인 채팅 명령어입니다.";
		pt = "Estes s\xE3o os comandos de chat b\xE1sicos.";
		["pt-br"] = "Estes s\xE3o os comandos de chat b\xE1sicos.";
		ru = "Это основные команды чата.";
		["th-th"] = "คำสั่งเหล่านี้เป็นคำสั่งแชทเบื้องต้น";
		["zh-cjv"] = "这些是基本聊天指令。";
		["zh-cn"] = "这些是基本聊天指令。";
		["zh-tw"] = "以下是基本聊天室指令。";
	};
}, {
	Key = "GameChat_GetVersion_Message";
	Values = {
		de = "Die Chatversion dieses Erlebnisses ist [{RBX_NUMBER}.{RBX_NUMBER}].";
		["en-us"] = "This experience is running chat version [{RBX_NUMBER}.{RBX_NUMBER}].";
		es = "Esta experiencia utiliza la versi\xF3n del chat [{RBX_NUMBER} {RBX_NUMBER}].";
		["es-es"] = "Esta experiencia utiliza la versi\xF3n del chat [{RBX_NUMBER} {RBX_NUMBER}].";
		fr = "Cette exp\xE9rience utilise la version de chat [{RBX_NUMBER} {RBX_NUMBER}].";
		id = "Pengalaman virtual ini menjalankan versi chat. [{RBX_NUMBER}.{RBX_NUMBER}].";
		it = "Questa esperienza usa la versione [{RBX_NUMBER}.{RBX_NUMBER}] della chat.";
		ja = "この仮想空間はチャットバージョン [{RBX_NUMBER}.{RBX_NUMBER}] を実行しています。";
		ko = "이 체험은 채팅 버전 [{RBX_NUMBER}.{RBX_NUMBER}](을)를 실행합니다.";
		pt = "Esta experi\xEAncia est\xE1 rodando a vers\xE3o de chat [{RBX_NUMBER}.{RBX_NUMBER}].";
		["pt-br"] = "Esta experi\xEAncia est\xE1 rodando a vers\xE3o de chat [{RBX_NUMBER}.{RBX_NUMBER}].";
		ru = "Этот плейс поддерживает чат версии [{RBX_NUMBER}.{RBX_NUMBER}].";
		["th-th"] = "ประสบการณ์นี้ใช้แชทในเวอร์ชัน [{RBX_NUMBER}.{RBX_NUMBER}]";
		["zh-cjv"] = "此作品正在运行聊天版本 [{RBX_NUMBER}.{RBX_NUMBER}]。";
		["zh-cn"] = "此作品正在运行聊天版本 [{RBX_NUMBER}.{RBX_NUMBER}]。";
		["zh-tw"] = "此體驗正在使用聊天室版本 [{RBX_NUMBER}.{RBX_NUMBER}]。";
	};
}, {
	Key = "GameChat_SwitchChannel_NowInChannel";
	Values = {
		de = "Du chattest jetzt in Kanal „{RBX_NAME}“.";
		["en-us"] = "You are now chatting in channel: '{RBX_NAME}'";
		es = "Est\xE1s chateando en el canal \"{RBX_NAME}\".";
		["es-es"] = "Est\xE1s chateando en el canal \"{RBX_NAME}\".";
		fr = "Maintenant, vous discutez sur le canal\xA0: {RBX_NAME}";
		id = "Saat ini kamu sedang chat di channel: {RBX_NAME}";
		it = "Ora stai parlando nel canale: \"{RBX_NAME}\"";
		ja = "あなたの現在のチャットチャンネルは: 「{RBX_NAME}」です。";
		ko = "'{RBX_NAME}' 채널에서 채팅 중이에요";
		pt = "Agora voc\xEA est\xE1 no canal de chat: '{RBX_NAME}'";
		["pt-br"] = "Agora voc\xEA est\xE1 no canal de chat: '{RBX_NAME}'";
		ru = "Ты общаешься на канале \xAB{RBX_NAME}\xBB";
		["th-th"] = "ตอนนี้คุณกำลังแชทอยู่ในแชนเนล: \"{RBX_NAME}\"";
		["zh-cjv"] = "你当前的聊天频道为：“{RBX_NAME}”";
		["zh-cn"] = "你当前的聊天频道为：“{RBX_NAME}”";
		["zh-tw"] = "您目前在「{RBX_NAME}」頻道聊天";
	};
}, {
	Key = "GameChat_SwitchChannel_NotInChannel";
	Values = {
		de = "Du befindest dich nicht in Kanal „{RBX_NAME}“.";
		["en-us"] = "You are not in channel: '{RBX_NAME}'";
		es = "No est\xE1s en el canal \"{RBX_NAME}\".";
		["es-es"] = "No est\xE1s en el canal \"{RBX_NAME}\".";
		fr = "Vous n'\xEAtes pas sur le canal\xA0: {RBX_NAME}";
		id = "Kamu tidak ada di channel: {RBX_NAME}";
		it = "Non ti trovi nel canale: \"{RBX_NAME}\"";
		ja = "あなたは「{RBX_NAME}」チャネルにいません。";
		ko = "'{RBX_NAME}' 채널에 있지 않습니다";
		pt = "Voc\xEA n\xE3o est\xE1 no canal: '{RBX_NAME}'";
		["pt-br"] = "Voc\xEA n\xE3o est\xE1 no canal: '{RBX_NAME}'";
		ru = "Тебя нет на канале \xAB{RBX_NAME}\xBB";
		["th-th"] = "คุณไม่ได้อยู่ในแชนเนล: \"{RBX_NAME}\"";
		["zh-cjv"] = "你不在频道：“{RBX_NAME}”";
		["zh-cn"] = "你不在频道：“{RBX_NAME}”";
		["zh-tw"] = "您不在「{RBX_NAME}」頻道";
	};
}, {
	Key = "GameChat_ChatMain_ChatBarText";
	Values = {
		de = "Klicke zum Chatten hier oder dr\xFCcke die „/“-Taste.";
		["en-us"] = "To chat click here or press \"/\" key";
		es = "Para chatear, haz clic aqu\xED o pulsa la tecla \"/\".";
		["es-es"] = "Para chatear, haz clic aqu\xED o pulsa la tecla \"/\".";
		fr = "Pour discuter, cliquez ici ou sur la touche \xAB\xA0/\xA0\xBB";
		id = "Untuk chat, klik di sini atau tekan tombol \"/\"";
		it = "Per chattare, clicca qui o premi il tasto \"/\"";
		ja = "チャットするにはここをクリックするか 「 / 」 キーを押します。";
		ko = "여기를 클릭하거나 \"/\" 키를 누른 후 채팅을 시작하세요";
		pt = "Para escrever clique aqui ou aperte a tecla \"/\"";
		["pt-br"] = "Para escrever clique aqui ou aperte a tecla \"/\"";
		ru = "Чтобы общаться в чате, нажми здесь или на клавишу \xAB/\xBB";
		["th-th"] = "คลิกที่นี่หรือกดที่ \"/\" เพื่อเริ่มแชท";
		["zh-cjv"] = "若要聊天，请点按此处或按下“/”键";
		["zh-cn"] = "若要聊天，请点按此处或按下“/”键";
		["zh-tw"] = "若要聊天，請按下此處或「/」鍵";
	};
}, {
	Key = "GameChat_ChatMain_ChatBarTextTouch";
	Values = {
		de = "Tippe zum Chatten hier.";
		["en-us"] = "Tap here to chat";
		es = "Toca aqu\xED para chatear";
		["es-es"] = "Toca aqu\xED para chatear";
		fr = "Touchez ici pour discuter";
		id = "Ketuk di sini untuk chat";
		it = "Tocca qui per chattare";
		ja = "ここをタップしてチャットする";
		ko = "여기를 클릭한 후 내용을 입력하세요";
		pt = "Toque aqui para escrever";
		["pt-br"] = "Toque aqui para escrever";
		ru = "Коснись здесь, чтобы общаться в чате";
		["th-th"] = "แตะที่นี่เพื่อแชท";
		["zh-cjv"] = "轻点此处以聊天";
		["zh-cn"] = "轻点此处以聊天";
		["zh-tw"] = "按下此處聊天";
	};
}, {
	Key = "GameChat_ChatMain_SpeakerHasBeenBlocked";
	Values = {
		de = "Sprecher:in „{RBX_NAME}“ wurde blockiert.";
		["en-us"] = "Speaker '{RBX_NAME}' has been blocked.";
		es = "Se bloque\xF3 al usuario \"{RBX_NAME}\".";
		["es-es"] = "Se bloque\xF3 al usuario \"{RBX_NAME}\".";
		fr = "L'interlocuteur {RBX_NAME} a \xE9t\xE9 bloqu\xE9.";
		id = "Pembicara {RBX_NAME} telah diblokir.";
		it = "Hai bloccato il giocatore \"{RBX_NAME}\".";
		ja = "スピーカーの「{RBX_NAME}」さんをブロック中です。";
		ko = "사용자 '{RBX_NAME}' 님을 차단했어요.";
		pt = "O usu\xE1rio '{RBX_NAME}' foi bloqueado(a).";
		["pt-br"] = "O usu\xE1rio '{RBX_NAME}' foi bloqueado(a).";
		ru = "Пользователь {RBX_NAME} заблокирован.";
		["th-th"] = "บล็อคผู้ใช้ \"{RBX_NAME}\" แล้ว";
		["zh-cjv"] = "发言者“{RBX_NAME}”已被屏蔽。";
		["zh-cn"] = "发言者“{RBX_NAME}”已被屏蔽。";
		["zh-tw"] = "已封鎖使用者「{RBX_NAME}」。";
	};
}, {
	Key = "GameChat_ChatMain_SpeakerHasBeenUnBlocked";
	Values = {
		de = "Blockierung von Sprecher:in „{RBX_NAME}“ wurde aufgehoben.";
		["en-us"] = "Speaker '{RBX_NAME}' has been unblocked.";
		es = "Se bloque\xF3 al usuario \"{RBX_NAME}\".";
		["es-es"] = "Se bloque\xF3 al usuario \"{RBX_NAME}\".";
		fr = "L'interlocuteur {RBX_NAME} n'est plus bloqu\xE9.";
		id = "Pembicara {RBX_NAME} telah dibuka blokir.";
		it = "Hai sbloccato il giocatore \"{RBX_NAME}\".";
		ja = "スピーカーの「{RBX_NAME}」さんをブロック解除しました。";
		ko = "사용자 '{RBX_NAME}'님 차단을 해제했어요.";
		pt = "O usu\xE1rio '{RBX_NAME}' foi desbloqueado.";
		["pt-br"] = "O usu\xE1rio '{RBX_NAME}' foi desbloqueado.";
		ru = "Пользователь {RBX_NAME} разблокирован.";
		["th-th"] = "เลิกบล็อคผู้ใช้ \"{RBX_NAME}\" แล้ว";
		["zh-cjv"] = "发言者“{RBX_NAME}”已被取消屏蔽。";
		["zh-cn"] = "发言者“{RBX_NAME}”已被取消屏蔽。";
		["zh-tw"] = "已解除封鎖使用者「{RBX_NAME}」。";
	};
}, {
	Key = "GameChat_ChatCommandsTeller_TeamCommand";
	Values = {
		de = "/team <Nachricht> oder /t <Nachricht> : Sendet eine Teamnachricht an Mitglieder deines Teams.";
		["en-us"] = "/team <message> or /t <message> : send a team chat to people on your team.";
		es = "/team <message> o /t <message>: enviar un mensaje de chat a los miembros de tu equipo.";
		["es-es"] = "/team <message> o /t <message>: enviar un mensaje de chat a los miembros de tu equipo.";
		fr = "/team <message> ou /t <message>\xA0: envoyer un message aux personnes de ton \xE9quipe.";
		id = "/team <message> atau /t <message> : kirim chat tim ke anggota tim kamu.";
		it = "/team <message> or /t <message> : invia un messaggio chat a tutti i giocatori della tua squadra.";
		ja = "/team <メッセージ> または /t <メッセージ> : 自分のチームメンバーにチームチャットを送る。";
		ko = "/team <메시지> 또는 /t <메시지> : 팀 내 회원에게 팀 채팅 전송.";
		pt = "/team <message> ou /t <message> : enviar um chat de equipe aos membros da sua equipe.";
		["pt-br"] = "/team <message> ou /t <message> : enviar um chat de equipe aos membros da sua equipe.";
		ru = "/team <message> или /t <message> : отправить групповое сообщение команде.";
		["th-th"] = "/team <ข้อความ> หรือ /t <ข้อความ> : ส่งแชททีมไปยังคนในทีมของคุณ";
		["zh-cjv"] = "/team <message> 或 /t <message> : 向你的队友发送聊天信息。";
		["zh-cn"] = "/team <message> 或 /t <message> : 向你的队友发送聊天信息。";
		["zh-tw"] = "/team <訊息> 或 /t <訊息> : 傳送訊息給隊伍中的使用者。";
	};
}, {
	Key = "GameChat_ChatFloodDetector_MessageDisplaySeconds";
	Values = {
		de = "Du musst {RBX_NUMBER} Sekunden lang warten, bevor du eine weitere Nachricht senden kannst!";
		["en-us"] = "You must wait {RBX_NUMBER} seconds before sending another message!";
		es = "\xA1Debes esperar {RBX_NUMBER} segundos antes de enviar otro mensaje!";
		["es-es"] = "\xA1Debes esperar {RBX_NUMBER} segundos antes de enviar otro mensaje!";
		fr = "Vous devez attendre {RBX_NUMBER}\xA0secondes avant d'envoyer un autre message\xA0!";
		id = "Kamu harus menunggu {RBX_NUMBER} detik sebelum mengirim pesan lain.";
		it = "Devi aspettare {RBX_NUMBER} secondi prima di inviare un altro messaggio!";
		ja = "{RBX_NUMBER} 秒待ってから次のメッセージを送ってください!";
		ko = "추가 메시지를 보내기 전에 {RBX_NUMBER}초 동안 기다려야 해요!";
		pt = "Voc\xEA precisa esperar {RBX_NUMBER} segundos antes de enviar outra mensagem!";
		["pt-br"] = "Voc\xEA precisa esperar {RBX_NUMBER} segundos antes de enviar outra mensagem!";
		ru = "Ты сможешь отправить новое сообщение только через {RBX_NUMBER} с!";
		["th-th"] = "คุณจำเป็นต้องรอเป็นเวลา {RBX_NUMBER} วินาทีก่อนที่จะส่งข้อความอื่นต่อ!";
		["zh-cjv"] = "发送另一条消息前你必须等待 {RBX_NUMBER} 秒！";
		["zh-cn"] = "发送另一条消息前你必须等待 {RBX_NUMBER} 秒！";
		["zh-tw"] = "請 {RBX_NUMBER} 秒後再傳送訊息。";
	};
}, {
	Key = "GameChat_ChatFloodDetector_Message";
	Values = {
		de = "Du musst warten, bevor du eine weitere Nachricht senden kannst!";
		["en-us"] = "You must wait before sending another message!";
		es = "\xA1Debes esperar antes de enviar otro mensaje!";
		["es-es"] = "\xA1Debes esperar antes de enviar otro mensaje!";
		fr = "Vous devez attendre avant d'envoyer un autre message\xA0!";
		id = "Kamu harus menunggu sebelum mengirim pesan lain.";
		it = "Devi aspettare prima di inviare un altro messaggio!";
		ja = "少し待ってから次のメッセージを送ってください!";
		ko = "추가 메시지를 보내기 전에 기다려야 해요!";
		pt = "Voc\xEA precisa esperar antes de enviar outra mensagem!";
		["pt-br"] = "Voc\xEA precisa esperar antes de enviar outra mensagem!";
		ru = "Необходимо подождать, прежде чем отправлять новое сообщение!";
		["th-th"] = "คุณจำเป็นต้องรอก่อนที่จะส่งข้อความอื่นต่อ!";
		["zh-cjv"] = "发送另一条消息前你必须等待！";
		["zh-cn"] = "发送另一条消息前你必须等待！";
		["zh-tw"] = "請稍後再傳送訊息。";
	};
}, {
	Key = "GameChat_ChatMessageValidator_SettingsError";
	Values = {
		de = "Aufgrund deiner Chateinstellungen kannst du keine Nachrichten senden.";
		["en-us"] = "Your chat settings prevent you from sending messages.";
		es = "Tu configuraci\xF3n de chat te impide enviar mensajes.";
		["es-es"] = "Tu configuraci\xF3n de chat te impide enviar mensajes.";
		fr = "Vos param\xE8tres de chat vous emp\xEAchent d'envoyer des messages.";
		id = "Pengaturan chat mencegah kamu untuk mengirim pesan.";
		it = "Non puoi inviare messaggi per le impostazioni della tua chat.";
		ja = "メッセージが送れないチャット設定です。";
		ko = "채팅 설정 때문에 메시지를 보낼 수 없습니다.";
		pt = "Suas configura\xE7\xF5es de chat impedem que voc\xEA envie mensagens.";
		["pt-br"] = "Suas configura\xE7\xF5es de chat impedem que voc\xEA envie mensagens.";
		ru = "В настройках чата заблокирована возможность отправлять сообщения.";
		["th-th"] = "การตั้งค่าแชทของคุณทำให้คุณไม่สามารถส่งข้อความได้";
		["zh-cjv"] = "你的聊天设置禁止你发送消息。";
		["zh-cn"] = "你的聊天设置禁止你发送消息。";
		["zh-tw"] = "您的聊天設定禁止您傳送訊息。";
	};
}, {
	Key = "GameChat_ChatMessageValidator_MaxLengthError";
	Values = {
		de = "Deine Nachricht \xFCberschreitet die zul\xE4ssige Nachrichtenl\xE4nge.";
		["en-us"] = "Your message exceeds the maximum message length.";
		es = "Tu mensaje supera la longitud m\xE1xima permitida.";
		["es-es"] = "Tu mensaje supera la longitud m\xE1xima permitida.";
		fr = "Votre message d\xE9passe la longueur maximale.";
		id = "Pesan kamu melebihi panjang maksimal.";
		it = "Il tuo messaggio supera la lunghezza massima consentita.";
		ja = "メッセージが最大文字数を超えています。";
		ko = "메시지 길이 한도를 초과했어요.";
		pt = "Sua mensagem ultrapassa o tamanho m\xE1ximo de mensagem.";
		["pt-br"] = "Sua mensagem ultrapassa o tamanho m\xE1ximo de mensagem.";
		ru = "Превышено максимально допустимое количество символов в сообщении.";
		["th-th"] = "ข้อความของคุณยาวเกินความยาวสูงสุดที่กำหนดไว้แล้ว";
		["zh-cjv"] = "你的消息已超过最大长度限制。";
		["zh-cn"] = "你的消息已超过最大长度限制。";
		["zh-tw"] = "您的訊息超過長度限制。";
	};
}, {
	Key = "GameChat_ChatMessageValidator_WhitespaceError";
	Values = {
		de = "Deine Nachricht enth\xE4lt unzul\xE4ssige Leerr\xE4ume.";
		["en-us"] = "Your message contains whitespace that is not allowed.";
		es = "Tu mensaje contiene espacios vac\xEDos que no se permiten.";
		["es-es"] = "Tu mensaje contiene espacios vac\xEDos que no se permiten.";
		fr = "Votre message contient des espaces blancs qui sont interdits.";
		id = "Terdapat spasi kosong di pesan kamu. Spasi kosong tidak diperbolehkan.";
		it = "Il tuo messaggio contiene spazi vuoti non consentiti.";
		ja = "メッセージに許可されていないスペースが含まれています。";
		ko = "메시지에 허용되지 않는 여백이 있어요.";
		pt = "Sua mensagem cont\xE9m um espa\xE7o em branco, que n\xE3o \xE9 permitido.";
		["pt-br"] = "Sua mensagem cont\xE9m um espa\xE7o em branco, que n\xE3o \xE9 permitido.";
		ru = "Сообщение содержит недопустимый пробел.";
		["th-th"] = "ข้อความของคุณมีช่องว่างซึ่งไม่ได้รับอนุญาต";
		["zh-cjv"] = "你的消息包含不被允许的空格。";
		["zh-cn"] = "你的消息包含不被允许的空格。";
		["zh-tw"] = "訊息禁止使用空白字元。";
	};
}, {
	Key = "GameChat_DoMuteCommand_CannotMuteSelf";
	Values = {
		de = "Du kannst dich nicht selbst stummschalten.";
		["en-us"] = "You cannot mute yourself.";
		es = "No puedes silenciarte a ti mismo.";
		["es-es"] = "No puedes silenciarte a ti mismo.";
		fr = "Vous ne pouvez pas vous b\xE2illonner.";
		id = "Kamu tidak dapat membisukan diri sendiri.";
		it = "Non puoi togliere la parola a te stesso.";
		ja = "自分をミュートすることは出来ません。";
		ko = "자신을 음소거할 수 없어요.";
		pt = "Voc\xEA n\xE3o pode silenciar a si mesmo.";
		["pt-br"] = "Voc\xEA n\xE3o pode silenciar a si mesmo.";
		ru = "Невозможно добавить себя в список игнорируемых.";
		["th-th"] = "คุณไม่สามารถปิดเสียงตัวเองได้";
		["zh-cjv"] = "你无法将自己禁言。";
		["zh-cn"] = "你无法将自己禁言。";
		["zh-tw"] = "您無法將自己靜音。";
	};
}, {
	Key = "GameChat_MuteSpeaker_SpeakerDoesNotExist";
	Values = {
		de = "Sprecher:in „{RBX_NAME}“ existiert nicht.";
		["en-us"] = "Speaker '{RBX_NAME}' does not exist.";
		es = "El usuario \"{RBX_NAME}\" no existe.";
		["es-es"] = "El usuario \"{RBX_NAME}\" no existe.";
		fr = "L'interlocuteur {RBX_NAME} n'existe pas.";
		id = "Pembicara {RBX_NAME} tidak ada.";
		it = "Il giocatore \"{RBX_NAME}\" non esiste.";
		ja = "スピーカーの「{RBX_NAME}」さんは存在しません。";
		ko = "사용자 '{RBX_NAME}' 님이 존재하지 않습니다.";
		pt = "O usu\xE1rio '{RBX_NAME}' n\xE3o existe.";
		["pt-br"] = "O usu\xE1rio '{RBX_NAME}' n\xE3o existe.";
		ru = "Пользователь {RBX_NAME} не существует.";
		["th-th"] = "ไม่มีผู้ใช้ \"{RBX_NAME}\" อยู่";
		["zh-cjv"] = "发言者“{RBX_NAME}”不存在。";
		["zh-cn"] = "发言者“{RBX_NAME}”不存在。";
		["zh-tw"] = "使用者「{RBX_NAME}」不存在。";
	};
}, {
	Key = "GameChat_PrivateMessaging_CannotChat";
	Values = {
		de = "Du kannst mit dieser Person nicht chatten.";
		["en-us"] = "You are not able to chat with this person.";
		es = "No puedes chatear con esta persona.";
		["es-es"] = "No puedes chatear con esta persona.";
		fr = "Tu ne peux pas discuter avec cette personne.";
		id = "Kamu tidak dapat chat dengan pengguna ini.";
		it = "Non puoi chattare con questo giocatore.";
		ja = "この人とはチャットできません。";
		ko = "이 사람과 채팅할 수 없습니다.";
		pt = "Voc\xEA n\xE3o pode participar de chat com esta pessoa.";
		["pt-br"] = "Voc\xEA n\xE3o pode participar de chat com esta pessoa.";
		ru = "Ты не можешь общаться в чате с этим пользователем.";
		["th-th"] = "คุณไม่สามารถแชทกับผู้ใช้นี้ได้";
		["zh-cjv"] = "你无法与此用户聊天。";
		["zh-cn"] = "你无法与此用户聊天。";
		["zh-tw"] = "您無法與此使用者聊天。";
	};
}, {
	Key = "GameChat_PrivateMessaging_CannotWhisperToSelf";
	Values = {
		de = "Du kannst dir nicht selbst etwas zufl\xFCstern.";
		["en-us"] = "You cannot whisper to yourself.";
		es = "No puedes enviarte mensajes privados a ti mismo.";
		["es-es"] = "No puedes enviarte mensajes privados a ti mismo.";
		fr = "Vous ne pouvez pas murmurer \xE0 votre propre oreille.";
		id = "Kamu tidak dapat berbisik ke diri sendiri.";
		it = "Non puoi aprire un canale privato con te stesso.";
		ja = "自分自身に話しかけることは出来ません。";
		ko = "자신에게 귓속말할 수 없어요.";
		pt = "Voc\xEA n\xE3o pode sussurrar para si mesmo.";
		["pt-br"] = "Voc\xEA n\xE3o pode sussurrar para si mesmo.";
		ru = "Нельзя отправлять себе личные сообщения.";
		["th-th"] = "คุณไม่สามารถแชทแบบส่วนตัวกับตัวเองได้";
		["zh-cjv"] = "你无法与自己开启私人频道。";
		["zh-cn"] = "你无法与自己开启私人频道。";
		["zh-tw"] = "您無法與自己開啟私人頻道。";
	};
}, {
	Key = "GameChat_PrivateMessaging_NowChattingWith";
	Values = {
		de = "Du unterh\xE4ltst dich nun privat mit {RBX_NAME}.";
		["en-us"] = "You are now privately chatting with {RBX_NAME}";
		es = "Est\xE1s chateando en privado con {RBX_NAME}.";
		["es-es"] = "Est\xE1s chateando en privado con {RBX_NAME}.";
		fr = "Maintenant, vous discutez en priv\xE9 avec {RBX_NAME}";
		id = "Sekarang kamu sedang chat dengan {RBX_NAME} secara privat";
		it = "Ora stai chattando in privato con {RBX_NAME}";
		ja = "あなたは現在、{RBX_NAME} さんとプライベートチャット中です";
		ko = "현재 {RBX_NAME} 님과 비공개 채팅 중이에요";
		pt = "Agora voc\xEA est\xE1 em um chat privado com {RBX_NAME}";
		["pt-br"] = "Agora voc\xEA est\xE1 em um chat privado com {RBX_NAME}";
		ru = "Открыт канал для личного общения с пользователем {RBX_NAME}";
		["th-th"] = "คุณกำลังแชทแบบส่วนตัวกับ \"{RBX_NAME}\" อยู่ในตอนนี้";
		["zh-cjv"] = "你正在与“{RBX_NAME}”私聊";
		["zh-cn"] = "你正在与“{RBX_NAME}”私聊";
		["zh-tw"] = "您正在與{RBX_NAME}私聊";
	};
}, {
	Key = "GameChat_TeamChat_WelcomeMessage";
	Values = {
		de = "Dies ist ein privater Kanal f\xFCr dich und deine Teammitglieder.";
		["en-us"] = "This is a private channel between you and your team members.";
		es = "Este es un canal privado entre t\xFA y los miembros de tu equipo.";
		["es-es"] = "Este es un canal privado entre t\xFA y los miembros de tu equipo.";
		fr = "Ceci est un canal priv\xE9 entre les membres de votre \xE9quipe et vous.";
		id = "Ini adalah channel privat antara kamu dan anggota tim kamu.";
		it = "Questo \xE8 un canale privato tra te e i membri della tua squadra.";
		ja = "これはあなたとあなたのチームメンバーとのプライベートチャンネルです。";
		ko = "회원님과 팀원 간의 비공개 채널이에요.";
		pt = "Este \xE9 um canal privado entre voc\xEA e os membros da sua equipe.";
		["pt-br"] = "Este \xE9 um canal privado entre voc\xEA e os membros da sua equipe.";
		ru = "Это канал для личного общения участников команды.";
		["th-th"] = "แชนเนลนี้เป็นแชนเนลส่วนตัวระหว่างคุณและสมาชิกในทีมของคุณ";
		["zh-cjv"] = "这是你与团队成员之间的私人频道。";
		["zh-cn"] = "这是你与团队成员之间的私人频道。";
		["zh-tw"] = "這是您與隊伍成員的私人頻道。";
	};
}, {
	Key = "GameChat_TeamChat_CannotTeamChatIfNotInTeam";
	Values = {
		de = "Teamchat ist nur verf\xFCgbar, wenn du Mitglied eines Teams bist!";
		["en-us"] = "You cannot team chat if you are not on a team!";
		es = "\xA1No puedes chatear con tu equipo si no formas parte de un equipo!";
		["es-es"] = "\xA1No puedes chatear con tu equipo si no formas parte de un equipo!";
		fr = "Vous ne pouvez pas avoir de discussion d'\xE9quipe si vous n'appartenez pas \xE0 une \xE9quipe\xA0!";
		id = "Kamu tidak dapat melakukan chat tim jika kamu tidak berada dalam tim.";
		it = "Non puoi chattare con la squadra se non sei in una squadra!";
		ja = "チームに所属していなければチームチャットは出来ません。";
		ko = "팀에 속하지 않으면 팀 채팅을 이용할 수 없어요!";
		pt = "Voc\xEA n\xE3o pode participar de chat de equipe se n\xE3o estiver em uma!";
		["pt-br"] = "Voc\xEA n\xE3o pode participar de chat de equipe se n\xE3o estiver em uma!";
		ru = "Ты не можешь общаться в командном чате, если не состоишь в команде!";
		["th-th"] = "คุณไม่สามารถแชททีมได้หากคุณไม่ได้อยู่ในทีมนั้น!";
		["zh-cjv"] = "如果你不在该团队，则无法进行团队聊天。";
		["zh-cn"] = "如果你不在该团队，则无法进行团队聊天。";
		["zh-tw"] = "若您不在隊伍中，您無法使用隊伍頻道。";
	};
}, {
	Key = "GameChat_TeamChat_NowInTeam";
	Values = {
		de = "Du bist nun Mitglied im Team „{RBX_NAME}“.";
		["en-us"] = "You are now on the '{RBX_NAME}' team.";
		es = "Ahora formas parte del equipo \"{RBX_NAME}\".";
		["es-es"] = "Ahora formas parte del equipo \"{RBX_NAME}\".";
		fr = "Vous \xEAtes d\xE9sormais dans l'\xE9quipe {RBX_NAME}.";
		id = "Kamu sekarang berada di tim {RBX_NAME}.";
		it = "Ora sei nella squadra \"{RBX_NAME}\".";
		ja = "あなたは現在「{RBX_NAME}」チームに所属しています。";
		ko = "현재 '{RBX_NAME}'팀에 속해 있어요.";
		pt = "Agora voc\xEA est\xE1 na equipe '{RBX_NAME}'.";
		["pt-br"] = "Agora voc\xEA est\xE1 na equipe '{RBX_NAME}'.";
		ru = "Ты теперь в команде {RBX_NAME}.";
		["th-th"] = "คุณอยู่ในทีม \"{RBX_NAME}\" แล้วตอนนี้";
		["zh-cjv"] = "你正在团队“{RBX_NAME}”中。";
		["zh-cn"] = "你正在团队“{RBX_NAME}”中。";
		["zh-tw"] = "您在「{RBX_NAME}」隊伍。";
	};
}, {
	Key = "GameChat_ChatChannel_MutedInChannel";
	Values = {
		de = "Du wurdest stummgeschaltet und kannst in diesem Kanal nicht kommunizieren.";
		["en-us"] = "You are muted and cannot talk in this channel";
		es = "Se te silenci\xF3 y no puedes hablar en este canal.";
		["es-es"] = "Se te silenci\xF3 y no puedes hablar en este canal.";
		fr = "Vous \xEAtes b\xE2illonn\xE9 et ne pouvez pas parler sur ce canal";
		id = "Kamu dibisukan, jadi kamu tidak dapat berbicara di channel ini";
		it = "Non hai pi\xF9 la parola e non puoi chattare in questo canale";
		ja = "あなたはミュートされているので、このチャンネルで話すことは出来ません。";
		ko = "이 채널에서 음소거되어 이야기할 수 없어요";
		pt = "Voc\xEA est\xE1 silenciado(a) e n\xE3o pode falar neste canal";
		["pt-br"] = "Voc\xEA est\xE1 silenciado(a) e n\xE3o pode falar neste canal";
		ru = "Тебя добавили в список игнорируемых. Ты не можешь общаться на этом канале";
		["th-th"] = "คุณถูกปิดเสียงและไม่สามารถพูดคุยในแชนเนลนี้ได้";
		["zh-cjv"] = "你已被禁言，无法在此频道聊天";
		["zh-cn"] = "你已被禁言，无法在此频道聊天";
		["zh-tw"] = "您遭到靜音，無法在此頻道聊天";
	};
}, {
	Key = "GameChat_ChatService_ChatFilterIssues";
	Values = {
		de = "Es gibt derzeit Probleme mit dem Chatfilter. Nachrichten k\xF6nnen deshalb mit Verz\xF6gerung angezeigt werden.";
		["en-us"] = "The chat filter is currently experiencing issues and messages may be slow to appear.";
		es = "El filtro del chat sufre problemas en este momento y es posible que los mensajes tarden un poco en aparecer.";
		["es-es"] = "El filtro del chat sufre problemas en este momento y es posible que los mensajes tarden un poco en aparecer.";
		fr = "Le filtre de chat conna\xEEt actuellement des probl\xE8mes et les messages pourraient mettre du temps \xE0 appara\xEEtre.";
		id = "Filter chat sedang mengalami masalah dan pesan mungkin akan muncul terlambat.";
		it = "Il filtro della chat sta riscontrando dei problemi e i messaggi potrebbero apparire in ritardo.";
		ja = "現在、チャットフィルターに問題があるためメッセージの表示が遅れています。";
		ko = "현재 채팅 필터에 문제가 있어 메시지 표시가 느릴 수 있어요.";
		pt = "O filtro de chat est\xE1 com problemas no momento e as mensagens podem demorar para aparecer.";
		["pt-br"] = "O filtro de chat est\xE1 com problemas no momento e as mensagens podem demorar para aparecer.";
		ru = "Могут возникать задержки в передаче сообщений из-за проблем с фильтром чата.";
		["th-th"] = "ขณะนี้ตัวกรองแชทกำลังประสบปัญหาอยู่ทำให้ข้อความอาจปรากฏขึ้นช้า";
		["zh-cjv"] = "聊天过滤器当前遇到问题，消息显示可能出现延迟。";
		["zh-cn"] = "聊天过滤器当前遇到问题，消息显示可能出现延迟。";
		["zh-tw"] = "文字過濾系統發生問題，訊息可能會延遲顯示。";
	};
}, {
	Key = "GameChat_ChatService_YouHaveLeftChannel";
	Values = {
		de = "Du hast Kanal „{RBX_NAME}“ verlassen.";
		["en-us"] = "You have left channel '{RBX_NAME}'";
		es = "Saliste del canal \"{RBX_NAME}\".";
		["es-es"] = "Saliste del canal \"{RBX_NAME}\".";
		fr = "Vous avez quitt\xE9 le canal {RBX_NAME}";
		id = "Kamu telah keluar dari channel: {RBX_NAME}";
		it = "Hai lasciato il canale \"{RBX_NAME}\"";
		ja = "チャンネル 「{RBX_NAME}」を退出しました。";
		ko = "'{RBX_NAME}' 채널에서 나왔어요";
		pt = "Voc\xEA saiu do canal '{RBX_NAME}'";
		["pt-br"] = "Voc\xEA saiu do canal '{RBX_NAME}'";
		ru = "Ты покидаешь канал \xAB{RBX_NAME}\xBB";
		["th-th"] = "คุณได้ออกจากแชนเนล \"{RBX_NAME}\" แล้ว";
		["zh-cjv"] = "你已离开频道“{RBX_NAME}”";
		["zh-cn"] = "你已离开频道“{RBX_NAME}”";
		["zh-tw"] = "您已離開「{RBX_NAME}」頻道";
	};
}, {
	Key = "GameChat_ChatService_CannotLeaveChannel";
	Values = {
		de = "Du kannst diesen Kanal nicht verlassen.";
		["en-us"] = "You cannot leave this channel.";
		es = "No puedes salir de este canal.";
		["es-es"] = "No puedes salir de este canal.";
		fr = "Vous ne pouvez pas quitter ce canal.";
		id = "Kamu tidak dapat keluar dari channel ini.";
		it = "Non puoi lasciare questo canale.";
		ja = "このチャンネルから退出できません。";
		ko = "채널에서 나갈 수 없어요.";
		pt = "Voc\xEA n\xE3o pode sair deste canal.";
		["pt-br"] = "Voc\xEA n\xE3o pode sair deste canal.";
		ru = "Ты не можешь покинуть этот канал.";
		["th-th"] = "คุณไม่สามารถออกจากแชนเนลนี้ได้";
		["zh-cjv"] = "你无法离开此频道。";
		["zh-cn"] = "你无法离开此频道。";
		["zh-tw"] = "您無法離開此頻道。";
	};
}, {
	Key = "GameChat_ChatServiceRunner_YouCannotJoinChannel";
	Values = {
		de = "Du kannst Kanal „{RBX_NAME}“ nicht beitreten.";
		["en-us"] = "You cannot join channel {RBX_NAME}";
		es = "No puedes unirte al canal {RBX_NAME}.";
		["es-es"] = "No puedes unirte al canal {RBX_NAME}.";
		fr = "Vous ne pouvez pas rejoindre le canal {RBX_NAME}";
		id = "Kamu tidak dapat bergabung ke channel {RBX_NAME}";
		it = "Non puoi accedere al canale {RBX_NAME}";
		ja = "{RBX_NAME} チャンネルに参加できません";
		ko = "{RBX_NAME} 채널에 가입할 수 없어요";
		pt = "Voc\xEA n\xE3o pode entrar no canal {RBX_NAME}";
		["pt-br"] = "Voc\xEA n\xE3o pode entrar no canal {RBX_NAME}";
		ru = "Ты не можешь подключиться к каналу \xAB{RBX_NAME}\xBB";
		["th-th"] = "คุณไม่สามารถเข้าร่วมแชนเนล \"{RBX_NAME}\" ได้";
		["zh-cjv"] = "你无法加入频道“{RBX_NAME}”";
		["zh-cn"] = "你无法加入频道“{RBX_NAME}”";
		["zh-tw"] = "您無法加入{RBX_NAME} 頻道";
	};
}, {
	Key = "GameChat_ChatServiceRunner_ChannelDoesNotExist";
	Values = {
		de = "Kanal „{RBX_NAME}“ existiert nicht.";
		["en-us"] = "Channel {RBX_NAME} does not exist.";
		es = "El canal {RBX_NAME} no existe.";
		["es-es"] = "El canal {RBX_NAME} no existe.";
		fr = "Le canal {RBX_NAME} n'existe pas.";
		id = "Channel {RBX_NAME} tidak ada.";
		it = "Il canale {RBX_NAME} non esiste.";
		ja = "チャンネル {RBX_NAME} は存在しません。";
		ko = "{RBX_NAME} 채널이 없어요.";
		pt = "O canal {RBX_NAME} n\xE3o existe.";
		["pt-br"] = "O canal {RBX_NAME} n\xE3o existe.";
		ru = "Канал \xAB{RBX_NAME}\xBB не существует.";
		["th-th"] = "ไม่มีแชนเนล \"{RBX_NAME}\" อยู่";
		["zh-cjv"] = "频道“{RBX_NAME}”不存在。";
		["zh-cn"] = "频道“{RBX_NAME}”不存在。";
		["zh-tw"] = "頻道「{RBX_NAME}」不存在。";
	};
}, {
	Key = "GameChat_ChatServiceRunner_YouCannotLeaveChannel";
	Values = {
		de = "Du kannst Kanal „{RBX_NAME}“ nicht verlassen.";
		["en-us"] = "You cannot leave channel {RBX_NAME}";
		es = "No puedes salir del canal {RBX_NAME}.";
		["es-es"] = "No puedes salir del canal {RBX_NAME}.";
		fr = "Vous ne pouvez pas quitter le canal {RBX_NAME}";
		id = "Kamu tidak dapat keluar dari channel {RBX_NAME}";
		it = "Non puoi lasciare il canale {RBX_NAME}";
		ja = "{RBX_NAME} チャンネルから退出できません";
		ko = "{RBX_NAME} 채널에서 나갈 수 없어요";
		pt = "Voc\xEA n\xE3o pode sair do canal {RBX_NAME}";
		["pt-br"] = "Voc\xEA n\xE3o pode sair do canal {RBX_NAME}";
		ru = "Ты не можешь покинуть канал \xAB{RBX_NAME}\xBB.";
		["th-th"] = "คุณไม่สามารถออกจากแชนเนล \"{RBX_NAME}\" ได้";
		["zh-cjv"] = "你无法离开频道“{RBX_NAME}”";
		["zh-cn"] = "你无法离开频道“{RBX_NAME}”";
		["zh-tw"] = "您無法離開 {RBX_NAME} 頻道";
	};
}, {
	Key = "GameChat_ChatServiceRunner_YouAreNotInChannel";
	Values = {
		de = "Du befindest dich nicht in Kanal „{RBX_NAME}“.";
		["en-us"] = "You are not in channel {RBX_NAME}";
		es = "No est\xE1s en el canal {RBX_NAME}.";
		["es-es"] = "No est\xE1s en el canal {RBX_NAME}.";
		fr = "Vous n'\xEAtes pas sur le canal {RBX_NAME}";
		id = "Kamu tidak ada di channel {RBX_NAME}";
		it = "Non ti trovi nel canale {RBX_NAME}";
		ja = "あなたは {RBX_NAME} チャンネルにいません。";
		ko = "{RBX_NAME} 채널에 있지 않습니다";
		pt = "Voc\xEA n\xE3o est\xE1 no canal {RBX_NAME}";
		["pt-br"] = "Voc\xEA n\xE3o est\xE1 no canal {RBX_NAME}";
		ru = "Тебя нет на канале \xAB{RBX_NAME}\xBB";
		["th-th"] = "คุณไม่ได้อยู่ในแชนเนล {RBX_NAME}";
		["zh-cjv"] = "你不在频道“{RBX_NAME}”";
		["zh-cn"] = "你不在频道“{RBX_NAME}”";
		["zh-tw"] = "您不在 {RBX_NAME} 頻道";
	};
}, {
	Key = "GameChat_ChatServiceRunner_SystemChannelWelcomeMessage";
	Values = {
		de = "Dieser Kanal ist f\xFCr System- und Erlebnisbenachrichtigungen.";
		["en-us"] = "This channel is for system and experience notifications.";
		es = "Este canal es para notificaciones del sistema y de la experiencia.";
		["es-es"] = "Este canal es para notificaciones del sistema y de la experiencia.";
		fr = "Ce canal est destin\xE9 aux notifications de syst\xE8me et d'exp\xE9rience.";
		id = "Channel ini untuk notifikasi sistem dan pengalaman virtual.";
		it = "Questo canale \xE8 per le notifiche dell'esperienza e del sistema.";
		ja = "このチャンネルはシステムと仮想空間の通知のためのものです。";
		ko = "이 채널은 시스템 및 체험 알림용입니다.";
		pt = "Este canal \xE9 destinado \xE0s notifica\xE7\xF5es do sistema e de experi\xEAncias.";
		["pt-br"] = "Este canal \xE9 destinado \xE0s notifica\xE7\xF5es do sistema e de experi\xEAncias.";
		ru = "Этот канал предназначен для системных и игровых уведомлений.";
		["th-th"] = "แชนเนลนี้เป็นแชนเนลสำหรับการแจ้งเตือนของระบบและประสบการณ์";
		["zh-cjv"] = "此频道用于发送系统及作品通知。";
		["zh-cn"] = "此频道用于发送系统及作品通知。";
		["zh-tw"] = "此頻道為系統及體驗通知專用。";
	};
}, {
	Key = "GameChat_FriendChatNotifier_JoinMessage";
	Values = {
		de = "Dein:e Freund:in {RBX_NAME} ist dem Erlebnis beigetreten.";
		["en-us"] = "Your friend {RBX_NAME} has joined the experience.";
		es = "Tu amistad {RBX_NAME} se uni\xF3 a la experiencia.";
		["es-es"] = "Tu amistad {RBX_NAME} se uni\xF3 a la experiencia.";
		fr = "Ton ami(e) {RBX_NAME} a rejoint l'exp\xE9rience.";
		id = "Teman kamu {RBX_NAME} telah bergabung ke pengalaman virtual ini.";
		it = "Il tuo amico {RBX_NAME} \xE8 entrato nell'esperienza.";
		ja = "あなたの友人の {RBX_NAME} さんが体験に参加しました。";
		ko = "친구 {RBX_NAME} 님이 체험에 입장했어요.";
		pt = "Seu amigo {RBX_NAME} juntou-se \xE0 experi\xEAncia.";
		["pt-br"] = "Seu amigo {RBX_NAME} juntou-se \xE0 experi\xEAncia.";
		ru = "Твой друг {RBX_NAME} присоединился к игре.";
		["th-th"] = "เพื่อนของคุณ \"{RBX_NAME}\" ได้เข้าร่วมประสบการณ์แล้ว";
		["zh-cjv"] = "你的朋友“{RBX_NAME}”已加入体验。";
		["zh-cn"] = "你的朋友“{RBX_NAME}”已加入体验。";
		["zh-tw"] = "您的好友 {RBX_NAME} 已加入體驗。";
	};
}, {
	Key = "InGame.Chat.Response.EmoteNotAvailable";
	Values = {
		de = "Du kannst dieses Emote nicht benutzen.";
		["en-us"] = "You can't use that Emote.";
		es = "No puedes usar ese emote.";
		["es-es"] = "No puedes usar ese emote.";
		fr = "Tu ne peux pas utiliser cette Emote.";
		id = "Kamu tidak dapat menggunakan Emote itu.";
		it = "Non puoi usare quell'emoticon.";
		ja = "そのリアクションは使えません。";
		ko = "이 감정 표현은 사용할 수 없어요.";
		pt = "Voc\xEA n\xE3o pode usar esse emote.";
		["pt-br"] = "Voc\xEA n\xE3o pode usar esse emote.";
		ru = "Невозможно использовать эту эмоцию.";
		["th-th"] = "คุณไม่สามารถใช้ท่าทางนี้ได้";
		["zh-cjv"] = "无法使用该动作。";
		["zh-cn"] = "无法使用该动作。";
		["zh-tw"] = "無法使用該動作。";
	};
}, {
	Key = "InGame.Chat.Response.EmotesNotSupported";
	Values = {
		de = "Du kannst hier keine Emotes verwenden.";
		["en-us"] = "You can't use Emotes here.";
		es = "No puedes usar emotes aqu\xED.";
		["es-es"] = "No puedes usar emotes aqu\xED.";
		fr = "Tu ne peux pas utiliser les Emotes ici.";
		id = "Kamu tidak dapat menggunakan Emote di sini.";
		it = "Qui non puoi usare le emoticon.";
		ja = "ここではリアクションは使えません。";
		ko = "여기서는 감정 표현을 사용할 수 없어요.";
		pt = "Voc\xEA n\xE3o pode usar emotes aqui.";
		["pt-br"] = "Voc\xEA n\xE3o pode usar emotes aqui.";
		ru = "Здесь нельзя использовать эмоции.";
		["th-th"] = "คุณไม่สามารถใช้ท่าทางที่นี่ได้";
		["zh-cjv"] = "无法在此挑战中使用动作。";
		["zh-cn"] = "无法在此游戏中使用动作。";
		["zh-tw"] = "無法在此體驗使用動作。";
	};
}, {
	Key = "InGame.Chat.Response.EmotesWrongAvatarType";
	Values = {
		de = "Nur R15 Avatars k\xF6nnen Emotes verwenden.";
		["en-us"] = "Only R15 avatars can use Emotes.";
		es = "Solo los avatares R15 pueden usar emotes.";
		["es-es"] = "Solo los avatares R15 pueden usar emotes.";
		fr = "Seuls les avatars R15 peuvent utiliser les Emotes.";
		id = "Hanya avatar R15 yang dapat menggunakan Emote.";
		it = "Solo gli avatar R15 possono usare le emoticon.";
		ja = "R15指定のアバターしかリアクションは使えません。";
		ko = "R15 아바타만 감정 표현을 사용할 수 있어요.";
		pt = "Apenas avatares R15 podem usar emotes.";
		["pt-br"] = "Apenas avatares R15 podem usar emotes.";
		ru = "Только аватары R15 могут использовать эмоции.";
		["th-th"] = "เฉพาะอวาตาร์ R15 เท่านั้นที่สามารถใช้ท่าทางได้";
		["zh-cjv"] = "只有 R15 虚拟形象可以使用动作。";
		["zh-cn"] = "只有 R15 虚拟形象可以使用动作。";
		["zh-tw"] = "只有 R15 虛擬人偶可以使用動作。";
	};
}, {
	Key = "InGame.Chat.Response.EmotesTemporarilyUnavailable";
	Values = {
		de = "Du kannst Emotes derzeit nicht verwenden.";
		["en-us"] = "You can't use Emotes right now.";
		es = "No puedes usar emotes en este momento.";
		["es-es"] = "No puedes usar emotes en este momento.";
		fr = "Tu ne peux pas utiliser d'Emote maintenant.";
		id = "Kamu tidak dapat menggunakan Emote saat ini.";
		it = "Adesso non puoi usare le emoticon.";
		ja = "今はリアクションを使えません。";
		ko = "지금은 감정 표현을 사용할 수 없어요.";
		pt = "Voc\xEA n\xE3o pode usar emotes no momento.";
		["pt-br"] = "Voc\xEA n\xE3o pode usar emotes no momento.";
		ru = "Невозможно использовать эмоции прямо сейчас.";
		["th-th"] = "คุณไม่สามารถใช้ท่าทางได้ในตอนนี้";
		["zh-cjv"] = "当前无法使用动作。";
		["zh-cn"] = "当前无法使用动作。";
		["zh-tw"] = "現在無法使用動作。";
	};
}, {
	Key = "InGame.Chat.Label.SystemMessagePrefix";
	Values = {
		de = "System";
		["en-us"] = "System";
		es = "Sistema";
		["es-es"] = "Sistema";
		fr = "Syst\xE8me";
		id = "Sistem";
		it = "Sistema";
		ja = "システム";
		ko = "시스템";
		pt = "Sistema";
		["pt-br"] = "Sistema";
		ru = "Система";
		["th-th"] = "ระบบ";
		["zh-cjv"] = "系统";
		["zh-cn"] = "系统";
		["zh-tw"] = "系統";
	};
}, {
	Key = "InGame.Chat.Label.TeamMessagePrefix";
	Values = {
		de = "Team";
		["en-us"] = "Team";
		es = "Equipo";
		["es-es"] = "Equipo";
		fr = "\xC9quipe";
		id = "Tim";
		it = "Squadra";
		ja = "チーム";
		ko = "팀";
		pt = "Equipe";
		["pt-br"] = "Equipe";
		ru = "Команда";
		["th-th"] = "ทีม";
		["zh-cjv"] = "队伍";
		["zh-cn"] = "队伍";
		["zh-tw"] = "隊伍";
	};
}, {
	Key = "InGame.Chat.Label.From";
	Values = {
		de = "Von";
		["en-us"] = "From";
		es = "De";
		["es-es"] = "De";
		fr = "De";
		id = "Dari";
		it = "Da";
		ja = "から";
		ko = "발신:";
		pt = "De";
		["pt-br"] = "De";
		ru = "От ";
		["th-th"] = "จาก";
		["zh-cjv"] = "来自于";
		["zh-cn"] = "来自于";
		["zh-tw"] = "自";
	};
}, {
	Key = "InGame.Chat.Label.To";
	Values = {
		de = "An";
		["en-us"] = "To";
		es = "Para";
		["es-es"] = "Para";
		fr = "\xC0";
		id = "Kepada";
		it = 'A';
		ja = "へ";
		ko = "수신:";
		pt = "Para";
		["pt-br"] = "Para";
		ru = "Для";
		["th-th"] = "ถึง";
		["zh-cjv"] = "发送至";
		["zh-cn"] = "发送至";
		["zh-tw"] = "對";
	};
}, {
	Key = "InGame.Chat.Response.DisplayNameMultipleMatches";
	Values = {
		de = "Warnung: Die folgenden Benutzer:innen haben diesen Anzeigenamen: ";
		["en-us"] = "Warning: The following users have this display name: ";
		es = "Advertencia: Los siguientes jugadores tienen este nombre de usuario: ";
		["es-es"] = "Advertencia: Los siguientes jugadores tienen este nombre de usuario: ";
		fr = "Avertissement - Les utilisateurs suivants ont ce nom d'affichage : ";
		id = "Peringatan: Pengguna berikut memiliki nama display: ";
		it = "Attenzione, i seguenti utenti hanno questo nome: ";
		ja = "警告: 以下のユーザーには、この表示名があります: ";
		ko = "주의: 다음 사용자들이 이 표시 이름을 사용하고 있습니다.";
		pt = "Aviso! Os seguintes usu\xE1rios t\xEAm esse nome de exibi\xE7\xE3o: ";
		["pt-br"] = "Aviso! Os seguintes usu\xE1rios t\xEAm esse nome de exibi\xE7\xE3o: ";
		ru = "Внимание! Такое имя есть у нескольких пользователей: ";
		["th-th"] = "คำเตือน: ผู้ใช้ที่ใช้ชื่อที่แสดงนี้มีดังต่อไปนี้: ";
		["zh-cjv"] = "注意：以下用户正在使用此昵称：";
		["zh-cn"] = "注意：以下用户正在使用此昵称：";
		["zh-tw"] = "注意：以下使用者正在使用此顯示名稱：";
	};
}, {
	Key = "InGame.Chat.ErrorMessageSwitchToR15";
	Values = {
		de = "Wechsle zu deinem R15-Avatar, um das Emote abzuspielen.";
		["en-us"] = "Switch to your R15 avatar to play Emote.";
		es = "Cambia tu avatar a R15 para usar los emotes.";
		["es-es"] = "Cambia tu avatar a R15 para usar los emotes.";
		fr = "Passe \xE0 ton avatar R15 pour jouer \xE0 Emote.";
		id = "Beralih ke avatar R15 kamu untuk menggunakan Emote.";
		it = "Passa al tuo avatar R15 per giocare a Emote.";
		ja = "リアクションを表示するにはR15アバターに切り替えてください。";
		ko = "감정 표현을 적용하려면 R15 아바타로 전환하세요.";
		pt = "Mude seu avatar para o modelo R15 para usar emotes.";
		["pt-br"] = "Mude seu avatar para o modelo R15 para usar emotes.";
		ru = "Переключись на аватара R15, чтобы использовать эмоции.";
		["th-th"] = "สลับไปใช้อวาตาร์ R15 ของคุณเพื่อใช้ท่าทาง";
		["zh-cjv"] = "切换成 R15 虚拟形象以使用此动作。";
		["zh-cn"] = "切换成 R15 虚拟形象以使用此动作。";
		["zh-tw"] = "切換成 R15 虛擬人偶即可使用此動作。";
	};
}, {
	Key = "InGame.Chat.ErrorMessageAnimationPlaying";
	Values = {
		de = "Du kannst das Emote w\xE4hrend dieser Aktion nicht abspielen.";
		["en-us"] = "You cannot play Emotes during this action.";
		es = "No puedes usar los emotes durante esta acci\xF3n.";
		["es-es"] = "No puedes usar los emotes durante esta acci\xF3n.";
		fr = "Tu ne peux pas jouer \xE0 Emotes pendant cette action.";
		id = "Kamu tidak dapat menggunakan Emote saat melakukan tindakan ini.";
		it = "Non puoi giocare Emote durante questa azione.";
		ja = "この動作中はリアクションを表示できません。";
		ko = "이 동작 중에는 감정 표현을 적용할 수 없습니다.";
		pt = "Voc\xEA n\xE3o pode usar emotes durante esta a\xE7\xE3o.";
		["pt-br"] = "Voc\xEA n\xE3o pode usar emotes durante esta a\xE7\xE3o.";
		ru = "Во время этого действия эмоции недоступны.";
		["th-th"] = "คุณไม่สามารถใช้ท่าทางในระหว่างการดำเนินการนี้";
		["zh-cjv"] = "无法在此动作进行时使用其他动作。";
		["zh-cn"] = "无法在此动作进行时使用其他动作。";
		["zh-tw"] = "無法在此動作執行時使用其他動作。";
	};
}}