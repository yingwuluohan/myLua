---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by test.
--- DateTime: 2021/4/7 上午10:53
---

---解释元表作用的例子
---主要是让table 具备了自定义函数的功能
mytable = {"C#","PHP","Java","Python","Lua"} --新建一个表
--元表
--查找不存在的key时调用__index方法
--匿名函数的第一个参数是mytable,参数二是mytable的key
mymetatable = {
    __index = function(mytable,key)
        if key >= 10 then
            return "More than 10"
        end
    end
}
mytable =setmetatable(mytable,mymetatable)  --设置元表
print(mytable[5])
print(mytable[8])
print(mytable[10])

print("例子结束--------------------------------------")

mytable = setmetatable({key1 = "value1"}, {
    __index = function(mytable1, key,key3 )
        print( key )
        print( key3 )
        if key == "key2" then
            return "metatablevalue"
        else
            return nil
        end
    end
} )
print("begin--------------------------------------")

local a1 = { 20 ,1 , key1='hellow' , key2 = 'world' ,lang = "lua" }
print( "talbe_a1:")
for _,v in pairs( a1 ) do
    print( v );
end

local a2 = { key1 = "new hellow" ,key2="new world" }

print( " a2原值是:")
for _ , v in pairs( a2 ) do
    print("a2 原值:" , v )
end

print( "\n a2的metatable是: "     ,getmetatable( a2 ) )
print( "语言:" , a2[ "lang"])

print("--------------------------------------")


local a = { __index = a1 }

print("table a :" , a );
setmetatable( a2 , a )

print( "\n the new talbe a2 ")
for _ , v in pairs( a2 ) do
    print( "a2 新值:" , v  )
end

print( "语言:" , a2[ "lang"])
-- 打印a2 数组元素
print( "a2第一个元素:" , a2[ 1])
print( "a2的metatable" , getmetatable( a2 ))
print( "a1:" , a1)
print("--------------------------------------")

t1 = {}
t2 = {}

print("t1 t2 :" , getmetatable( t1 , t2 ))

setmetatable( t1 ,t2 )
print("t1 :" , getmetatable( t1  ))
print("t2 :" , getmetatable( t2 ))
print("t1 t2 :" , getmetatable( t1 , t2 ))















