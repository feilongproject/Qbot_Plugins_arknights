local log = require("log")
local Api = require("coreApi")
local json = require("json")
local http = require("http")

function ReceiveFriendMsg(CurrentQQ, data) return 1 end

function Star03(AKjson)
    local randomnum = AKjson["num"]["star03"]
    --log.notice("01为 ---->%s", randomnum)
    local star_random = math.random(1, randomnum)
    --log.notice("02为 ---->%s", star_random)
    local now_star_name = AKjson["characters"]["star03"][star_random]
    --log.notice("03为 ---->%s", now_star_name)
    local now_star_str = AKjson["str"]["star03"]
    --log.notice("04为 ---->%s", now_star_str)
    Finally_star = now_star_str .. now_star_name
end

function Star04(AKjson)
    local randomnum = AKjson["num"]["star04"]
    local star_random = math.random(1, randomnum)
    local now_star_name = AKjson["characters"]["star04"][star_random]
    local now_star_str = AKjson["str"]["star04"]
    Finally_star = now_star_str .. now_star_name
end

function Star05(AKjson)
    local randomnum = AKjson["num"]["star05"]
    local star_random = math.random(1, randomnum)
    local now_star_name = AKjson["characters"]["star05"][star_random]
    local now_star_str = AKjson["str"]["star05"]
    Finally_star = now_star_str .. now_star_name
end

function Star06(AKjson)
    local randomnum = AKjson["num"]["star06"]
    local star_random = math.random(1, randomnum)
    local now_star_name = AKjson["characters"]["star06"][star_random]
    local now_star_str = AKjson["str"]["star06"]
    Finally_star = now_star_str .. now_star_name

end

function Star07(AKjson)
    local randomnum = AKjson["num"]["star07"]
    local star_random = math.random(1, randomnum)
    local now_star_name = AKjson["characters"]["star07"][star_random]
    local now_star_str = AKjson["str"]["star07"]
    Finally_star = now_star_str .. now_star_name
end

function Star42(AKjson)
    local randomnum = AKjson["num"]["star42"]
    local star_random = math.random(1, randomnum)
    local now_star_name = AKjson["characters"]["star42"][star_random]
    local now_star_str = AKjson["str"]["star52"]
    Finally_star = now_star_str .. now_star_name

end

function AKrandom_once(AKjson)
    local AKandomtimes = math.random(1, 100021)
    log.notice("随机数为 ---->%s", AKandomtimes)
    if AKandomtimes <= 40000 then
        Star03(AKjson)
    elseif AKandomtimes <= 90000 then
        Star04(AKjson)
    elseif AKandomtimes <= 98000 then
        Star05(AKjson)
    elseif AKandomtimes <= 100000 then
        Star06(AKjson)
    elseif AKandomtimes <= 100020 then
        Star07(AKjson)
    elseif AKandomtimes == 100021 then
        Star42(AKjson)
    end
end


function ReceiveGroupMsg(CurrentQQ, data)
    if string.find(data.Content, "#方舟十连") == 1 then
        -- https://cdn.jsdelivr.net/gh/feilongproject/Qbot_res/ak_def.json
        -- https://raw.githubusercontent.com/feilongproject/Qbot_res/master/ak_def.json
        AKdjson =
            [[{"characters":{"star03":["空爆","芬","香草","翎羽","玫兰莎","泡普卡","月见夜","米格鲁","斑点","安塞尔","史都华德","炎熔","梓兰","克洛丝","卡缇","芙蓉","安德切尔"],"star04":["卡达","波登可","刻刀","宴","安比尔","梅","红云","桃金娘","苏苏洛","格雷伊","猎蜂","阿消","地灵","深海色","古米","蛇屠箱","角峰","调香师","杰西卡","坚雷","白雪","讯使","清道夫","红豆","慕斯","霜叶","杜宾","砾","暗索","夜烟","流星","缠丸","远山","末药","孑"],"star05":["灰喉","普罗旺斯","慑砂","守林人","送葬人","凛冬","德克萨斯","极境","芙兰卡","布洛卡","拉普兰德","诗怀雅","吽","槐琥","食铁兽","狮蝎","华法琳","白面鸮","莱恩哈特","惊蛰","格劳克斯","梅尔","月禾","空","白金","陨星","韦草","炎客","幽灵鲨","星极","断崖","临光","红","崖心","赫默","微风","天火","真理","巫恋","蓝毒","可颂","雷蛇","夜魔","初雪","贾维","蜜蜡","安哲拉"],"star06":["能天使","黑","早露","风笛","斯卡蒂","煌","陈","银灰","赫拉格","塞雷娅","傀影","温蒂","阿","闪灵","夜莺","艾雅法拉","莫斯提马","伊芙利特","安洁莉娜","麦哲伦","刻俄柏","铃兰","星熊","推进之王","棘刺"],"star07":["地火","霜星","ACE"],"star42":["刀客塔","可露希尔","凯尔希"]},"str":{"star03":"\n★★★☆☆☆","star04":"\n★★★★☆☆!","star05":"\n★★★★★☆!!","star06":"\n★★★★★★!!!","star07":"\n★★★★★★★!!!!","star42":"\n★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★!!!!!!!!!!"},"num":{"star03":17,"star04":35,"star05":47,"star06":25,"star07":3,"star42":3}}]]
        --log.notice("res_characters_json ---->%s", AKdjson)
        AKjson = json.decode(AKdjson)

        AKrandom_once(AKjson)
        local Finally_star0 = Finally_star
        AKrandom_once(AKjson)
        local Finally_star1 = Finally_star
        AKrandom_once(AKjson)
        local Finally_star2 = Finally_star
        AKrandom_once(AKjson)
        local Finally_star3 = Finally_star
        AKrandom_once(AKjson)
        local Finally_star4 = Finally_star
        AKrandom_once(AKjson)
        local Finally_star5 = Finally_star
        AKrandom_once(AKjson)
        local Finally_star6 = Finally_star
        AKrandom_once(AKjson)
        local Finally_star7 = Finally_star
        AKrandom_once(AKjson)
        local Finally_star8 = Finally_star
        AKrandom_once(AKjson)
        local Finally_star9 = Finally_star

        local finally_stars = "\n康康你的出货成果：\n" .. Finally_star0 .. Finally_star1.. Finally_star2 .. Finally_star3 .. Finally_star4 .. Finally_star5 .. Finally_star6 .. Finally_star7 .. Finally_star8 .. Finally_star9

        log.notice("在%s群里，%s进行了一次十连，结果为%s",data.FromGroupId,data.FromUserId,finally_stars)

            --[[03_star:40.00%
            04_star:50.00%
            05_star:08.00%
            06_star:02.00%
            07_star:00.20%
            42_star:00.01%]]
        Api.Api_SendMsg( -- 调用发消息的接口
            CurrentQQ, {
                toUser = data.FromGroupId, -- 回复当前消息的来源群ID
                sendToType = 2, -- 2发送给群1发送给好友3私聊
                sendMsgType = "TextMsg", -- 进行文本复读回复
                groupid = 0, -- 不是私聊自然就为0咯
                content = finally_stars, -- 回复内容
                atUser = data.FromUserId -- 是否 填上data.FromUserId就可以复读给他并@了
            })
    end
    return 1
end
function ReceiveEvents(CurrentQQ, data, extData) return 1 end

