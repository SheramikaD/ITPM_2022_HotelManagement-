package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ItemDao;
import dao.ItemDaoImpl;
import dao.ItemDao;
import dao.ItemDaoImpl;
import model.Item;
import model.Item;


@WebServlet("/ItemServlet")
public class ItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	RequestDispatcher dispatcher = null;
	ItemDao itemDao = null;
       
    
    public ItemServlet() {
    	itemDao = new ItemDaoImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if (action == null) {
			action = "LIST";
		}
		switch (action) {
		case "LIST":
			listItem(request, response);
			break;

		case "DELETE":
			deleteSingleItem(request, response);
			break;
			
		case "EDIT":
			getSingleItem(request, response);
			break;
			
		default:
			listItem(request, response);
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");

		Item i = new Item();
		
		i.setItem_cat(request.getParameter("item_id"));
		i.setItem_name(request.getParameter("item_name"));
		i.setPrice(request.getParameter("price"));
//		i.setItemfor(request.getParameter("for"));
		

		
		if(id.isEmpty() || id == null) {
			itemDao.save(i);
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.print("alert('Item inserted Successfully.');");
			out.println("location='ItemServlet'");
			out.println("</script>");
			
		} else {
			i.setId(Integer.parseInt(id));
			itemDao.update(i);
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.print("alert('Item updated Successfully.');");
			out.println("location='ItemServlet'");
			out.println("</script>");
		}

	}
	
	public void listItem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Item> list = itemDao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/items.jsp");
		dispatcher.forward(request, response);

	}

	private void deleteSingleItem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		if (itemDao.delete(Integer.parseInt(id))) {
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.print("alert('Item deleted Successfully.');");
			out.println("location='ItemServlet'");
			out.println("</script>");
		}
	}
	private void getSingleItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Item item = itemDao.get(Integer.parseInt(id));
		request.setAttribute("item", item);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin_item.jsp");
		dispatcher.forward(request, response);
	}

}
