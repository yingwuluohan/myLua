---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by test.
--- DateTime: 2021/4/8 下午5:57
---
---
---
boy = {money = 200}
function boy:goToMarket(someMoney)
    self.money = self.money - someMoney
end
boy:goToMarket(100)
print(boy.money)


play ={ name = "simi" }

play.name = "原对象名称"
play.age = 12
play.mp =30
--行为
function play:Atrac( )
    print( self.name  )
end

play:Atrac()

--
function play:escape()
    print( self.name .."开挂了")
end

function play:new()
    t={}
    setmetatable( t, { __index = self })
    return t;
end

--新对象

play2 = play:new();

play2.name = '2new 名称'
play2.mp = 2000000


play3 = play:new();
play3.name = '3 new 名称'
play3.mp = 3000000

play3:Atrac( self )
play2:Atrac(self  )














