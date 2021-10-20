local function ChangePhoto(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local Rio = DevRio:get("TroxTeam:Photo"..result.id_)
if not result.profile_photo_ then 
if Rio then 
Dev_Rio(msg.chat_id_, msg.id_, 1, "حذف كل صورة مضروب بوري، 😹💔", 1, 'html')
DevRio:del("TroxTeam:Photo"..result.id_) 
end
end
if result.profile_photo_ then 
if Rio and Rio ~= result.profile_photo_.big_.persistent_id_ then 
local Rio_text = {
"هذا العضو غير صورته، 🤤♥️",
"مغير صوتك ليه ، 🤤♥️",
"حطيت صورة جديده ، 😹♥️",
"اليش غيرت صوتك، 🤤♥️",
}
Rio3 = math.random(#Rio_text)
Dev_Rio(msg.chat_id_, msg.id_, 1, Rio_text[Rio3], 1, 'html')
end  
DevRio:set("TroxTeam:Photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end
end
end,nil) 
end
end

end
return {
Trox = ChangePhoto
}