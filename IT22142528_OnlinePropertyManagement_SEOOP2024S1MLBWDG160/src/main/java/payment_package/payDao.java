package payment_package;

import java.util.*;
import java.sql.*;

public class payDao {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payment", "root", "2002");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int save(pay e) {
		int status = 0;
		try {
			Connection con = payDao.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into payment(name,email,amount,cardname,cardnumber,expmonth,expyear,cvv) values (?,?,?,?,?,?,?,?)");
			ps.setString(1, e.getName());
			ps.setString(2, e.getEmail());
			ps.setString(3, e.getAmount());
			ps.setString(4, e.getCardname());
			ps.setString(5, e.getCardnumber());
			ps.setString(6, e.getExpmonth());
			ps.setString(7, e.getExpyear());
			ps.setString(8, e.getCvv());

			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int update(pay e) {
		int status = 0;
		try {
			Connection con = payDao.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"update payment set name=?,email=?,amount=?,cardname=?,cardnumber=?,expmonth=?,expyear=?,cvv=? where id=?");
			ps.setString(1, e.getName());
			ps.setString(2, e.getEmail());
			ps.setString(3, e.getAmount());
			ps.setString(4, e.getCardname());
			ps.setString(5, e.getCardnumber());
			ps.setString(6, e.getExpmonth());
			ps.setString(7, e.getExpyear());
			ps.setString(8, e.getCvv());
			ps.setInt(9, e.getId());

			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int delete(int id) {
		int status = 0;
		try {
			Connection con = payDao.getConnection();
			PreparedStatement ps = con.prepareStatement("delete from payment where id=?");
			ps.setInt(1, id);
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public static pay getpaymentById(int id) {
		pay e = new pay();

		try {
			Connection con = payDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from payment where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setEmail(rs.getString(3));
				e.setAmount(rs.getString(4));
				e.setCardname(rs.getString(5));
				e.setCardnumber(rs.getString(6));
				e.setExpmonth(rs.getString(7));
				e.setExpyear(rs.getString(8));
				e.setCvv(rs.getString(9));
			}
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return e;
	}

	public static List<pay> getAllpayment() {
		List<pay> list = new ArrayList<pay>();

		try {
			Connection con = payDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from payment");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				pay e = new pay();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setEmail(rs.getString(3));
				e.setAmount(rs.getString(4));
				e.setCardname(rs.getString(5));
				e.setCardnumber(rs.getString(6));
				e.setExpmonth(rs.getString(7));
				e.setExpyear(rs.getString(8));
				e.setCvv(rs.getString(9));
				list.add(e);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}