/**
 *  JS for Manager module, including :
 *    a. newManager
 * 
 *   @date 2019/12/10
 */
/*
 * new a manager
 */
function addNewManager(tId,mId, fId, index) {
	var formData = $(fId).serialize() ;
	console.log(formData) ;
	var $tr = "<tr><td>"+(index+1)+"</td>"+
    "<td>" +2 + "</td>" + 
    "<td>" + "zhangsan"+"</td>" +
    "<td>" + "<a href='#' data-toggle='modal' data-target='#addManager'>查看权限</a>"+"</td>" +
    "<td>" + "<button type='button' class='btn btn-danger'>删除</button>" + "</td>" ;
	$(tId).append($tr) ;
	$(mId).modal('hide') ; 
	
	/*$.post('sys/manager',
			'action=new&'+formData,
		    function(data) {
				console.log(data) ;
				// success new a manager
				if (data.reCode == 0) {
					//$(tId + " tr:not(:first)").empty() ;
					
					var $tr = "<tr><td>"+index+"</td>"+
					               "<td>" +data.data.id + "</td>" + 
					               "<td>" + data.data.name+"</td>" +
					               "<td>" + "<a href='#' data-toggle='modal' data-target='#addManager'>查看权限</a>"+"</td>" +
					               "<td" + "<button type='button' class='btn btn-danger'>删除</button>" + "</td>" ;
					$(tId).append($tr) ;
					$(mId).modal('hide') ;
					return ;
				} else {
					
				}
		
		
			},
	        "json") ; */
	
}

//function checkPermit(url) {
//	
//	$.get(url,function(data) {
//		
//		
//	}) ;
//	
//	
//}
