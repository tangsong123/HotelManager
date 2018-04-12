package com.hotel.filter;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;


//登录session问题
public class LoginFilter implements Filter {


    public LoginFilter() {
// TODO Auto-generated constructor stub
    }


    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        String url = req.getServletPath();
        System.out.println(url);
        Object loginUser = req.getSession().getAttribute("user");
// 若属于servlet操作
        if (url.indexOf("Servlet") != -1) {
            // 排除登录操作
            if (url.indexOf("LoginServlet") != -1) {
                chain.doFilter(req, response);
            }
            // 检验此操作是否存在loginsession
            else if (loginUser == null) {
// 如果不存在重新跳转登录页面
                request.setAttribute("msg", "1");
                request.getRequestDispatcher("/login.jsp").forward(request,
                        response);
            } else {
// 如果存在进行操作
                chain.doFilter(request, response);
            }
        } else {
            // 不属于servlet操作直接进行下一步
            chain.doFilter(request, response);
        }
    }


    public void init(FilterConfig fConfig) throws ServletException {


    }


    public void destroy() {


    }
}