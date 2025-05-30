package com.ldb.lms.mapper.professor_support;

import java.sql.Time;

import org.mapstruct.Mapper;

import com.ldb.lms.domain.Course;
import com.ldb.lms.domain.CourseTime;
import com.ldb.lms.dto.mypage.Professor;
import com.ldb.lms.dto.mypage.RegisterUserDto;
import com.ldb.lms.dto.professor_support.RegistCourseDto;

@Mapper(componentModel = "spring")
public interface ConvertDtoMapper {
	Course toCourse(RegistCourseDto rDto);
	CourseTime toCourseTime(RegistCourseDto rDto);
	
	default Time map(String timeStr) {
	    if (timeStr == null) return null;
	    if (timeStr.length() == 5) timeStr += ":00"; // "10:00" → "10:00:00"
	    return Time.valueOf(timeStr);
	}
	
}
