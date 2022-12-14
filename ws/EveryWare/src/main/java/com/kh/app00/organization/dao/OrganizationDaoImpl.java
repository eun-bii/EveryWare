package com.kh.app00.organization.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.app00.common.PageVo;
import com.kh.app00.emp.vo.EmpVo;
import com.kh.app00.organization.vo.CeoVo;
import com.kh.app00.organization.vo.ComVo;
import com.kh.app00.organization.vo.DeptVo;
import com.kh.app00.organization.vo.JobVo;
import com.kh.app00.organization.vo.RankVo;

@Repository
public class OrganizationDaoImpl implements OrganizationDao {

	//임직원 정보 불러오기
	@Override
	public List<EmpVo> selectEmpList(SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("organizationMapper.selectEmpList");
	}

	//이름으로 임직원 정보 불러오기
	@Override
	public List<EmpVo> selectEmpListByWord(SqlSessionTemplate sqlSessionTemplate, String word) {
		return sqlSessionTemplate.selectList("organizationMapper.selectEmpListByWord", word);
	}

	//부서 정보 가져오기
	@Override
	public List<DeptVo> selectDeptList(SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("organizationMapper.selectDeptList");
	}

	//임직원 관리 - 페이징 카운트
	@Override
	public int selectCountAll(SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectOne("organizationMapper.selectCountAll");
	}

	//임직원 관리 - 페이징
	@Override
	public List<EmpVo> selectEmpListByPage(SqlSessionTemplate sqlSessionTemplate, PageVo pv) {
		
		int offset = (pv.getCurrentPage() - 1) * pv.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset , pv.getBoardLimit()); //RowBounds(오프셋, 리밋)
		
