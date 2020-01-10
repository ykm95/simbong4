<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/layout/adminHeader.jsp" />

<!-- 문의 응대, 답글 작성, 검색
-게시날짜, 처리상태, 제목, 아이디, 문의글 조회, 1:1답글작성........헤더 적용시키면 왜 망가질까 -->

<!-- 파비콘 적용 -->
<link rel="shortcut icon" href="/resources/img/sim4.png" sizes="16x16">
<!-- CSS -->
<link rel="stylesheet" href="/resources/css/qna.css">
<!-- JS -->
<script src="/resources/js/qnamain.js"></script>

<style type="text/css">
section {
	width: 100%;
}
</style>

<br>
<br>
<br>

<div class="container">
	<div class="row">
		<!-- Pagado(초록), Pendiente(노랑), Cancelado(빨강) 각 버튼별로 불러오고  Todos(하양)전체를 불러올수있다.-->
		<!-- →초록: 미완료건  Todos(하양)전체불러오기..DB에서 불러올수있으면...불가능하면 더미데이터 각-->
		<section class="content">
			<h1>Table Filter</h1>
			<div class="col-md-8 offset-md-2">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="float-right">
							<div class="btn-group">
								<button type="button" class="btn btn-outline-success btn-filter"
									data-target="pagado">완료</button>
								<button type="button" class="btn btn-outline-danger btn-filter"
									data-target="cancelado">미완료</button>
								<button type="button"
									class="btn btn-outline-secondary btn-filter" data-target="all">전체보기</button>
							</div>
						</div>
						<div class="table-container">
							<table class="table table-filter">
								<tbody>
									<tr data-status="pagado">
										<td>
											<div class="ckbox">
												<input type="checkbox" id="checkbox5"> <label
													for="checkbox5"></label>
											</div>
										</td>
										<td><a href="javascript:;" class="star"> <i
												class="glyphicon glyphicon-star"></i>
										</a></td>
										<td>
											<div class="media">
												<div class="media-body">
													<span class="media-meta float-right">실제 날짜 나오게
														할수있나..?</span>
													<h4 class="title">
														제목 누르면 상세이동 <span class="float-right pagado">완료</span>
													</h4>
													<p class="summary">간단히 보기... 누르면 상세이동</p>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="cancelado">
										<td>
											<div class="ckbox">
												<input type="checkbox" id="checkbox5"> <label
													for="checkbox5"></label>
											</div>
										</td>
										<td><a href="javascript:;" class="star"> <i
												class="glyphicon glyphicon-star"></i>
										</a></td>
										<td>
											<div class="media">
												<a href="#" class="float-left"> <img
													src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
													class="media-photo">
												</a>
												<div class="media-body">
													<span class="media-meta float-right">Febrero 13,
														2016</span>
													<h4 class="title">
														Lorem Impsum <span class="float-right cancelado">(Cancelado)</span>
													</h4>
													<p class="summary">Ut enim ad minim veniam, quis
														nostrud exercitation...</p>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="pagado" class="selected">
										<td>
											<div class="ckbox">
												<input type="checkbox" id="checkbox4" checked> <label
													for="checkbox4"></label>
											</div>
										</td>
										<td><a href="javascript:;" class="star star-checked">
												<i class="glyphicon glyphicon-star"></i>
										</a></td>
										<td>
											<div class="media">
												<a href="#" class="float-left"> <img
													src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
													class="media-photo">
												</a>
												<div class="media-body">
													<span class="media-meta float-right">Febrero 13,
														2016</span>
													<h4 class="title">
														Lorem Impsum <span class="float-right pagado">(Pagado)</span>
													</h4>
													<p class="summary">Ut enim ad minim veniam, quis
														nostrud exercitation...</p>
												</div>
											</div>
										</td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>
</div>
<jsp:include page="/WEB-INF/views/admin/adminBoard/paging.jsp" />

<jsp:include page="/WEB-INF/views/layout/adminFooter.jsp" />