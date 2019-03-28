$(function() {
		$("#calendar")
				.fullCalendar(
						{
							defaultDate : new Date() // 오늘
							,
							lang : "ko" // 한국어
							,
							navLinks : false // 주별, 월별.. 
							,
							editable : false // 마우스로 일정 늘리기 가능
							,
							eventLimit : true // 일정 많으면 more
							,
							timeFormat : 'HH:mm',
							header : {
								left : 'today prev',
								center : 'title',
								right : 'next'
							},
							googleCalendarApiKey : "AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE",
							eventSources : [ // 대한민국 공휴일
							{
								googleCalendarId : "ko.south_korea#holiday@group.v.calendar.google.com",
								className : "koHolidays",
								color : "#FF0000",
								textColor : "#FFFFFF"
							} ],
							loading : function(bool) {
								$("#loading").toggle(bool);
							},
							dayClick : function(date, jsEvent, view) {
// 								var qwe = "";
// 								qwe += "<div class='input-group-addon'>";
// 								qwe += "<span class='glyphicon glyphicon glyphicon-pencil' aria-hidden='true'></span>";
// 								qwe += "</div>";
// 								qwe += "<input type='text' class='form-control' id='content' placeholder='content' value=''>";
								$('#start').val(date.format('YYYY-MM-DD'))
								$('#shour').val(date.format('HH'))
								$('#smin').val(date.format('mm'))
								$('#end').val(date.format('YYYY-MM-DD'))
								$('#ehour').val(date.format('HH'))
								$('#emin').val(date.format('mm'))
								$('#content').val("");
								$(".modal-header").html("예약 하기");
								$("#division").html("");
								$('#writeModal').modal('show')
							},
							eventClick : function(calEvent, jsEvent, view) {
								$('#viewModalBody').text(calEvent.content);
								$('#id').val(calEvent.id);
								$('#eventDate').text(
										calEvent.start
												.format('YYYY년 MM월 DD일 HH:mm'));
								if (calEvent.end != null
										&& (calEvent.start
												.format('YYYY년 MM월 DD일 HH:mm') != calEvent.end
												.format('YYYY년 MM월 DD일 HH:mm'))) {
									$('#eventDate')
											.text(
													$('#eventDate').text()
															+ ' ~ '
															+ calEvent.end
																	.format('YYYY년 MM월 DD일 HH:mm'));
								}
								$('#viewModal').modal('show')
							},
							displayEventEnd : true,
						});
		sch();
		$(".fc-today-button").on('click', sch);
		$(".fc-prev-button").on('click', sch);
		$(".fc-next-button").on('click', sch);
		$(".fc-agendaweek-button").on('click', sch);
		$(".fc-listweek-button").on('click', sch);
		$(".fc-month-button").on('click', sch);
		$("#saveBtn").on('click', insert);
		$("#deleteBtn").on('click', del);
		$("#updateBtn").on('click', update);
	});

	function scheduleChoice(num, id, distinct, color, text) {
		if ($(".sBar1").eq(num).is(":checked")) {
			approval();
			$("#calendar").fullCalendar("addEventSource", {
				googleCalendarId : id,
				className : distinct,
				color : color,
				textColor : text
			});
		} else {
			$("#calendar").fullCalendar("removeEventSource", {
				googleCalendarId : id
			});
		}
		$(".koHolidays").attr("href", "javascript:;")
	}
	
	function sch() {
		$('#calendar').fullCalendar( 'removeEvents');
		schedule(0);
		schedule(1);
	}
	
	function approval() {
		if ($(".sBar2").eq(0).is(":checked")) {
			if($(".sBar3").eq(0).is(":checked")) {
				sch();
			} else {
				$('#calendar').fullCalendar( 'removeEvents');
				schedule(0);
			}
		} else {
			if($(".sBar3").eq(0).is(":checked")) {
				$('#calendar').fullCalendar( 'removeEvents');
				schedule(1);
			} else {
				$('#calendar').fullCalendar( 'removeEvents');
			}
		}
	}
	function schedule(num) {
		$.ajax({
			url : 'selectOff',
			data : {
				num : num
			},
			type : 'get',
			success : function(cList) {
				output(num, cList);
			}
		});
	}

	function output(num, cList) {
		var c = '';
		if(num == 0){
			c = '#5fd14b';
		} else if(num == 1) {
			c = '#4b68d1';
		}
		
		$.each(cList, function(index, item) {
			$('#calendar').fullCalendar('renderEvent', {
				title : item.empId,
				content : item.empId+"휴무",
				start : item.offStartDate,
				end : item.offEndDate,
				allDay : false,
				id : item.offScheduleSeq,
				groupId : item.empId,
				backgroundColor : c
			});
		})
	}	
	
	var flag = 0;
	
	function update() {
		flag = 1;
		var id = $('#id').val();
		$('#viewModal').modal('hide');
		$.ajax({
			url : 'selectOffOne',
			data : {
				offScheduleSeq : id
			},
			type : 'post',
			success : function(result) {
				var off = result;
				var s = off.offStartDate;
				var start = s.split(" ");
				var stime = start[1].split(":");
				var e = off.offEndDate;
				var end = e.split(" ");
				var etime = end[1].split(":");
				$(".modal-header").html("일정 수정");
				$("#division").html("");
				$('#writeModal').modal('show');
				$("#start").val(start[0]);
				$("#shour").val(stime[0]);
				$("#smin").val(stime[1]);
				$("#end").val(end[0]);
				$("#ehour").val(etime[0]);
				$("#emin").val(etime[1]);
				//$("#content").val(cal.content);
			}
		});
	}

	function insert() {

		// 		var content = $('#content').val();
		// 		if (content == '') {
		// 			alert('내용을 입력하세요');
		// 			return;
		// 		}
		var start = $('#start').val();
		var end = $('#end').val();

		if (!$('#allDay').is(":checked")) {
			start += " " + $('#shour').val() + ":" + $('#smin').val();
			end += " " + $('#ehour').val() + ":" + $('#emin').val();
		} else {
			end = moment($('#end').val()).add(1, 'days').format('YYYY-MM-DD');
		}
		if (flag == 0) {
			$.ajax({
				url : 'insertOff',
				data : {
					offStartDate : start,
					offEndDate : end,
				// 	content : content
				},
				type : 'post',
				success : function() {
					$('#writeModal').modal('hide');
					window.location.reload();
				}
			});
		} else if (flag == 1) {
			var id = $("#id").val();
			$.ajax({
				url : 'updateOff',
				data : {
					offStartDate : start,
					offEndDate : end,
// 					content : content,
					offScheduleSeq : id
				},
				type : 'post',
				success : function() {
					flag = 0;
					$('#writeModal').modal('hide');
					window.location.reload();
				}
			});
		}
	}
	function del() {
		var offScheduleSeq = $('#id').val();

		if (confirm("삭제하시겠습니까?")) {
			$.ajax({
				url : 'deleteOff',
				data : {
					offScheduleSeq : offScheduleSeq
				},
				type : 'post',
				success : function() {
					$('#viewModal').modal('hide');
					window.location.reload();
				}
			});
		}
	}