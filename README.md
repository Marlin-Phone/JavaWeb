# JavaWeb实验代码仓库
<!-- 需要将以下所有的 JavaWeb 修改为 当前仓库 名称-->
<p align="center">
  <a href="https://wakatime.com/badge/user/72f7b5ae-3c4b-48e8-a41a-2f941eeb7e9d/project/925265e8-cc16-47e8-9a61-643cb7019800">
    <img src="https://wakatime.com/badge/user/72f7b5ae-3c4b-48e8-a41a-2f941eeb7e9d/project/925265e8-cc16-47e8-9a61-643cb7019800.svg" alt="wakatime">
  </a>
  <img src="https://img.shields.io/github/last-commit/marlin-phone/JavaWeb?logo=github&color=success" alt="last commit"/>
  <img src="https://img.shields.io/github/commit-activity/w/marlin-phone/JavaWeb" alt="commit activity"/>
  <img src="https://visitor-badge.laobi.icu/badge?page_id=marlin-phone.JavaWeb" alt="visitors"/> 
  <img src="https://img.shields.io/github/languages/top/marlin-phone/JavaWeb?logo=c%2B%2B&logoColor=white" alt="top language"/>
  <img src="https://img.shields.io/github/license/marlin-phone/JavaWeb" alt="license"/>
</p>
这个仓库包含了JavaWeb课程的实验代码，展示了Servlet、JSP等JavaWeb技术的基本应用。

## 项目结构

```
.
├── exp01/                  # 实验一：Servlet编程
│   ├── src/com/demo/       # Servlet源代码
│   │   ├── FirstServlet.java     # 处理学生信息输入的Servlet
│   │   ├── SecondServlet.java    # 显示学生信息的Servlet
│   │   ├── CountServlet.java     # 访问计数器Servlet
│   │   ├── ShowHeadersServlet.java  # 显示HTTP头信息的Servlet
│   │   ├── ConfigDemoServlet.java   # 演示Servlet配置参数的Servlet
│   │   ├── ExcelServlet.java     # 生成Excel文件的Servlet
│   │   └── Student.java          # 学生实体类
│   ├── WEB-INF/
│   │   └── web.xml         # Web应用配置文件
│   └── input.html          # 学生信息输入页面
│
└── exp02/                  # 实验二：JSP编程
    ├── hello.jsp           # 简单的JSP页面
    ├── login.jsp           # 用户登录页面
    ├── deal.jsp            # 处理登录逻辑的JSP
    ├── main.jsp            # 登录成功后的主页面
    ├── exit.jsp            # 退出登录的JSP
    ├── counter.jsp         # 简单计数器JSP
    ├── counter_local.jsp   # 使用局部变量的计数器
    ├── app_counter.jsp     # 使用application对象的计数器
    ├── staytime.jsp        # 显示页面停留时间的JSP
    ├── errorHandler.jsp    # 错误处理页面
    ├── 实验报告.md          # 实验二报告
    └── 实验预习报告.md      # 实验二预习报告
│
└── exp03/                  # 实验三：Web组件重用与JavaBeans
    ├── index.html          # 主页，包含所有实验的链接
    ├── hello.jsp           # 静态包含示例 - 方法一
    ├── response.jsp        # 静态包含的子页面 - 方法一
    ├── hello2.jsp          # 静态包含示例 - 方法二
    ├── response2.jsp       # 静态包含的子页面 - 方法二
    ├── main.jsp            # 动态包含示例 - 主页面
    ├── subpage.jsp         # 动态包含的子页面
    ├── login.html          # 用户登录页面
    ├── display.jsp         # 显示用户信息页面
    ├── calculate.jsp       # 简单计算器页面
    ├── 实验预习报告.md      # 实验预习报告
    ├── 实验报告.md          # 实验报告
    ├── src/               # Java源代码目录
    │   └── com/
    │       └── beans/
    │           ├── UserBean.java          # 用户信息JavaBean
    │           └── SimpleCalculator.java  # 简单计算器JavaBean
    └── WEB-INF/
        ├── web.xml        # Web应用配置文件
        └── classes/       # 编译后的Java类文件
            └── com/
                └── beans/
                    ├── UserBean.class
                    └── SimpleCalculator.class
│
└── exp04/                  # 实验四：会话管理
    ├── index.html          # 主页，包含所有实验的链接
    ├── showSessionInfo     # 显示会话信息的Servlet
    ├── guessNumber         # 猜数游戏Servlet
    ├── checkUser           # 自动登录功能Servlet
    ├── home                # URL重写示例Servlet
    ├── showCart.jsp        # 购物车页面
    ├── 实验预习报告.md      # 实验预习报告
    ├── 实验报告.md          # 实验报告
    ├── src/               # Java源代码目录
    │   └── com/
    │       ├── servlet/   # Servlet类
    │       │   ├── ShowSessionInfo.java
    │       │   ├── GuessNumberServlet.java
    │       │   ├── CheckUserServlet.java
    │       │   ├── HomeServlet.java
    │       │   ├── ControllerServlet.java
    │       │   └── LogoutServlet.java
    │       └── cart/      # 购物车相关类
    │           ├── ShoppingCart.java
    │           └── GoodsItem.java
    └── WEB-INF/
        ├── web.xml        # Web应用配置文件
        └── classes/       # 编译后的Java类文件
│
└── exp05/                  # 实验五：JDBC数据库访问与DAO设计模式
    ├── index.html          # 主页，包含所有实验的链接
    ├── displayBooks.jsp    # 显示图书信息的JSP页面
    ├── insertCustomer.jsp  # 添加客户信息的JSP页面
    ├── showCustomer.jsp    # 显示客户信息的JSP页面
    ├── editCustomer.jsp    # 修改客户信息的JSP页面
    ├── 实验预习报告.md      # 实验预习报告
    ├── 实验报告.md          # 实验报告
    ├── src/               # Java源代码目录
    │   └── com/
    │       ├── beans/     # JavaBean类
    │       │   ├── BookBean.java       # 图书信息JavaBean
    │       │   └── CustomerBean.java   # 客户信息JavaBean
    │       ├── dao/       # 数据访问对象
    │       │   ├── CustomerDAO.java         # 客户数据访问接口
    │       │   └── CustomerDAOImpl.java     # 客户数据访问实现类
    │       │   └── BookDAO.java             # 图书数据访问类
    │       └── servlet/   # Servlet类
    │           ├── InsertCustomerServlet.java  # 插入客户信息的Servlet
    │           └── ActionServlet.java          # 处理客户信息修改和删除的Servlet
    └── WEB-INF/
        ├── web.xml        # Web应用配置文件
        └── lib/           # 第三方库
        │
        └── exp06/                  # 实验六：Web事件处理与过滤器
            ├── index.html          # 主页，包含所有实验的链接
            ├── contextListenerTest.jsp  # ServletContext监听器测试页面
            ├── sessionDisplay.jsp  # 会话统计页面
            ├── onlineCount.jsp     # 页面访问统计页面
            ├── 实验预习报告.md      # 实验预习报告
            ├── 实验报告.md          # 实验报告
            ├── src/               # Java源代码目录
            │   └── com/
            │       └── listener/  # 事件监听器类
            │           ├── MyServletContextListener.java  # ServletContext事件监听器
            │           ├── MySessionListener.java         # HttpSession事件监听器
            │           └── MyRequestListener.java         # ServletRequest事件监听器
            └── WEB-INF/
                ├── web.xml        # Web应用配置文件
                └── classes/       # 编译后的Java类文件
        ```
        
        ## 实验内容介绍

