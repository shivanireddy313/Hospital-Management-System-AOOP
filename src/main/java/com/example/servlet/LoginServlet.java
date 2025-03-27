package com.example.servlet;

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
import java.io.IOException;



@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // MongoDB Connection URI
    private static final String MONGO_URI = "mongodb://localhost:27017";
    private static final String DB_NAME = "userDB";
    private static final String COLLECTION_NAME = "users";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username == null || password == null) {
            response.getWriter().write("Missing parameters!");
            return;
        }

        // Connect to MongoDB and check user credentials
        try (MongoClient mongoClient = MongoClients.create(MONGO_URI)) {
            MongoDatabase database = mongoClient.getDatabase(DB_NAME);
            MongoCollection<Document> collection = database.getCollection(COLLECTION_NAME);

            // Find user by username
            Document user = collection.find(new Document("username", username)).first();

            if (user != null && user.getString("password").equals(password)) {
                // If user found and password matches, redirect to a success page (or home page)
                response.sendRedirect("home.jsp");
            } else {
                // If credentials are incorrect, send error message to login page
                response.sendRedirect("login.jsp?message=Invalid%20username%20or%20password");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error during login");
        }
    }
}
