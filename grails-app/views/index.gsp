<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
        <r:require modules="grailsEvents"/>
	</head>
	<body>
	<div id="stockdiv">IM the stock div</div>
	</body>
<r:script type="text/javascript">
	try {
	var grailsEvents = new grails.Events("${createLink(uri: '')}",{transport:"sse"});

	grailsEvents.on('stockChannel', function(data){
	window.console && console.log(data)
	$("#stockdiv").html(data);
    });


} catch (error) {
console.log("ERROR: " + error.toString());
}

</r:script>
</html>
