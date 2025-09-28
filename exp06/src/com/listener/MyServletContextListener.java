package com.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@WebListener
public class MyServletContextListener implements ServletContextListener {
    
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // Web应用程序启动时创建数据源对象
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/test", "root", "password");
            
            ServletContext context = sce.getServletContext();
            context.setAttribute("dataSource", connection);
            context.log("Web应用启动：已创建数据库连接并保存到ServletContext中");
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            sce.getServletContext().log("数据库连接失败：" + e.getMessage());
        }
    }
    
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Web应用销毁时清除数据源对象
        ServletContext context = sce.getServletContext();
        Connection connection = (Connection) context.getAttribute("dataSource");
        if (connection != null) {
            try {
                connection.close();
                context.removeAttribute("dataSource");
                context.log("Web应用销毁：已关闭数据库连接并从ServletContext中移除");
            } catch (SQLException e) {
                e.printStackTrace();
                context.log("关闭数据库连接时发生错误：" + e.getMessage());
            }
        }
    }
}