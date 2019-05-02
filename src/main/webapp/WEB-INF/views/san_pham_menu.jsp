<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="menu-product">
	<h3>
		<span> <i class="fa fa-bars"></i> Sản phẩm
		</span>
	</h3>
	<ul class='level0'>
		<c:if test="${not empty dsloaisanpham}">
                <c:forEach var="lsp" items="${dsloaisanpham}">
                 <li class="level1"><a class=''
	                 href='${lsp.maLSP}' ><span>${lsp.tenLSP}</span></a>
	             </li>
                </c:forEach>
        </c:if>
	</ul>
</div>
<script type="text/javascript">
                            $(document).ready(function () {
                                $('.menu-product li.child .open-close').on('click', function () {
                                    $(this).removeAttr('href');
                                    var element = $(this).parent('li');
                                    if (element.hasClass('open')) {
                                        element.removeClass('open');
                                        element.children('ul').slideUp();
                                    }
                                    else {
                                        element.addClass('open');
                                        element.children('ul').slideDown();
                                    }
                                });
                            });
                        </script>