		return sqlSessionTemplate.selectList("organizationMapper.selectEmpListByPage",null,rowBounds);
	}

	//임직원 추가
	@Override
	public int insertEmp(SqlSessionTemplate sqlSessionTemplate, EmpVo empVo) {
		return sqlSessionTemplate.insert("organizationMapper.insertEmp",empVo);
	}

	//직위 리스트 가져오기
	@Override
	public List<RankVo> selectRankList(SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("organizationMapper.selectRankList");
	}

	//직무 리스트 가져오기
	@Override
	public List<JobVo> selectJobList(SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("organizationMapper.selectJobList");
	}

	//아이디 중복체크
	@Override
	public int checkIdDup(SqlSessionTemplate sqlSessionTemplate, String id) {
		return sqlSessionTemplate.selectOne("organizationMapper.checkIdDup",id);
	}

	//임직원 검색
	@Override
	public List<EmpVo> selectEmpListByEmpData(SqlSessionTemplate sqlSessionTemplate,String empData) {
		return sqlSessionTemplate.selectList("organizationMapper.selectEmpListByEmpName",empData);
	}

	//임직원 관리 - 체크된 임직원 직위 변경
	@Override
	public int updateCheckedRank(SqlSessionTemplate sqlSessionTemplate, Map<String, List<String>> updateTarget) {
		return sqlSessionTemplate.update("organizationMapper.updateCheckedRank",updateTarget);
	}

	//변경된 직위 확인
	@Override
	public EmpVo selectUpdatedRank(SqlSessionTemplate sqlSessionTemplate, String updatedEmpCode) {
		return sqlSessionTemplate.selectOne("organizationMapper.selectUpdatedRank",updatedEmpCode);
	}

	//임직원 관리 - 체크된 임직원 직무 변경
	@Override
	public int updateCheckedJob(SqlSessionTemplate sqlSessionTemplate, Map<String, List<String>> updateTarget) {
		return sqlSessionTemplate.update("organizationMapper.updateCheckedJob",updateTarget);
	}

	//변경된 직무 확인
	@Override
	public String selectUpdatedJob(SqlSessionTemplate sqlSessionTemplate, String updatedEmpCode) {
		return sqlSessionTemplate.selectOne("organizationMapper.selectUpdatedJob",updatedEmpCode);
	}

	//임직원 관리 - 체크된 임직원 부서 변경
	@Override
	public int updateCheckedDept(SqlSessionTemplate sqlSessionTemplate, Map<String, List<String>> updateTarget) {
		return sqlSessionTemplate.update("organizationMapper.updateCheckedDept",updateTarget);
	}

	//변경된 직무 확인
	@Override
	public String selectUpdatedDept(SqlSessionTemplate sqlSessionTemplate, String updatedEmpCode) {
		return sqlSessionTemplate.selectOne("organizationMapper.selectUpdatedDept",updatedEmpCode);
	}

	//임직원 관리 - 체크된 임직원 부서 변경
	@Override
	public int updateCheckedStatus(SqlSessionTemplate sqlSessionTemplate, Map<String, List<String>> updateTarget) {
		return sqlSessionTemplate.update("organizationMapper.updateCheckedStatus",updateTarget);
	}

	//변경된 상태 확인
	@Override
	public String selectUpdatedStatus(SqlSessionTemplate sqlSessionTemplate, String updatedEmpCode) {
		return sqlSessionTemplate.selectOne("organizationMapper.selectUpdatedStatus",updatedEmpCode);
	}

	//임직원 관리 - 체크된 임직원 파일명 변경
	@Override
	public int updateCheckedFileName(SqlSessionTemplate sqlSessionTemplate, Map<String, List<String>> updateTarget) {
		return sqlSessionTemplate.update("organizationMapper.updateCheckedFileName",updateTarget);
	}

	//임직원 관리 - 변경된 파일명 확인
	@Override
	public String selectUpdatedFileName(SqlSessionTemplate sqlSessionTemplate, String updatedEmpCode) {
		return sqlSessionTemplate.selectOne("organizationMapper.selectUpdatedFileName",updatedEmpCode);
	}

	//권한 관리 - 관리자 불러오기
	@Override
	public List<EmpVo> selectAdminList(SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("organizationMapper.selectAdminList");
	}

	//권한 관리 - 관리자 삭제
	@Override
	public int updateAdmin(SqlSessionTemplate sqlSessionTemplate, String adminCode) {
		return sqlSessionTemplate.update("organizationMapper.updateAdmin",adminCode);
	}

	//권한 관리 - 임직원 검색
	@Override
	public List<EmpVo> selectEmpListForAdmin(SqlSessionTemplate sqlSessionTemplate, String word) {
		return sqlSessionTemplate.selectList("organizationMapper.selectEmpListForAdmin",word);
	}

	//권한 관리 - 관리자 추가
	@Override
	public int updateEmpToAdmin(SqlSessionTemplate sqlSessionTemplate, Map<String, List<String>> updateTarget) {
		return sqlSessionTemplate.update("organizationMapper.updateEmpToAdmin",updateTarget);
	}

	//포지션 관리 - 직위 불러오기
	@Override
	public List<RankVo> selectRankListForManagement(SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("organizationMapper.selectRankListForManagement");
	}

	//직위 추가 
	@Override
	public int insertRank(SqlSessionTemplate sqlSessionTemplate, RankVo rankVo) {
		return sqlSessionTemplate.insert("organizationMapper.insertRank",rankVo);
	}

	//직위 수정
	@Override
	public int updateRankName(SqlSessionTemplate sqlSessionTemplate, Map<String, List<String>> updateTarget) {
		return sqlSessionTemplate.update("organizationMapper.updateRankName",updateTarget);
	}

	//직위 삭제
	@Override
	public int updateRankToDelete(SqlSessionTemplate sqlSessionTemplate, List<String> rankCodeList) {
		return sqlSessionTemplate.update("organizationMapper.updateRankToDelete",rankCodeList);
	}

	//직무 추가
	@Override
	public int insertJob(SqlSessionTemplate sqlSessionTemplate, String replacedJobName) {
		return sqlSessionTemplate.insert("organizationMapper.insertJob",replacedJobName);
	}

	//직무 수정
	@Override
	public int updateJob(SqlSessionTemplate sqlSessionTemplate, Map<String, String> jobNameMap) {
		return sqlSessionTemplate.update("organizationMapper.updateJob",jobNameMap);
	}

	//직무 삭제
	@Override
	public int updateJobToD(SqlSessionTemplate sqlSessionTemplate, String jobName) {
		return sqlSessionTemplate.update("organizationMapper.updateJobToD",jobName);
	}

	//임직원 관리 - 임직원정보 수정
	@Override
	public int updateEmp(SqlSessionTemplate sqlSessionTemplate, EmpVo empVo) {
		return sqlSessionTemplate.update("organizationMapper.updateEmp",empVo);
	}

	//부서관리 - 부서 가져오기 (id==deptCode)
	@Override
	public List<DeptVo> selectDeptListForChart(SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("organizationMapper.selectDeptListForChart");
	}

	//부서관리 - 부서검색
	@Override
	public List<DeptVo> selectDeptListByWord(SqlSessionTemplate sqlSessionTemplate, String word) {
		return sqlSessionTemplate.selectList("organizationMapper.selectDeptListByWord", word);
	}

	
	//부서관리 - 부서추가
	@Override
	public int insertDept(SqlSessionTemplate sqlSessionTemplate, Map<String, List<String>> insertTarget) {
		return sqlSessionTemplate.insert("organizationMapper.insertDept",insertTarget);
	}

	//부서관리 - 부서수정을 위한 부서 선택
	@Override
	public List<DeptVo> selectDeptListForEdit(SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectList("organizationMapper.selectDeptListForEdit");
	}

	//부서관리 - 부서수정
	@Override
	public int updateDept(SqlSessionTemplate sqlSessionTemplate, Map<String, List<DeptVo>> targetMap) {
		return sqlSessionTemplate.update("organizationMapper.updateDept",targetMap);
	}


	//사원 수 가져오기
	@Override
	public String selectEmpCnt(SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectOne("organizationMapper.selectEmpCnt");
	}

	//부서관리 - 부서삭제
	@Override
	public int deleteDept(SqlSessionTemplate sqlSessionTemplate, Map<String, List<String>> targetMap) {
		return sqlSessionTemplate.update("organizationMapper.updateDeptStatus",targetMap);
	}

	//홈페이지 - 회사 정보 가져오기
	@Override
	public ComVo selectComData(SqlSessionTemplate sqlSessionTemplate, String comCode) {
		return sqlSessionTemplate.selectOne("organizationMapper.selectComData",comCode);
	}

	//홈페이지 - ceo 정보 가져오기
	@Override
	public CeoVo selectCeoData(SqlSessionTemplate sqlSessionTemplate, String comCode) {
		return sqlSessionTemplate.selectOne("organizationMapper.selectCeoData",comCode);
	}

	//홈페이지 - 해당 임직원이 소속된 부서의 인원수 가져오기
	@Override
	public String selectEmpCntInDept(SqlSessionTemplate sqlSessionTemplate, String deptCode) {
		return sqlSessionTemplate.selectOne("organizationMapper.selectEmpCntInDept",deptCode);
	}



	
	

}
