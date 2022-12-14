package com.kh.app00.contacts.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.app00.common.PageVo;
import com.kh.app00.contacts.dao.ContactsDao;
import com.kh.app00.contacts.vo.ContactsVo;

@Service
public class ContactsServiceImpl implements ContactsService{

	private final ContactsDao dao;
	private final SqlSessionTemplate sst;
	
	@Autowired
	public ContactsServiceImpl(ContactsDao dao, SqlSessionTemplate sst) {
		this.dao = dao;
		this.sst = sst;
	}


	//주소록 목록
	@Override
	public List<ContactsVo> selectList(PageVo pv) {
		return dao.selectList(sst, pv);
	}

	//주소록 삭제
	@Override
	public int delete(String no) {
		return dao.delete(sst, no);
	}

	//주소록 작성
	@Override
	public int write(ContactsVo vo) {
		return dao.insertContacts(sst, vo);
	}

	//주소록 상세조회
	@Override
	public ContactsVo selectOne(String no) {
		return dao.selectOne(sst, no);
	}

	//주소록 수정
	@Override
	public int edit(ContactsVo vo) {
		return dao.updateOne(sst , vo);
	}

	//주소록 게시글 갯수 조회
	@Override
	public int selectTotalCnt() {
		return dao.selectCountAll(sst);
	}

}