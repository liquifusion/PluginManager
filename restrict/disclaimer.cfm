<h2>Disclaimer</h2>

<p>This plugin provides a web interface to install 3rd party code on your server. To help ensure only the plugins you want installed ever get installed on this server, you must provide your <code>reloadPassword</code> to use this plugin.</p>

<p>This plugin will allow any code submitted to the Wheels plugin repository to run on your server, so you really should pick something difficult to guess, and use good password standards for your <code>reloadPassword</code>, especially if this site is publicly accessible.</p>

<p>To set a reload password, put this in your <code>config/settings.cfm</code> file.</p>

<pre><code>&lt;cfset set(reloadPassword="y0urPassw0rdShouldNotBeThis")&gt;</code></pre>

<p>If you are on a dev server, and don't want to have to supply the password to install plugins, you can ignore this restriction by setting <code>pluginManagerRequiresPassword=false</code> in your <code>config/settings.cfm</code> file.</p>			

<pre><code>&lt;cfset set(pluginManagerRequiresPassword=false)&gt;</code></pre>

<p><strong>You should only set <code>pluginManagerRequiresPassword=false</code> on private/development servers.</strong></p>