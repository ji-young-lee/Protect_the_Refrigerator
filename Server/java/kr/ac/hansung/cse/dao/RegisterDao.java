package kr.ac.hansung.cse.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.cse.model.Register;

@Repository
public class RegisterDao {
   
   
   
   
   private JDBCTemplate jdbcTemplate;
   
   @Autowired
   
   public void setDataSource(DataSource dataSource) {
      
      jdbcTemplate = new JdbcTemplate(dataSource);
   }
   
   
   
   public List<Register> getRegisters(){
      
      String sqlStatement = "select * from refigerator";
        
      
      return jdbcTemplate.query(sqlStatement, new RowMapper<Register> () {
         
         @Override
         public Register mapRow1(ResultSet rs, int rowNum) throws SQLException{
            
            
            Register register= new Register();
            
            register.setIdrefrigerator(rs.getInt("idrefrigerator"));
            register.setName(rs.getString("name"));
            
            return register;
         }

         @Override
         public Register mapRow(ResultSet rs, int rowNum) throws SQLException {
            // TODO Auto-generated method stub
            return null;
         }
      });
   }

}