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
	
	// �ڵ��α��� üũ�� ��쿡 ����� ���̺� ���ǰ� ��ȿ�ð��� �����ϱ� ���� �޼���
    public void keepLogin(String id, String sessionId, Date next){
         
        Map<String, Object> map = new HashMap<String,Object>();
        map.put("userId", id);
        map.put("sessionId", sessionId);
        map.put("next", next);
         
        // Mapper.xml�� �����͸� ������ �� �� ��ü�ۿ� ���� �������� map���� ��� ������ ��... ������ ����
        // Mapper.xml �ȿ��� #{} �� �ȿ� ������ �̸��̶� ���ƾ���.. �ڵ����� ���ε� �� �ֵ���
        // �Ʒ��� ����Ǹ鼭, ����� ���̺� ����id�� ��ȿ�ð��� �����
        MemberMapper mm = sqlSession.getMapper(MemberMapper.class);
		
		try {
			mm.keepLogin(map);
		} catch(Exception e) {
			e.printStackTrace();
		}
         
    }
 
    // ������ �α����� ���� �ִ���, �� ��ȿ�ð��� ���� ���� ������ ������ �ִ��� üũ�Ѵ�.
    public Member checkUserWithSessionKey(String sessionId){
    	Member mem = null;
    	
    	MemberMapper mm = sqlSession.getMapper(MemberMapper.class);
		
		try {
			mem = mm.checkUserWithSessionKey(sessionId);
		} catch(Exception e) {
			e.printStackTrace();
		}
        // ��ȿ�ð��� �����ְ�(>now()) ���޹��� ���� id�� ��ġ�ϴ� ����� ������ ������.
        return mem;
     
    }

	
}
