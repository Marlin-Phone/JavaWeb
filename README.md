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

## 注意事项

1. 本项目仅供学习和实验使用
2. 代码中可能存在一些简化的实现，实际生产环境中需要考虑更多安全性和健壮性问题
3. 数据库连接等高级功能在本实验中未涉及

## 许可证

本项目仅供教育目的使用。