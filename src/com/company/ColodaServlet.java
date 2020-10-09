package com.company;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.xpath.XPath;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Collections;

public class ColodaServlet extends HttpServlet {
    public static  ArrayList<Card> Coloda (){
        ArrayList<Card> coloda = new ArrayList<>();
        String path = "C:\\Users\\DELL\\IdeaProjects\\CardPractise\\web\\image";
        File[] files = (new File(path)).listFiles();
        for(File file:files){
            coloda.add(new Card("image/"+file.getName()));
        }
        Collections.shuffle(coloda);
        return coloda;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Card> coloda = null;
        coloda = Coloda();
        req.setAttribute("Coloda",coloda);
        req.getRequestDispatcher("/jsp/showCard.jsp").forward(req, resp);
    }
}
