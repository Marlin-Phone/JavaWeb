package com.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        // 获取会话对象
        HttpSession session = request.getSession(true);
        
        out.println("<html><head><title>主页</title></head><body>");
        out.println("<h2>主页</h2>");
        out.println("<p>会话ID: " + session.getId() + "</p>");
        
        // 使用URL重写生成链接
        String page1Url = response.encodeURL("page1");
        String page2Url = response.encodeURL("page2");
        
        out.println("<p><a href='" + page1Url + "'>页面1</a></p>");
        out.println("<p><a href='" + page2Url + "'>页面2</a></p>");
        out.println("</body></html>");
    }
}

@WebServlet("/page1")
class Page1Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        HttpSession session = request.getSession(false);
        
        out.println("<html><head><title>页面1</title></head><body>");
        out.println("<h2>页面1</h2>");
        if (session != null) {
            out.println("<p>会话ID: " + session.getId() + "</p>");
        } else {
            out.println("<p>没有会话</p>");
        }
        out.println("<p><a href='" + response.encodeURL("home") + "'>返回主页</a></p>");
        out.println("</body></html>");
    }
}

@WebServlet("/page2")
class Page2Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        HttpSession session = request.getSession(false);
        
        out.println("<html><head><title>页面2</title></head><body>");
        out.println("<h2>页面2</h2>");
        if (session != null) {
            out.println("<p>会话ID: " + session.getId() + "</p>");
        } else {
            out.println("<p>没有会话</p>");
        }
        out.println("<p><a href='" + response.encodeURL("home") + "'>返回主页</a></p>");
        out.println("</body></html>");
    }
}