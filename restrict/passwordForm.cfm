<cfoutput>
#startFormTag(method="get")#
	#hiddenFieldTag(name="controller", value="wheels")#
	#hiddenFieldTag(name="action", value="wheels")#
	#hiddenFieldTag(name="view", value="plugins")#
	#hiddenFieldTag(name="name", value="pluginmanager")#

	<p>#passwordFieldTag(name="password")#
	#submitTag("Launch Plugin")#
	</p>
#endFormTag()#
</cfoutput>