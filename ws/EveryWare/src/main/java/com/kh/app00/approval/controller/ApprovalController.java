package com.kh.app00.approval.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.kh.app00.approval.doc.vo.DocCommentVo;
import com.kh.app00.approval.doc.vo.DocDataVo;
import com.kh.app00.approval.doc.vo.DocFormDetailTemplateVo;
import com.kh.app00.approval.doc.vo.DocFormMapperVo;
import com.kh.app00.approval.doc.vo.DocFormVo;
import com.kh.app00.approval.doc.vo.DocPeriodVo;
import com.kh.app00.approval.service.ApprovalService;
import com.kh.app00.approval.vo.ApprovalDocVo;
import com.kh.app00.approval.vo.ApprovalFileVo;
import com.kh.app00.approval.vo.ApprovalListVo;
import com.kh.app00.approval.vo.ApprovalRefVo;
import com.kh.app00.approval.vo.ApprovalTypeVo;
import com.kh.app00.common.PageVo;
import com.kh.app00.common.Pagination;
import com.kh.app00.common.Path;
import com.kh.app00.emp.vo.EmpVo;
import com.kh.app00.organization.vo.DeptVo;

@Controller
@RequestMapping("approval")
public class ApprovalController {
	
	private final ApprovalService service;
	
	@Autowired
	public ApprovalController(ApprovalService service) {
		this.service = service;
	}
	
	
	//?????? ?????? ??????
	@GetMapping("write/{formCode}")
	public String write(Model model, @PathVariable int formCode, HttpSession session) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		
		List<DocFormVo> formList = service.selectFormList();
		List<DocPeriodVo> periodList = service.selectPeriodList();
		List<DocFormMapperVo> formMappingList = service.formSelect(formCode);
		List<ApprovalTypeVo> approvalTypeList = service.selectTypeList();
		List<DeptVo> deptList = service.selectDeptList();
		List<EmpVo> empList = service.selectEmpList();
		
		DocFormMapperVo vo = new DocFormMapperVo();
		String formCode_ = String.valueOf(formCode);
		vo.setFormCode(formCode_);
		
		model.addAttribute("formList", formList);
		model.addAttribute("periodList", periodList);
		model.addAttribute("formMappingList", formMappingList);
		model.addAttribute("selectedFormCode", vo.getFormCode());
		model.addAttribute("approvalTypeList", approvalTypeList);
		model.addAttribute("deptList", deptList);
		model.addAttribute("empList", empList);
		model.addAttribute("loginMember", loginMember);
		
