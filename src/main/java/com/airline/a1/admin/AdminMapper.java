package com.airline.a1.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.airline.a1.booking.FlightDataVO;
import com.airline.a1.checkIn.ETicketVO;


@Repository
@Mapper
public interface AdminMapper {
	
	public List<AirlineVO> airlineList() throws Exception;
	public List<FlightDataVO> airpartList(FlightDataVO flightDataVO) throws Exception;
	public List<FlightDataVO> airallList() throws Exception;
	public List<ETicketVO> getBookingInfo() throws Exception;
}
