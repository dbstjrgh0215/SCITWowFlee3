package com.scit.wow.dao;


import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.wow.vo.ExtraInfo;
import com.scit.wow.vo.Member;

@Repository
public class MemberDAO {

	@Autowired
	SqlSession sqlSession;
	
	public int insertMember(Member mem) {
		int result = 0;
		
		MemberMapper mm = sqlSession.getMapper(MemberMapper.class);
		
		try {
			result = mm.insertMember(mem);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public Member login(Member mem) {
		Member success = null;
		
		MemberMapper mm = sqlSession.getMapper(MemberMapper.class);
		
		try {
			success = mm.login(mem);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return success;
	}
	
	
	public int insertExtraInfo(ExtraInfo extraInfo) {
		int result = 0;
		
		MemberMapper mm = sqlSession.getMapper(MemberMapper.class);
		
		try {
			result = mm.insertExtraInfo(extraInfo);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 자동로그인 체크한 경우에 사용자 테이블에 세션과 유효시간을 저장하기 위한 메서드
    public void keepLogin(String id, String sessionId, Date next){
         
        Map<String, Object> map = new HashMap<String,Object>();
        map.put("userId", id);
        map.put("sessionId", sessionId);
        map.put("next", next);
         
        // Mapper.xml로 데이터를 전달할 때 한 객체밖에 전달 못함으로 map으로 묶어서 보내줌 단... 주의할 점은
        // Mapper.xml 안에서 #{} 이 안에 지정한 이름이랑 같아야함.. 자동으로 매핑될 수 있도록
        // 아래가 수행되면서, 사용자 테이블에 세션id와 유효시간이 저장됨
        MemberMapper mm = sqlSession.getMapper(MemberMapper.class);
		
		try {
			mm.keepLogin(map);
		} catch(Exception e) {
			e.printStackTrace();
		}
         
    }
 
    // 이전에 로그인한 적이 있는지, 즉 유효시간이 넘지 않은 세션을 가지고 있는지 체크한다.
    public Member checkUserWithSessionKey(String sessionId){
    	Member mem = null;
    	
    	MemberMapper mm = sqlSession.getMapper(MemberMapper.class);
		
		try {
			mem = mm.checkUserWithSessionKey(sessionId);
		} catch(Exception e) {
			e.printStackTrace();
		}
        // 유효시간이 남아있고(>now()) 전달받은 세션 id와 일치하는 사용자 정보를 꺼낸다.
        return mem;
     
    }

	
}
