/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author magoc
 */
@MultipartConfig(maxFileSize = 1000*1000*5, maxRequestSize = 1000*1000*25, fileSizeThreshold = 1000*1000)
public class AddData extends HttpServlet {


    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        
        Collection<Part> imagesCollection = request.getParts();
        List<Part> images = new ArrayList<>(imagesCollection);
        
        //Part image = request.getPart("images");
        
        String path = request.getServletContext().getRealPath("");
        File fileSaveDir = new File(path + "ImagesUsers");
        if(!fileSaveDir.exists()){
            fileSaveDir.mkdir();
        }
        /*
        //Resguardamos la imagen
        String contentType = image.getContentType();//Resguarden esto para saber el tipo
        String nameImage =  image.getName() + System.currentTimeMillis() + ".png";
        images.write(path + "ImagesUsers/" + nameImage);
        */
        
        for(Part img : images){
            String contentType = img.getContentType();//Resguarden esto para saber el tipo
            
            if(contentType == null)
                continue;
            
            String nameImage =  img.getName() + System.currentTimeMillis() + ".png";
            img.write(path + "ImagesUsers/" + nameImage);
        }
        
        response.setContentType("text/plain");
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println(name + ", " + description);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
