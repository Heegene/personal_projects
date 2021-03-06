package org.edwith.webbe.guestbook.dao;

import org.edwith.webbe.guestbook.dto.Guestbook;
import org.edwith.webbe.guestbook.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class GuestbookDao {
	public List<Guestbook> getGuestbooks() {
		List<Guestbook> list = new ArrayList<>();
		String sql = "SELECT * FROM guestbook ORDER BY id DESC";

		try ( // try-with-resources 사용(automatic close 처리용 - meomry leak 방지 )
				Connection conn = DBUtil.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) { // try 절 시작

			while (rs.next()) {
				Long id = rs.getLong(1);
				String name = rs.getString(2);
				String content = rs.getString(3);
				Date regdate = rs.getDate(4);

				Guestbook guestbook = new Guestbook(id, name, content, regdate);

				list.add(guestbook);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public void addGuestbook(Guestbook guestbook) throws SQLException {
		// GuestBook 형태의 argument guestbook을 받아서 진행할 것
		// MySQL 버전으로할때는 sysdate 안되므로 참고 및 수정
		// String sql = "INSERT INTO guestbook VALUES (?, ?, ?, sysdate)";
		String sql = "INSERT INTO guestbook VALUES (id, ?, ?, now())";

		try ( // try-with-resources 사용(automatic close 처리용)
				Connection conn = DBUtil.getConnection();
				PreparedStatement ps = conn.prepareStatement(sql);) { // try 절 시작
			int resultcount = 0;

			// ps.setLong(1, guestbook.getId()+1);
			// 이부분 MySQL버전으로 작성 시 추가 수정이 필요함
			// MySql에서 auto increment로 처리할 것
			// ps.setLong(1, 1991); // 임시로 id 값을 넣어주었음

			// Mysql 버전은 auto increment 가 id에 적용되었으므로
			// 그냥 id를 넣어주고, Oracle로 적용했을 때는
			// max 값에서 +1 이런식으로 설정해도 됨

			ps.setString(1, guestbook.getName());
			ps.setString(2, guestbook.getContent());

			resultcount = ps.executeUpdate();

			if (resultcount > 0) {
				System.out.println("입력에 성공하였습니다. ");
			} else {
				System.out.println("입력에 실패하였습니다. ");

			}

		}
	}
}
