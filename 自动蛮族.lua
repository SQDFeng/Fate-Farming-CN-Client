--[[
*******************************************************************************
*                              自动蛮族任务                                   *
********************************************************************************
英文原版作者：Created by: pot0to (https://ko-fi.com/pot0to)

脚本：传送到指定的蛮族，接受并完成三个任务，然后传送到下一个蛮族。


*******************************************************************************
*                                  所需插件                                   *
********************************************************************************
1. Vnavmesh
2. Questionable
库:https://raw.githubusercontent.com/StackExplode/FFXIVOldPlugins/master/all/allrepos.utf8.json
国服只能用3.13，不能支持所有蛮族任务，所支持的蛮族详见插件。
3. TextAdvance

--#区域设置
*******************************************************************************
*                                   设置                                      *
********************************************************************************
--在这里更改你需要做哪个蛮族和对应的职业 建议直接复制
蜥蜴人族：灰党     妖精族：暂留地妖精   地灵族：第789洞穴团   鱼人族：诺布一伙  鸟人族：长风空力团
瓦努族：美艳的衮杜    骨颌族：离群一族             莫古力族：莫古力修复团
甲人族：碧玉寻宝众     阿难陀族：阿露帕国境警备队   鲶鱼精族：大鲶大祭执行委员会
仙子族：梦园仙子      奇塔利族：卢利采掘队         矮人族：沃茨之锤
悌阳象族：河马骑手团  兔兔族：梦明工作室           奥密克戎族：背世咖啡厅
--]]
ToDoList = {
    { alliedSocietyName="悌阳象族：河马骑手团", class="战士" },
    { alliedSocietyName="兔兔族：梦明工作室", class="刻木匠" },
    { alliedSocietyName="奥密克戎族：背世咖啡厅", class="采矿工" },
    { alliedSocietyName="仙子族：梦园仙子", class="战士" }
}

--#endregion Settings

--[[
*******************************************************************************
*                           不要更改除非你知道你在改什么                      *
********************************************************************************
]]

AlliedSocietiesTable =
{
    amaljaa = {
        alliedSocietyName = "蜥蜴人族：灰党",
        questGiver = "菲布布·夏",
        x = 103.12,
        y = 15.05,
        z = -359.51,
        zoneId = 146,
        aetheryteName = "小阿拉米格"
    },
    sylphs =
    {
        alliedSocietyName = "妖精族：暂留地妖精",
        questGiver = "特那克希亚",
        x = 46.41,
        y = 6.07,
        z = 252.91,
        zoneId = 152,
        aetheryteName = "霍桑山寨"
    },
    kobolds =
    {
        alliedSocietyName = "地灵族：第789洞穴团",
        questGiver = "第789团清洁工 博布",
        x = 12.857726,
        y = 16.164295,
        z = -178.77,
        zoneId = 180,
        aetheryteName = "瞭望阵营地"
    },
    sahagin =
    {
        alliedSocietyName = "鱼人族：诺布一伙",
        questGiver = "荷乌",
        x = -244.53,
        y = -41.46,
        z = 52.75,
        zoneId = 138,
        aetheryteName = "小麦酒港"
    },
    ixal =
    {
        alliedSocietyName = "鸟人族：长风空力团",
        questGiver = "空力团货物调度员",
        x = 173.21,
        y = -5.37,
        z = 81.85,
        zoneId = 154,
        aetheryteName = "秋瓜浮村"
    },
    vanuvanu = {
        alliedSocietyName = "瓦努族：美艳的衮杜",
        questGiver = "穆纳瓦努",
        x = -796.3722,
        y = -133.27,
        z = -404.35,
        zoneId = 401,
        aetheryteName = "尊杜集落"
    },
    vath = {
        alliedSocietyName = "骨颌族：离群一族",
        questGiver = "眼神好",
        x = 58.80,
        y = -48.00,
        z = -171.64,
        zoneId = 398,
        aetheryteName = "尾羽集落"
    },
    moogles = {
        alliedSocietyName = "莫古力族：莫古力修复团",
        questGiver = "机灵的莫古艾克",
        x = -335.28,
        y = 58.94,
        z = 316.30,
        zoneId = 400,
        aetheryteName = "天极白垩宫"
    },
    kojin = {
        alliedSocietyName = "甲人族：碧玉寻宝众",
        questGiver = "头巾",
        x = 391.22,
        y = -119.59,
        z = -234.92,
        zoneId = 613,
        aetheryteName = "碧玉水"
    },
    ananta = {
        alliedSocietyName = "阿难陀族：阿露帕国境警备队",
        questGiver = "耶夏娜",
        x = -26.91,
        y = 56.12,
        z = 233.53,
        zoneId = 612,
        aetheryteName = "对等石"
    },
    namazu = {
        alliedSocietyName = "鲶鱼精族：大鲶大祭执行委员会",
        questGiver = "光风院霁月",
        x = -777.72,
        y = 127.81,
        z = 98.76,
        zoneId = 622,
        aetheryteName = "朵洛衣楼"
    },
    pixies = {
        alliedSocietyName = "仙子族：梦园仙子",
        questGiver = "乌因·尼伊",
        x = -453.69,
        y = 71.21,
        z = 573.54,
        zoneId = 816,
        aetheryteName = "群花馆"
    },
    qitari = {
        alliedSocietyName = "奇塔利族：卢利采掘队",
        questGiver = "柯呫卢利·帕嗦梸",
        x = 786.83,
        y = -45.82,
        z = -214.51,
        zoneId = 817,
        aetheryteName = "法诺村"
    },
    dwarves = {
        alliedSocietyName = "矮人族：沃茨之锤",
        questGiver = "雷吉图",
        x = -615.48,
        y = 65.60,
        z = -423.82,
        zoneId = 813,
        aetheryteName = "奥斯塔尔严命城"
    },
    arkosodara =
    {
        alliedSocietyName = "悌阳象族：河马骑手团",
        questGiver = "摩罗卢",
        x = -68.21,
        y = 39.99,
        z = 323.31,
        zoneId = 957,
        aetheryteName = "新港"
    },
    loporrits =
    {
        alliedSocietyName = "兔兔族：梦明工作室",
        questGiver = "运营威",
        x = -201.27,
        y = -49.15,
        z = -273.8,
        zoneId = 959,
        aetheryteName = "最佳威兔洞"
    },
    omicrons =
    {
        alliedSocietyName = "奥密克戎族：背世咖啡厅",
        questGiver = "斯提格玛四",
        x=315.84,
        y=481.99,
        z=152.08,
        zoneId = 960,
        aetheryteName = "奥密克戎基地"
    },
    pelupleu =
    {
        alliedSocietyName = "佩鲁佩鲁族",    --国服还没开
        questGiver="Yubli",
        x=770.89954,
        y=12.846571,
        z=-261.0889,
        zoneId=1188,
        aetheryteName="水果码头",
    }
}

CharacterCondition = {
    dead=2,
    mounted=4,
    inCombat=26,
    casting=27,
    occupiedInEvent=31,
    occupiedInQuestEvent=32,
    occupied=33,
    boundByDuty34=34,
    occupiedMateriaExtractionAndRepair=39,
    betweenAreas=45,
    jumping48=48,
    jumping61=61,
    occupiedSummoningBell=50,
    betweenAreasForDuty=51,
    boundByDuty56=56,
    mounting57=57,
    mounting64=64,
    beingMoved=70,
    flying=77
}

function GetAlliedSocietyTable(alliedSocietyName)
    for _, alliedSociety in pairs(AlliedSocietiesTable) do
        if alliedSociety.alliedSocietyName == alliedSocietyName then
            return alliedSociety
        end
    end
end

function GetAcceptedAlliedSocietyQuests(alliedSocietyName)
    local accepted = {}
    local allAcceptedQuests = GetAcceptedQuests()
    for i=0, allAcceptedQuests.Count-1 do
        if GetQuestAlliedSociety(allAcceptedQuests[i]):lower() == alliedSocietyName:lower() then
            table.insert(accepted, allAcceptedQuests[i])
        end
    end
    return accepted
end

function CheckAllowances()
    if not IsAddonVisible("ContentsInfo") then
        yield("/timers")
        yield ("/wait 1")
    end

    for i = 1, 15 do
        local timerName = GetNodeText("ContentsInfo", 8, i, 5)
        if timerName == "友好部族任务受理限额" then
            return tonumber(GetNodeText("ContentsInfo", 8, i, 4):match("%d+$"))
        end
    end
    return 0
end

function TeleportTo(aetheryteName)
    yield("/tp "..aetheryteName)
    yield("/wait 1") -- wait for casting to begin
    while GetCharacterCondition(CharacterCondition.casting) do
        LogInfo("[FATE] Casting teleport...")
        yield("/wait 1")
    end
    yield("/wait 1") -- wait for that microsecond in between the cast finishing and the transition beginning
    while GetCharacterCondition(CharacterCondition.betweenAreas) do
        LogInfo("[FATE] Teleporting...")
        yield("/wait 1")
    end
    yield("/wait 1")
end

yield("/at y")
for _, alliedSociety in ipairs(ToDoList) do
    local alliedSocietyTable = GetAlliedSocietyTable(alliedSociety.alliedSocietyName)
    if alliedSocietyTable ~= nil then
        repeat
            yield("/wait 1")
        until not IsPlayerOccupied()

        if not IsInZone(alliedSocietyTable.zoneId) then
            TeleportTo(alliedSocietyTable.aetheryteName)
        end
    
        if not GetCharacterCondition(4) then
            yield('/gaction "随机坐骑"')
        end
        repeat
            yield("/wait 1")
        until GetCharacterCondition(4)
        PathfindAndMoveTo(alliedSocietyTable.x, alliedSocietyTable.y, alliedSocietyTable.z, true)
        repeat
            yield("/wait 1")
        until not PathIsRunning() and not PathfindInProgress()

        yield("/gs change "..alliedSociety.class)
        yield("/wait 3")
    
        local quests = {}
        for i=1,3 do
            yield("/target "..alliedSocietyTable.questGiver)
            yield("/interact")

            repeat
                yield("/wait 1")
            until IsAddonVisible("SelectIconString")
            yield("/callback SelectIconString true 0")
            repeat
                yield("/wait 1")
            until not IsPlayerOccupied()
        end

        yield("/qst start")
        repeat
            yield("/wait 10")
        until #GetAcceptedAlliedSocietyQuests(alliedSociety.alliedSocietyName) == 0
        yield("/qst stop")
    end
end
