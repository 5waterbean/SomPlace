package com.somplace.dao.mybatis.mapper;

import java.util.List;

import com.somplace.domain.Meeting;

public interface MeetingMapper {
	List<Meeting> getMeetingList();
}
