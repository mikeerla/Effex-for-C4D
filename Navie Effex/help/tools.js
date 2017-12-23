function Hide(name)
	{
		if(name=="") return;
		var cname = $( "a[name*='" + name + "']" );//$(this).find('a[name*="'+ name + '"]');
		HideNextDOM(cname);
		var subtab = cname.parent().parent();
		if(subtab.hasClass('subdata'))
			subtab.hasClass('selected') ? subtab.removeClass('selected') : subtab.addClass('selected');
	}
	function HideNextDOM(object)
	{
		var nobj = object.parent().next();
		nobj.hasClass('selected') ? nobj.removeClass('selected') : nobj.addClass('selected');
	}
	function HideNextDOMLink(object)
	{
		var nobj = object.parentElement.nextElementSibling;
		nobj.hasClass('selected') ? nobj.removeClass('selected') : nobj.addClass('selected');
	}
	function hashchanged()
	{
		var hash = window.location.hash.substring(1); Hide(hash);
	}