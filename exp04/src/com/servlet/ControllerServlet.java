package com.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import com.cart.*;

@WebServlet("/controller")
public class ControllerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if ("delete".equals(action)) {
            // 处理删除商品请求
            deleteItem(request, response);
        } else if ("updateItem".equals(action)) {
            // 处理更新商品请求
            updateItem(request, response);
        } else {
            // 显示购物车
            showCart(request, response);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if ("修改".equals(action) || "批量修改".equals(action)) {
            // 处理更新商品请求
            updateItem(request, response);
        } else {
            // 其他POST请求
            showCart(request, response);
        }
    }
    
    // 显示购物车
    private void showCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("showCart.jsp").forward(request, response);
    }
    
    // 删除商品
    private void deleteItem(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
        
        if (cart != null) {
            String idStr = request.getParameter("id");
            if (idStr != null && !idStr.isEmpty()) {
                int id = Integer.parseInt(idStr);
                cart.remove(id);
            }
        }
        
        showCart(request, response);
    }
    
    // 更新商品
    private void updateItem(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
        
        if (cart != null) {
            // 方式1：通过查询参数更新单个商品
            String idStr = request.getParameter("id");
            String quantityStr = request.getParameter("quantity_" + idStr);
            
            if (idStr != null && !idStr.isEmpty() && quantityStr != null && !quantityStr.isEmpty()) {
                int id = Integer.parseInt(idStr);
                int quantity = Integer.parseInt(quantityStr);
                
                // 创建临时商品对象用于更新
                GoodsItem item = new GoodsItem();
                item.setId(id);
                item.setQuantity(quantity);
                
                cart.update(item);
            } else {
                // 方式2：批量更新所有商品
                for (GoodsItem item : cart.getItems()) {
                    String qtyStr = request.getParameter("quantity_" + item.getId());
                    if (qtyStr != null && !qtyStr.isEmpty()) {
                        int quantity = Integer.parseInt(qtyStr);
                        item.setQuantity(quantity);
                    }
                }
            }
        }
        
        showCart(request, response);
    }
}