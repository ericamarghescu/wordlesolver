package com.erica.wordlesolver;

import java.io.*;
import java.util.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "generatorServlet", value = "/generator-servlet")
public class GeneratorServlet extends HttpServlet {

    public void init() {
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Map<String, Integer> reqLetters = new HashMap<>();
        Set<String> varLetters = new HashSet<>();
        String test = request.getParameter("letter1");
        if (request.getParameter("letter1") != null) {
            if (request.getParameter("color1").equals("green")) {
                reqLetters.put(request.getParameter("letter1"), 0);
            } else {
                varLetters.add(request.getParameter("letter1"));
            }
        }
        if (request.getParameter("letter2") != null) {
            if (request.getParameter("color2").equals("green")) {
                reqLetters.put(request.getParameter("letter2"), 1);
            } else {
                varLetters.add(request.getParameter("letter2"));
            }
        }
        if (request.getParameter("letter3") != null) {
            if (request.getParameter("color3").equals("green")) {
                reqLetters.put(request.getParameter("letter3"), 2);
            } else {
                varLetters.add(request.getParameter("letter3"));
            }
        }
        if (request.getParameter("letter4") != null) {
            if (request.getParameter("color4").equals("green")) {
                reqLetters.put(request.getParameter("letter4"), 3);
            } else {
                varLetters.add(request.getParameter("letter4"));
            }
        }
        if (request.getParameter("letter5") != null) {
            if (request.getParameter("color5").equals("green")) {
                reqLetters.put(request.getParameter("letter5"), 4);
            } else {
                varLetters.add(request.getParameter("letter5"));
            }
        }
        Set<String> keys = reqLetters.keySet();
        InputStream is = getClass().getClassLoader().getResourceAsStream("words");
        Scanner scanner = new Scanner(is);
        String[] validWords = new String[12974];
        int i = 0;
        while(scanner.hasNextLine()) {
            String curr = scanner.nextLine();
            boolean isValid = true;

            for (String s : keys) {
                char c = s.charAt(0);
                if (curr.charAt(reqLetters.get(s)) != c) {
                    isValid = false;
                }
            }

            Iterator<String> it = varLetters.iterator();

            while (it.hasNext()) {
                if (!curr.contains(it.next())) {
                    isValid = false;
                }
            }

            if (isValid) {
                validWords[i++] = curr;
            }

        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        for (String s : validWords) {
            if (s != null) {
                out.println("<html><body>");
                out.println("<h1>" + s + "</h1>");
                out.println("</body></html>");
            }
        }
    }

    public void destroy() {
    }
}