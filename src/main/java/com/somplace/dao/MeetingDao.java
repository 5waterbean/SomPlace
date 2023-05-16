package com.somplace.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.somplace.domain.Meeting;

public interface MeetingDao {
	// 모임 전체 조회
	public List<Meeting> getMeetingList() throws DataAccessException;
}