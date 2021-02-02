package kr.login.model;

import java.util.List;

public interface MemberDAO {
	public List<MemberVO> memberList(); //회원 전체 목록
	public int memberInsert(MemberVO vo); //회원 가입
	public int memberDelete(int num); //회원삭제
	public MemberVO memberContent(int num); //회원정보 보기
	public int memberUpdate(MemberVO vo); //회원정보 수정
	//로그인이되면 로그인한 사람의 정보가 있어야 하므로 매개변수를 MemberVO로 받아야함
	public MemberVO memberLogin(MemberVO vo); //로그인( id와 pw 를 넘기는데 이를 한개 vo로 넘기면된다.)
}
