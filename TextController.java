/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;



/**
 *
 * @author Baktiyar
 */
@Controller
public class TextController {
    @Autowired
     private JdbcTemplate jdbcTemplate;
    @RequestMapping(value="/newjsp.html")
    @SuppressWarnings("empty-statement")
    public ModelAndView newjsp(){
        String txt="";
        
        try{
        txt = jdbcTemplate.queryForObject("SELECT text FROM test WHERE id = 1", String.class);
        }catch(Exception e){
             System.out.println(e);
        }
        
       return new ModelAndView("newjsp", "message", txt);
    }   
}
