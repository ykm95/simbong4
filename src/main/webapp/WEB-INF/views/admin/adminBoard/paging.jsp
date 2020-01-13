<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<div class="container">
	<ul class="pagination">
		<!-- class="active" -->
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
		<li><a href="#">»</a></li>
	</ul>
</div>

<script>
	function makePageBlock(index, totalCount, blockSize, unitSize){
		
		//마지막 페이지
		let maxPage = Math.ceil(totalCount/unitSize);
		//페이지블락 시작 번호
		let startBlock = Math.floor( ( index - 1 ) / blockSize ) * blockSize +1
		//페이지블락 끝 번호
		let endBlock = startBlock + blockSize -1;
		
		//endBlock보정
		if(endBlock > maxPage){
			endBlock = maxPage;
		}
		
		let beforeBtnSwitch = startBlock!=1;
		let nextBtnSwitch = endBlock < maxPage;
		
		let str='';
		//이전
		if(beforeBtnSwitch){
			str+='<li id="before__btn"><a href="#">«</a></li>'
		}
		
		//중간페이지
		for(var i = startBlock;i <= endBlock;i++){
			str+='<li class="index__btn';
			if(i==index){
				str+=' active';
			}
			str+='">';
			str+='<a href="#" data-index="'+i+'">'+i+'</a>';
			str+='</li>';
		}
		
		//이후
		if(nextBtnSwitch){
			str+='<li id="next__btn"><a href="#">»</a></li>'
		}
		
		$('.pagination').append(str);
		
		if(beforeBtnSwitch){
			$('#before__btn > a').on('click',function(){
				getQuestion(index-1);
			});
		}
		
		$('.index__btn > a').on('click',function(){
			getQuestion($(this).data('index'));
		});
		
		if(nextBtnSwitch){
			$('#next__btn > a').on('click',function(){
				console.log('hi')
				getQuestion(index+1);
			});
		}
		
	}
</script>


<!-- >>>>>>> refs/remotes/origin/develop   -->
