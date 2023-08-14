package com.toss.account;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccountController {

	@Autowired
	private AccountService accountService;
	
	@GetMapping("/open")
	public String open(HttpServletRequest request) {
		HttpSession session = request.getSession();

		String mphone = "01011111111";
		session.setAttribute("mphone", mphone);
		if (session.getAttribute("mphone") != null) {
			return "open";
		} else {
			return "redirect:/home";
		}

	}

	@GetMapping("/open2")
	public String open2() {
		return "open2";
	}

	/*
	 * @GetMapping("/open3") //public String write(HttpServletRequest request) {
	 * //HttpSession session = request.getSession(); public String open3() { return
	 * "open3";
	 * 
	 * }
	 */

	/*
	 * @GetMapping("/open3") // bno, cno public String open3(@RequestParam
	 * Map<String, Object> map, HttpSession session) { // 로그인여부 검사 if
	 * (session.getAttribute("mphone") != null) { map.put("mname",
	 * session.getAttribute("mname")); map.put("mphone",
	 * session.getAttribute("mphone")); } return "open3"; }
	 * 
	 * 
	 * @GetMapping("/open3") // bno, cno public String open3(@RequestParam
	 * Map<String, Object> map) {
	 * 
	 * List<Map<String, Object>> result = accountService.members(map);
	 * 
	 * return "open3"; }
	 */

	/*
	 * @GetMapping("/open3") public String open3(Model model) { String mname =
	 * accountService.mname(); // 데이터베이스에서 회원 이름 가져오기 model.addAttribute("mname",
	 * mname); return "open3"; // open3.html로 포워딩 }
	 * 
	 * 
	 * @GetMapping("/open3") public String open3( Model model) {
	 * 
	 * //List<Map<String, Object>> list = accountService.list(mname);
	 * //model.addAttribute("list", list);
	 * 
	 * String targetMphone = "01011111111"; // 특정 회원의 전화번호를 설정 String mname =
	 * accountService.getMnameByMphone(targetMphone); // 해당 전화번호의 회원 이름을 조회
	 * model.addAttribute("mname", mname); // 뷰로 데이터 전달
	 * 
	 * return "open3"; }
	 * 
	 * 
	 * @GetMapping("/open3") public String detail(HttpServletRequest request, Model
	 * model) {
	 * 
	 * String mphone = request.getParameter("mphone"); String mname =
	 * request.getParameter("mname");
	 * 
	 * AccountDTO dto = new AccountDTO(); dto.setMphone(mphone);
	 * dto.setMname(mname);
	 * 
	 * AccountDTO result = accountService.open3(dto);
	 * 
	 * model.addAttribute("dto", result); return "open3"; }
	 

	@GetMapping("/open3")
	public String open3(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(); // 세션 가져오기

		// 특정 회원 데이터 조회 (실제로는 데이터베이스 쿼리를 대신함)
		String mphone = "01011111111";
		Map<String, Object> memberData = accountService.MnameMphone(mphone);

		// 맵에서 mname과 mphone 값 추출
		String mname = (String) memberData.get("mname");
		String mphoneFromMap = (String) memberData.get("mphone");

		// 회원 데이터를 모델에 추가하여 뷰로 전달
		model.addAttribute("mphone", mphoneFromMap);
		model.addAttribute("mname", mname);

		return "open3";
	}
*/

	  @RequestMapping("/open3")
	    public String open3(HttpServletRequest request, Model model) {
		  HttpSession session = request.getSession(); // 세션 가져오기

			// 특정 회원 데이터 조회 (실제로는 데이터베이스 쿼리를 대신함)
			String mphone = "01011111111";
			Map<String, Object> memberData = accountService.MnameMphone(mphone);

			// 맵에서 mname과 mphone 값 추출
			String mname = (String) memberData.get("mname");
			String mphoneFromMap = (String) memberData.get("mphone");

			// 회원 데이터를 모델에 추가하여 뷰로 전달
			model.addAttribute("mphone", mphoneFromMap);
			model.addAttribute("mname", mname);
 
		  String referer = request.getHeader("referer");
	        if (referer == null || !referer.contains("open2")) {
	            return "redirect:/open";
	        }
	        return "open3";
	    }
	
	@GetMapping("/open4")
	public String open4() {
		return "open4";
	}

	@GetMapping("/open5")
	public String open5() {
		return "open5";
	}

	// String abank = (String) accountList.get("abank");
	// String aaccount = (String) accountList.get("aaccount");
	// String abalance = (String) accountList.get("abalance");

	@GetMapping("/list")
	public String list(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(); // 세션 가져오기

		// 특정 회원의 계좌 정보 조회 (실제로는 데이터베이스 쿼리를 대신함)
		String mphone = "01011111111";
		List<Map<String, Object>> accountList = accountService.bankList(mphone);

		int totalbalance = accountService.totalBalance(accountList);
		model.addAttribute("totalbalance", totalbalance); // 총 자산 금액을 모델에 추가

		// 회원 계좌 정보를 모델에 추가하여 뷰로 전달
		model.addAttribute("accountList", accountList);

		return "list";
	}

	@GetMapping(value = { "/", "/home" })
	public String home() {
		return "home";
	}

	/*
	 * @GetMapping("/list") public String write(HttpServletRequest request) {
	 * HttpSession session = request.getSession(); if
	 * (session.getAttribute("accNum") != null) { // ���������� list�� ������
	 * open���� return "list"; } else { return "open"; }
	 * 
	 * }
	 */
}
