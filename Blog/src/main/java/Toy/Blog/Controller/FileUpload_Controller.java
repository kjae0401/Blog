package Toy.Blog.Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;

@Controller
public class FileUpload_Controller extends HttpServlet {
	@RequestMapping(value = "fileupload.do", method=RequestMethod.POST)
	@ResponseBody
	public String fileupload(HttpServletRequest request, HttpServletResponse response,
			MultipartHttpServletRequest multiFile) throws Exception {
		JsonObject json = new JsonObject();
		PrintWriter printWritter = null;
		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");
		
		if (file != null) {
			if (file.getSize() > 0 && !file.getName().contains(" ")) {
				if (file.getContentType().toLowerCase().startsWith("image/")) {
					try {
						String fileName = file.getName();
						byte[] bytes = file.getBytes();
						String uploadPath = request.getServletContext().getRealPath("/img");
						File uploadFile = new File(uploadPath);
						
						if (!uploadFile.exists()) {
							uploadFile.mkdirs();
						}
						
						fileName = UUID.randomUUID().toString();
						uploadPath = uploadPath + "/" + fileName;
						
						out = new FileOutputStream(new File(uploadPath));
						out.write(bytes);
						
						printWritter = response.getWriter();
						response.setContentType("text/html");
						String fileUrl = request.getContextPath() + "/img/" + fileName;
						
						json.addProperty("uploaded", 1);
						json.addProperty("fileName", fileName);
						json.addProperty("url", fileUrl);
						
						printWritter.println(json);
					} catch (IOException e) {
						e.printStackTrace();
					} finally {
						if (out != null)
							out.close();
						if (printWritter != null)
							printWritter.close();
					}
				}
			}
		}
		
		return null;
	}
}