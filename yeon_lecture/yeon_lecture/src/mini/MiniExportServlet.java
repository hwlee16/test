package mini;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jxl.Workbook;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
/**
 * Servlet implementation class MiniExportServlet
 */
@WebServlet(description = "엑셀다운로드 서블릿", urlPatterns = { "/MiniExportServlet" })
public class MiniExportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MiniExportServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String result = request.getParameter("result");
		String filepath = "/usr/loca/temp";
		
		WritableWorkbook workbook = null;
		
		String filename = "mini.xls";
		try {
			workbook = Workbook.createWorkbook(new File(filepath + filename));
//			20.02.07 여기까지 작성 - https://blog.acronym.co.kr/367
			WritableSheet sheet = workbook.createSheet("Mini", 0);
			
			String[] records = result.split("\r\n");
			for(int i=0; i< records.length ; i++) {
				String[] cells = records[i].split(",");
				for(int j = 0; j <cells.length;j++) {
//					sheet.addCell(new Label(j,i,cells[j]));
				}
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(workbook != null) {workbook.close();} else {}
			}catch(Exception ignored) {}
		}
		
	}

}
