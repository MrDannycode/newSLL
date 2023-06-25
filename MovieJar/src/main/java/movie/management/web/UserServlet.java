package movie.management.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import movie.management.dao.*;
import movie.management.model.*;

/**
 * ControllerServlet.java
 * This servlet acts as a page controller for the application, handling all
 * requests from the user.
 */

@WebServlet("/")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MovieDao movieDao;

    public void init() {
    	movieDao = new MovieDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertMovie(request, response);
                    break;
                case "/delete":
                    deleteMovie(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    updateMovie(request, response);
                    break;
                default:
                    listMovie(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listMovie(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < Movie > listMovie = movieDao.getAllMovie();
        request.setAttribute("listMovie", listMovie);
        RequestDispatcher dispatcher = request.getRequestDispatcher("movie-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("movie-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Movie existingMovie = movieDao.getMovie(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("movie-form.jsp");
        request.setAttribute("movie", existingMovie);
        dispatcher.forward(request, response);

    }

    private void insertMovie(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String denumire = request.getParameter("denumire");
        String durata = request.getParameter("durata");
        String anAparitie = request.getParameter("anAparitie");
        Movie newMovie = new Movie();
        movieDao.saveMovie(newMovie);
        response.sendRedirect("list");
    }

    private void updateMovie(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String denumire = request.getParameter("denumire");
        String durata = request.getParameter("durata");
        String anAparitie = request.getParameter("anAparitie");

        Movie movie = new Movie();
        movieDao.updateMovie(movie);
        response.sendRedirect("list");
    }

    private void deleteMovie(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        movieDao.deleteMovie(id);
        response.sendRedirect("list");
    }
}