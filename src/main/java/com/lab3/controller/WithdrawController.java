package com.lab3.controller;

import com.lab3.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Crawlers on 5/3/2017.
 */
@WebServlet(name = "withdraw")
public class WithdrawController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String number = request.getParameter("number");
        String balance = request.getParameter("balance");
        Long accntNo = Long.parseLong(number);
        AccountService.getAccountService().withdraw(accntNo, Double.parseDouble(balance));
        response.sendRedirect("listAccount");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("number",request.getParameter("acc"));
        request.getRequestDispatcher("/view/withdraw.jsp").forward(request,response);
    }
}
