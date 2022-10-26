package com.kh.app00.notice.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.kh.app00.notice.dao.NoticeDao;
import com.kh.app00.notice.vo.NoticeVo;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	private final NoticeDao dao;
	private final SqlSessionTemplate sst;
	
	public NoticeServiceImpl(NoticeDao dao, SqlSessionTemplate sst) {
		this.dao = dao;
		this.sst = sst;
	}

	//사내공지 목록 조회
	@Override
	public List<NoticeVo> selectList() {
		return dao.selectList(sst);
	}
	
	//사내공지 작성
	@Override
	public int write(NoticeVo vo) {
		return dao.insertNotice(sst, vo);
	}

	@Override
	public NoticeVo selectOne(String noticeCode) {
		int result = dao.increaseHit(sst, noticeCode);
		if(result == 1) {
			return dao.selectOne(sst , noticeCode);
		}else {
			return null;
		}
	}
}
