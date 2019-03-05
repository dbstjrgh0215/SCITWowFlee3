package com.scit.wow.dao;

import java.util.HashMap;
import java.util.Map;

import com.scit.wow.vo.ExtraInfo;
import com.scit.wow.vo.Member;

public interface MemberMapper {
	public int insertMember(Member mem);
	public Member login(Member mem);
	public int insertExtraInfo(ExtraInfo extraInfo);
	// �ڵ��α��� üũ�� ��쿡 ����� ���̺� ���ǰ� ��ȿ�ð��� �����ϱ� ���� �޼���
    public void keepLogin(Map<String, Object> map);
     
    // ������ �α����� ���� �ִ���, �� ��ȿ�ð��� ���� ���� ������ ������ �ִ��� üũ�Ѵ�.
    public Member checkUserWithSessionKey(String sessionId);

}
