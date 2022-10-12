package com.kh.app00.approval.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.app00.approval.vo.DocFormMapperVo;
import com.kh.app00.approval.vo.DocFormVo;
import com.kh.app00.approval.vo.DocPeriodVo;
import com.kh.app00.approval.vo.DocSecurityVo;

public interface ApprovalDao {
	
	//문서종류 불러오기
	List<DocFormVo> selectFormList(SqlSessionTemplate sst);

	//보존연한 불러오기
	List<DocPeriodVo> selectPeriodList(SqlSessionTemplate sst);
	
	//보안등급 불러오기
	List<DocSecurityVo> selectSecurityList(SqlSessionTemplate sst);
	
	//양식항목
	List<DocFormMapperVo> formSelect(SqlSessionTemplate sst, String formCode);

	
}