		return "approval/write";
	}
	
	//???????????? ?????? ????????? ????????? ??????
	@PostMapping("selectDept")
	@ResponseBody
	public String selectDept(@RequestParam int deptCode) {
		
		List<EmpVo> deptEmpList = service.selectDeptEmp(deptCode);
		String gson = new Gson().toJson(deptEmpList);
		
		return gson;
	}
	
	//???????????? ??????
	@PostMapping("write")
	@ResponseBody
	public String write(@RequestPart(name = "appr") ApprovalDocVo docVo, @RequestPart(name = "file", required = false) MultipartFile[] files, HttpSession session, HttpServletRequest req) {
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		docVo.setEmpCode(loginMember.getEmpCode());
		
		int result = service.insertApprovalDoc(docVo, files, req);
		
		if(result == 1) {
			return "?????? ??????";	
		} else {
			return "?????? ??????";
		}
	}
	
	//?????? ?????? ????????????
	@GetMapping("approvalDocDetail/{docCode}")
	public String docDetail(@PathVariable String docCode, Model model, HttpSession session) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		
		ApprovalDocVo apprDocVo = service.selectDocDetail(docCode);
		List<DocDataVo> docDataVoList = service.selectDocDataList(docCode);
		List<ApprovalListVo> approverVoList = service.selectApproverList(docCode);
		List<ApprovalRefVo> approvalRefVoList = service.selectRefVoList(docCode);
		List<ApprovalFileVo> approvalFileList = service.selectFileVoList(docCode);
		List<ApprovalListVo> apprTypeCountList = service.selectTypeCountList(docCode);
		DocCommentVo unApprComment = service.selectUnApprComment(docCode);
		ApprovalListVo seqStatus = service.selectSeq(docCode);
		
		model.addAttribute("apprDocVo", apprDocVo);
		model.addAttribute("docDataVoList", docDataVoList);
		model.addAttribute("approverVoList", approverVoList);
		model.addAttribute("approvalRefVoList", approvalRefVoList);
		model.addAttribute("apprTypeCountList", apprTypeCountList);
		model.addAttribute("unApprComment", unApprComment);
		model.addAttribute("seqStatus", seqStatus);
		model.addAttribute("loginMember", loginMember);
		model.addAttribute("approvalFileList", approvalFileList);
		
		return "approval/approvalDocDetail";
	}
	
	//???????????? ????????????
	@GetMapping("fileDownload/{fileCode}")
	public ResponseEntity<ByteArrayResource> fileDownload(@PathVariable String fileCode, HttpServletRequest req) throws IOException {
		
		ApprovalFileVo vo = service.selectFileVo(fileCode);
		
		String rootPath = req.getServletContext().getRealPath(Path.APPROVAL_PATH);
		File target = new File(rootPath + vo.getUploadName());
		
		byte[] data = FileUtils.readFileToByteArray(target);
		ByteArrayResource res = new ByteArrayResource(data);
		
		return ResponseEntity
				.ok()
				.contentType(MediaType.APPLICATION_OCTET_STREAM)
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" + vo.getOriginName())
				.header(HttpHeaders.CONTENT_ENCODING, "UTF-8")
				.header(HttpHeaders.CONTENT_LENGTH, target.length() + "")
				.body(res);
	}
	
	
	//?????? ?????? ??????
	@GetMapping("approvalDocEdit/{docCode}/{formCode}")
	public String approvalDocEdit(@PathVariable String docCode, @PathVariable int formCode, Model model, HttpSession session) {
		
		List<DocPeriodVo> periodList = service.selectPeriodList();
		ApprovalDocVo apprDocVo = service.selectDocDetail(docCode);
		List<DocDataVo> docDataVoList = service.selectDocDataList(docCode);
		List<ApprovalListVo> approverVoList = service.selectApproverList(docCode);
		List<ApprovalRefVo> approvalRefVoList = service.selectRefVoList(docCode);
		List<ApprovalFileVo> approvalFileList = service.selectFileVoList(docCode);
		List<ApprovalListVo> apprTypeCountList = service.selectTypeCountList(docCode);
		List<DocFormMapperVo> formMappingList = service.formSelect(formCode);
		List<ApprovalTypeVo> approvalTypeList = service.selectTypeList();
		List<DeptVo> deptList = service.selectDeptList();
		List<EmpVo> empList = service.selectEmpList();
		
		model.addAttribute("apprDocVo", apprDocVo);
		model.addAttribute("docDataVoList", docDataVoList);
		model.addAttribute("approverVoList", approverVoList);
		model.addAttribute("approvalRefVoList", approvalRefVoList);
		model.addAttribute("apprTypeCountList", apprTypeCountList);
		model.addAttribute("periodList", periodList);
		model.addAttribute("formMappingList", formMappingList);
		model.addAttribute("approvalFileList", approvalFileList);
		model.addAttribute("approvalTypeList", approvalTypeList);
		model.addAttribute("deptList", deptList);
		model.addAttribute("empList", empList);
		
		return "approval/approvalDocEdit";
	}
	
	//?????? ??????
	@PostMapping("approvalDocEdit")
	@ResponseBody
	public String approvalDocEdit(@RequestPart(name = "appr") ApprovalDocVo docVo, @RequestPart(name = "file", required = false) MultipartFile[] files, HttpSession session, HttpServletRequest req) {
		
		int result = service.updateApprovalDoc(docVo, files, req);
		
		if(result == 1) {
			return "?????? ??????";
		} else {
			return "?????? ??????";
		}
	}
	
	//?????? ??????
	@PostMapping("approvalDocDelete")
	@ResponseBody
	public String approvalDocDelete(@RequestBody ApprovalDocVo vo) {
		
		int deleteResult = service.updateDocDelete(vo); 
		
		if(deleteResult == 1) {
			return "?????? ??????";
		} else {
			return "?????? ??????";
		}
	}
	
	//?????? ??????
	@PostMapping("approve")
	@ResponseBody
	public String approve(@RequestBody ApprovalListVo vo) {
		
		int result = service.updateApprove(vo);
		
		if(result == 1) {
			return "?????? ??????";
		} else {
			return "?????? ??????";
		}
	}
	
	//?????? ??????
	@PostMapping("unApprove")
	@ResponseBody
	public String unApprove(@RequestBody ApprovalListVo apprVo) {
		
		int result = service.updateUnApprove(apprVo);
		
		if(result == 1) {
			return "?????? ??????";
		} else {
			return "?????? ??????";
		}
	}
	
	//?????? ??????
	@GetMapping("count")
	@ResponseBody
	public String count(HttpSession session) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setEmpCode(loginMember.getEmpCode());
		
		int apprExpectCount = service.selectExpectCount(vo);
		int apprRefCount = service.selectRefListTotalCnt(vo);
		int apprWaitCount = service.selectWaitListTotalCnt(vo);
		int apprProgCount = service.selectProgressListTotalCnt(vo);
		
		Map<String, Integer> count = new HashMap<String, Integer>();
		count.put("apprExpectCount", apprExpectCount);
		count.put("apprRefCount", apprRefCount);
		count.put("apprWaitCount", apprWaitCount);
		count.put("apprProgCount", apprProgCount);
		
		Gson gson = new Gson();
		String jsonCount = gson.toJson(count);
		
		return jsonCount;
	}
	//?????? > ??????
	@GetMapping("progressAllList/{pno}/{docFormCode}")
	public String list(Model model, @PathVariable int pno, @PathVariable String docFormCode, HttpSession session) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setEmpCode(loginMember.getEmpCode());
		vo.setDeptCode(loginMember.getDeptCode());
		vo.setDocFormCode(docFormCode);
		
		int totalCount = service.selectProgressTotalCnt(vo);
		PageVo pv = Pagination.getPageVo(totalCount, pno, 3, 15);
		
		List<ApprovalDocVo> docList = service.selectProgressDocList(vo, pv);
		List<DocFormVo> formList = service.selectFormList();
		
		model.addAttribute("formList", formList);
		model.addAttribute("docList", docList);
		model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		return "approval/progressAllList";
	}
	
	//?????? > ??????
	@GetMapping("progressExpectedList/{pno}/{docFormCode}")
	public String progressExpectedList(Model model, HttpSession session, @PathVariable int pno, @PathVariable String docFormCode) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setEmpCode(loginMember.getEmpCode());
		vo.setDocFormCode(docFormCode);
		
		int totalCount = service.selectExpectCount(vo);
		PageVo pv = Pagination.getPageVo(totalCount, pno, 3, 15);

		List<DocFormVo> formList = service.selectFormList();
		List<ApprovalDocVo> docList = service.selectExpectDocList(vo, pv);
		
		model.addAttribute("formList", formList);
		model.addAttribute("docList", docList);
		model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		
		return "approval/progressExpectedList";
	}
	
	//?????? > ??????
	@GetMapping("progressRefList/{pno}/{docFormCode}")
	public String progressRefList(Model model, HttpSession session, @PathVariable int pno, @PathVariable String docFormCode) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setEmpCode(loginMember.getEmpCode());
		vo.setDocFormCode(docFormCode);
		
		int totalCount = service.selectRefListTotalCnt(vo);
		PageVo pv = Pagination.getPageVo(totalCount, pno, 3, 15);
		
		List<DocFormVo> formList = service.selectFormList();
		List<ApprovalDocVo> docList = service.selectRefDocList(vo, pv);
		
		model.addAttribute("formList", formList);
		model.addAttribute("docList", docList);
		model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		
		return "approval/progressRefList";
	}
	
	//?????? > ??????
	@GetMapping("progressWaitList/{pno}/{docFormCode}")
	public String progressWaitList(Model model, HttpSession session, @PathVariable int pno, @PathVariable String docFormCode) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setEmpCode(loginMember.getEmpCode());
		vo.setDocFormCode(docFormCode);
		
		int totalCount = service.selectWaitListTotalCnt(vo);
		PageVo pv = Pagination.getPageVo(totalCount, pno, 3, 15);
		
		List<DocFormVo> formList = service.selectFormList();
		List<ApprovalDocVo> docList = service.selectWaitList(vo, pv);
		
		model.addAttribute("formList", formList);
		model.addAttribute("docList", docList);
		model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		
		return"approval/progressWaitList";
	}
	
	//?????? > ??????
	@GetMapping("progressList/{pno}/{docFormCode}")
	public String progressList(Model model, HttpSession session, @PathVariable int pno, @PathVariable String docFormCode) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setEmpCode(loginMember.getEmpCode());
		vo.setDocFormCode(docFormCode);
		
		int totalCount = service.selectProgressListTotalCnt(vo);
		PageVo pv = Pagination.getPageVo(totalCount, pno, 3, 15);
		
		List<DocFormVo> formList = service.selectFormList();
		List<ApprovalDocVo> docList = service.selectProgressList(vo, pv);
		
		model.addAttribute("formList", formList);
		model.addAttribute("docList", docList);
		model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		
		return "approval/progressList";
		
	}
	
	//????????? > ??????
	@GetMapping("completAllList/{pno}/{docFormCode}")
	public String completAllList(Model model, HttpSession session, @PathVariable int pno, @PathVariable String docFormCode) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setDeptCode(loginMember.getDeptCode());
		vo.setDocFormCode(docFormCode);
		vo.setEmpCode(loginMember.getEmpCode());
		
		int totalCount = service.selectCompletAllTotalCnt(vo);
		PageVo pv = Pagination.getPageVo(totalCount, pno, 3, 15);
		
		List<DocFormVo> formList = service.selectFormList();
		List<ApprovalDocVo> docList = service.selectCompletAllList(vo, pv);
		
		model.addAttribute("formList", formList);
		model.addAttribute("docList", docList);
		model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		
		return "approval/completAllList";
	}
	
	//????????? > ??????
	@GetMapping("completWriteList/{pno}/{docFormCode}")
	public String completWriteList(Model model, HttpSession session, @PathVariable int pno, @PathVariable String docFormCode) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setEmpCode(loginMember.getEmpCode());
		vo.setDocFormCode(docFormCode);
		
		int totalCount = service.selectCompletWriteTotalCnt(vo);
		PageVo pv = Pagination.getPageVo(totalCount, pno, 3, 15);
		
		List<DocFormVo> formList = service.selectFormList();
		List<ApprovalDocVo> docList = service.selectCompletWriteDocList(vo, pv);
		
		model.addAttribute("formList", formList);
		model.addAttribute("docList", docList);
		model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		
		return "approval/completWriteList";
	}
	
	//????????? > ??????
	@GetMapping("completApprList/{pno}/{docFormCode}")
	public String completApprList(Model model, HttpSession session, @PathVariable int pno, @PathVariable String docFormCode) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setEmpCode(loginMember.getEmpCode());
		vo.setDocFormCode(docFormCode);
		
		int totalCount = service.selectCompletApprTotalCnt(vo);
		PageVo pv = Pagination.getPageVo(totalCount, pno, 3, 15);
		
		List<DocFormVo> formList = service.selectFormList();
		List<ApprovalDocVo> docList = service.selectCompletApprDocList(vo, pv);
		
		model.addAttribute("formList", formList);
		model.addAttribute("docList", docList);
		model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		
		return "approval/completApprList";
	}
	
	//????????? > ??????
	@GetMapping("completRefList/{pno}/{docFormCode}")
	public String completRefList(Model model, HttpSession session, @PathVariable int pno, @PathVariable String docFormCode) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setEmpCode(loginMember.getEmpCode());
		vo.setDocFormCode(docFormCode);
		
		int totalCount = service.selectCompletRefTotalCnt(vo);
		PageVo pv = Pagination.getPageVo(totalCount, pno, 3, 15);
		
		List<DocFormVo> formList = service.selectFormList();
		List<ApprovalDocVo> docList = service.selectCompletRefDocList(vo, pv);
		
		model.addAttribute("formList", formList);
		model.addAttribute("docList", docList);
		model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		
		return "approval/completRefList";
	}
	
	//????????? > ??????
	@GetMapping("unApprList/{pno}/{docFormCode}")
	public String unApprList(Model model, HttpSession session, @PathVariable int pno, @PathVariable String docFormCode) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setEmpCode(loginMember.getEmpCode());
		vo.setDocFormCode(docFormCode);
		
		int totalCount = service.selectUnApprTotalCnt(vo);
		PageVo pv = Pagination.getPageVo(totalCount, pno, 3, 15);
		
		List<DocFormVo> formList = service.selectFormList();
		List<ApprovalDocVo> docList = service.selectUnApprDocList(vo, pv);
		
		model.addAttribute("formList", formList);
		model.addAttribute("docList", docList);
		model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		
		return "approval/unApprList";
	}
	
	//?????? ??????
	@GetMapping("storage/{pno}/{docFormCode}")
	public String storage(Model model, HttpSession session, @PathVariable int pno, @PathVariable String docFormCode) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setEmpCode(loginMember.getEmpCode());
		vo.setDocFormCode(docFormCode);
		
		int totalCount = service.selectStorageTotalCnt(vo);
		PageVo pv = Pagination.getPageVo(totalCount, pno, 3, 15);
		
		List<DocFormVo> formList = service.selectFormList();
		List<ApprovalDocVo> docList = service.selectStorageList(vo, pv);
		
		model.addAttribute("formList", formList);
		model.addAttribute("docList", docList);
		model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		
		return "approval/storage";
	}
	
	@PostMapping("storageDelete")
	@ResponseBody
	public String storageDelete(HttpSession session) {
		
		EmpVo loginMember = (EmpVo)session.getAttribute("loginMember");
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setEmpCode(loginMember.getEmpCode());
		
		int deleteStorage = service.deleteStorage(vo);
		
		if(deleteStorage > 0) {
			return "?????? ??????";
		} else {
			return "?????? ??????";
		}
	}
	
	//?????? ?????? ??????
	@GetMapping("formManager")
	public String formManager(Model model) {
		
		List<DocFormVo> docFormList = service.selectDocFormList();
		model.addAttribute("docFormList", docFormList);
		
		return "approval/formManager";
	}
	
	//?????? ?????? ?????? ??????
	@GetMapping("formManagerDetail/{formCode}")
	public String formManagerDetail(@PathVariable int formCode, Model model) {
		
		DocFormVo docForm = service.selectDocForm(formCode);
		List<DocFormMapperVo> formMappingList = service.formSelect(formCode);
		
		model.addAttribute("docForm", docForm);
		model.addAttribute("formMappingList", formMappingList);
		
		return "approval/formManagerDetail";
	}
	
	//?????? ?????? ??????
	@GetMapping("formEdit/{formCode}")
	public String formEdit(@PathVariable int formCode, Model model) {
		
		DocFormVo docForm = service.selectDocForm(formCode);
		List<DocFormMapperVo> formMappingList = service.formSelect(formCode);
		List<DocFormDetailTemplateVo> formDetailList = service.selectFormDetailList();
		
		model.addAttribute("formDetailList", formDetailList);
		model.addAttribute("docForm", docForm);
		model.addAttribute("formMappingList", formMappingList);
		
		return "approval/formEdit";
	}
	
	//?????? ?????? ??????
	@PostMapping("formEdit")
	@ResponseBody
	public String forEdit(@RequestBody DocFormVo vo) {
		int updateForm = service.updateDocForm(vo);
		if(updateForm == 1) {
			return "?????? ??????";
		} else {
			return "?????? ??????";
		}
	}
	
	//?????? ?????? ??????
	@GetMapping("formInsert")
	public String formInsert(Model model) {
		//???????????? ?????? ????????????
		List<DocFormDetailTemplateVo> formDetailList = service.selectFormDetailList();
		model.addAttribute("formDetailList", formDetailList);
		
		return "approval/formInsert";
	}
	
	//?????? ?????? ??????
	@PostMapping("formInsert")
	@ResponseBody
	public String formInsert(@RequestBody DocFormVo formVo) {
		int formInsert = service.insertForm(formVo);
		if(formInsert == 1) {
			return "??????";
		} else {
			return "??????";
		}
	}
	
	//?????? ?????? ??????
	@GetMapping("approvalAllList/{pno}/{docFormCode}")
	public String approvalAllList(Model model, HttpSession session, @PathVariable int pno, @PathVariable String docFormCode) {
		
		ApprovalDocVo vo = new ApprovalDocVo();
		vo.setDocFormCode(docFormCode);
		
		int totalCount = service.selectAllDocTotalCnt(vo);
		PageVo pv = Pagination.getPageVo(totalCount, pno, 3, 15);
		
		//???????????? ????????????
		List<DocFormVo> formList = service.selectFormList();
		List<ApprovalDocVo> docList = service.selectAllDocList(vo, pv);
		
		model.addAttribute("formList", formList);
		model.addAttribute("docList", docList);
		model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		
		return "approval/approvalAllList";
	}
	
	//?????? ?????? ??????
	@GetMapping("approvalDeleteList/{pno}/{docFormCode}") 
	public String approvalDeleteList(Model model, HttpSession session, @PathVariable int pno, @PathVariable String docFormCode) {
	  
		ApprovalDocVo vo = new ApprovalDocVo(); 
		vo.setDocFormCode(docFormCode);
		
		int totalCount = service.selectApprDeleteDocTotalCnt(vo); 
		PageVo pv =Pagination.getPageVo(totalCount, pno, 3, 15);
		  
		List<DocFormVo> formList = service.selectFormList();
		List<ApprovalDocVo> docList = service.selectApprDeleteDocList(vo, pv);
		  
		model.addAttribute("formList", formList); 
		model.addAttribute("docList",docList); model.addAttribute("pv", pv);
		model.addAttribute("selectedFormCode", vo.getDocFormCode());
		  
		return "approval/approvalDeleteList"; 
	  }
	 
	
}
