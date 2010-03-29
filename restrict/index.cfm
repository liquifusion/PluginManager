<cfparam name="params.password" default="">

<!--- setting doesn't exist OR setting does exist and is set to enforce the reload password --->
<cfif NOT structKeyExists(application.wheels, "pluginManagerRequiresPassword")
	  OR get("pluginManagerRequiresPassword")>
	<h2>Wheels Reload Password</h2>
	
	<cfsavecontent variable="disclaimerText">
		<cfinclude template="disclaimer.cfm">
	</cfsavecontent>
	
	<!--- no reloadPassword has been set, tell the user to set it or how to not require it at all --->
	<cfif get("reloadPassword") EQ "">
		<cfoutput>
			<p><strong>You haven't set your <code>reloadPassword</code> yet.</strong></p>
			
			#disclaimerText#
		</cfoutput>
		
		<cfset isAccessBlocked = true>
	<!--- no password supplied, or wrong password was supplied --->
	<cfelseif params.password EQ "" OR params.password NEQ get("reloadPassword")>
		<cfoutput>
			<!--- invalid password was supplied --->
			<cfif params.password NEQ "">
				<p><strong>Invalid password. Verify you are using your Wheels <code>reloadPassword</code> and try again.</strong></p>
			</cfif>
			
			<cfinclude template="passwordForm.cfm">
			
			#disclaimerText#
		</cfoutput>
		
		<cfset isAccessBlocked = true>
	</cfif>
</cfif>