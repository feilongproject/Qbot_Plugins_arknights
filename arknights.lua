local log = require("log")
local Api = require("coreApi")
local json = require("json")
local http = require("http")

function ReceiveFriendMsg(CurrentQQ, data) return 1 end

function ReceiveGroupMsg(CurrentQQ, data)
    if string.find(data.Content, "#方舟十连") == 1 then
        AKrandom_once()
        local Finally_star0 = Finally_star--01
        AKrandom_once()
        local Finally_star1 = Finally_star--02
        AKrandom_once()
        local Finally_star2 = Finally_star--03
        AKrandom_once()
        local Finally_star3 = Finally_star--04
        AKrandom_once()
        local Finally_star4 = Finally_star--05
        AKrandom_once()
        local Finally_star5 = Finally_star--06
        AKrandom_once()
        local Finally_star6 = Finally_star--07
        AKrandom_once()
        local Finally_star7 = Finally_star--08
        AKrandom_once()
        local Finally_star8 = Finally_star--09
        AKrandom_once()
        local Finally_star9 = Finally_star--10

        local finally_stars = "\n康康你的出货成果：\n" .. Finally_star0 .. Finally_star1.. Finally_star2 .. Finally_star3 .. Finally_star4 .. Finally_star5 .. Finally_star6 .. Finally_star7 .. Finally_star8 .. Finally_star9
        log.notice("在%s群里，%s进行了一次十连，结果为%s",data.FromGroupId,data.FromUserId,finally_stars)
        Send_msg(CurrentQQ, data,finally_stars)
    end

    if string.find(data.Content, "#方舟单抽") == 1 then
        AKrandom_once()
        local finally_stars = "\n康康你的出货成果：\n" .. Finally_star
        log.notice("在%s群里，%s进行了一次单抽，结果为%s",data.FromGroupId,data.FromUserId,finally_stars)
        Send_msg(CurrentQQ, data,finally_stars)
    end
    return 1

end

--[[未完成项目（准备加上一二星）
function AKrandom_once()
    local AKrandom_times = math.random(1, 100021)
    log.notice("随机数为 ---->%s", AKrandom_times)

    if AKrandom_times <= 2500 then
        Star01()
    elseif AKrandom_times <= 5000 then
        Star02()

    elseif AKrandom_times <= 40000 then
        Star03()
    elseif AKrandom_times <= 90000 then
        Star04()
    elseif AKrandom_times <= 98000 then
        Star05()
    elseif AKrandom_times <= 100000 then
        Star06()
    elseif AKrandom_times <= 100020 then
        Star07()
    elseif AKrandom_times == 100021 then
        Star42()
    end
end]]
function AKrandom_once()
    local AKrandom_times = math.random(1, 100021)
    log.notice("随机数为 ---->%s", AKrandom_times)
    if AKrandom_times <= 40000 then
        Star03()
    elseif AKrandom_times <= 90000 then
        Star04()
    elseif AKrandom_times <= 98000 then
        Star05()
    elseif AKrandom_times <= 100000 then
        Star06()
    elseif AKrandom_times <= 100020 then
        Star07()
    elseif AKrandom_times == 100021 then
        Star42()
    end
end



function Star03()
    local star3_name = {"空爆","芬","香草","翎羽","玫兰莎","泡普卡","月见夜","米格鲁","斑点","安塞尔","史都华德","炎熔","梓兰","克洛丝","卡缇","芙蓉","安德切尔"}
    local now_star_name = star3_name[(math.random(1,#star3_name))]
    local now_star_str = "\n★★★☆☆☆"
    Finally_star = now_star_str .. now_star_name
end
function Star04()
    local star4_name = {"卡达","波登可","刻刀","宴","安比尔","梅","红云","桃金娘","苏苏洛","格雷伊","猎蜂","阿消","地灵","深海色","古米","蛇屠箱","角峰","调香师","杰西卡","白雪","讯使","清道夫","红豆","慕斯","霜叶","杜宾","砾","暗索","夜烟","流星","缠丸","远山","末药","孑"}
    local now_star_name = star4_name[(math.random(1,#star4_name))]
    local now_star_str = "\n★★★★☆☆!"
    Finally_star = now_star_str .. now_star_name
end
function Star05()
    local star5_name = {"灰喉","普罗旺斯","慑砂","守林人","送葬人","凛冬","德克萨斯","极境","芙兰卡","布洛卡","拉普兰德","诗怀雅","吽","槐琥","食铁兽","狮蝎","华法琳","白面鸮","莱恩哈特","惊蛰","格劳克斯","梅尔","月禾","空","白金","陨星","韦草","炎客","幽灵鲨","星极","断崖","临光","红","崖心","赫默","微风","天火","真理","巫恋","蓝毒","可颂","雷蛇","夜魔","初雪","贾维","蜜蜡","安哲拉"}
    local now_star_name = star5_name[(math.random(1,#star5_name))]
    local now_star_str = "\n★★★★★☆!!"
    Finally_star = now_star_str .. now_star_name
end
function Star06()
    local star6_name = {"能天使","黑","早露","风笛","斯卡蒂","煌","陈","银灰","赫拉格","塞雷娅","傀影","温蒂","阿","闪灵","夜莺","艾雅法拉","莫斯提马","伊芙利特","安洁莉娜","麦哲伦","刻俄柏","铃兰","星熊","推进之王","棘刺"}
    local now_star_name = star6_name[(math.random(1,#star6_name))]
    local now_star_str = "\n★★★★★★!!!"
    Finally_star = now_star_str .. now_star_name
end

function Star07()
    local star7_name = {"地火","霜星","ACE"}
    local now_star_name = star7_name[(math.random(1,#star7_name))]
    local now_star_str = "\n★★★★★★★!!!!"
    Finally_star = now_star_str .. now_star_name
end

function Star42()
    local star42_name = {"刀客塔","可露希尔","凯尔希"}
    local now_star_name = star42_name[(math.random(1,(#star42_name)))]
    local now_star_str = "\n★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★!!!!!!!!!!"
    Finally_star = now_star_str .. now_star_name
end

function Send_msg(CurrentQQ, data,finally_stars)
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

function ReceiveEvents(CurrentQQ, data, extData) return 1 end