### 实验一：Servlet编程

1. **FirstServlet & SecondServlet**: 演示了Servlet之间的请求转发，FirstServlet处理学生信息输入并转发给SecondServlet显示。
2. **CountServlet**: 展示了不同作用域变量的使用，包括成员变量（单个Servlet实例）和ServletContext变量（所有用户共享）。
3. **ShowHeadersServlet**: 显示HTTP请求头信息。
4. **ConfigDemoServlet**: 演示如何获取Servlet配置参数和ServletContext初始化参数。
5. **ExcelServlet**: 生成并下载Excel文件。
6. **Student类**: 简单的JavaBean，用于封装学生信息。

### 实验二：JSP编程

1. **用户登录系统**: 包含login.jsp、deal.jsp、main.jsp和exit.jsp，实现了一个完整的用户登录验证流程。
2. **计数器应用**: 多种方式实现的访问计数器，包括局部变量、实例变量和application对象。
3. **错误处理**: errorHandler.jsp演示了JSP中的错误处理机制。
4. **会话跟踪**: 通过session对象实现用户登录状态的跟踪。

### 实验三：Web组件重用与JavaBeans

1. **静态包含实验**: 演示了使用`<%@ include %>`指令实现静态包含，包括两种数据共享方法。
2. **动态包含实验**: 演示了使用`<jsp:include>`动作实现动态包含，通过参数传递数据。
3. **JavaBeans使用实验**:
   - UserBean：用于管理用户信息的JavaBean
   - SimpleCalculator：实现四则运算的简单计算器JavaBean
4. **JSP标准动作**: 深入使用`<jsp:useBean>`、`<jsp:setProperty>`、`<jsp:getProperty>`等标准动作。

### 实验四：会话管理

1. **会话信息管理**: 使用HttpSession对象管理会话，显示会话ID、创建时间、最近访问时间等信息。
2. **猜数游戏**: 使用HttpSession实现简单的猜数游戏，演示会话的生命周期管理。
3. **自动登录**: 使用Cookie技术实现自动登录功能。
4. **URL重写**: 演示URL重写机制，在禁用Cookie的情况下保持会话。
5. **购物车程序改进**: 对购物车程序进行改进，支持修改商品数量和更新购物车。

### 实验五：JDBC数据库访问与DAO设计模式

1. **传统JDBC方法**: 使用传统JDBC方法访问MySQL数据库，通过JSP页面显示图书信息。
2. **DAO设计模式**: 实现DAO设计模式，对客户信息进行增删改查操作。
3. **MVC架构**: 采用MVC设计模式，Servlet作为控制器，JSP作为视图，JavaBean作为模型。

### 实验六：Web事件处理与过滤器

1. **ServletContext监听器**: 监听Web应用的启动和销毁事件，管理数据库连接资源。
2. **HttpSession监听器**: 监听会话的创建和销毁事件，统计在线用户数。
3. **ServletRequest监听器**: 监听请求的创建和销毁事件，统计页面访问次数。

## 运行环境

- Java JDK 8或更高版本
- Apache Tomcat 9.0或更高版本
- Maven（用于项目依赖管理）

## 部署说明

1. 将项目部署到Tomcat服务器的webapps目录下
2. 启动Tomcat服务器
3. 在浏览器中访问相应的URL查看效果

## 实验报告

- 实验一报告请查看相关文档
- 实验二包含详细的实验报告和预习报告
- 实验三包含详细的实验报告和预习报告
- 实验四包含详细的实验报告和预习报告
- 实验五包含详细的实验报告和预习报告
- 实验六包含详细的实验报告和预习报告

## 注意事项

1. 本项目仅供学习和实验使用
2. 代码中可能存在一些简化的实现，实际生产环境中需要考虑更多安全性和健壮性问题
3. 数据库连接等高级功能在本实验中未涉及

## 许可证

本项目仅供教育目的使用。