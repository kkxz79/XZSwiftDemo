//
//  ViewController.swift
//  XZSwiftDemo
//
//  Created by kkxz on 2020/6/4.
//  Copyright © 2020 luckincoffee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*----------------------------------------------基础内容----------------------------------------------*/
        
        /*
         常量和变量必须在使用前被声明，使用关键字 let 来声明常量，使用关键字 var 来声明变量。
         */
        let maximumNumberOfLoginAttempts = 10
        var currentLoginAttempt = 0
        currentLoginAttempt = 7
        var  x = 0.0, y = 0.0, z = 0.0
        x = 1
        y = 2
        z = 3
        print(maximumNumberOfLoginAttempts,currentLoginAttempt,x,y,z)
        
        /*
         类型标注
         声明一个变量或常量的时候提供类型标注，来明确变量或常量能够储存值的类型。
         添加类型标注的方法是在变量或常量的名字后边加一个冒号，再跟一个空格，最后加上要使用的类型名称。
         */
        let welcomeTip : String
        welcomeTip = "小白"
        var welcomeMessage : String
        welcomeMessage = "Hello"
        print(welcomeMessage,welcomeTip)
        
        /*
         命名常量和变量
         一旦你声明了一个确定类型的常量或者变量，就不能使用相同的名字再次进行声明，也不能让它改存其他类型的值。
         常量和变量之间也不能互换。
         不同于变量，常量的值一旦设定则不能再被改变。
         尝试这么做将会在你代码编译时导致报错。
         */
        
        /*
         输出常量和变量
         print(_:separator:terminator:) 是一个用来把一个或者多个值用合适的方式输出的全局函数。
         */
        var friendlyWelcome = "Bonjour"
        friendlyWelcome = "xiao bai"
        print(friendlyWelcome)
        
        /*
         注释
         使用注释来将不需要执行的文本放入的代码当中，作为标记或者你自己的提醒。
         当 Swift 编译器在编译代码的时候会忽略掉你的注释。
         /*
            这个一个内嵌多行注释
         */
         */
        
        /*
         分号
         Swift 并不要求你在每一句代码结尾写分号（ ; ）
         如果你想在一行里写多句代码，分号还是需要的。
         */
        
        /*
         整数
         整数就是没有小数部分的数字，比如 42 和 -23 。
         整数可以是有符号（正，零或者负），或者无符号（正数或零）。
         Swift 提供了 8，16，32 和 64 位编码的有符号和无符号整数。
         */
        
        /*
         整数范围
         通过 min 和 max 属性来访问每个整数类型的最小值和最大值
         */
        let minValue = UInt16.min
        let maxValue = UInt16.max
        print(minValue,maxValue)
        
        /*
         Int
         在大多数情况下，你不需要在你的代码中为整数设置一个特定的长度。
         Swift 提供了一个额外的整数类型：Int ，它拥有与当前平台的原生字相同的长度。
         尽量在代码中使用 Int 作为你的整数的值类型
         UInt 同理
         */
        
        /*
         浮点数
         浮点数是有小数的数字，比如 3.14159 , 0.1 , 和 -273.15 。
         浮点类型相比整数类型来说能表示更大范围的值，可以存储比 Int 类型更大或者更小的数字。
         Double代表 64 位的浮点数。
         Float 代表 32 位的浮点数。
         */
        
        /*
         类型安全 和 类型判断
         Swift 是类型安全的，他在编译代码的时候会进行类型检查，任何不匹配的类型都会被标记为错误。
         这会帮助你在开发阶段更早的发现并修复错误。
         可以根据字面量推断出类型
         */
        let meaningOfLift = 42
        let pi = 3.14159
        let anothetPi = 3 + 0.14159
        print(meaningOfLift,pi,anothetPi)
        
        /*
         数值型字面量
         一个十进制数，没有前缀
         一个二进制数，前缀是 0b
         一个八进制数，前缀是 0o
         一个十六进制数，前缀是 0x
         */
        
        /*
         数值类型转换
         通常来讲，即使我们知道代码中的整数变量和常量是非负的，我们也会使用 Int 类型。
         经常使用默认的整数类型可以确保你的整数常量和变量可以直接被复用并且符合整数字面量的类型推测。
         只有在特殊情况下才会使用整数的其他类型，例如需要处理外部长度明确的数据或者为了优化性能、内存占用等其他必要情况。
         在这些情况下，使用指定长度的类型可以帮助你及时发现意外的值溢出和隐式记录正在使用数据的本质。
         */
        
        /*
         整数转换
         */
        let twoThousand: UInt16 = 2_000
        let one: UInt8 = 1
        let twoThousandAndOne = twoThousand + UInt16(one)
        print(twoThousandAndOne)
        
        /*
         整数和浮点数转换
         整数和浮点数类型的转换必须显式地指定类型。
         浮点转换为整数也必须显示地指定类型
         在用浮点数初始化一个新的整数类型的时候，数值会被截断
         */
        let three = 3
        let pointOneFourOneFiveNine = 0.14159
        let pi2 = Double(three) + pointOneFourOneFiveNine
        print(pi2)
        
        let integerPi = Int(pi2)
        print(integerPi)
        
        /**
         类别别名
         类型别名可以为已经存在的类型定义了一个新的可选名字。用 typealias 关键字定义类型别名。
         */
        typealias AudioSample = UInt16
        var maxAmplitudeFound = AudioSample.min
        maxAmplitudeFound = AudioSample.max
        print(maxAmplitudeFound)
        
        /**
         布尔值
         Swift 有一个基础的布尔量类型，就是 Bool ，布尔量被作为逻辑值来引用，因为他的值只能是真或者假。
         Swift为布尔量提供了两个常量值， true 和 false 。
         */
        let orangesAreOrange = true
        if orangesAreOrange {
            print("Mmm, tasty turnips!")
        }
        
        /**
         元组
         元组把多个值合并成单一的复合型的值。
         元组内的值可以是任何类型，而且可以不必是同一类型。
         */
        // (404, "Not Found") 是一个描述了 HTTP 状态代码 的元组。
        let http404Error = (404, "Not Found")
        
        //任何类型的排列都可以被用来创建一个元组，他可以包含任意多的类型。
        //可以将一个元组的内容分解成单独的常量或变量
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        print("The status message is \(statusMessage)")
        
        //当你分解元组的时候，如果只需要使用其中的一部分数据，不需要的数据可以用下滑线（ _ ）代替
        let (justTheStatusCode, _) = http404Error
        print("The status code is \(justTheStatusCode)")
        
        //另外一种方法就是利用从零开始的索引数字访问元组中的单独元素
        print("The status code is \(http404Error.0)")
        print("The status message is \(http404Error.1)")
        
        //你可以在定义元组的时候给其中的单个元素命名,在命名之后，你就可以通过访问名字来获取元素的值
        let http200Status = (statusCode: 200, description: "OK")
        print("The status code is \(http200Status.statusCode)")
        print("The status message is \(http200Status.description)")
        
         /**
         作为函数返回值时，元组非常有用。一个用来获取网页的函数可能会返回一个 (Int, String) 元组来描述是否获取成功。
         相比只能返回一个类型的值，元组能包含两个不同类型值，他可以让函数的返回信息更有用。
         */
        
        
        /**
        可选项
        可以利用可选项来处理值可能缺失的情况。
        可选项意味着：这里有一个值，他等于x 或者 这里根本就没有值
         
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        print(convertedNumber)
         
         因为这个初始化器可能会失败，所以他会返回一个可选的 Int ，而不是 Int 。
         可选的 Int 写做 Int? ，而不是 Int 。
         问号明确了它储存的值是一个可选项，意思就是说它可能包含某些 Int  值，或者可能根本不包含值。
        */
        
        /**
         nil
         你可以通过给可选变量赋值一个 nil 来将之设置为没有值
          var serverResponseCode: Int? = 404
          serverResponseCode = nil
          print(serverResponseCode)
           
         如果你定义的可选变量没有提供一个默认值，变量会被自动设置成 nil
           var surveyAnswer: String?
           print(surveyAnswer)
         
         在 Objective-C 中 nil 是一个指向不存在对象的指针。
         在 Swift中， nil 不是指针，它是值缺失的一种特殊类型，任何类型的可选项都可以设置成 nil 而不仅仅是对象类型。
        */
        
        /**
         If语句以及强制展开
         
         你可以利用 if 语句通过比较 nil 来判断一个可选中是否包含值。利用相等运算符 （ == ）和不等运算符（ != ）
         如果一个可选有值，他就“不等于” nil
         一旦你确定可选中包含值，你可以在可选的名字后面加一个感叹号 （ ! ） 来获取值，感叹号的意思就是说“我知道这个可选项里边有值，展开吧。”这就是所谓的可选值的强制展开。
         */
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        if convertedNumber != nil {
            print("convertedNumber contains some integer value.")
        }
        if convertedNumber != nil {
            print("convertedNumber has an integer value of \(convertedNumber!).")
        }
        
        /**
         可选项绑定
         
         可以使用可选项绑定来判断可选项是否包含值，如果包含就把值赋给一个临时的常量或者变量。
         可选绑定可以与 if 和 while 的语句使用来检查可选项内部的值，并赋值给一个变量或常量。
         
         如果  Int(possibleNumber)  返回的可选 Int 包含一个值，将这个可选项中的值赋予一个叫做 actualNumber 的新常量。
         */
        
        if let actualNumber = Int(possibleNumber) {
            print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
        } else {
            print("\'\(possibleNumber)\' could not be converted to an integer")
        }
        
        //你可以在同一个 if 语句中包含多可选项绑定，用逗号分隔即可。
        //如果任一可选绑定结果是 nil 或者布尔值为 false ，那么整个 if 判断会被看作 false 。
        if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
        
        /**
         隐式展开可选项
         
         可选项明确了常量或者变量可以“没有值”。
         可选项可以通过 if 语句来判断是否有值，如果有值的话可以通过可选项绑定来获取里边的值。
         
         有时在一些程序结构中可选项一旦被设定值之后，就会一直拥有值。
         在这种情况下，就可以去掉检查的需求，也不必每次访问的时候都进行展开，因为它可以安全的确认每次访问的时候都有一个值。
         这种类型的可选项被定义为隐式展开可选项。
         
         通过在声明的类型后边添加一个叹号（ String! ）而非问号（  String? ） 来书写隐式展开可选项。
         与在使用可选项时在名称后加一个叹号不同的是，声明的时候要把叹号放在类型的后面。
         
         隐式可选项主要被用在swift类的初始化过程中。
         
         */
        let possibleString: String? = "An optional string."
        let forcedString: String = possibleString! // requires an exclamation mark
         
        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString // no need for an exclamation mark
        print(forcedString)
        print(implicitString)
        
        /**
         错误处理
         
         在程序执行阶段，你可以使用错误处理机制来为错误状况负责。
         相比于可选项的通过值是否缺失来判断程序的执行正确与否，而错误处理机制能允许你判断错误的形成原因，在必要的情况下，还能将你的代码中的错误传递到程序的其他地方。
         当一个函数遇到错误情况，他会抛出一个错误，这个函数的访问者会捕捉到这个错误，并作出合适的反应。
         
         通过在函数声明过程当中加入 throws 关键字来表明这个函数会抛出一个错误。
         当你调用了一个可以抛出错误的函数时，需要在表达式前预置 try 关键字。
         Swift 会自动将错误传递到它们的生效范围之外，直到它们被 catch 分句处理。
         
         do 语句创建了一个新的容器范围，可以让错误被传递到到不止一个的 catch 分句里。
         */
        
        /*
            func makeASandwich() throws {
                // ...
            }
             
            do {
                try makeASandwich()
                eatASandwich()
            } catch Error.OutOfCleanDishes {
                washDishes()
            } catch Error.MissingIngredients(let ingredients) {
                buyGroceries(ingredients)
            }
        */
        
        /**
         断言和先决条件
         
         断言和先决条件用来检测运行时发生的事情。你可以使用它们来保证在执行后续代码前某必要条件是满足的。
         如果布尔条件在断言或先决条件中计算为 true ，代码就正常继续执行。
         如果条件计算为 false ，那么程序当前的状态就是非法的；代码执行结束，然后你的 app 终止。
         
         断言和先决条件的不同之处在于他们什么时候做检查：断言只在 debug 构建的时候检查，但先决条件则在 debug 和生产构建中生效。
         在生产构建中，断言中的条件不会被计算。
         这就是说你可以在开发的过程当中随便使用断言而无需担心影响生产性能。
         */
        
        /**
         使用断言进行调试
         
         断言会在运行的时候检查一个逻辑条件是否为 true 。
         顾名思义，断言可以“断言”一个条件是否为真。
         你可以使用断言确保在运行其他代码之前必要的条件已经被满足。
         如果条件判断为 true，代码运行会继续进行；如果条件判断为 false，代码运行结束，你的应用也就中止了。
         */
        let age = 3 //值为 -3的时候，断言触发
        assert(age >= 0, "A person's age cannot be less than zero")
        //代码执行只要在 if age >= 0 评定为 true 时才会继续，就是说，如果 age 的值非负。
        //如果 age 的值是负数，在上文的代码当中， age >= 0 评定为 false ，断言就会被触发，终止应用。
        
        let ages = 3; //-3 触发断言
        assert(ages >= 0)
        if ages > 10 {
            //print("You can ride the roller-coaster or the ferris wheel.")
        } else if ages > 0 {
            print("You can ride the ferris wheel.")
        } else {
            assertionFailure("A person's age can't be less than zero.")//你可以使用 assertionFailure(_:file:line:) 函数来标明断言失败
        }
        
        /**
         强制先决条件
         在你代码中任何条件可能潜在为假但必须肯定为真才能继续执行的地方使用先决条件。
         比如说，使用先决条件来检测下标没有越界，或者检测函数是否收到了一个合法的值。
         你可以通过调用 precondition(_:_:file:line:) 函数来写先决条件。
         */
        
         //precondition(index > 0, "Index must be greater than zero.")
        
        print("-------------------------------------------基础内容完结------------------------------------------")
        
        /*----------------------------------------------基本运算符----------------------------------------------*/
        
        /**
         运算符是一种用来检查、改变或者合并值的特殊符号或组合符号。
         运算符包括一元、二元、三元。
         受到运算符影响的值叫做操作数。
         */
        
        /**
         赋值运算符
         赋值运算符（ a = b ）可以初始化或者更新 a  为 b  的值
         与 Objective-C 和 C 不同，Swift 的赋值符号自身不会返回值。
         这个特性避免了赋值符号 (=) 被意外地用于等于符号 (==) 的实际意图上。
         */
        let b = 10
        var a = 5
        a = b
        print(a,b)
        
        let (x1, y1) = (1, 2)
        print(x1,y1)
        
        /**
         算术运算符
         
         支持四种标准算术运算符
         加 ( + )
         减 ( - )
         乘 ( * )
         除 ( / )
         
         加法运算符同时也支持 String  的拼接
         
         */
        print(1 + 2)
        print(5 - 3)
        print(2 * 3)
        print(10.0 / 2.5)
        print("hello, " + "world")
        
        
        /**
         余数运算符
         余数运算符（ a % b ）可以求出多少个 b  的倍数能够刚好放进 a  中并且返回剩下的值（就是我们所谓的余数）
         当 b为负数时它的正负号被忽略掉了。这意味着 a % b  与 a % -b  能够获得相同的答案。
         */
        print(9 % 4)
        print(-9 % 4)
        
        /**
         一元减号运算符
         数字值的正负号可以用前缀 – 来切换，我们称之为 一元减号运算符
         一元减号运算符（ - ）直接在要进行操作的值前边放置，不加任何空格。
         */
        let three1 = 3
        let minusThree = -three1 // minusThree equals -3
        let plusThree = -minusThree // plusThree equals 3, or "minus minus three"
        print(minusThree,plusThree)
        
        /**
         一元加号运算符
         一元加号运算符 （ + ）直接返回它操作的值，不会对其进行任何的修改
         尽管一元加号运算符实际上什么也不做，你还是可以对正数使用它来让你的代码对一元减号运算符来说显得更加对称。
         */
        let minusSix = -6
        let alsoMinusSix = +minusSix
        print(alsoMinusSix)
        
        /**
         组合赋值符号
         Swift 提供了由赋值符号（ = ）和其他符号组成的 组合赋值符号 。
         效率上来讲，加号和赋值符号组合成的一个运算符能够同时进行这两个操作。
         */
        var aa = 1
        aa += 2
        print(aa)
        
        /*
         比较运算符
         
         Swift 支持所有 C 的标准比较运算符
             相等 ( a == b )
             不相等 ( a != b )
             大于 ( a > b )
             小于 ( a < b )
             大于等于 ( a >= b )
             小于等于 ( a <= b )
         每个比较运算符都会返回一个 Bool  值来表示语句是否为真
         */
        
        let name = "world"
        if name == "world" {
            print("hello, world")
        } else {
            print("I'm sorry \(name), but I don't recognize you")
        }
        
        /**
         你同样可以比较拥有同样数量值的元组，只要元组中的每个值都是可比较的。
         比如说， Int 和 String 都可以用来比较大小，也就是说 (Int,String) 类型的元组就可以比较。
         一般来说， Bool 不能比较，这意味着包含布尔值的元组不能用来比较大小。
         元组以从左到右的顺序比较大小，一次一个值，直到找到两个不相等的值为止。
         如果所有的值都是相等的，那么就认为元组本身是相等的
         */
       print((1, "zebra") < (2, "apple"))
       print((3, "apples") < (3, "aird"))
       print((4, "dog") == (4, "dog"))
       
        /**
         三元条件运算符是一种有三部分的特殊运算，它看起来是这样的： question ? answer1 : answer2  。
         这是一种基于 question  是真还是假来选择两个表达式之一的便捷写法。
         如果 question  是真，则会判断为 answer1  并且返回它的值；否则，它判断为 answer2  并且返回它的值。
         */
        let contentHeight = 40
        let hasHeader = true
        let rowHeight = contentHeight + (hasHeader ? 50 : 20)
        print(rowHeight)
        
        /**
         合并空值运算符
         合并空值运算符 （ a ?? b ）如果可选项 a  有值则展开，如果没有值，是 nil  ，则返回默认值 b 。
         表达式 a 必须是一个可选类型。
         表达式 b  必须与 a  的储存类型相同。
         */
        /*
         a1 ?? b1
         a1 != nil ? a1! : b1
         注：如果a的值是非空的，b的值将不会被考虑。这就是所谓的短路计算。
        */
        let defaultColorName = "red"
        var userDefinedColorName: String? // defaults to nil
        var colorNameToUse = userDefinedColorName ?? defaultColorName
        print(colorNameToUse)
        
        userDefinedColorName = "green"
        colorNameToUse = userDefinedColorName ?? defaultColorName
        print(colorNameToUse)
        
        /**
         区间运算符
         Swift 包含了两个 区间运算符 ，他们是表示一个范围的值的便捷方式。
         
         闭区间运算符
         闭区间运算符（ a...b ）定义了从 a  到 b  的一组范围，并且包含 a  和 b  。
         a  的值不能大于 b 。
         */
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        
        /*
         半开区间运算符
         半开区间运算符（ a..<b ）定义了从 a  到 b  但不包括 b  的区间，即 半开 ，因为它只包含起始值但并不包含结束值。
         其实是左闭右开区间
         */
        let names = ["Anna","Alex","Brian","Jack"]
        let count = names.count
        for i in 0..<count {
            print("Person \(i+1) is called \(names[i])")
        }
        
        /**
         单侧区间
         闭区间有另外一种形式来让区间朝一个方向尽可能的远——比如说，一个包含数组所有元素的区间，从索引 2 到数组的结束。
         在这种情况下，你可以省略区间运算符一侧的值。
         因为运算符只有一侧有值，所以这种区间叫做单侧区间。
         */
        for name in names[2...] {
            print(name)
        }
        
        for name in names[...2] {
            print(name)
        }
        
        //半开区间运算符同样可以有单侧形式，只需要写它最终的值。和你两侧都包含值一样，最终的值不是区间的一部分。
        for name in names[..<2] {
            print(name)
        }
        
        let range = ...5
        print(range.contains(7))
        print(range.contains(4))
        print(range.contains(-1))
        
        /**
         逻辑运算符
         逻辑运算符可以修改或者合并布尔逻辑值 true  和 false  。
         
         逻辑 非  ( !a )
         逻辑 与  ( a && b )
         逻辑 或  ( a || b )
         */
        
        //逻辑非运算符是一个前缀运算符，它直接写在要进行运算的值前边，不加空格。
        let allowedEntry = false
        if !allowedEntry {
            print("ACCESS DENIED")
        }
        
        //逻辑与运算符 逻辑与运算符（ a && b ）需要逻辑表达式的两个值都为 true  ，整个表达式的值才为 true 。
        let enteredDoorCode = true
        let passedRetinaScan = false
        if enteredDoorCode && passedRetinaScan {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        
        //逻辑或运算符（ a || b ）是一个中缀运算符，它由两个相邻的管道字符组成。
        //你可以使用它来创建两个值之间只要有一个为 true  那么整个表达式就是 true  的逻辑表达式。
        let hasDoorKey = false
        let knowsOverridePassword = true
        if hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        
        //混合逻辑运算
        //你可以组合多个逻辑运算符来创建一个更长的组合表达式
        if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        
        //显示括号 很多时候虽然不被要求，但使用括号还是很有用的，这能让复杂的表达式更容易阅读。
        if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        
        print("-------------------------------------------基本运算符完结------------------------------------------")
        
        /**
         字符串和字符
         字符串是一系列的字符，比如说 "hello, world"或者 "albatross"。
         Swift 的字符串用 String类型来表示。
         String的内容可以通过各种方法来访问到，包括作为 Character值的集合。
         
         Swift 的 String  和 Character  类型提供了一种快速的符合 Unicode 的方式操作你的代码。
         字符串的创建和修改语法非常轻量易读，使用与 C 类似的字符串字面量语法。
         字符串串联只需要使用 +运算符即可，字符串的可修改能力通过选择常量和变量来进行管理，就如同 Swift 语言中的其他值。
         你同样可以使用字符串来插入常量、变量、字面量以及表达式到更长的字符串当中，这就是所谓的字符串插值。
         这样让创建自定义字符串值来显示、储存和打印值变得更加简单。
         */
        
        /**
         字符串字面量
         你可以在你的代码中插入预先写好的 String值作为字符串字面量。
         字符串字面量是被双引号（ "）包裹的固定顺序文本字符。
         */
        let someString = "Some string literal value"
        print(someString)
        
        /**
         多行字符串字面量
         如果你需要很多行的字符串，使用多行字符串字面量。多行字符串字面量是用三个双引号引起来的一系列字符
         */
        let quotation = """
        The White Rabbit put on his spectacles.  "Where shall I begin,
        please your Majesty?" he asked.
         
        "Begin at the beginning," the King said gravely, "and go on
        till you come to the end; then stop."
        """
        print(quotation)
        
        /**
         多行字符串字面量把所有行包括在引号内。
         字符串包含第一行开始于引号标记（ """ ）并结束于末尾引号标记之前，也就是说下面的字符串的开始或者结束都不会有换行符
         
         当你的代码中在多行字符串字面量里包含了换行，那个换行符同样会成为字符串里的值。如果你想要使用换行符来让你的代码易读，却不想让换行符成为字符串的值，那就在那些行的末尾使用反斜杠（ \ ）
         */
        let softWrappedQuotation = """
        The White Rabbit put on his spectacles.  "Where shall I begin, \
        please your Majesty?" he asked.
         
        "Begin at the beginning," the King said gravely, "and go on \
        till you come to the end; then stop."
        """
        print(softWrappedQuotation)
        
        //要让多行字符串字面量起始或结束于换行，就在第一或最后一行写一个空行。
        let lineBreaks = """
         
        This string starts with a line break.
        It also ends with a line break.
         
        """
        print(lineBreaks)
        
        /**
         字符串字面量里的特殊字符
         转义特殊字符 \0 (空字符)， \\ (反斜杠)， \t (水平制表符)， \n (换行符)， \r(回车符)， \" (双引号) 以及 \' (单引号)；
         任意的 Unicode 标量，写作 \u{n}，里边的 n是一个 1-8 个与合法 Unicode 码位相等的16进制数字。
         */
        
        /**
         扩展字符串分隔符
         */
        let lineOne = #"Line 1\nLine 2"#
        let lineTwo = #"Line 1\#nLine 2"#
        let lineThree = ###"Line1\###nLine2"###
        let threeMoreDoubleQuotationMarks = #"""
        Here are three more double quotes: """
        """#
        print(lineOne)
        print(lineTwo)
        print(lineThree)
        print(threeMoreDoubleQuotationMarks)
        
        /**
         初始化一个空字符串
         
         */
        let emptyString = ""
        let anotherEmptyString = String()
        
        if emptyString.isEmpty {
            print("Nothing to see here")
        }
        
        if anotherEmptyString.isEmpty {
            print("Nothing to see here")
        }
        
        //字符串可变性
        //可以通过把一个 String设置为变量（这里指可被修改），或者为常量（不能被修改）来指定它是否可以被修改（或者改变）
        var variableString = "Horse"
        variableString += " and carriage"
        print(variableString)
        
        /**
         字符串是值类型
         Swift 的 String类型是一种值类型。
         如果你创建了一个新的 String值， String值在传递给方法或者函数的时候会被复制过去，还有赋值给常量或者变量的时候也是一样。
         每一次赋值和传递，现存的 String值都会被复制一次，传递走的是拷贝而不是原本。
         
         Swift 的默认拷贝 String行为保证了当一个方法或者函数传给你一个 String值，你就绝对拥有了这个 String值，无需关心它从哪里来。
         你可以确定你传走的这个字符串除了你自己就不会有别人改变它。
         */
        
        /**
         操作字符
         可以通过 for-in循环遍历 String 中的每一个独立的 Character值。
         */
        for character in "Dog!🐶️" {
            print(character)
        }
        
        //String值可以通过传入 Character值的字符串作为实际参数到它的初始化器来构造
        let catCharacters: [Character] = ["C", "a", "t", "!", "🐱️"]
        let catString = String(catCharacters)
        print(catString)
        
        /**
         连接字符串和字符
         String值能够被加起来（或者说连接），使用加运算符（ +）来创建新的String值.
         也可以使用加赋值符号（ +=）在已经存在的 String值末尾追加一个 String值.
         使用 String类型的 append()方法来可以给一个 String变量的末尾追加 Character值.
         */
        let string1 = "hello"
        let string2 = " there"
        var welcome = string1 + string2
        
        var instruction = "look over"
        instruction += string2
        print(instruction)
        
        let exclamationMark: Character = "!"
        welcome.append(exclamationMark)
        print(welcome)
        
        //换行符 如果你使用多行字符串字面量来构建很长的字符串，又想让每一行字符串末尾有一个换行符，包括最后一行。
        let badStart = """
        one
        two
        """
        let end = """
        three
        """
        print(badStart + end)
        
        let goodStart = """
        one
        two
        
        """
        print(goodStart + end)
        
        /**
         字符串插值
         字符串插值是一种从混合常量、变量、字面量和表达式的字符串字面量构造新 String值的方法。
         每一个你插入到字符串字面量的元素都要被一对圆括号包裹，然后使用反斜杠前缀
         */
        let multiplier = 3
        let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
        print(message)
        
        //你可以在扩展字符串分隔符中创建一个包含在其他情况下会被当作字符串插值的字符
        print(#"Write an interpolated string in Swift using \(multiplier)."#)
        
        //要在使用扩展分隔符的字符串中使用字符串插值，在反斜杠后使用匹配首尾井号数量的井号。
        print(#"6 times 7 is \#(6 * 7)."#)
        
        /**
         Unicode
         Unicode 是一种在不同书写系统中编码、表示和处理文本的国际标准。
         它允许你表示几乎标准化格式的任何语言中的任何字符，并且为外部源比如文本文档或者网页读写这些字符。
         */
        
        /**
         字符统计
         
         要在字符串中取回 Character值的总数，使用字符串的 count属性
         */
        let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
        print("unusualMenagerie has \(unusualMenagerie.count) characters")
        
        //注意 Swift 为 Character值使用的扩展字形集群意味着字符串的创建和修改可能不会总是影响字符串的字符统计数。
        var word = "cafe"
        print("the number of characters in \(word) is \(word.count)")
        word += "\u{301}"
        print("the number of characters in \(word) is \(word.count)")
        
        /**
         访问和修改字符串
         你可以通过下标脚本语法或者它自身的属性和方法来访问和修改字符串。
         字符串索引
         每一个 String值都有相关的索引类型， String.Index，它相当于每个 Character在字符串中的位置。
         */
        let greeting = "Guten Tag!"
        print(greeting[greeting.startIndex])
        print(greeting[greeting.index(before: greeting.endIndex)])
        print(greeting[greeting.index(after: greeting.startIndex)])
        let index = greeting.index(greeting.startIndex, offsetBy: 7)
        print(greeting[index])
        
        //使用 indices属性来访问字符串中每个字符的索引。
        for index in greeting.indices {
            print("\(greeting[index]) ", terminator: "")
        }
        
        /**
         插入和删除
         要给字符串的特定索引位置插入字符，使用 insert(_:at:)方法，另外要冲入另一个字符串的内容到特定的索引，使用 insert(contentsOf:at:) 方法。
         要从字符串的特定索引位置移除字符，使用 remove(at:)方法，另外要移除一小段特定范围的字符串，使用 removeSubrange(_:) 方法
         */
        var welcome1 = "hello"
        welcome1.insert("!", at: welcome1.endIndex)
        print(welcome1)
        welcome1.insert(contentsOf: " there", at: welcome1.index(before: welcome1.endIndex))
        print(welcome1)
        
        welcome1.remove(at: welcome1.index(before: welcome1.endIndex))
        let range1 = welcome1.index(welcome1.endIndex, offsetBy: -6)..<welcome1.endIndex
        welcome1.removeSubrange(range1)
        print(welcome1)
        
        /**
         子字符串

         当你获得了一个字符串的子字符串——比如说，使用下标或者类似 prefix(_:) 的方法——结果是一个 Substring 的实例，不是另外一个字符串。
         Swift中的子字符串拥有绝大部分字符串所拥有的方法，也就是说你可以用操作字符串相同的方法来操作子字符串。
         总之，与字符串不同，在字符串上执行动作的话你应该使用子字符串执行短期处理。
         当你想要把结果保存得长久一点时，你需要把子字符串转换为 String 实例。
         */
        let greeting2 = "Hello, world!"
        let index2 = greeting2.firstIndex(of: ",") ?? greeting2.endIndex
        let beginning = greeting2[..<index2]
        let newString2 = String(beginning)
        print(newString2)
        //子字符串并不适合长期保存——因为它们重用了原字符串的内存，只要这个字符串有子字符串在使用中，那么这个字符串就必须一直保存在内存里。
        /**
         greeting 是一个字符串，也就是说它拥有一块内存保存着组成这个字符串的字符。
         由于 beginning 是 greeting 的子字符串，它重用了 greeting 所用的内存。
         不同的是， newString 是字符串——当它从子字符串创建时，它就有了自己的内存。
         */
        
        /**
         字符串比较

         Swift 提供了三种方法来比较文本值：字符串和字符相等性，前缀相等性以及后缀相等性。
         字符串和字符相等使用“等于”运算符 ( ==) 和“不等”运算符 ( !=)进行检查.
         
         */
        let quotation2 = "We're a lot alike, you and I."
        let sameQuotation2 = "We're a lot alike, you and I."
        if quotation2 == sameQuotation2 {
            print("These two strings are considered equal")
        }
        
        /**
         前缀和后缀相等性
         
         要检查一个字符串是否拥有特定的字符串前缀或者后缀，调用字符串的 hasPrefix(_:)和 hasSuffix(_:)方法，它们两个都会接受一个 String 类型的实际参数并且返回一个布尔量值。
         */
        let romeoAndJuliet = [
            "Act 1 Scene 1: Verona, A public place",
            "Act 1 Scene 2: Capulet's mansion",
            "Act 1 Scene 3: A room in Capulet's mansion",
            "Act 1 Scene 4: A street outside Capulet's mansion",
            "Act 1 Scene 5: The Great Hall in Capulet's mansion",
            "Act 2 Scene 1: Outside Capulet's mansion",
            "Act 2 Scene 2: Capulet's orchard",
            "Act 2 Scene 3: Outside Friar Lawrence's cell",
            "Act 2 Scene 4: A street in Verona",
            "Act 2 Scene 5: Capulet's mansion",
            "Act 2 Scene 6: Friar Lawrence's cell"
        ]
        var act1SceneCount = 0
        for scene in romeoAndJuliet {
            if scene.hasPrefix("Act 1 ") {
                act1SceneCount += 1
            }
        }
        print("There are \(act1SceneCount) scenes in Act 1")
        
        var mansionCount = 0
        var cellCount = 0
        for scene in romeoAndJuliet {
            if scene.hasSuffix("Capulet's mansion") {
                mansionCount += 1
            } else if scene.hasSuffix("Friar Lawrence's cell") {
                cellCount += 1
            }
        }
        print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
        
        /**
         字符串的 Unicode 表示法
         
         当一个 Unicode 字符串写入文本文档或者其他储存里边的时候，这个字符串的 Unicode 标量会被编码为一个或者一系列 Unicode 定义的编码格式。
         每一种格式都把字符串编码成所谓码元的小块。
         这些包括 UTF-8 编码格式（它把字符串以8 码元编码），UTF-16 编码格式（它把字符串按照 16位 码元 编码），以及 UTF-32 编码格式（它把字符串以32位码元编码）。
         */
        let dogString = "Dog‼🐶"
        /**
         UTF-8 表示法

         你可以通过遍历 utf8属性来访问一个 String的 UTF-8 表示法。这个属性的类型是 String.UTF8View，它是非负8位（ UInt8）值，在字符串的 UTF-8 表示法中每一个字节的内容
         */
        for codeUnit in dogString.utf8 {
            print("\(codeUnit) ", terminator: "")
        }
        print("")
        
        /**
         UTF-16 表示法

         你可以通过遍历 utf16属性来访问 String的 UTF-16 表示法。这个属性的类型是String.UTF16View，它是非负 16位（ UInt16）值，在字符串 UTF-16 表示法中每一个 16位 的内容
         */
        for codeUnit in dogString.utf16 {
            print("\(codeUnit) ", terminator: "")
        }
        print("")
        
        print("-------------------------------------------字符和字符串完结------------------------------------------")
        
        /**
         集合类型
         Swift 提供了三种主要的集合类型，所谓的数组、合集还有字典，用来储存值的集合。
         数组是有序的值的集合。
         合集是唯一值的无序集合。
         字典是无序的键值对集合。
         */
        
        /**
         集合的可变性
         
         如果你创建一个数组、合集或者一个字典，并且赋值给一个变量，那么创建的集合就是可变的。
         这意味着你随后可以通过添加、移除、或者改变集合中的元素来改变（或者说异变）集合。
         如果你把数组、合集或者字典赋值给一个常量，则集合就成了不可变的，它的大小和内容都不能被改变。
         */
        
        /**
         数组
         
         数组以有序的方式来存储相同类型的值。
         相同类型的值可以在数组的不同地方多次出现。
         */
        
        /**
         创建一个空数组

         你可以使用确定类型通过初始化器语法来创建一个空数组.
         */
        var someInts = [Int]()
        someInts.append(3)
        print("someInts is of type [Int] with \(someInts.count) items.")
        someInts = []
        print("someInts is of type [Int] with \(someInts.count) items.")
        
        /**
         使用默认值创建数组

         Swift 的 Array类型提供了初始化器来创建确定大小且元素都设定为相同默认值的数组。你可以传给初始化器对应类型的默认值（叫做 repeating）和新数组元素的数量（叫做 count）
         */
        
        //var threeDoubles = Array(repeating: 0.0, count: 3)
        
        /**
         通过连接两个数组来创建数组
         
         你可以通过把两个兼容类型的现存数组用加运算符（ +）加在一起来创建一个新数组。新数组的类型将从你相加的数组里推断出来
         */
        //var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
        
        //var sixDoubles = threeDoubles + anotherThreeDoubles
        
        //print(sixDoubles)
        // sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
     
        /**
         使用数组字面量创建数组
         
         你同样可以使用数组字面量来初始化一个数组，它是一种以数组集合来写一个或者多个值的简写方式。
         */
        var shoppingList = ["Eggs", "Milk"]
        shoppingList.append("Oranges")
        print(shoppingList)
        
        /**
         访问和修改数组

         你可以通过数组的方法和属性来修改数组，或者使用下标脚本语法。
         要得出数组中元素的数量，检查只读的 count属性
         */
        print("The shopping list contains \(shoppingList.count) items.")
        
        //使用布尔量 isEmpty属性来作为检查 count属性是否等于 0的快捷方式
        if shoppingList.isEmpty {
            print("The shopping list is empty.")
        } else {
            print("The shopping list is not empty.")
        }
        //可以使用加赋值运算符 ( +=)来在数组末尾添加一个或者多个同类型元素
        shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
        print(shoppingList)
        
        //通过下标脚本语法来从数组当中取回一个值，在紧跟数组名后的方括号内传入你想要取回的值的索引
        var firstItem = shoppingList[0]
        print(firstItem)
        //你可以使用下标脚本语法来改变给定索引中已经存在的值
        shoppingList[0] = "Six eggs"
        //你同样可以使用下标脚本语法来一次改变一个范围的值，就算替换与范围长度不同的值的合集也行。
        shoppingList[4...5] = ["Bananas", "Apples"]
        firstItem = shoppingList[0];
        print(shoppingList)
        
        //要把元素插入到特定的索引位置，调用数组的 insert(_:at:)方法
        shoppingList.insert("Maple Syrup", at: 0)
        firstItem = shoppingList[0];
        print(firstItem)
        
        //你可以使用 remove(at:)方法来移除一个元素。这个方法移除特定索引的元素并且返回它
        let mapleSyrup = shoppingList.remove(at: 0)
        print(mapleSyrup)
        
        //如果你想要移除数组最后一个元素，使用 removeLast()方法而不是 remove(at:)方法以避免查询数组的 count属性。与 remove(at:)方法相同， removeLast()返回删除了的元素
        let apples = shoppingList.removeLast()
        print(apples)
        
        /**
         遍历一个数组
         
         可以用for-in 循环来遍历整个数组中值的合集
         */
        for item in shoppingList {
            print(item)
        }
        
        /**
         如果你需要每个元素以及值的整数索引，使用 enumerated()方法来遍历数组。
         enumerated()方法返回数组中每一个元素的元组，包含了这个元素的索引和值。
         */
        for (index , value) in shoppingList.enumerated() {
            print("Item \(index + 1):\(value)")
        }
        
        /**
         合集
         合集将同一类型且不重复的值无序的存储在一个集合当中。
         当元素的顺序不那么重要的时候你就可以使用合集来代替数组，或者你需要确保元素不会重复的时候。
         
         Set 类型的哈希值
         为了能让类型储存在合集当中，它必须是可哈希的——就是说类型必须提供计算它自身哈希值的方法。
         哈希值是Int值且所有的对比起来相等的对象都相同，比如 a == b，它遵循 a.hashValue == b.hashValue。
         Swift的基础类型：String、Int、Double、Bool 默认都是可哈希的，并且可以用于合集或者字典的键。
         */
        
        /**
         合集类型语法

         Swift 的合集类型写做 Set<Element>，这里的 Element是合集要储存的类型。不同与数组，合集没有等价的简写。
         
         创建并初始化一个空合集
         可以使用初始化器语法来创建一个确定类型的空合集
         */
        var letters = Set<Character>()
        print("letters is of type Set<Character> with \(letters.count) items.")
        //如果内容已经提供了类型信息，比如函数的实际参数或者已经分类的变量常量，你就可以用空的数组字面量来创建一个空合集.
        letters.insert("a")
        print(letters)
        letters = []
        print(letters)
        
        /**
         使用数组字面量创建合集
         你同样可以使用数组字面量来初始化一个合集，算是一种写一个或者多个合集值的快捷方式。
         */
        var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
        print(favoriteGenres)
        
        //访问和修改合集
        //你可以通过合集的方法和属性来访问和修改合集。
        print("I have \(favoriteGenres.count) favorite music genres.")
        
        //使用布尔量 isEmpty属性作为检查 count属性是否等于 0的快捷方式
        if favoriteGenres.isEmpty {
            print("As far as music goes, I'm not picky.")
        } else {
            print("I have particular music preferences.")
        }
        
        //你可通过调用 insert(_:)方法来添加一个新的元素到合集
        favoriteGenres.insert("Jazz")
        print(favoriteGenres)
        /**
         你可以通过调用合集的 remove(_:)方法来从合集当中移除一个元素，如果元素是合集的成员就移除它，并且返回移除的值，如果合集没有这个成员就返回 nil。
         另外，合集当中所有的元素可以用 removeAll()一次移除。
         */
        if let removedGenre = favoriteGenres.remove("Rock") {
            print("\(removedGenre)? I'm over it.")
        } else {
            print("I never much cared for that.")
        }
        
        //要检查合集是否包含了特定的元素，使用 contains(_:)方法。
        if favoriteGenres.contains("Funk") {
            print("I get up on the good foot.")
        } else {
            print("It's too funky in here.")
        }
        
        /*
         遍历合集
         在 for-in循环里遍历合集的值。
         Swift 的 Set类型是无序的。
         要以特定的顺序遍历合集的值，使用 sorted()方法，它把合集的元素作为使用 < 运算符排序了的数组返回。
         */
        for genre in favoriteGenres {
            print("\(genre)")
        }
        
        //特定的顺序遍历合集的值
        for genre in favoriteGenres.sorted() {
            print("\(genre)")
        }
        
        /**
         执行合集操作
         你可以高效地执行基本地合集操作，比如合并两个合集确定两个合集共有哪个值，或者确定两个合集是否包含所有、某些或没有相同的值。
         
         使用     intersection(_:)    方法来创建一个只包含两个合集共有值的新合集；
         使用     symmetricDifference(_:)     方法来创建一个只包含两个合集各自有的非共有值的新合集；
         使用     union(_:)       方法来创建一个包含两个合集所有值的新合集；
         使用     subtracting(_:)     方法来创建一个两个合集当中不包含某个合集值的新合集。
         */
        let oddDigits: Set = [1, 3, 5, 7, 9]
        let evenDigits: Set = [0, 2, 4, 6, 8]
        let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
        print(oddDigits.union(evenDigits).sorted())
        print(oddDigits.intersection(evenDigits).sorted())
        print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
        print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())
        
        /**
         合集成员关系和相等性
         使用“相等”运算符 ( == )来判断两个合集是否包含有相同的值；
         使用 isSubset(of:) 方法来确定一个合集的所有值是被某合集包含；
         使用 isSuperset(of:)方法来确定一个合集是否包含某个合集的所有值；
         使用 isStrictSubset(of:) 或者 isStrictSuperset(of:)方法来确定是个合集是否为某一个合集的子集或者超集，但并不相等；
         使用 isDisjoint(with:)方法来判断两个合集是否拥有完全不同的值。
         */
        let houseAnimals: Set = ["🐶", "🐱"]
        let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
        let cityAnimals: Set = ["🐦", "🐭"]
        print(houseAnimals.isSubset(of: farmAnimals))
        print(farmAnimals.isSuperset(of: houseAnimals))
        print(farmAnimals.isDisjoint(with: cityAnimals))
        
        /**
         字典
         字典存储无序的相互关联的同一类型的键和同一类型的值的集合。
         每个值都与唯一的键相关联，它就好像这个值的身份标记一样。
         不同于数组中的元素，字典中的元素没有特定的顺序。
         当你需要查找基于特定标记的值的时候使用字典，很类似现实生活中字典用来查找特定字的定义。
         
         字典类型简写语法

         Swift 的字典类型写全了是这样的： Dictionary<Key, Value>，其中的 Key是用来作为字典键的值类型， Value就是字典为这些键储存的值的类型。
         你同样可以用简写的形式来写字典的类型为 [Key: Value]。
         */
        var namesOfIntegers = [Int : String]()
        namesOfIntegers[16] = "sixteen"
        print(namesOfIntegers)
        //如果内容已经提供了信息，你就可以用字典字面量创建空字典了，它写做 [:]（在一对方括号里写一个冒号）
        namesOfIntegers = [:]
        print(namesOfIntegers)
        
        //用字典字面量创建字典
        //airports字典被声明为 [String: String]类型，它意思是“一个键和值都是 String的 Dictionary”。
        //var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
        var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
        print(airports)
        
        /**
         访问和修改字典
         你可以通过字典自身的方法和属性来访问和修改它，或者通过使用下标脚本语法。
         */
        print("The airports dictionary contains \(airports.count) items.")
        
        //使用布尔量 isEmpty属性作为检查 count属性是否等于 0的快捷方式
        if airports.isEmpty {
            print("The airports dictionary is empty.")
        } else {
            print("The airports dictionary is not empty.")
        }
        
        //你可以用下标脚本给字典添加新元素。使用正确类型的新键作为下标脚本的索引，然后赋值一个正确类型的值
        airports["LHR"] = "London"
        print(airports)
        //你同样可以使用下标脚本语法来改变特定键关联的值
        airports["LHR"] = "London Heathrow"
        print(airports)
        
        //updateValue(_:forKey:)方法会在键没有值的时候设置一个值，或者在键已经存在的时候更新它。
        //总之，不同于下标脚本， updateValue(_:forKey:)方法在执行更新之后返回旧的值。这允许你检查更新是否成功。
        if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
            print("The old value for DUB was \(oldValue).")
        }
        
        /**
         你同样可以使用下标脚本语法来从字典的特点键中取回值。
         由于可能请求的键没有值，字典的下标脚本返回可选的字典值类型。
         如果字典包含了请求的键的值，下标脚本就返回一个包含这个键的值的可选项。否则，下标脚本返回 nil
         */
        if let airportName = airports["DUB"] {
            print("The name of the airport is \(airportName).")
        } else {
            print("That airport is not in the airports dictionary.")
        }
        
        //可以使用下标脚本语法给一个键赋值 nil来从字典当中移除一个键值对
        airports["APL"] = "Apple International"
        print(airports)
//        let airportName = airports["APL"]
//        print(airportName)
        airports["APL"] = nil
        print(airports)
        
        //使用 removeValue(forKey:)来从字典里移除键值对。这个方法移除键值对如果他们存在的话，并且返回移除的值，如果值不存在则返回 nil
        if let removedValue = airports.removeValue(forKey: "DUB") {
            print("The removed airport's name is \(removedValue).")
        } else {
            print("The airports dictionary does not contain a value for DUB.")
        }
        
        /**
         遍历字典

         你可以用 for-in循环来遍历字典的键值对。字典中的每一个元素返回为 (key, value)元组，你可以解开元组成员到临时的常量或者变量作为遍历的一部分
         */
        for (airportCode, airportName) in airports {
            print("\(airportCode): \(airportName)")
        }
        //你同样可以通过访问字典的 keys和 values属性来取回可遍历的字典的键或值的集合
        //键
        for airportCode in airports.keys {
            print("Airport code: \(airportCode)")
        }
        //值
        for airportName in airports.values {
            print("Airport name: \(airportName)")
        }
        
        //如果你需要和接收 Array实例的 API 一起使用字典的键或值，就用 keys或 values属性来初始化一个新数组
        //Swift 的 Dictionary类型是无序的。要以特定的顺序遍历字典的键或值，使用键或值的 sorted()方法。
        let airportCodes = [String](airports.keys)
        let airportNames = [String](airports.values)
        print(airportCodes)
        print(airportNames)
        print("-------------------------------------------集合类型完结------------------------------------------")
        
        
        /**
         控制流
         */
        
        /**
         For-in 循环

         使用 for-in 循环来遍历序列，比如一个范围的数字，数组中的元素或者字符串中的字符。
         */
        let names2 = ["Anna", "Alex", "Brian", "Jack"]
        for name in names2 {
            print("Hello, \(name)!")
        }
        
        /**
         你同样可以遍历字典来访问它的键值对。当字典遍历时，
         每一个元素都返回一个 (key, value) 元组，你可以在 for-in 循环体中使用显式命名常量来分解 (key, value) 元组成员。
         这时，字典的键就分解到了叫做 animalName 的常量中，而字典的值被分解到了 legCount 的常量中
         */
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
        for (animalName, legCount) in numberOfLegs {
            print("\(animalName)s have \(legCount) legs")
        }
        
        /**
         Dictionary 中的元素没有必要安照它们写入的顺序遍历出来。
         Dictionary 的内容内在无序，并且不在取回遍历时保证有序。
         需要注意的是，你给 Dictionary 插入元素的次序并不能代表你遍历时候的顺序。
         */
        
        //同样能遍历数字区间
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        
        //如果你不需要序列的每一个值，你可以使用下划线来取代遍历名以忽略值。
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power {
            answer *= base
        }
        print("\(base) to the power of \(power) is \(answer)")
        
        //使用半开区间运算符（ ..< ）来包含最小值但不包含最大值。
        let minutes = 60
        for tickMark in 0..<minutes {
            print(tickMark)
        }
        
        //使用 stride(from:to:by:) 函数来跳过不想要的标记。
        let minuteInterval = 5
        for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
            print(tickMark)
        }
        
        //闭区间也同样适用，使用 stride(from:through:by:)
        let hours = 12
        let hourInterval = 3
        for tickMark in stride(from: 3, through: hours, by: hourInterval) {
            print(tickMark)
        }
        
        
        /**
         While 循环

         while 循环执行一个合集的语句直到条件变成 false 。这种循环最好在第一次循环之后还有未知数量的遍历时使用。Swift 提供了两种 while 循环：
         while 在每次循环开始的时候计算它自己的条件；
         repeat-while 在每次循环结束的时候计算它自己的条件。

         */
        
        /**
         Repeat-While
         while 循环的另一种形式，就是所谓的 repeat-while 循环，在判断循环条件之前会执行一次循环代码块。然后会继续重复循环直到条件为 false 。
         */
        
        /**
         条件语句

         很多时候根据特定的条件来执行不同的代码是很有用的。
         你可能想要在错误发生时运行额外的代码，或者当值变得太高或者太低的时候显示一条信息。
         要达成这个目的，你可以让你的那部分代码有条件地执行。
         */
        
        /**
         If

         最简单的形式中， if 语句有着一个单一的 if 条件。它只会在条件为 true 的情况下才会执行语句的集合.
         */
        var temperatureInFahrenheit = 30
        if temperatureInFahrenheit <= 32 {
            print("It's very cold. Consider wearing a scarf.")
        }
        
        temperatureInFahrenheit = 40
        if temperatureInFahrenheit <= 32 {
            //print("It's very cold. Consider wearing a scarf.")
        } else {
            print("It's not that cold. Wear a t-shirt.")
        }
        
        temperatureInFahrenheit = 90
        if temperatureInFahrenheit <= 32 {
            //print("It's very cold. Consider wearing a scarf.")
        } else if temperatureInFahrenheit >= 86 {
            print("It's really warm. Don't forget to wear sunscreen.")
        } else {
            //print("It's not that cold. Wear a t-shirt.")
        }
        
        temperatureInFahrenheit = 72
        if temperatureInFahrenheit <= 32 {
            //print("It's very cold. Consider wearing a scarf.")
        } else if temperatureInFahrenheit >= 86 {
            //print("It's really warm. Don't forget to wear sunscreen.")
        }
        
        /**
         Switch
         */
        let someCharacter: Character = "z"
        switch someCharacter {
        case "a":
            print("The first letter of the alphabet")
        case "z":
            print("The last letter of the alphabet")
        default:
            print("Some other character")
        }
        
        /**
         没有隐式贯穿

         相比 C 和 Objective-C 里的 switch 语句来说，Swift 里的 switch 语句不会默认从每个情况的末尾贯穿到下一个情况里。
         相反，整个 switch 语句会在匹配到第一个 switch 情况执行完毕之后退出，不再需要显式的 break 语句。
         这使得 switch 语句比 C 的更安全和易用，并且避免了意外地执行多个 switch 情况。
         
         与 C 中的 switch 语句不同，这个 switch 语句没有同时匹配 ”a” 和 ”A” 。相反它会导致一个编译时错误 case “a”:没有包含任何可执行语句 。这可以避免意外地从一个情况贯穿到另一个情况中，并且让代码更加安全和易读。
         
         在一个 switch 情况中匹配多个值可以用逗号分隔，并且可以写成多行，如果列表太长的话
         */
        let anotherCharacter: Character = "a"
        switch anotherCharacter {
        case "a", "A":
            print("The letter A")
        default:
            print("Not the letter A")
        }
        
        /**
         区间匹配
         switch情况的值可以在一个区间中匹配。
         */
        let approximateCount = 62
        let countedThings = "moons orbiting Saturn"
        var naturalCount: String
        switch approximateCount {
        case 1..<5:
            naturalCount = "a few"
        case 5..<12:
            naturalCount = "several"
        case 12..<100:
            naturalCount = "dozens of"
        case 100..<1000:
            naturalCount = "hundreds of"
        default:
            naturalCount = "many"
        }
        print("There are \(naturalCount) \(countedThings).")
        
        /**
         元组
         你可以使用元组来在一个 switch 语句中测试多个值。每个元组中的元素都可以与不同的值或者区间进行匹配。
         另外，使用下划线（ _）来表明匹配所有可能的值。
         */
        /*
        let somePoint = (1, 1)
        switch somePoint {
        case (0, 0):
            print("(0, 0) is at the origin")
        case (_, 0):
            print("(\(somePoint.0), 0) is on the x-axis")
        case (0, _):
            print("(0, \(somePoint.1)) is on the y-axis")
        case (-2...2, -2...2):
            print("(\(somePoint.0), \(somePoint.1)) is inside the box")
        default:
            print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
        }
        */
        
        /**
         值绑定
         switch 情况可以将匹配到的值临时绑定为一个常量或者变量，来给情况的函数体使用。
         这就是所谓的值绑定，因为值是在情况的函数体里“绑定”到临时的常量或者变量的
         */
        /*
        let anotherPoint = (2, 0)
        switch anotherPoint {
        case (let x, 0):
            print("on the x-axis with an x value of \(x)")
        case (0, let y):
            print("on the y-axis with a y value of \(y)")
        case let (x, y):
            print("somewhere else at (\(x), \(y))")
        }
        */
        
        //Where  switch 情况可以使用 where分句来检查额外的情况。
        /*
        let yetAnotherPoint = (1, -1)
        switch yetAnotherPoint {
        case let (x, y) where x == y:
            print("(\(x), \(y)) is on the line x == y")
        case let (x, y) where x == -y:
            print("(\(x), \(y)) is on the line x == -y")
        case let (x, y):
            print("(\(x), \(y)) is just some arbitrary point")
        }
        */
        
        /**
         复合情况
         多个 switch 共享同一个函数体的多个情况可以在 case 后写多个模式来复合，在每个模式之间用逗号分隔。
         如果任何一个模式匹配了，那么这个情况都会被认为是匹配的。
         如果模式太长，可以把它们写成多行
         */
        
        let someCharacter2: Character = "e"
        switch someCharacter2 {
        case "a", "e", "i", "o", "u":
            print("\(someCharacter2) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
             "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            print("\(someCharacter2) is a consonant")
        default:
            print("\(someCharacter2) is not a vowel or a consonant")
        }
        
        /**
         控制转移语句

         控制转移语句在你代码执行期间改变代码的执行顺序，通过从一段代码转移控制到另一段。Swift 拥有五种控制转移语句：

         continue

         break

         fallthrough

         return

         throw
         */
        
        /**
         Continue

         continue 语句告诉循环停止正在做的事情并且再次从头开始循环的下一次遍历。
         它是说“我不再继续当前的循环遍历了”而不是离开整个的循环。
         */
        let puzzleInput = "great minds think alike"
        var puzzleOutput = ""
        let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
        for character in puzzleInput {
            if charactersToRemove.contains(character) {
                continue
            } else {
                puzzleOutput.append(character)
            }
        }
        print(puzzleOutput)
        
       
        /**
         Break

         break 语句会立即结束整个控制流语句。
         当你想要提前结束 switch 或者循环语句或者其他情况时可以在 switch 语句或者循环语句中使用 break 语句。
         
         循环语句中的 Break

         当在循环语句中使用时， break 会立即结束循环的执行，并且转移控制到循环结束花括号（ } ）后的第一行代码上。当前遍历循环里的其他代码都不会被执行，并且余下的遍历循环也不会开始了。

         Switch 语句里的 Break

         当在switch语句里使用时， break 导致 switch 语句立即结束它的执行，并且转移控制到 switch 语句结束花括号（ } ）之后的第一行代码上。
         */
        let numberSymbol: Character = "三"  // Simplified Chinese for the number 3
        var possibleIntegerValue: Int?
        switch numberSymbol {
        case "1", "١", "一", "๑":
            possibleIntegerValue = 1
        case "2", "٢", "二", "๒":
            possibleIntegerValue = 2
        case "3", "٣", "三", "๓":
            possibleIntegerValue = 3
        case "4", "٤", "四", "๔":
            possibleIntegerValue = 4
        default:
            break
        }
        if let integerValue = possibleIntegerValue {
            print("The integer value of \(numberSymbol) is \(integerValue).")
        } else {
            print("An integer value could not be found for \(numberSymbol).")
        }
        
        /**
         列举所有可能的 Character 值是不实际的，所以default情况就提供了一个匹配所有没有匹配到的字符的功能。
         这个 default 情况不需要执行任何动作，所以因此就写了一个 break 语句作为函数体。
         一旦 default 情况匹配到了， break 语句结束 switch 语句的执行，然后代码从 if let 语句继续执行。
         */
        
        /**
         Fallthrough

         Swift 中的 Switch 语句不会从每个情况的末尾贯穿到下一个情况中。相反，整个 switch 语句会在第一个匹配到的情况执行完毕之后就直接结束执行。
         比较而言，C 你在每一个 switch 情况末尾插入显式的 break 语句来阻止贯穿。
         避免默认贯穿意味着 Swift 的 switch 语句比 C 更加清晰和可预料，并且因此它们避免了意外执行多个 switch 情况。

         如果你确实需要 C 风格的贯穿行为，你可以选择在每个情况末尾使用 fallthrough 关键字。
         */
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2, 3, 5, 7, 11, 13, 17, 19:
            description += " a prime number, and also"
            fallthrough
        default:
            description += " an integer."
        }
        print(description)
        //使用 fallthrough 关键字来“贯穿到” default 情况。
        
        /**
         提前退出

         guard 语句，类似于 if 语句，基于布尔值表达式来执行语句。使用 guard 语句来要求一个条件必须是真才能执行 guard 之后的语句。与 if 语句不同， guard 语句总是有一个 else 分句—— else 分句里的代码会在条件不为真的时候执行。
         */
        
        
        func greet(person: [String: String]) {
            guard let name = person["name"] else {
                return
            }
            
            print("Hello \(name)!")
            
            guard let location = person["location"] else {
                print("I hope the weather is nice near you.")
                return
            }
            
            print("I hope the weather is nice in \(location).")
        }
        
        greet(person: ["name": "John"])
        greet(person: ["name": "Jane", "location": "Cupertino"])
        
        /**
         Swift 拥有内置的对 API 可用性的检查功能，它能够确保你不会悲剧地使用了对部属目标不可用的 API。

         编译器在 SDK 中使用可用性信息来确保在你项目中明确的 API 都是可用的。如果你尝试使用一个不可用的 API 的话，Swift 会在编译时报告一个错误。

         你可以在 if 或者 guard 语句中使用一个可用性条件来有条件地执行代码，基于在运行时你想用的哪个 API 是可用的。当验证在代码块中的 API 可用性时，编译器使用来自可用性条件里的信息来检查。
         
         */
        if #available(iOS 10, macOS 10.12, *) {
            // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
        } else {
            // Fall back to earlier iOS and macOS APIs
        }
        
        print("-------------------------------------------控制流完结------------------------------------------")
        
        /**
         函数
         
         函数是一个独立的代码块，用来执行特定的任务。
         通过给函数一个名字来定义它的功能，并且在需要的时候，通过这个名字来“调用”函数执行它的任务。
         
         Swift 中的每一个函数都有类型，由函数的形式参数类型和返回类型组成。
         你可以像 Swift中其他类型那样来使用它，
         这使得你能够方便的将一个函数当作一个形式参数传递到另外的一个函数中，也可以在一个函数中返回另一个函数。
         函数同时也可以写在其他函数内部来在内嵌范围封装有用的功能。
         
         */
        
        
        /**
         定义和调用函数
         当你定义了一个函数的时候，你可以选择定义一个或者多个命名的分类的值作为函数的输入（所谓的形式参数），
         并且/或者定义函数完成后将要传回作为输出的值的类型（所谓它的返回类型）。
         
         每一个函数都有一个函数名，它描述函数执行的任务。
         要使用一个函数，你可以通过“调用”函数的名字并且传入一个符合函数形式参数类型的输入值（所谓实际参数）来调用这个函数。给函数提供的实际参数的顺序必须符合函数的形式参数列表顺序。
         */
        func greet2(person: String) -> String {
            let greeting = "Hello," + person + "!"
            return greeting
        }
        print(greet2(person: "Tom"))
        print(greet2(person: "Brian"))
        
        func greetAgain(person: String) -> String {
            return "Hello again," + person + "!"
        }
        print(greetAgain(person: "Anna"))
        
        /**
         函数的形式参数和返回值
         swift中，函数的形式参数和返回值非常灵活。
         你可以定义从一个简单的只有一个未命名形式参数的工具函数到那种具有形象的参数名称和不同的形式参数选项的复杂函数之间的任何函数。
         */
        
        /**
         无形式参数的函数
         函数没有要求必须输入一个参数，这里有一个没有输入形式参数的函数，无论何时它被调用永远会返回相同的String信息
         */
        func sayHelloWorld() -> String {
            return "hello，world"
        }
        print(sayHelloWorld())
        //函数的定义仍需要在名字后边加一个圆括号，即使它不接受形式参数也得这样做。当函数被调用的时候也要在函数的名字后边加一个空的圆括号。
        
        /**
         多形式参数的函数

         函数可以输入多个形式参数，可以写在函数后边的圆括号内，用逗号分隔。
         */
        func greet3(person: String, alreadyGreeted: Bool) -> String {
            if alreadyGreeted {
                return greetAgain(person: person)
            } else {
                return greet2(person: person)
            }
        }
        print(greet3(person: "Tim", alreadyGreeted: true))
        
        /**
         无返回值的函数

         函数定义中没有要求必须有一个返回类型。下面是另一个版本的 greet(person:)函数，它将自己的 String值打印了出来而不是返回它。
         */
        func greet4(person: String) {
            print("Hello, \(person)!")
        }
        greet4(person: "Dave")
        //正因为它不需要返回值，函数在定义的时候就没有包含返回箭头（ ->）或者返回类型。
        
        //当函数被调用时，函数的返回值可以被忽略
        func printAndCount(string: String) -> Int {
            print(string)
            return string.count
        }
        func printWithoutCounting(string: String) {
            let _ = printAndCount(string: string)
        }
        
        print(printAndCount(string: "hello, world"))
        printWithoutCounting(string: "hello, world")
        
        /**
         多返回值的函数
         为了让函数返回多个值作为一个复合的返回值，你可以使用元组类型作为返回类型
         */
        
        func minMax(array: [Int]) -> (min: Int , max: Int) {
            var currentMin = array[0]
            var currentMax = array[0]
            for value in array[1..<array.count] {
                if value < currentMin {
                    currentMin = value
                } else if value > currentMax {
                    currentMax = value
                }
            }
            return (currentMin, currentMax)
        }
        let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
        print("min is \(bounds.min) and max is \(bounds.max)")
        
        //可选元组返回类型
        func minMax2(array: [Int]) -> (min: Int, max: Int)? {
            if array.isEmpty { return nil }
            var currentMin = array[0]
            var currentMax = array[0]
            for value in array[1..<array.count] {
                if value < currentMin {
                    currentMin = value
                } else if value > currentMax {
                    currentMax = value
                }
            }
            return (currentMin, currentMax)
        }
        if let bounds = minMax2(array: [8, -6, 2, 109, 3, 71]) {
            print("min is \(bounds.min) and max is \(bounds.max)")
        }
        
        
        /**
         隐式返回的函数

         如果整个函数体是一个单一表达式，那么函数隐式返回这个表达式
         */
        
        func greeting5(for person: String) -> String {
            "Hello, " + person + "!"
        }
        print(greeting5(for: "Dave"))
        
        func anotherGreeting5(for person: String) -> String {
            return "Hello, " + person + "!"
        }
        print(anotherGreeting5(for: "Dave"))
        //你写的任何只有一行 return 的函数都可以省略那个 return 。
        
        /**
         函数实际参数标签和形式参数名
         
         每一个函数的形式参数都包含实际参数标签和形式参数名。
         实际参数标签用在调用函数的时候
         在调用函数的时候每一个实际参数前边都要写实际参数标签。
         形式参数名用在函数的实现当中。
         默认情况下，形式参数使用它们的形式参数名作为实际参数标签。
         
         所有的形式参数必须有唯一的名字。尽管有可能多个形式参数拥有相同的实际参数标签，唯一的实际参数标签有助于让你的代码更加易读。
         
         */
        
        /**
         指定实际参数标签
         
         在提供形式参数名之前写实际参数标签，用空格分隔
         */
        func greet6(person: String, from hometown: String) -> String {
            return "Hello \(person)! Glad you could visit from \(hometown)"
        }
        print(greet6(person: "Bill", from: "Cupertino"))
        //实际参数标签的使用能够让函数的调用更加明确，更像是自然语句。同时还能提供更可读的函数体并更清晰地表达你的意图。
        
        
        /**
         省略实际参数标签

         如果对于函数的形式参数不想使用实际参数标签的话，可以利用下划线（ _ ）来为这个形式参数代替显式的实际参数标签。
         
         默认形式参数值

         你可以通过在形式参数类型后给形式参数赋一个值来给函数的任意形式参数定义一个默认值。如果定义了默认值，你就可以在调用函数时候省略这个形式参数。
         */
        
        /**
         可变形式参数

         一个可变形式参数可以接受零或者多个特定类型的值。当调用函数的时候你可以利用可变形式参数来声明形式参数可以被传入值的数量是可变的。可以通过在形式参数的类型名称后边插入三个点符号（ ...）来书写可变形式参数。
         */
        //计算一组任意长度的数字的算术平均值
        func arithmeticMean(_ numbers: Double...) -> Double {
            var total: Double = 0
            for number in numbers {
                total += number
            }
            return total / Double(numbers.count)
        }
        print(arithmeticMean(1,2,3,4,5))
        print(arithmeticMean(3, 8.25, 18.75))
        //一个函数最多只能有一个可变形式参数。
        
        /**
         输入输出形式参数

         就像上面描述的，可变形式参数只能在函数的内部做改变。如果你想函数能够修改一个形式参数的值，而且你想这些改变在函数结束之后依然生效，那么就需要将形式参数定义为输入输出形式参数。
         
         在形式参数定义开始的时候在前边添加一个 inout关键字可以定义一个输入输出形式参数。输入输出形式参数有一个能输入给函数的值，函数能对其进行修改，还能输出到函数外边替换原来的值。
         
         你只能把变量作为输入输出形式参数的实际参数。你不能用常量或者字面量作为实际参数，因为常量和字面量不能修改。在将变量作为实际参数传递给输入输出形式参数的时候，直接在它前边添加一个和符号 ( &) 来明确可以被函数修改。
         */
        func swapTwoInts(_ a: inout Int, _ b: inout Int) {
            let temporaryA = a
            a = b
            b = temporaryA
        }
        
        var someInt = 3
        var anotherInt = 107
        swapTwoInts(&someInt, &anotherInt)
        print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
        
        /**
         函数类型
         每一个函数都有一个特定的函数类型，它由形式参数类型，返回类型组成。
         */
        func addTwoInts(_ a: Int, _ b: Int) -> Int {
            return a + b
        }
        func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
            return a * b
        }
        //两个函数的类型都是 (Int, Int) -> Int
        //有两个形式参数的函数类型，它们都是Int类型，并且返回一个Int类型的值。
        
        func printHelloWorld() {
            print("hello, world")
        }
        //这个函数的类型是 () -> Void，或者 “一个没有形式参数的函数，返回 Void。”
        
        /**
         使用函数类型
         你可以像使用 Swift 中的其他类型一样使用函数类型。例如，你可以给一个常量或变量定义一个函数类型，并且为变量指定一个相应的函数。
         */
        var mathFunction: (Int, Int) -> Int = addTwoInts
        //定义一个叫做 mathFunction的变量，它的类型是‘一个能接受两个 Int值的函数，并返回一个 Int值。’将这个新的变量指向 addTwoInts函数。
        print("Result: \(mathFunction(2, 3))")
        //不同的函数如果有相同的匹配的类型的话，就可以指定相同的变量，和非函数的类型一样
        mathFunction = multiplyTwoInts
        print("Result: \(mathFunction(2,3))")
        
        /**
         函数类型作为形式参数类型
         可以利用使用一个函数的类型例如 (Int, Int) -> Int作为其他函数的形式参数类型。
         这允许你预留函数的部分实现从而让函数的调用者在调用函数的时候提供。
         */
        func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
            print("Result: \(mathFunction(a, b))")
        }
        printMathResult(addTwoInts, 3, 5)
        /**
         这个栗子定义了一个叫做 printMathResult(_:_:_:)的函数，它有三个形式参数。第一个形式参数叫做 mathFunction，类型是 (Int, Int) -> Int。你可以传入任何这个类型的函数作为第一个形式参数的实例参数。第二个和第三个形式参数叫做 a和 b，它们都是 Int类型。它们被用作提供的数学函数的两个传入值。
         */
        
        /**
         函数类型作为返回类型
         可以利用函数的类型作为另一个函数的返回类型。
         写法是在函数的返回箭头（ ->）后立即写一个完整的函数类型。
         */
        func stepForward(_ input: Int) -> Int {
            return input + 1
        }
        
        func stepBackward(_ input: Int) -> Int {
            return input - 1
        }
        
        //有一个函数 chooseStepFunction(backward:)，它的返回类型是“一个函数的类型 (Int) -> Int”
        func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
            return backwards ? stepBackward : stepForward
        }
        var currentValue = 3
        let moveNearerToZero = chooseStepFunction(backwards: currentValue > 0)
        print("Counting to zero:")
        while currentValue != 0 {
            print("\(currentValue)... ")
            currentValue = moveNearerToZero(currentValue)
        }
        print("zero!")
        
        /**
         内嵌函数
         在本章遇到的所有函数都是全局函数，都是在全局的范围内进行定义的。
         可以在函数内部定义另外一个函数，这就是内嵌函数。
         内嵌函数在默认情况下在外部是被隐藏起来的，但却仍然可以通过包裹它们的函数来调用它们。
         包裹的函数也可以返回它内部的一个内嵌函数来在另外的范围里使用。
         */
        func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
            func stepForward(input: Int) -> Int { return input + 1 }
            func stepBackward(input: Int) -> Int { return input - 1 }
            return backward ? stepBackward : stepForward
        }
        var currentValue2 = -4
        let moveNearerToZero2 = chooseStepFunction2(backward: currentValue > 0)
        while currentValue2 != 0 {
            print("\(currentValue2)... ")
            currentValue2 = moveNearerToZero2(currentValue2)
        }
        print("zero!")
        print("-------------------------------------------函数完结------------------------------------------")
        
        /**
         闭包是可以在你的代码中被传递和引用的功能性独立代码块。
         Swift 中的闭包和 C  以及 Objective-C 中的 blocks 很像，还有其他语言中的匿名函数也类似。
         
         闭包能够捕获和存储定义在其上下文中的任何常量和变量的引用，就是所谓的闭合并包裹那些常量和变量，因此被称为“闭包”
         swift能够为你处理所有关于捕获的内存管理的操作。
         */
        
        /**
         全局函数是一个有名字但不会捕获任何值的闭包；
         内嵌函数是一个有名字且能从其上层函数捕获值的闭包；
         闭包表达式是一个轻量级语法所写的可以捕获其上下文中常量或变量值的没有名字的闭包。
         Swift 的闭包表达式拥有简洁的风格，鼓励在常见场景中实现简洁，无累赘的语法。常见的优化包括：

         利用上下文推断形式参数和返回值的类型；
         单表达式的闭包可以隐式返回；
         简写实际参数名；
         尾随闭包语法。
         */
        
        /**
         闭包表达式
         闭包表达式是一种在简短行内就能写完闭包的语法。闭包表达式为了缩减书写长度又不失易读明晰而提供了一系列的语法优化。
         */
        let names4 = ["Chris","Alex","Ewa","Barry","Daniella"]
        func backward(_ s1: String, _ s2: String) -> Bool {
            return s1 > s2
        }
        var reversedNames = names4.sorted(by: backward)
        reversedNames .append("Tony")
        print(reversedNames)
        
        /**
         闭包表达式语法
         { (parameters) -> (return type) in
           statements
         }
         闭包表达式语法能够使用常量形式参数、变量形式参数和输入输出形式参数，但不能提供默认值。
         可变形式参数也能使用，但需要在形式参数列表的最后面使用。元组也可被用来作为形式参数和返回类型。
         
         从语境中推断类型
         由于排序闭包为实际参数来传递给方法，Swift 就能推断它的形式参数类型和返回类型。
         */
        
        /**
         尾随闭包
         如果你需要将一个很长的闭包表达式作为函数最后一个实际参数传递给函数，使用尾随闭包将增强函数的可读性。
         尾随闭包是一个被书写在函数形式参数的括号外面（后面）的闭包表达式
         */
        let digitNames = [
            0: "Zero",1: "One",2: "Two",  3: "Three",4: "Four",
            5: "Five",6: "Six",7: "Seven",8: "Eight",9: "Nine"
         ]
        
        let numbers = [16,58,510]
        
        let strings = numbers.map {
            (number) -> String in
            var number = number
            var output = ""
            repeat {
                output = digitNames[number % 10]! + output
                number /= 10
            } while number > 0
            
            return output
        }
        print(strings)
        
        /**
         捕获值
         一个闭包能够从上下文捕获已被定义的常量和变量。
         即使定义这些常量和变量的原作用域已经不存在，闭包仍能够在其函数体内引用和修改这些值。
         在 Swift 中，一个能够捕获值的闭包最简单的模型是内嵌函数，即被书写在另一个函数的内部。
         一个内嵌函数能够捕获外部函数的实际参数并且能够捕获任何在外部函数的内部定义了的常量与变量。
         */
        
        func makeIncrementer(forIncrement amount: Int) -> () -> Int {
            var runningTotal = 0
            func incrementer() -> Int {
                runningTotal += amount
                return runningTotal
            }
            return incrementer
        }
        /**
         incrementer() 函数是没有任何形式参数， runningTotal 和 amount 不是来自于函数体的内部，而是通过捕获主函数的 runningTotal 和 amount 把它们内嵌在自身函数内部供使用。
         当调用 makeIncrementer  结束时通过引用捕获来确保不会消失，并确保了在下次再次调用 incrementer 时， runningTotal 将继续增加。
         */
        let incrementByTen = makeIncrementer(forIncrement: 10)
        print(incrementByTen())
        print(incrementByTen())
        print(incrementByTen())
        
        //如果你建立了第二个 incrementer ,它将会有一个新的、独立的 runningTotal 变量的引用
        let incrementBySeven = makeIncrementer(forIncrement: 7)
        print(incrementBySeven())
        
        //再次调用原来增量器 ( incrementByTen )  继续增加它自己的变量 runningTotal 的值，并且不会影响 incrementBySeven 捕获的变量 runningTotal 值
        print(incrementByTen())
        
        /**
         闭包是引用类型
         在上面例子中， incrementBySeven 和 incrementByTen 是常量，但是这些常量指向的闭包仍可以增加已捕获的变量 runningTotal 的值。
         这是因为函数和闭包都是引用类型。
         无论你什么时候赋值一个函数或者闭包给常量或者变量，你实际上都是将常量和变量设置为对函数和闭包的引用。
         
         这也意味着你赋值一个闭包到两个不同的常量或变量中，这两个常量或变量都将指向相同的闭包。
         */
        let alsoIncrementByTen = incrementByTen
        print(alsoIncrementByTen())
        
        /**
         逃逸闭包
         当闭包作为一个实际参数传递给一个函数的时候，我们就说这个闭包逃逸了，因为它是在函数返回之后调用的。
         当你声明一个接受闭包作为形式参数的函数时，你可以在形式参数前写 @escaping 来明确闭包是允许逃逸的。
         */
        
        /**
             func someFunctionWithNonescapingClosure(closure: () -> Void) {
                 closure()
             }
              
             class SomeClass {
                 var x = 10
                 func doSomething() {
                     someFunctionWithEscapingClosure { self.x = 100 }
                     someFunctionWithNonescapingClosure { x = 200 }
                 }
             }
              
             let instance = SomeClass()
             instance.doSomething()
             print(instance.x)
             // Prints "200"
              
             completionHandlers.first?()
             print(instance.x)
             // Prints "100"
         */
        
        /**
         自动闭包
         自动闭包是一种自动创建的用来把作为实际参数传递给函数的表达式打包的闭包。它不接受任何实际参数，并且当它被调用时，它会返回内部打包的表达式的值。
         这个语法的好处在于通过写普通表达式代替显式闭包而使你省略包围函数形式参数的括号。
         自动闭包允许你延迟处理，因此闭包内部的代码直到你调用它的时候才会运行。
         对于有副作用或者占用资源的代码来说很有用，因为它可以允许你控制代码何时才进行求值。
         */
        var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        print(customersInLine.count)
        // Prints "5"
         
        let customerProvider = { customersInLine.remove(at: 0) }
        print(customersInLine.count)
        // Prints "5"
         
        print("Now serving \(customerProvider())!")
        // Prints "Now serving Chris!"
        print(customersInLine.count)
        // Prints "4"
        
        print("-------------------------------------------闭包完结------------------------------------------")
        
        /**
         枚举
         枚举为一组相关值定义了一个通用类型，从而可以让你在代码中类型安全地操作这些值。
         
         枚举语法
         可以用 enum关键字来定义一个枚举，然后将其所有的定义内容放在一个大括号（ {}）中
         */
        
        enum CompassPoint {
            case north
            case south
            case east
            case west
        }
        
        enum Planet {
            case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
        }
        
        var directionToHead = CompassPoint.west
        directionToHead = .east
        print(directionToHead)
        
        /**
         使用 Switch 语句来匹配枚举值
         */
