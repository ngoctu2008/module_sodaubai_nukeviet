<!-- BEGIN: main  -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/default/css/schoolbook_class.css">
<div class="table-responsive" style="margin-bottom: 10%;background-color: azure;">
	<div id="top">
		<table style="width: 100%;">
			<tr>
				<td>
					<p> <b>{LANG.full_name}</b>{HOTEN}</p>
				</td>
				<td>
					<p> <b>{LANG.role}</b>{VAITRO}</p>
				</td>
			</tr>

			<tr>
				<td>
					<p> <b>{LANG.school}</b>{TRUONG}</p>
				</td>
				<td>
					<p> <b>{LANG.timestamp}</b>{PHIEN}</p>
				</td>
			</tr>
		</table>
	</div>

	<div style="text-align: center; width: 100%;">
		<p><b>{LANG.class}: </b>{LOP}</p>
		<p><b>{LANG.gvcn}: </b>{TEN_GVCN}</p>
		<br>
	</div>
	<!-- BEGIN: functions -->
	<div class="functions-section">
		<!-- BEGIN: filter -->
		<form action="{URL_ACTION}" method="post" class="filter-section" style="width: 60%;
					height: 100%;
					display: inline;
					float: left;">

			<select name="year">
				<option value="" selected disabled> Chọn năm học</option>
				<!-- BEGIN: year_filter -->
				<option value="{year.nam_hoc}">{year.nam_hoc}</option>
				<!-- END: year_filter -->
			</select>

			<select name="week">
				<option value="" selected disabled> Chọn tuần</option>
				<!-- BEGIN: week_filter -->
				<option value="{week.tuan}"> {week.tuan} </option>
				<!-- END: week_filter -->
			</select>

			<input type="submit" name="filter">
		</form>
		<!-- END: filter -->

		<form action="get" class="export-to-file" style="width: 30%;
								height: 100%;
								display: inline;
								float: left;">
			<button>
				<img src="{NV_BASE_SITEURL}themes/default/images/icons/icons8-microsoft-excel-2019-48.png"
					alt="export-to-excel" style="width: 30px;">
			</button>
			Xuất Excel
		</form>
	</div>
	<!-- END: functions -->
	<div style="width: 100%; margin: 10px 0 10px 0;">
		<br>
		<p class="title" style="font-weight: 600; text-align: center;">
			<br><span>Tuần</span>
		</p>
	</div>
	<!-- BEGIN: schedule-->
	<div style="width: 100%">
		<table id="so_dau_bai" style="text-align: center;width: 100%;">
			<tr class="table_row">
				<th class="table_col"> Thứ / Ngày</th>
				<th class="table_col"> Tác vụ </th>
				<th class="table_col"> Tiết </th>
				<th class="table_col"> Môn học </th>
				<th class="table_col"> Bài học </th>
				<th class="table_col"> Nhận xét</th>
				<th class="table_col"> Đánh giá </th>
				<th class="table_col"> Ký tên </i></th>
				<th class="table_col">{LANG.status}</th>
			</tr>
			<!-- BEGIN: subject_loop-->
			<form action="{URL_ACTION}" method="post">
				<tr class="table_row">
					<td hidden>
						<input name="ma_mon_hoc" class="row_id" value="{subject.ma_mon_hoc}">
					</td>
					<td class="table_col" style="width: 10%;">
						<span>{day_of_week}</span>
						<br>
						<input type="date" name="ngay_day" class="input_ngayday" value="{subject.ngay_day}" readonly>
					</td>
					<td class="table_col">
						<button name="save" title="edit" class="button_save" hidden>
							<img src="{NV_BASE_SITEURL}themes/default/images/icons/check.png" alt=""
								style="width: 100%; height: 100%;">
						</button>
						<button title="cancel" class="button_cancel" onclick="cancel({num})" hidden>
							<img src="{NV_BASE_SITEURL}themes/default/images/icons/multiply.png" alt=""
								style="width: 100%; height: 100%;">
						</button>
						<span title="edit" class="button_edit span_button" onclick="edit({num})">
							<img src="{NV_BASE_SITEURL}themes/default/images/icons/edit.png" alt=""
								style="width: 100%; height: 100%;">
						</span>
						<button title="edit" class="button_remove" onclick="remove({num})">
							<img src="{NV_BASE_SITEURL}themes/default/images/icons/delete.png" alt=""
								style="width: 100%; height: 100%;">
						</button>
					</td>
					<td class="table_col">{subject.tiet_bat_dau}</td>
					<td class="table_col">{subject.ten_mon_hoc}</td>
					<td class="table_col">
						<textarea name="baihoc" readonly class="textarea_baihoc">{subject.bai_hoc}</textarea>
					</td>
					<td class="table_col">
						<textarea name="nhanxet" readonly class="textarea_nhanxet">{subject.nhan_xet}</textarea>
					</td>
					<td class="table_col">
						<input name="xeploai" readonly type="number" min="0" max="10" style="text-align: center"
							class="number_xeploai" value="{subject.xep_loai}">
					</td>
					<td class="table_col">{subject.ho_ten}</td>
					<td class="table_col">
						<input disabled type="checkbox" name="trang_thai" {check} class="input_trangthai">
					</td>
				</tr>
			</form>
			<!-- END: subject_loop-->
		</table>
	</div>
</div>
<style>
	.textarea_baihoc,
	.textarea_nhanxet,
	.number_xeploai,
	.input_ngayday {
		resize: none;
		background-color: transparent;
		border: none;
	}

	.input_ngayday {
		width: 80%;
	}

	.span_button,
	button {
		margin: 0 5px 0 5px;
		padding: 0;
		display: inline-block;
		width: 25px;
		height: 25px;
		cursor: pointer;
		background-color: transparent;
		border: none;
	}

	span:hover,
	button:hover {
		opacity: 0.5;
	}
</style>
<!-- END: schedule-->
</div>
<!-- END: main -->