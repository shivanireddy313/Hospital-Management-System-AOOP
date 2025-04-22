package com.example.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

@WebServlet("/RegisterLoginLogic/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // MongoDB Connection URI
    private static final String MONGO_URI = "mongodb://localhost:27017";
    private static final String DB_NAME = "userDB";
    private static final String COLLECTION_NAME = "users";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email == null || password == null) {
            response.getWriter().write("Missing parameters!");
            return;
        }

        // Connect to MongoDB and verify user credentials
        try (MongoClient mongoClient = MongoClients.create(MONGO_URI)) {
            MongoDatabase database = mongoClient.getDatabase(DB_NAME);
            MongoCollection<Document> collection = database.getCollection(COLLECTION_NAME);

            Document user = collection.find(new Document("email", email).append("password", password)).first();

            if (user != null) {
                // Successful login
                response.sendRedirect("welcome.jsp"); // Redirect to a welcome page
            } else {
                // Invalid credentials
                response.getWriter().write("Invalid email or password!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error accessing database");
        }
    }
}