//        directionToHead = .south
//        switch directionToHead {
//        case .north:
//            print("Lots of planets have a north")
//        case .south:
//            print("Watch out for penguins")
//        case .east:
//            print("Where the sun rises")
//        case .west:
//            print("Where the skies are blue")
//        }
        
        /**
         如果不能为所有枚举成员都提供一个 case，那你也可以提供一个 default情况来包含那些不能被明确写出的成员
         */
//        let somePlanet = Planet.earth
//        switch somePlanet {
//        case .earth:
//            print("Mostly harmless")
//        default:
//            print("Not a safe place for humans")
//        }
        
        /**
         遍历枚举情况（case）
         */
        enum Beverage: CaseIterable {
            case coffee, tea, juice
        }
        let numberOfChoices = Beverage.allCases.count
        print("\(numberOfChoices) beverages available")
        
        for beverage in Beverage.allCases {
            print(beverage)
        }
        
        /**
         原始值
         */
        enum ASCIIControlCharacter: Character {
            case tab = "\t"
            case lineFeed = "\n"
            case carriageReturn = "\r"
        }
        
        /**
        隐式指定的原始值
        当你在操作存储整数或字符串原始值枚举的时候，你不必显式地给每一个成员都分配一个原始值。当你没有分配时，Swift 将会自动为你分配值。
        实际上，当整数值被用于作为原始值时，每成员的隐式值都比前一个大一。如果第一个成员没有值，那么它的值是 0 。
         */
        
        /**
         递归枚举
         递归枚举是拥有另一个枚举作为枚举成员关联值的枚举。当编译器操作递归枚举时必须插入间接寻址层。你可以在声明枚举成员之前使用 indirect关键字来明确它是递归的。
         */
        
        print("-------------------------------------------枚举完结------------------------------------------")
        
       /**
         类和结构体
         类和结构体是一种多功能且灵活的构造体，通过使用与现存常量、变量、函数完全相同的语法来在类和结构体当中定义属性和方法以添加功能。
         在swift中，你在一个文件中定义一个类或者结构体，则系统将会自动生成面向其他代码的外部接口。
         */
        
        /**
         定义属性用来存储值；
         定义方法用于提供功能；
         定义下标脚本用来允许使用下标语法访问值；
         定义初始化器用于初始化状态；
         可以被扩展来默认所没有的功能；
         遵循协议来针对特定类型提供标准功能。
         
         类有而结构体没有的额外功能
         继承允许一个类继承另一个类的特征;
         类型转换允许你在运行检查和解释一个类实例的类型；
         反初始化器允许一个类实例释放任何其所被分配的资源；
         引用计数允许不止一个对类实例的引用。
         
         */
        
        /**
         定义语法
         类与结构体有着相似的定义语法，你可以通过使用关键词 class来定义类使用 struct来定义结构体。并在一对大括号内定义它们的具体内容。
         */
        
        /**
         类与结构体实例
         Resolution结构体的定义和 VideoMode类的定义仅仅描述了什么是 Resolution或 VideoMode。它们自己并没有描述一个特定的分辨率或视频 模式。对此，你需要创建一个结构体或类的实例。
         
         结构体和类两者都能使用初始化器语法来生成新的实例。
         初始化器语法最简单的是在类或结构体名字后面接一个空的圆括号，例如 Resolution()或者 VideoMode()。
         这样就创建了一个新的类或者结构体的实例，任何属性都被初始化为它们的默认值。
         */
        
        let someResolution = Resolution()
        let someVideoMode = VideoMode()
        
        /**
         访问属性
         你可以用点语法来访问一个实例的属性。在点语法中，你只需在实例名后面书写属性名，用( .)来分开，无需空格
         */
        print("The width of someResolution is \(someResolution.width)")
        
        //你可以继续下去来访问子属性，如 VideoMode中 resolution属性中的 width属性
        print("The width of someVideoMode is \(someVideoMode.resolution.width)")
        
        //你亦可以用点语法来指定一个新值到一个变量属性中
        someVideoMode.resolution.width = 1280
        print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
        
        /**
         结构体类型的成员初始化器
         所有的结构体都有一个自动生成的成员初始化器，你可以使用它来初始化新结构体实例的成员属性。
         新实例属性的初始化值可以通过属性名称传递到成员初始化器中。
         */
        let vga = Resolution(width: 640, height: 480)
        print(vga)
        
        /**
         结构体和枚举是值类型
         值类型是一种当它被指定到常量或者变量，或者被传递给函数时会被拷贝的类型。
         其实，在之前的章节中我们已经大量使用了值类型。
         实际上，Swift 中所有的基本类型——整数，浮点数，布尔量，字符串，数组和字典——都是值类型，并且都以结构体的形式在后台实现。
         Swift 中所有的结构体和枚举都是值类型，这意味着你所创建的任何结构体和枚举实例和实例作为属性所包含的任意值类型——在代码传递中总是被拷贝的。
         */
        let hd = Resolution(width: 1920, height: 1080)
        var cinema = hd
        cinema.width = 2048
        print("cinema is now \(cinema.width) pixels wide")
        print("hd is still \(hd.width) pixels wide")
        
        //行为规则同样适用于枚举
        enum CompassPoint2 {
            case North, South, East, West
        }
        var currentDirection = CompassPoint2.West
        let rememberedDirection = currentDirection
        currentDirection = .East
        if rememberedDirection == .West {
            print("The remembered direction is still .West")
        }
        //发生了值拷贝，是完全不同的两个实例，互不影响。
        
        /**
         类是引用类型
         不同于值类型，在引用类型被赋值到一个常量，变量或者本身被传递到一个函数的时候它是不会被拷贝的。
         相当于拷贝，这里使用的是同一个对现存实例的引用。
         */
        let tenEighty = VideoMode()
        tenEighty.resolution = hd
        tenEighty.interlaced = true
        tenEighty.name = "1080i"
        tenEighty.frameRate = 25.0
        
        let alsoTenEighty = tenEighty
        alsoTenEighty.frameRate = 30.0
        
        //因为类是引用类型， tenEighty 和 alsoTenEighty其实都是引用了相同的 VideoMode实例。实际上，它们只是相同实例的两个不同命名罢了。
        print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
        
        /**
         注意 tenEighty和 alsoTenEighty都被声明为常量。
         然而，你仍然能改变 tenEighty.frameRate和 alsoTenEighty.frameRate因为 tenEighty和 alsoTenEighty常量本身的值不会改变。
         tenEighty和 alsoTenEighty本身是并没有存储 VideoMode实例—相反，它们两者都在后台指向了 VideoMode实例。
         这是 VideoMode的 frameRate参数在改变而不是引用 VideoMode的常量的值在改变。
         */
        
        /**
         特征运算符
         因为类是引用类型，在后台有可能有很多常量和变量都是引用到了同一个类的实例。(相同这词对结构体和枚举来说并不是真的相同，因为它们在赋予给常量，变量或者被传递给一个函数时总是被拷贝过去的。)
         有时候找出两个常量或者变量是否引用自同一个类实例非常有用，为了允许这样，Swift提供了两个特点运算符：
         相同于 ( ===)
         不相同于( !==)
         */
        //利用这两个恒等运算符来检查两个常量或者变量是否引用相同的实例
        if tenEighty === alsoTenEighty {
            print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
        }
        /**
         “相同于”意味着两个类类型常量或者变量引用自相同的实例；
         “等于”意味着两个实例的在值上被视作“相等”或者“等价”，某种意义上的“相等”，就如同类设计者定义的那样。
         */
        
        /**
         指针
         使用指针来引用内存中的地址。
         
         */
        
        /**
         类和结构体之间的选择
         类和结构体都可以用来定义自定义的数据类型，作为你的程序代码构建块。

         总之，结构体实例总是通过值来传递，而类实例总是通过引用来传递。这意味着他们分别适用于不同类型的任务。当你考虑你的工程项目中数据结构和功能的时候，你需要决定把每个数据结构定义成类还是结构体。

         按照通用准则，当符合以下一条或多条情形时应考虑创建一个结构体：

         结构体的主要目的是为了封装一些相关的简单数据值；
         当你在赋予或者传递结构实例时，有理由需要封装的数据值被拷贝而不是引用；
         任何存储在结构体中的属性是值类型，也将被拷贝而不是被引用；
         结构体不需要从一个已存在类型继承属性或者行为。
         */
        
        /**
         字符串，数组和字典的赋值与拷贝行为

         Swift 的 String , Array 和 Dictionary类型是作为结构体来实现的，这意味着字符串，数组和字典在它们被赋值到一个新的常量或者变量，
         亦或者它们本身被传递到一个函数或方法中的时候，其实是传递了拷贝。

         这种行为不同于基础库中的 NSString, NSArray和 NSDictionary，它们是作为类来实现的，而不是结构体。 NSString , NSArray 和 NSDictionary实例总是作为一个已存在实例的引用而不是拷贝来赋值和传递。
         */
        print("-------------------------------------------类和结构体完结------------------------------------------")
        
        /**
         属性
         属性可以将值与特定的类、结构体或者是枚举联系起来。
         存储属性会存储常量或变量作为实例的一部分，反之计算属性会计算值。
         计算竖向可以由类、结构体和枚举定义。
         存储属性只能由类和结构体定义。
         
         存储属性和计算属性通常和特定类型的实例相关联。总之，属性也可以与类型本身相关联。这种属性就是所谓的类型属性。
         另外，你也可以定义属性观察器来检查属性中值的变化，这样你就可以用自定义的行为来响应。
         属性观察器可以被添加到你自己定义的存储属性中，也可以添加到子类从他的父类那里所继承来的属性中。
         */
        
        /**
         存储属性
         存储属性是一个座位特定类和结构体实例一部分的常量或变量。
         变量存储属性
         常量存储属性
         */
        struct FixedLengthRange {
            var firstValue: Int
            let length: Int
        }
        var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
        rangeOfThreeItems.firstValue = 6
        print(rangeOfThreeItems.length)
        
        /**
         常量结构体实例的存储属性
         如果你创建了一个结构体的实例并且把这个实例赋给常量，你不能修改这个实例的属性，即使是声明为变量的属性
         */
        
        /*
        let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
        rangeOfFourItems.firstValue = 6
        */
        
        /*
         由于 rangeOfFourItems 被声明为常量（用 let 关键字），我们不能改变其 firstValue 属性，即使 firstValue 是一个变量属性。
         这是由于结构体是值类型。当一个值类型的实例被标记为常量时，该实例的其他属性也均为常量。
         对于类来说则不同，它是引用类型。如果你给一个常量赋值引用类型实例，你仍然可以修改那个实例的变量属性。
         */
        
        /*
         延迟存储属性
         延迟存储属性的初始值在其第一次使用时才进行计算。你可以通过在其声明前标注 lazy 修饰语来表示一个延迟存储属性。
         */
        let manager = DataManager()
        manager.data.append("Some data")
        manager.data.append("Some more data")
        print(manager.importer.fileName)
        //因为它被 lazy 修饰符所标记，只有在 importer 属性第一次被访问时才会创建 DataImporter 实例.
        
        /*
         计算属性
         除了存储属性，类、结构体和枚举也能够定义计算属性，而它实际并不存储值。
         相反，他们提供一个读取器和一个可选的设置器来间接得到和设置其他的属性和值。
         */
        
        /*
         属性观察者
         属性观察者会观察并对属性值的变化做出回应。
         每当一个属性的值被设置时，属性观察者都会被调用，即使这个值与该属性当前的值相同。
         
         willSet 会在该值被存储之前被调用。
         didSet 会在一个新值被存储后被调用。
         
         如果你实现了一个 willSet 观察者，新的属性值会以常量形式参数传递。
         你可以在你的 willSet 实现中为这个参数定义名字。
         如果你没有为它命名，那么它会使用默认的名字 newValue 。
         
         同样，如果你实现了一个 didSet观察者，一个包含旧属性值的常量形式参数将会被传递。
         你可以为它命名，也可以使用默认的形式参数名 oldValue 。
         如果你在属性自己的 didSet 观察者里给自己赋值，你赋值的新值就会取代刚刚设置的值。
         */
        let stepCounter = StepCounter()
        stepCounter.totalSteps = 200
        stepCounter.totalSteps = 360
        stepCounter.totalSteps = 896
        
        /*
         属性包装
         属性包装给代码之间添加了一层分离层，它用来管理属性如何存储数据以及代码如何定义属性。

         */
        
        /*
         全局和局部变量
         全局变量是定义在任何函数、方法、闭包或者类型环境之外的变量。
         局部变量是定义在函数、方法或者闭包环境之中的变量。
         */
        
        /*
         类型属性
         实例属性是属于特定类型实例的属性。
         每次你创建这个类型的新实例，它就拥有一堆属性值，与其他实例不同。
         
         你同样可以定义属于类型本身的属性，不是这个类型的某一个实例的属性。
         这个属性只有一个拷贝，无论你创建了多少个类对应的实例。
         这样的属性叫做类型属性。
         
         类型属性在定义那些对特定类型的所有实例都通用的值的时候很有用，比如实例要使用的常量属性（类似 C 里的静态常量），或者储存对这个类型的所有实例全局可见的值的存储属性（类似 C 里的静态变量）。
         存储类型属性可以是变量或者常量。
         计算类型属性总要被声明为变量属性，与计算实例属性一致。
         */
        
        /*
         类型属性语法
         使用 static 关键字来声明类型属性。
         */
        struct SomeStructure {
            static var storedTypeProperty = "Some value."
            static var computedTypeProperty: Int {
                return 1
            }
        }
        
        enum SomeEnumeration {
            static var storedTypeProperty = "Some value."
            static var computedTypeProperty: Int {
                return 6
            }
        }
        
        class SomeClass {
            static var storedTypeProperty = "Some value."
            static var computedTypeProperty: Int {
                return 27
            }
            class var overrideableComputedTypeProperty: Int {
                return 107
            }
        }
        
        /*
         查询和设置类型属性
         类型属性使用点语法来查询和设置，与实例属性一致。
         总之，类型属性在类里查询和设置，而不是这个类型的实例
         */
        print(SomeStructure.storedTypeProperty)
        SomeStructure.storedTypeProperty = "Another value."
        print(SomeStructure.storedTypeProperty)
        print(SomeEnumeration.computedTypeProperty)
        print(SomeClass.computedTypeProperty)
        
        print("-------------------------------------------属性完结------------------------------------------")
        
        /*
         方法
         方法是关联了特定类型的函数。
         类，结构体以及枚举都能定义实例方法，方法封装了给定类型特定的任务和功能。
         类、结构体和枚举同样可以定义类型方法，这是与类型本身关联的方法。
         
         事实上，在结构体和枚举中定义方法是swift语言与C语言和OC的主要区别。
         */
        
        /*
         实例方法
         实例方法 是属于特定类实例、结构体实例或者枚举实例的函数。
         他们为这些实例提供功能性，要么通过提供访问和修改实例属性的方法，要么通过提供与实例目的相关的功能。
         实例方法与函数的语法完全相同.
         */
        
        /*
         Counter 类定义了三个实例方法：
         increment每次给计数器增加 1；
         increment(by: Int)按照特定的整型数量来增加计数器；
         reset会把计数器重置为零
         Counter类同样声明了一个变量属性count来追踪当前计数器的值
         */
        let counter = Counter()
        counter.increment()
        print(counter.count)
        counter.increment(by: 5)
        print(counter.count)
        counter.reset()
        print(counter.count)
        
        /*
         self 属性
         每一个类的实例都隐含了一个叫做self的属性，它完完全全与实例本身相等
         你可以使用self属性来在当前实例当中调用它自身的方法。
         */
        
        /*
         对于这个规则的一个重要例外就是当一个实例方法的形式参数名与实例中某个属性拥有相同的名字的时候。
         在这种情况下，形式参数名具有优先权，并且调用属性的时候使用更加严谨的方式就很有必要了。
         你可以使用 self属性来区分形式参数名和属性名。
         这时， self就避免了叫做 x 的方法形式参数还是同样叫做 x 的实例属性这样的歧义。
         */
        struct Point {
            var x = 0.0, y = 0.0
            func isToTheRightOf(x:Double) -> Bool {
                return self.x > x
            }
        }
        let somePoint = Point(x: 4.0, y: 5.0)
        if somePoint.isToTheRightOf(x: 1.0) {
            print("This point is to the right of the line where x == 1.0")
        }
        
        /*
         在实例方法中修改值类型
         结构体和枚举是值类型。
         默认情况下，值类型属性不能被自身的实例方法修改。
         你可以选择在 func关键字前放一个 mutating关键字来使用这个行为.
         */
        struct PointNew {
            var x = 0.0, y = 0.0
            mutating func moveBy(x deltaX: Double, y deltaY: Double) {
                x += deltaX
                y += deltaY
            }
        }
        var somePointNew = PointNew(x: 1.0, y: 1.0)
        somePointNew.moveBy(x: 2.0, y: 3.0)
        print("The point is now at (\(somePointNew.x), \(somePointNew.y))")
        
        //注意，如同 常量结构体实例的存储属性 里描述的那样，你不能在常量结构体类型里调用异变方法，因为自身属性不能被改变，就算它们是变量属性
        //let fixedPoint = Point(x: 3.0, y: 3.0)
        //fixedPoint.moveBy(x: 2.0, y: 3.0)
        
        /*
         在异变方法里指定自身
         异变方法可以指定整个实例给隐含的 self属性。上文中那个 Point的栗子可以用下边的代码代替：
         struct Point {
             var x = 0.0, y = 0.0
             mutating func moveBy(x deltaX: Double, y deltaY: Double) {
                 self = Point(x: x + deltaX, y: y + deltaY)
             }
         }
         */
        
        /*
         类型方法
         实例方法是特定类型实例中调用的方法。
         你同样可以定义在类型本身调用的方法。这类方法被称作类型方法
         可以通过在func关键字之前使用static关键字来明确一个类型方法。
         类同样可以使用class关键字来允许子类重写父类对类型方法的实现。
         */
        /*
         class SomeClass {
             class func someTypeMethod() {
                 // type method implementation goes here
             }
         }
         SomeClass.someTypeMethod()
         */
        
        print("-------------------------------------------方法完结------------------------------------------")
        
        /*
         下标
         类、结构体和枚举可以定义下标，它可以作为访问集合、列表或序列成员元素的快捷方式。
         
         你可以使用下标通过索引值来设置或检索值而不需要为设置和检索分别使用实例方法、
         你可以为一个类型定义多个下标，而且下标会基于传入的索引值的类型选择合适的下标重载使用。
         */
        
        /*
         下标的语法
         下标脚本允许你通过在实例名后面的方括号内写一个或多个值对该类的实例进行查询。
         它的语法类似于实例方法和计算属性。
         使用关键字 subscript 来定义下标，并且指定一个或多个输入形式参数和返回类型，与实例方法一样。
         与实例方法不同的是，下标可以是读写也可以是只读的。
         */
        struct TimesTable {
            let multiplier: Int
            subscript(index: Int) -> Int {
                return multiplier * index
            }
        }
        let threeTimesTable = TimesTable(multiplier: 3)
        print("six times three is \(threeTimesTable[6])")
        
        /*
         下标用法
         “下标”确切的意思取决于它使用的上下文。通常下标是用来访问集合、列表或序列中元素的快捷方式。你可以在你自己特定的类或结构体中自由实现下标来提供合适的功能。
         */
        var numberOfLegs2 = ["spider": 8, "ant": 6, "cat": 4]
        numberOfLegs2["bird"] = 2
        print(numberOfLegs2)
        
        /*
         下标选项
         下标可以接收任意数量的输入形式参数，并且这些输入形式参数可以是任意类型。
         下标也可以返回任意类型。
         下标可以使用变量形式参数和可变形式参数，但是不能使用输入输出形式参数或提供默认形式参数值。
         */
        
        /*
         类型下标
         实例下标，如果上文描述的那样，你在对应类型的实例上调用下标。
         你同样也可以定义类型本身的下标。这类下标叫做类型下标。
         你可通过在 subscript 关键字前加 static 关键字来标记类型下标。
         在类里则使用 class 关键字，这样可以允许子类重写父类的下标实现。
         下面的例子展示了如何定义和调用类型下标
         */
        enum Planet2: Int {
            case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
            static subscript(n: Int) -> Planet2 {
                return Planet2(rawValue: n)!
            }
        }
        let mars = Planet2[4]
        print(mars)
        
        print("-------------------------------------------下标完结------------------------------------------")
        
        
        /*
         继承
         一个类可以从另一个类继承方法、属性和其他的特性。
         当一个类从另一个类继承的时候，继承的类就是所谓的子类，而这个类继承的类被称为父类。
         在 Swift 中，继承与其他类型不同的基础分类行为。
         
         类也可以向继承的属性添加属性观察器，以便在属性的值改变时得到通知。
         可以添加任何属性监视到属性中，不管它是被定义为存储还是计算属性。
         */
        
        /*
         定义一个基类
         任何不从另一个类继承的类都是所谓的基类。
         */
        let someVehicle = Vehicle()
        print("Vehicle: \(someVehicle.description)")
        
        /*
         子类
         子类是基于现有类创建新类的行为。
         子类从现有的类继承了一些特性，你可以重新定义它们。
         你也可以为子类添加新的特性。
         */
        let bicycle = Bicycle()
        bicycle.hasBasket = true
        bicycle.currentSpeed = 15.0
        print("Bicycle: \(bicycle.description)")
        
        //子类本身也可以被继承。
        let tandem = Tandem()
        tandem.hasBasket = true
        tandem.currentNumberOfPassengers = 2
        tandem.currentSpeed = 22.0
        print("Tandem: \(tandem.description)")
        
        /*
         重写
         子类可以提供它自己的实例方法、类型方法、实例属性，类型属性或下标脚本的自定义实现，否则它将会从父类继承。这就所谓的重写。
         要重写而不是继承一个特征，你需要在你的重写定义前面加上 override 关键字。
         这样做说明你打算提供一个重写而不是意外提供了一个相同定义。
         意外的重写可能导致意想不到的行为，并且任何没有使用 override 关键字的重写都会在编译时被诊断为错误。
         override 关键字会执行 Swift 编译器检查你重写的类的父类(或者父类的父类)是否有与之匹配的声明来供你重写。
         这个检查确保你重写的定义是正确的。
         */
        
        /*
         访问父类的方法、属性和下标脚本
         当你为子类提供了一个方法、属性或者下标脚本时，有时使用现有的父类实现作为你重写的一部分是很有用的。
         比如说，你可以重新定义现有实现的行为，或者在现有继承的变量中存储一个修改过的值。
         你可以通过使用 super 前缀访问父类的方法、属性或下标脚本，这是合适的
         */
        let train = Train()
        train.makeNoise()
        
        /*
         重写属性
         你可以重写一个继承的实例或类型属性来为你自己的属性提供你自己自定义的 getter 和 setter ，或者添加属性观察器确保当底层属性值改变时来监听重写的属性。
         */
        let car = Car()
        car.currentSpeed = 25.0
        car.gear = 3
        print("Car: \(car.description)")
        
        /*
         重写属性观察器
         你可以使用属性重写来为继承的属性添加属性观察器。
         这就可以让你在继承属性的值改变时得到通知，无论这个属性最初如何实现。
         */
        let automatic = AutomaticCar()
        automatic.currentSpeed = 35.0
        print("AutomaticCar: \(automatic.description)")
        
        /*
         阻止重写
         你可以通过标记为终点来阻止一个方法、属性或者下标脚本被重写。
         通过在方法、属性或者下标脚本的关键字前写 final 修饰符(比如 final var ， final func ， final class func ， final subscript )。
         */
        
        print("-------------------------------------------继承完结------------------------------------------")
        
        /*
         初始化
         初始化是为类、结构体或者枚举准备实例的过程。
         这个过程需要给实例里的每一个存储属性设置一个初始值并且在新实例可以使用之前执行任何其他所必须的配置或初始化。
         主要是确保在第一次使用之前某类型的新实例能够正确初始化
         */
        
        /*
         为存储属性设置初始化值
         在创建类和结构体的实例时必须为所有的存储属性设置一个合适的初始值。
         存储属性不能遗留在不确定的状态中。
         */
        
        /*
         初始化器
         初始化器在创建特定类型实例时被调用。
         */
        struct Fahrenheit {
            var temperature: Double
            init () {
                temperature = 32.0
            }
        }
        
        let f = Fahrenheit()
        print("The default temperature is \(f.temperature)° Fahrenheit")
        
        /*
         默认的属性值
         如上所述，你可以在初始化器里为存储属性设置初始值。
         另外，指定一个默认属性值作为属性声明的一部分。当属性被定义的时候你可以通过为这个属性分配一个初始值来指定默认的属性值。
         */
        struct Fahrenheit2 {
            var temperature = 32.0
        }
        
        /*
         自定义初始化
         初始化形式参数
         你可以提供初始化形式参数作为初始化器的一部分，来定义初始化过程中的类型和值的名称。
         */
        struct Celsius {
            var temperatureInCelsius: Double
            init(fromFahrenheit fahrenheit: Double) {
                temperatureInCelsius = (fahrenheit - 32.0) / 1.8
            }
            init(fromKelvin kelvin: Double) {
                temperatureInCelsius = kelvin - 273.15
            }
        }
        
        let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
        print(boilingPointOfWater.temperatureInCelsius)
        
        let freezingPointOfWater = Celsius(fromKelvin: 273.15)
        print(freezingPointOfWater.temperatureInCelsius)
        
        /*
         形式参数名和实际参数标签
         */
        struct Color {
            let red, green, blue: Double
            init(red: Double, green: Double, blue: Double) {
                self.red   = red
                self.green = green
                self.blue  = blue
            }
            init(white: Double) {
                red   = white
                green = white
                blue  = white
            }
        }
        let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
        print(magenta)
        let halfGray = Color(white: 0.5)
        print(halfGray)
        
        /*
         可选属性类型
         如果你的自定义类型有一个逻辑上是允许“无值”的存储属性——大概因为它的值在初始化期间不能被设置，或者因为它在稍后允许设置为“无值”——声明属性为可选类型。
         可选类型的属性自动地初始化为 nil ，表示该属性在初始化期间故意设为“还没有值”。
         */
        let cheeseQuestion = SurveyQuesstion(text: "Do you like cheese?")
        cheeseQuestion.ask()
        //print(cheeseQuestion.response) //nil
        cheeseQuestion.response = "Yes, I do like cheese."
        //print(cheeseQuestion.response) //Optional("Yes, I do like cheese.")
        
        /*
         在初始化中分配常量属性
         在初始化的任意时刻，你都可以给常量属性赋值，只要它在初始化结束时设置了确定的值即可。
         一旦为常量属性被赋值，它就不能再被修改了。
         */
        let beetsQuestion2 = SurveyQuestion2(text: "How about beets?")
        beetsQuestion2.ask()
        // prints "How about beets?"
        beetsQuestion2.response = "I also like beets. (But not with cheese.)"
        
        /*
         结构体类型的成员初始化器
         如果结构体类型中没有定义任何自定义初始化器，它会自动获得一个成员初始化器。
         不同于默认初始化器，结构体会接收成员初始化器即使它的存储属性没有默认值。
         当你调用成员初始化器时，你可以省略任何拥有默认值的属性。
         */
        struct Size {
            var width = 0.0, height = 0.0
        }
        let twoByTwo = Size(width: 2.0, height: 2.0)
        print(twoByTwo)
        let zeroByTwo = Size(height: 2.0)
        print(zeroByTwo.width, zeroByTwo.height)
        let zeroByZero = Size()
        print(zeroByZero.width, zeroByZero.height)
        
        /*
         值类型的初始化器委托
         初始化器可以调用其他初始化器来执行部分实例的初始化。
         这个过程，就是所谓的初始化器委托。
         */
        struct Point3 {
            var x = 0.0, y = 0.0
        }
        
        struct Rect {
            var origin = Point3()
            var size = Size()
            init() {}
            init(origin: Point3, size: Size) {
                self.origin = origin
                self.size = size
            }
            init(center: Point3, size: Size) {
                let originX = center.x - (size.width / 2)
                let originY = center.y - (size.height / 2)
                self.init(origin: Point3(x: originX, y: originY), size: size)
            }
        }
        //初始化器1
        let basicRect = Rect()
        print(basicRect.origin)
        print(basicRect.size)
        
        //初始化器2
        let originRect = Rect(origin: Point3(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
        print(originRect.origin)
        print(originRect.size)
        
        //初始化器3
        let centerRect = Rect(center: Point3(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))
        print(centerRect.origin)
        print(centerRect.size)
        
        /*
         类的继承和初始化
         所有类的存储属性——包括从它的父类继承的所有属性——都必须在初始化期间分配初始值。
         Swift 为类类型定义了两种初始化器以确保所有的存储属性接收一个初始值。
         这些就是所谓的指定初始化器和便捷初始化器。
         */
        
        /*
         指定初始化器和便捷初始化器语法
         用与值类型的简单初始化器相同的方式来写类的指定初始化器
        
        init(parameters) {
            statements
        }
        */
        
        /*
         便捷初始化器有着相同的书写方式，但是要用 convenience 修饰符放到 init 关键字前，用空格隔开.
         convenience init(parameters) {
             statements
         }
         */
        
        /*
         类类型的初始化器委托
         为了简化指定和便捷初始化器之间的调用关系，Swift 在初始化器之间的委托调用有下面的三个规则
         规则 1
         指定初始化器必须从它的直系父类调用指定初始化器。
         规则 2
         便捷初始化器必须从相同的类里调用另一个初始化器。
         规则 3
         便捷初始化器最终必须调用一个指定初始化器。
         
         指定初始化器必须总是向上委托
         便捷初始化器必须总是横向委托
         */
        
        /*
         初始化器的自动继承
         子类默认不会继承父类初始化器。
         总之，在特定的情况下父类初始化器是可以被自动继承的。
         指定和便捷初始化器的实战
         */
        let namedMeat = Food(name: "Bacon")
        print(namedMeat.name)
        let mysteryMeat = Food()
        print(mysteryMeat.name)
        
        /*
         Food 类的 init(name: String) 初始化器是一个指定初始化器，因为它确保 Food 类新实例的所有存储属性都被完全初始化。
         Food 类也提供了没有实际参数的便捷初始化器 init() 。
         */
        class RecipeIngredient: Food {
            var quantity: Int
            init(name: String, quantity: Int) {
                self.quantity = quantity
                super.init(name: name)
            }
            override convenience init(name: String) {
                self.init(name: name, quantity: 1)
            }
        }
        
//        let oneMysteryItem = RecipeIngredient()
//        let oneBacon = RecipeIngredient(name: "Bacon")
//        let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)
        
        class ShoppingListItem: RecipeIngredient {
            var purchased = false
            var description: String {
                var output = "\(quantity) x \(name)"
                output += purchased ? " ✔" : " ✘"
                return output
            }
        }
        
        let breakfastList = [
            ShoppingListItem(),
            ShoppingListItem(name: "Bacon"),
            ShoppingListItem(name: "Eggs", quantity: 6),
        ]
        breakfastList[0].name = "Orange juice"
        breakfastList[0].purchased = true
        for item in breakfastList {
            print(item.description)
        }
        
        print("-------------------------------------------初始化完结------------------------------------------")
        
        /*
         反初始化
         在类实例被释放的时候，反初始化器就会立即被调用。
         你可以是用deinit关键字来写反初始化器，就如同写初始化器要用init关键字一样。
         反初始化器只在类类型中有效。
         */
        
        /*
         反初始化器会在实例被释放之前自动被调用。你不能自行调用反初始化器。
         父类的反初始化器可以被子类继承，并且子类的反初始化器实现结束之后父类的反初始化器会被调用。
         父类的反初始化器总会被调用，就算子类没有反初始化器。
         由于实例在反初始化器被调用之前都不会被释放，
         反初始化器可以访问实例中的所有属性并且可以基于这些属性修改自身行为（比如说查找需要被关闭的那个文件的文件名）。
         */
        var playerOne: Player? = Player(coins: 100)
        print("A new player has joined the game with \(playerOne!.coinsInPurse) coins")
        print("There are now \(Bank.coinsInBank) coins left in the bank")
        
        playerOne!.win(coins: 2_000)
        print("PlayerOne won 2000 coins & now has \(playerOne!.coinsInPurse) coins")
        print("The bank now only has \(Bank.coinsInBank) coins left")
        
        //玩家离开了游戏
        playerOne = nil
        print("PlayerOne has left the game")
        print("The bank now has \(Bank.coinsInBank) coins")
        /*
         这通过设置 playerOne变量为 nil来明确，意味着“无 Player实例。”
         当这个时候， playerOne变量到 Player实例的引用被破坏掉了。
         没有其他的属性或者变量仍在引用 Player实例，所以它将会被释放掉以节约内存。
         在释放掉的瞬间，它的反初始化器会自动被调用，然后它的金币被送回给了银行。
         */
        
        print("-------------------------------------------反初始化完结------------------------------------------")
        
        /*
         可选链
         可选链是一个调用和查询可选属性、方法和下标的过程，它可能为 nil 。
         如果可选项包含值，属性、方法或者下标的调用成功；
         如果可选项是 nil ，属性、方法或者下标的调用会返回 nil 。
         多个查询可以链接在一起，如果链中任何一个节点是 nil ，那么整个链就会得体地失败。
         */
        
        /*
         可选链代替强制展开
         主要的区别在于可选链会在可选项为 nil 时得体地失败，而强制展开则在可选项为 nil 时触发运行时错误。
         */
        let john = Person()
        if let roomCount = john.residence?.numberOfRooms {
            print("John's residence has \(roomCount) room(s).")
        } else {
            print("Unable to retrieve the number of rooms.")
        }
        
        john.residence = Residence()
        if let roomCount = john.residence?.numberOfRooms {
            print("John's residence has \(roomCount) room(s).")
        } else {
            print("Unable to retrieve the number of rooms.")
        }
        
        /*
         为可选链定义模型类
         你可以使用可选链来调用属性、方法和下标不止一个层级。
         这允许你在相关类型的复杂模型中深入到子属性，并检查是否可以在这些自属性里访问属性、方法和下标。
         */
        
        /*
         通过可选链访问属性
         你可以使用可选链来访问可选值里的属性，并且检查这个属性的访问是否成功
         */
        
        /*
         通过可选链调用方法
         你可以使用可选链来调用可选项里的方法，并且检查调用是否成功。你甚至可以在没有定义返回值的方法上这么做。
         
         if john.residence?.printNumberOfRooms() != nil {
             print("It was possible to print the number of rooms.")
         } else {
             print("It was not possible to print the number of rooms.")
         }
         
         */
        
        /*
         通过可选链访问下标
         你可以使用可选链来给可选项下标取回或设置值，并且检查下标的调用是否成功。
         
         if let firstRoomName = john.residence?[0].name {
             print("The first room name is \(firstRoomName).")
         } else {
             print("Unable to retrieve the first room name.")
         }
         */
        
        /*
         链的多层连接
         你可以通过连接多个可选链来在模型中深入访问属性、方法以及下标。
         总之，多层可选链不会给返回的值添加多层的可选性。
         
         if let johnsStreet = john.residence?.address?.street {
             print("John's street name is \(johnsStreet).")
         } else {
             print("Unable to retrieve the address.")
         }
         
         */
        
        print("-------------------------------------------可选链完结------------------------------------------")
        
        /*
         错误处理
         错误处理是响应和接收来自你程序中错误条件的过程。
         swift给运行时可恢复错误的抛出、捕获、传递和操纵提供了一类支持。
         
         表示和抛出错误
         在 Swift 中，错误表示为遵循 Error协议类型的值。这个空的协议明确了一个类型可以用于错误处理。
         
         处理错误
         当一个错误被抛出，周围的某些代码必须为处理错误响应——比如说，为了纠正错误，尝试替代方案，或者把错误通知用户。
         */
        
        /*
         使用抛出函数传递错误
         为了明确一个函数或者方法可以抛出错误，你要在它的声明当中的形式参数后边写上 throws关键字。
         使用 throws标记的函数叫做抛出函数。
         如果它明确了一个返回类型，那么 throws关键字要在返回箭头 ( ->)之前。
         */
        
        /*
         使用 Do-Catch 处理错误
         使用 do-catch语句来通过运行一段代码处理错误。如果do分句中抛出了一个错误，它就会与 catch分句匹配，以确定其中之一可以处理错误。
         */
        
        /*
         转换错误为可选项
         使用 try?通过将错误转换为可选项来处理一个错误。如果一个错误在 try?表达式中抛出，则表达式的值为 nil。
         */
        
        /*
         取消错误传递
         事实上有时你已经知道一个抛出错误或者方法不会在运行时抛出错误。在这种情况下，你可以在表达式前写 try!来取消错误传递并且把调用放进不会有错误抛出的运行时断言当中。如果错误真的抛出了，你会得到一个运行时错误。
         */
        
        /*
         指定清理操作
         使用 defer语句来在代码离开当前代码块前执行语句合集。
         这个语句允许你在以任何方式离开当前代码块前执行必须要的清理工作——无论是因为抛出了错误还是因为 return或者 break这样的语句。
         比如，你可以使用 defer语句来保证文件描述符都关闭并且手动指定的内存到被释放。
         */
        
        print("-------------------------------------------错误处理完结------------------------------------------")
        
        /*
         类型转换
         类型转换可以判断实例的类型，也可以将该实例在其所在的类层次中视为其父类或子类的实例
         Swift 中类型转换的实现为 is 和 as 操作符。这两个操作符使用了一种简单传神的方式来检查一个值的类型或将某个值转换为另一种类型。
         */
        let library = [
            Movie(name: "Casablanca", director: "Michael Curtiz"),
            Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
            Movie(name: "Citizen Kane", director: "Orson Welles"),
            Song(name: "The One And Only", artist: "Chesney Hawkes"),
            Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
        ]
        
        /*
         类型检查
         使用类型检查操作符 （ is ）来检查一个实例是否属于一个特定的子类。如果实例是该子类类型，类型检查操作符返回 true ，否则返回 false 。
         */
        var movieCount = 0
        var songCount = 0
        for item in library {
            if item is Movie {
                movieCount += 1
            } else if item is Song {
                songCount += 1
            }
        }
        print("Media library contains \(movieCount) movies and \(songCount) songs")
        
        /*
         向下类型转换
         某个类类型的常量或变量可能实际上在后台引用自一个子类的实例。当你遇到这种情况时你可以尝试使用类型转换操作符（ as? 或 as! ）将它向下类型转换至其子类类型。
         由于向下类型转换能失败，类型转换操作符就有了两个不同形式。条件形式， as? ，返回了一个你将要向下类型转换的值的可选项。强制形式， as! ，则将向下类型转换和强制展开结合为一个步骤。
         */
        for item in library {
            if let movie = item as? Movie {
                print("Movie: '\(movie.name)', dir. \(movie.director)")
            } else if let song = item as? Song {
                print("Song: '\(song.name)', by \(song.artist)")
            }
        }
        
        /*
         Any 和 AnyObject 的类型转换
         Swift 为不确定的类型提供了两种特殊的类型别名：
         - AnyObject  可以表示任何类类型的实例。
         - Any  可以表示任何类型，包括函数类型。
         只有当你确切需要使用它们的功能和行为时再使用 Any 和 AnyObject 。在写代码时使用更加明确的类型表达总要好一些。
         */
        var things = [Any]()
        things.append(0)
        things.append(0.0)
        things.append(42)
        things.append(3.14159)
        things.append("hello")
        things.append((3.0, 5.0))
        things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
        things.append({ (name: String) -> String in "Hello, \(name)" })
        
        for thing in things {
            switch thing {
            case 0 as Int:
                print("zero as an Int")
            case 0 as Double:
                print("zero as a Double")
            case let someInt as Int:
                print("an integer value of \(someInt)")
            case let someDouble as Double where someDouble > 0:
                print("a positive double value of \(someDouble)")
            case is Double:
                print("some other double value that I don't want to print")
            case let someString as String:
                print("a string value of \"\(someString)\"")
            case let (x, y) as (Double, Double):
                print("an (x, y) point at \(x), \(y)")
            case let movie as Movie:
                print("a movie called \(movie.name), dir. \(movie.director)")
            case let stringConverter as (String) -> String:
                print(stringConverter("Michael"))
            default:
                print("something else")
            }
        }
        
        print("-------------------------------------------类型转换完结------------------------------------------")
        
        /*
         内嵌类型
         枚举通常用于实现特定类或结构体的功能。
         类似的，它也可以在更加复杂的类型环境中方便的定义通用类和结构体。
         为实现这种功能，Swift 允许你定义内嵌类型，借此在支持类型的定义中嵌套枚举、类、或结构体。
         若要在一种类型中嵌套另一种类型，在其支持类型的大括号内定义即可。可以根据需求多级嵌套数个类型。
         */
        struct BlackjackCard {
         
            // nested Suit enumeration
            enum Suit: Character {
                case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
            }
         
            // nested Rank enumeration
            enum Rank: Int {
                case two = 2, three, four, five, six, seven, eight, nine, ten
                case jack, queen, king, ace
                struct Values {
                    let first: Int, second: Int?
                }
                var values: Values {
                    switch self {
                    case .ace:
                        return Values(first: 1, second: 11)
                    case .jack, .queen, .king:
                        return Values(first: 10, second: nil)
                    default:
                        return Values(first: self.rawValue, second: nil)
                    }
                }
            }
         
            // BlackjackCard properties and methods
            let rank: Rank, suit: Suit
            var description: String {
                var output = "suit is \(suit.rawValue),"
                output += " value is \(rank.values.first)"
                if let second = rank.values.second {
                    output += " or \(second)"
                }
                return output
            }
        }
        
        let theAceOfSpades = BlackjackCard(rank: .ace, suit: .spades)
        print("theAceOfSpades: \(theAceOfSpades.description)")
        
        /*
         引用内嵌类型
         要在定义外部使用内嵌类型，只需在其前缀加上内嵌了它的类的类型名即可
         */
        let heartsSymbol = BlackjackCard.Suit.hearts.rawValue
        print( "heartsSymbol is \(heartsSymbol)")
        
        print("-------------------------------------------内嵌类型完结------------------------------------------")
        
        /*
         扩展
         扩展为现有的类、结构体、枚举类型、或协议添加了新功能。
         这也包括了为无访问权限的源代码扩展类型的能力 - 即所谓的逆向建模
         swift的扩展没有名字
         
         添加计算实例属性和计算类型属性
         定义实例方法和类型方法
         提供新初始化器
         定义下标
         定义和使用新内嵌类型
         使现有的类型遵循某协议
         
         */
        
        /*
         扩展的语法
         使用 extension 关键字来声明扩展
         */
        
        /*
         计算属性
         扩展可以向已有的类型添加计算实例属性和计算类型属性。
         */
        
        let oneInch = 25.4.mm
        print("One inch is \(oneInch) meters")
        let threeFeet = 3.ft
        print("Three feet is \(threeFeet) meters")
        
        let aMarathon = 42.km + 195.m
        print("A marathon is \(aMarathon) meters long")
        
        /*
         初始化器
         扩展可向已有的类型添加新的初始化器。
         这允许你扩展其他类型以使初始化器接收你的自定义类型作为形式参数，或提供该类型的原始实现中未包含的额外初始化选项。
         扩展能为类添加新的便捷初始化器，但是不能为类添加指定初始化器或反初始化器。指定初始化器和反初始化器 必须由原来类的实现提供。
         */
        
        /*
         方法
         扩展可以为已有的类型添加新的实例方法和类型方法。
         */
        3.repetitions {
            print("Hello!")
        }
        
        /*
         异变实例方法
         增加了扩展的实例方法仍可以修改（或异变）实例本身。结构体和枚举类型方法在修改 self 或本身的属性时必须标记实例方法为 mutating ，和原本实现的异变方法一样。
         */
        var someInt2 = 3
        someInt2.square()
        print(someInt2)
        
        /*
         下标
         扩展能为已有的类型添加新的下标。
         */
       
        /*
         内嵌类型
         扩展可以为已有的类、结构体和枚举类型添加新的内嵌类型。
         */
        func printIntegerKinds(_ numbers: [Int]) {
            for number in numbers {
                switch number.kind {
                case .negative:
                    print("- ", terminator: "")
                case .zero:
                    print("0 ", terminator: "")
                case .positive:
                    print("+ ", terminator: "")
                }
            }
            print("")
        }
        printIntegerKinds([3, 19, -27, 0, -6, 0, 7])
        
        print("-------------------------------------------扩展完结------------------------------------------")
        
        /*
         协议
         协议为方法、属性、以及其他特定的任务需求或功能定义蓝图。
         协议可被类、结构体、或枚举类型采纳以提供所需功能的具体实现。满足了协议中需求的任意类型都叫做遵循了该协议。
         除了指定遵循类型必须实现的要求外，你可以扩展一个协议以实现其中的一些需求或实现一个符合类型的可以利用的附加功能。
         */
        
        /*
         属性要求
         协议可以要求所有遵循该协议的类型提供特定名字和类型的实例属性或类型属性。
         协议并不会具体说明属性是储存型属性还是计算型属性——它只具体要求属性有特定的名称和类型。
         协议同时要求一个属性必须明确是可读的或可读的和可写的。
         
         若协议要求一个属性为可读和可写的，那么该属性要求不能用常量存储属性或只读计算属性来满足。
         若协议只要求属性为可读的，那么任何种类的属性都能满足这个要求，而且如果你的代码需要的话，该属性也可以是可写的。
         */
       
        
        struct PersonNew: FullyNamed {
            var fullName: String
        }
        let john2 = PersonNew(fullName: "John Appleseed")
        print(john2)
        
        /*
         这个类为一艘星舰实现了 fullName 计算型只读属性的要求。
         每一个 Starship 类的实例储存了一个不可选的 name 属性以及一个可选的 prefix 属性。
         当 prefix 值存在时， fullName 将 prefix 放在 name 之前以创建星舰的全名。
         */
        let ncc1701 = Starship(name: "Enterprise", prefix: "USS")
        print(ncc1701.fullName)
        
        /*
         方法要求
         协议可以要求采纳的类型实现指定的实例方法和类方法。
         这些方法作为协议定义的一部分，书写方式与正常实例和类方法的方式完全相同，但是不需要大括号和方法的主体。
         允许变量拥有参数，与正常的方法使用同样的规则
         在协议的定义中，方法参数不能定义默认值。
         */
        let generator = LinearCongruentialGenerator()
        print("Here's a random number: \(generator.random())")
        print("And another one: \(generator.random())")
        
        /*
        异变方法要求
        有时一个方法需要改变（或异变）其所属的实例。例如值类型的实例方法（即结构体或枚举），在方法的 func 关键字之前使用 mutating 关键字，来表示在该方法可以改变其所属的实例，以及该实例的所有属性。
        */
        var lightSwitch = OnOffSwitch.off
        lightSwitch.toggle()
        print(lightSwitch)
        
        /*
         初始化器要求
         协议可以要求遵循协议的类型实现指定的初始化器。
         和一般的初始化器一样，只用将初始化器写在协议的定义当中，只是不用写大括号也就是初始化器的实体。
         */
        
        /*
         将协议作为类型
         实际上协议自身并不实现功能。不过你创建的任意协议都可以变为一个功能完备的类型在代码中使用。
         由于它是一个类型，你可以在很多其他类型可以使用的地方使用协议，包括:
         
         在函数、方法或者初始化器里作为形式参数类型或者返回类型
         作为常量、变量或者属性的类型
         作为数组、字典或者其他存储器的元素的类型
         */
        
        //Dice 类使用 LinearCongurentialGenerator 实例作为用于创建一个六面骰子的随机数生成器来创建一个六面骰子的过程
        let d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
        for _ in 1...5 {
            print("Random dice roll is \(d6.roll())")
        }
        
        /*
         委托
         委托[1]是一个允许类或者结构体放手（或者说委托）它们自身的某些责任给另外类型实例的设计模式。
         这个设计模式通过定义一个封装了委托责任的协议来实现，比如遵循了协议的类型（所谓的委托）来保证提供被委托的功能。
         委托可以用来响应一个特定的行为，或者从外部资源取回数据而不需要了解资源具体的类型。
         */
        
        /*
         在扩展里添加协议遵循
         你可以扩展一个已经存在的类型来采纳和遵循一个新的协议，就算是你无法访问现有类型的源代码也行。
         扩展可以添加新的属性、方法和下标到已经存在的类型，并且因此允许你添加协议需要的任何需要。
         */
        
        /*
         协议类型的集合
         协议可以用作储存在集合比如数组或者字典中的类型。
         */
        
        /*
         协议继承
         协议可以继承一个或者多个其他协议并且可以在它继承的基础之上添加更多要求。
         协议继承的语法与类继承的语法相似，只不过可以选择列出多个继承的协议，使用逗号分隔
         
         protocol InheritingProtocol: SomeProtocol, AnotherProtocol {
             // protocol definition goes here
         }
         
         */
        
        /*
         类专用的协议
         通过添加 AnyObject 关键字到协议的继承列表，你就可以限制协议只能被类类型采纳（并且不是结构体或者枚举）。

         protocol SomeClassOnlyProtocol: AnyObject, SomeInheritedProtocol {
             // class-only protocol definition goes here
         }
         */
     
        /*
         协议组合
         要求一个类型一次遵循多个协议是很有用的。
         你可以使用协议组合来复合多个协议到一个要求里。
         协议组合行为就和你定义的临时局部协议一样拥有构成中所有协议的需求。
         协议组合不定义任何新的协议类型。
         */
        func wishHappyBirthday(to celebrator: Named & Aged) {
            print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
        }
        let birthdayPerson = Person5(name: "Malcolm", age: 21)
        wishHappyBirthday(to: birthdayPerson)
        
        /*
         协议遵循的检查
         你可以使用类型转换中描述的 is 和 as 运算符来检查协议遵循，还能转换为特定的协议。检查和转换协议的语法与检查和转换类型是完全一样的：
         如果实例遵循协议is运算符返回 true 否则返回 false ；
         as? 版本的向下转换运算符返回协议的可选项，如果实例不遵循这个协议的话值就是 nil ；
         as! 版本的向下转换运算符强制转换协议类型并且在失败是触发运行时错误。
         */
        
        
        /*
         可选协议要求
         你可以给协议定义可选要求，这些要求不需要强制遵循协议的类型实现。
         可选要求使用 optional 修饰符作为前缀放在协议的定义中。
         可选要求允许你的代码与 Objective-C 操作。
         协议和可选要求必须使用 @objc 标志标记。
         注意 @objc 协议只能被继承自 Objective-C 类或其他 @objc 类采纳。它们不能被结构体或者枚举采纳。
         */
        let counter2 = Counter2()
        counter2.dataSource = ThreeSource()
        for _ in 1...4 {
            counter2.increment()
            print(counter2.count)
        }
        
        /*
         协议扩展
         协议可以通过扩展来提供方法和属性的实现以遵循类型。
         这就允许你在协议自身定义行为，而不是在每一个遵循或者在全局函数里定义。
         通过给协议创建扩展，所有的遵循类型自动获得这个方法的实现而不需要任何额外的修改。
         */
        let generator2 = LinearCongruentialGenerator()
        print("Here's a random number: \(generator2.random())")
        print("And here's a random Boolean: \(generator2.randomBool())")
        
        /*
         提供默认实现
         你可以使用协议扩展类给协议的任意方法或者计算属性要求提供默认实现。
         如果遵循类型给这个协议的要求提供了它自己的实现，那么它就会替代扩展中提供的默认实现。
         */
        
        /*
         给协议扩展添加限制

         当你定义一个协议扩展，你可以明确遵循类型必须在扩展的方法和属性可用之前满足的限制。如同 Where 分句（此处应有链接）中描述的那样，在扩展协议名字后边使用 where 分句来写这些限制。
         */
        
        print("-------------------------------------------协议完结------------------------------------------")
        
        /*
         泛型
         泛型代码让你能根据你所定义打要求写出可以用于任何类型的灵活的、可复用的函数。
         你可以编写出可复用、意图表达清晰、抽象的代码
         泛型是swift最强大的特性之一
         */
        
        /*
         泛型函数
         泛型函数可以用于任何类型
         泛型版本的函数用了一个占位符类型名（这里叫做 T ）
         */
        func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
            let temporaryA = a
            a = b
            b = temporaryA
        }
        
        var someIntT = 3
        var anotherIntT = 107
        swapTwoValues(&someIntT, &anotherIntT)
        print("someIntT is now \(someIntT) ,anotherIntT is now \(anotherIntT) ")
        
        var someStringT = "hello"
        var anotherStringT = "world"
        swapTwoValues(&someStringT, &anotherStringT)
        print("someStringT is now \(someStringT) ,anotherStringT is now \(anotherStringT) ")
        
        /*
         泛型类型
         除了泛型函数，Swift允许你定义自己的泛型类型。它们是可以用于任意类型的自定义类、结构体、枚举，和 Array 、 Dictionary 方式类似。
         
         数组允许在其中任何位置插入和移除元素。
         但是，栈的新元素只能添加到集合的末尾，就是所谓的压栈。
         同样，栈只允许从集合的末尾移除元素，就是所谓的出栈。
         */
        
        
        var stackOfStrings = Stack<String>()
        stackOfStrings.push("uno")
        stackOfStrings.push("dos")
        stackOfStrings.push("tres")
        stackOfStrings.push("cuatro")
        print(stackOfStrings.items)
        let fromTheTop = stackOfStrings.pop()
        print(fromTheTop)
        print(stackOfStrings.items)
        
        
        /*
         扩展一个泛型类型
         当你扩展一个泛型类型时，不需要在扩展的定义中提供类型形式参数列表。
         原始类型定义的类型形式参数列表在扩展体里仍然有效，并且原始类型形式参数列表名称也用于扩展类型形式参数。
         */
        
        //不用移除元素，就可以用任何 Stack 实例的 topItem 计算属性来访问和查询它顶部的元素
        if let topItem = stackOfStrings.topItem {
            print("The top item on the stack is \(topItem).")
        }
        
        /*
         类型约束
         swapTwoValues(_:_:) 函数和 Stack 类型可以用于任意类型。
         但是，有时在用于泛型函数的类型和泛型类型上，强制其遵循特定的类型约束很有用。
         类型约束指出一个类型形式参数必须继承自特定类，或者遵循一个特定的协议、组合协议
         */
        func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
            for (index, value) in array.enumerated() {
                if value == valueToFind {
                    return index
                }
            }
            return nil
        }
        
        //let doubleIndex = findIndex(of: 9.3, in: [3.14159, 0.1, 0.25])
        //print(doubleIndex)
        // doubleIndex is an optional Int with no value, because 9.3 is not in the array
        
        //let stringIndex = findIndex(of: "Andrea", in: ["Mike", "Malcolm", "Andrea"])
        //print(stringIndex)
        // stringIndex is an optional Int containing a value of
        
        /*
         关联类型
         定义一个协议时，有时在协议定义里声明一个或多个关联类型是很有用的。
         关联类型给协议中用到的类型一个占位符名称。
         直到采纳协议时，才指定用于该关联类型的实际类型。
         关联类型通过 associatedtype 关键字指定。
         */
        
        /*
         泛型Where分句
         */
        
        /*
         泛型下标
         下标可以是泛型，它们可以包含泛型 where 分句。
         */
        
        print("-------------------------------------------泛型完结------------------------------------------")
        
        /*
         自动引用计数
         Swift使用自动引用计数（ARC）机制来追踪和管理你的App的内存。
         在大多数情况下，这意味着swift的内存管理机制会一直起作用，你不需要自己考虑内存管理。
         当这些实例不在需要时，ARC会自动释放类实例所占用的内存。
         */
        
        /*
         ARC的工作机制
         
         每次创建一个类的实例，ARC会分配一大块内存来存储这个实例的信息。这些内存中保留有实例的类型信息，以及该实例所有存储属性值的信息。
         此外，当实例不需要时，ARC会释放该实例所占用的内存，释放的内存用于其他用途。这确保类实例当它不再需要时，不会一直占用内存。
         然而，如果ARC释放了正在使用的实例内存，那么它将不会访问实例的属性，或者调用实例的方法。如果你试图访问该实例，你的app很可能会崩溃。
         为了确保使用中的实例不会消失，ARC会跟踪和计算当前实例被多少属性、常量和变量所引用。只要存在对该类实例的引用，ARC将不会释放该实例。
         为了使这些成为可能，无论你将实例分配给属性，常量或变量，它们都会创建该实例的强引用。
         之所以称为强引用，是因为它会将实例保持住，只要强引用还在，实例是不允许被销毁的。
         */
        
        /*
        var reference1: PersonARC?
        var reference2: PersonARC?
        var reference3: PersonARC?
        
        reference1 = PersonARC(name: "John Appleseed")
        reference2 = reference1
        reference3 = reference1
        
        reference1 = nil
        reference2 = nil
        reference3 = nil
        */
        
        /*
         类实例之间的循环强引用
         总之，写出某个类永远不会变成零强引用的代码是可能的。
         如果两个类实例彼此持有对方的强引用，因而每个实例都让对方一直存在，就会发生这种情况。这就是所谓的循环强引用。
         解决循环强引用问题，可以通过定义类之间的关系为弱引用( weak )或无主引用( unowned )来代替强引用。
         */
        
        /*
         解决实例之间的循环强引用
         Swift 提供了两种办法用来解决你在使用类的属性时所遇到的循环强引用问题：弱引用（ weak reference ）和无主引用（ unowned reference )。
         弱引用和无主引用允许循环引用中的一个实例引用另外一个实例而不保持强引用。这样实例能够互相引用而不产生循环强引用。
         */
        
        /*
         弱引用
         弱引用不会对其引用的实例保持强引用，因而不会阻止 ARC 释放被引用的实例。
         这个特性阻止了引用变为循环强引用。声明属性或者变量时，在前面加上 weak 关键字表明这是一个弱引用。
         由于弱引用不会强保持对实例的引用，所以说实例被释放了弱引用仍旧引用着这个实例也是有可能的。
         因此，ARC 会在被引用的实例被释放是自动地设置弱引用为 nil 。
         由于弱引用需要允许它们的值为 nil ，它们一定得是可选类型。
         你可以检查弱引用的值是否存在，就像其他可选项的值一样，并且你将永远不会遇到“野指针”。
         */
        
        /*
         无主引用

         和弱引用类似，无主引用不会牢牢保持住引用的实例。但是不像弱引用，总之，无主引用假定是永远有值的。
         因此，无主引用总是被定义为非可选类型。你可以在声明属性或者变量时，在前面加上关键字 unowned 表示这是一个无主引用。

         由于无主引用是非可选类型，你不需要在使用它的时候将它展开。无主引用总是可以直接访问。
         不过 ARC 无法在实例被释放后将无主引用设为 nil ，因为非可选类型的变量不允许被赋值为 nil 。
         */
               
        print("-------------------------------------------自动引用计数完结------------------------------------------")
         
        /*
         内存安全性
         
         默认情况下，Swift 会阻止你代码中发生的不安全行为。
         比如说，Swift 会保证在使用前就初始化，内存在变量释放后这块内存就不能再访问了，以及数组会检查越界错误。

         Swift 还通过要求标记内存位置来确保代码对内存有独占访问权，以确保了同一内存多访问时不会冲突。
         由于 Swift 自动管理内存，大部份情况下你根本不需要考虑访问内存的事情。
         总之，了解一下什么情况下会潜在导致冲突是一件很重要的事情，这样你就可以避免写出对内存访问冲突的代码了。
         如果你的代码确实包含冲突，你就会得到编译时或运行时错误。
         
         */
          
        /*
         了解内存访问冲突
         内存访问会在你做一些比如设置变量的值或者传递一个实际参数给函数的时候发生。
         */
       // A write access to the memory where one is stored.
       let one2 = 1
        
       // A read access from the memory where one is stored.
       print("We're number \(one2)!")
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
                             
    }


}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

