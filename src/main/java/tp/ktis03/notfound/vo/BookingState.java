package tp.ktis03.notfound.vo;

public class BookingState {

	private Integer booking_state_id;

	private String booking_state_name;

	public Integer getBookingStateId() {
		return booking_state_id;
	}

	public void setBookingStateId(Integer bookingStateId) {
		this.booking_state_id = bookingStateId;
	}

	public String getBookingStateName() {
		return booking_state_name;
	}

	public void setBookingStateName(String bookingStateName) {
		this.booking_state_name = bookingStateName;
	}

	// BookingState 모델 복사
	public void CopyData(BookingState param) {
		this.booking_state_id = param.getBookingStateId();
		this.booking_state_name = param.getBookingStateName();
	}
}