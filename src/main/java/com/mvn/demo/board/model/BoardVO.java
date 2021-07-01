package com.mvn.demo.board.model;

import org.apache.ibatis.type.Alias;

@Alias("boardVO")
public class BoardVO {

	// 글 index
	private int id;

	// 글 작성자 index
	private int userId;

	// 글 작성자
	private String writer;

	// 글 제목
	private String title;

	// 글 내용
	private String content;

	// 글 조회수
	private Long viewCnt;

	// 글 댓글수
	private Long replyCnt;

	// 글 타입(공지사항: N, QnA: Q)
	private String boardType;

	// 글 등록일
	private String writeDt;

	// 글 수정일
	private String modifyDt;

	// 글 삭제 여부
	private String delYn;


	// Getter & Setter
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Long getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(Long viewCnt) {
		this.viewCnt = viewCnt;
	}

	public Long getReplyCnt() {
		return replyCnt;
	}

	public void setReplyCnt(Long replyCnt) {
		this.replyCnt = replyCnt;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public String getWriteDt() {
		return writeDt;
	}

	public void setWriteDt(String writeDt) {
		this.writeDt = writeDt;
	}

	public String getModifyDt() {
		return modifyDt;
	}

	public void setModifyDt(String modifyDt) {
		this.modifyDt = modifyDt;
	}

	public String getDelYn() {
		return delYn;
	}

	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	public BoardVO(int id, int userId, String writer, String title, String content, Long viewCnt,
			Long replyCnt, String boardType, String writeDt, String modifyDt, String delYn) {
		super();
		this.id = id;
		this.userId = userId;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.viewCnt = viewCnt;
		this.replyCnt = replyCnt;
		this.boardType = boardType;
		this.writeDt = writeDt;
		this.modifyDt = modifyDt;
		this.delYn = delYn;
	}






}