class SurveyQuesstion {
    var text: String
    var response: String?
    init (text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}

class SurveyQuestion2 {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

class Bank {
    static var coinsInBank = 10_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive(coins: Int) {
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}

class Person {
    var residence: Residence?
}
 
class Residence {
    var numberOfRooms = 1
}

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

struct Item {
    var price: Int
    var count: Int
}
 
class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
 
class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

extension Int {
    mutating func square() {
        self = self * self
    }
}

extension Int {
    enum Kind {
        case negative, zero, positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

protocol FullyNamed {
    var fullName: String { get }
}

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}

protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}

protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Person5: Named, Aged {
    var name: String
    var age: Int
}

@objc protocol CounterDataSource {
    @objc optional func increment(forCount count: Int) -> Int
    @objc optional var fixedIncrement: Int { get }
}

class Counter2 {
    var count = 0
    var dataSource: CounterDataSource?
    func increment() {
        if let amount = dataSource?.increment?(forCount: count) {
            count += amount
        } else if let amount = dataSource?.fixedIncrement {
            count += amount
        }
    }
}

class ThreeSource: NSObject, CounterDataSource {
    let fixedIncrement = 3
}

extension RandomNumberGenerator {
    func randomBool() -> Bool {
        return random() > 0.5
    }
}

struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

extension Stack {
    var topItem: Element? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}


class PersonARC {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}
